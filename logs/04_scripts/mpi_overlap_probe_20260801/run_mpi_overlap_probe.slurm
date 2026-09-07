#!/usr/bin/env bash
#SBATCH -p kshcexclu06
#SBATCH -N 4
#SBATCH -n 64
#SBATCH --ntasks-per-node=16
#SBATCH --cpus-per-task=2
#SBATCH --exclusive
#SBATCH -J fjk_MPI_overlap_probe
#SBATCH -t 00:05:00
#SBATCH -o /public/home/fujiake/fjk/agent_tmp/logs/mpi_overlap_probe_20260801/slurm-%j.out
#SBATCH -e /public/home/fujiake/fjk/agent_tmp/logs/mpi_overlap_probe_20260801/slurm-%j.err

set -euo pipefail

source_dir=/public/home/fujiake/fjk/agent_tmp/isolated/scripts/mpi_overlap_probe_20260801
log_root=/public/home/fujiake/fjk/agent_tmp/logs/mpi_overlap_probe_20260801
audit_root=/public/home/fujiake/fjk/agent_tmp/isolated/audits/mpi_overlap_probe_${SLURM_JOB_ID}
source_file=$source_dir/mpi_overlap_probe.c
script_file=$source_dir/run_mpi_overlap_probe.slurm
: "${EXPECTED_SOURCE_SHA:?missing EXPECTED_SOURCE_SHA}"
: "${EXPECTED_SCRIPT_SHA:?missing EXPECTED_SCRIPT_SHA}"

fail() { printf 'FATAL: %s\n' "$*" >&2; exit 2; }
check_sha() {
  local expected=$1 path=$2 actual
  [[ -f "$path" ]] || fail "missing $path"
  actual=$(sha256sum "$path" | awk '{print $1}')
  [[ "$actual" == "$expected" ]] || fail "hash mismatch path=$path expected=$expected actual=$actual"
  printf 'HASH_OK|%s|%s\n' "$actual" "$path"
}

case "$audit_root" in
  /public/home/fujiake/fjk/agent_tmp/isolated/audits/mpi_overlap_probe_*) ;;
  *) fail "unsafe audit root: $audit_root" ;;
esac
[[ "${SLURM_NNODES:-0}" == 4 ]] || fail "expected 4 nodes"
[[ "${SLURM_NTASKS:-0}" == 64 ]] || fail "expected 64 tasks"
[[ "${SLURM_CPUS_PER_TASK:-0}" == 2 ]] || fail "expected 2 CPUs/task"
[[ ! -e "$audit_root" ]] || fail "audit root exists: $audit_root"
mkdir -p "$audit_root" "$log_root"
exec > >(tee "$audit_root/harness.log") 2>&1

printf 'HARNESS_START=%s\n' "$(date '+%F %T %z')"
printf 'JOB=%s NODES=%s NNODES=%s NTASKS=%s CPUS_PER_TASK=%s\n' \
  "$SLURM_JOB_ID" "$SLURM_JOB_NODELIST" "$SLURM_NNODES" \
  "$SLURM_NTASKS" "$SLURM_CPUS_PER_TASK"

available_kb=$(df -Pk /public/home/fujiake | awk 'NR==2 {print $4}')
[[ "$available_kb" -ge 10485760 ]] || fail "less than 10 GiB free"
printf 'DISK_AVAILABLE_KB=%s\n' "$available_kb"
check_sha "$EXPECTED_SOURCE_SHA" "$source_file"
check_sha "$EXPECTED_SCRIPT_SHA" "$script_file"

module purge
module load mpi/hpcx/2.7.4/intel-2017.5.239
module load compiler/intel/2017.5.239
mpicc -show | tee "$audit_root/mpicc-show.txt"
compiler_line=$(mpicc -show)
if printf '%s\n' "$compiler_line" | grep -Eq '(^|[ /])icc([[:space:]]|$)'; then
  omp_flag=-qopenmp
  fp_flag='-fp-model precise'
else
  omp_flag=-fopenmp
  fp_flag=-fno-fast-math
fi
mpicc -O3 -std=gnu99 "$omp_flag" "$fp_flag" -o "$audit_root/mpi_overlap_probe" "$source_file" -lm
ldd "$audit_root/mpi_overlap_probe" | tee "$audit_root/ldd.txt"
if grep -q 'not found' "$audit_root/ldd.txt"; then
  fail "unresolved benchmark dependency"
fi
sha256sum "$audit_root/mpi_overlap_probe" | tee "$audit_root/binary.sha256"

mapfile -t nodes < <(scontrol show hostnames "$SLURM_JOB_NODELIST")
[[ ${#nodes[@]} -eq 4 ]] || fail "expected four hostnames"
pairs=(0,1 2,3 8,9 10,11 16,17 18,19 24,25 26,27 4,5 6,7 12,13 14,15 20,21 22,23 28,29 30,31)
rankfile=$audit_root/rankfile
: > "$rankfile"
rank=0
for node in "${nodes[@]}"; do
  for pair in "${pairs[@]}"; do
    printf 'rank %d=%s slot=%s\n' "$rank" "$node" "$pair" >> "$rankfile"
    rank=$((rank+1))
  done
done
[[ $rank -eq 64 ]] || fail "rankfile has $rank ranks"
sha256sum "$rankfile" | tee "$audit_root/rankfile.sha256"

export OMP_NUM_THREADS=2
export OMP_PROC_BIND=close
export OMP_PLACES=cores
export KMP_BLOCKTIME=0
export OMPI_MCA_coll_hcoll_enable=0

ompi_info --param opal all --level 9 2>/dev/null | grep -i -E 'progress|yield|spin' > "$audit_root/ompi-progress-params.txt" || true

set +e
{
  time mpirun -np 64 --rankfile "$rankfile" --report-bindings \
    -x OMP_NUM_THREADS -x OMP_PROC_BIND -x OMP_PLACES -x KMP_BLOCKTIME \
    --mca coll_hcoll_enable 0 \
    "$audit_root/mpi_overlap_probe"
} > "$audit_root/probe.raw" 2>&1
probe_rc=$?
set -e
[[ $probe_rc -eq 0 ]] || fail "probe rc=$probe_rc"
grep -E '^label|^grid0' "$audit_root/probe.raw" > "$audit_root/results.tsv"
[[ $(wc -l < "$audit_root/results.tsv") -eq 9 ]] || fail "unexpected result row count"
grep -E '^real[[:space:]]' "$audit_root/probe.raw" | tail -1 > "$audit_root/timing.txt"

python - "$audit_root/results.tsv" "$audit_root/summary.txt" <<'PY'
import csv, sys
source, output = sys.argv[1:]
rows = list(csv.DictReader(open(source), delimiter='\t'))
assert len(rows) == 8
rep1 = [r for r in rows if int(r['repetitions']) == 1]
with open(output, 'w') as f:
    for r in rep1:
        f.write('%s rep1 comm_ms=%s compute_ms=%s overlap_ms=%s saved_ms=%s efficiency=%s serial_to_overlap=%s\n' % (
            r['label'], r['comm_ms'], r['compute_ms'], r['overlap_ms'],
            r['saved_ms'], r['overlap_efficiency'], r['serial_to_overlap']))
    positive = all(float(r['saved_ms']) > 0.0 for r in rep1)
    f.write('REP1_POSITIVE_ON_BOTH=%s\n' % positive)
PY

sha256sum "$source_file" "$script_file" "$audit_root/mpi_overlap_probe" \
  "$audit_root/rankfile" "$audit_root/results.tsv" "$audit_root/summary.txt" \
  "$audit_root/probe.raw" > "$audit_root/manifest.sha256"
cat "$audit_root/results.tsv"
cat "$audit_root/summary.txt"
printf 'AUDIT_ROOT=%s\n' "$audit_root"
printf 'HARNESS_DONE=%s\n' "$(date '+%F %T %z')"
