#!/usr/bin/env bash
#SBATCH -p kshcexclu06
#SBATCH -N 4
#SBATCH -n 64
#SBATCH --ntasks-per-node=16
#SBATCH --cpus-per-task=2
#SBATCH --exclusive
#SBATCH -J fjk_O33_GCC731_PERF
#SBATCH -t 00:40:00
#SBATCH -o /public/home/fujiake/fjk/agent_tmp/logs/gcc731_20260805/perf-%j.out
#SBATCH -e /public/home/fujiake/fjk/agent_tmp/logs/gcc731_20260805/perf-%j.err

set -u -o pipefail

# [Stage 106] perf diagnostic on the gcc731 compiler-switch candidate;
# as the A-B-B-A winner 118610383): 4n/64x2, 144/720, KMP_HOT_TEAMS=1.
# perf record attaches to rank 0 only (perf_event_paranoid=2: user-space cycles:u,
# cache events known zero on Hygon C86 per Stage 76). Output is diagnostic only.

root=/public/home/fujiake/fjk/agent_tmp/isolated/work/o33_g2d_r3_20260804/ROMS_CoSiNE15
parent=/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15
script_source=/public/home/fujiake/fjk/agent_tmp/isolated/scripts/gcc731_20260805/run_gcc731_perf.slurm
run_root=/public/home/fujiake/fjk/mcc_runs/${SLURM_JOB_ID}_o33_gcc731_perf_diag
log_root=/public/home/fujiake/fjk/agent_tmp/logs/gcc731_20260805
base_input=$root/ROMS/External/ocean_SCS_Dongsha60_bio15.in
rules=$root/coll_rules.conf
a_bin=/public/home/fujiake/fjk/agent_tmp/isolated/work/o33_gcc731_20260805/ROMS_CoSiNE15/oceanM.O33_gcc731

expected_a_sha=c69fe3838659e0200920c12313bf58708b6cea884381f36b5172955038d3330a
expected_input=05ceb746d36522ccdb960ab082b70401d294fd0cc8a393c25bcb9e25365e7b21
expected_rules=0ef5b45a357d06e27f3e5e6865010fdacf24ba0fc9ebd95aae8a5dd6dc4ce473
: "${EXPECTED_SCRIPT_SHA:?missing EXPECTED_SCRIPT_SHA}"

fail() { echo "FATAL: $*" >&2; exit 2; }
check_sha() {
  local expected=$1 path=$2 actual
  [[ -f "$path" ]] || fail "missing $path"
  actual=$(sha256sum "$path" | awk '{print $1}')
  [[ "$actual" == "$expected" ]] || fail "hash mismatch path=$path expected=$expected actual=$actual"
  printf 'HASH_OK|%s|%s\n' "$actual" "$path"
}

case "$run_root" in
  /public/home/fujiake/fjk/mcc_runs/*) ;;
  *) fail "unsafe run_root=$run_root" ;;
esac
[[ "${SLURM_NNODES:-0}" == 4 ]] || fail "SLURM_NNODES=${SLURM_NNODES:-unset}"
[[ "${SLURM_NTASKS:-0}" == 64 ]] || fail "SLURM_NTASKS=${SLURM_NTASKS:-unset}"
[[ "${SLURM_CPUS_PER_TASK:-0}" == 2 ]] || fail "SLURM_CPUS_PER_TASK=${SLURM_CPUS_PER_TASK:-unset}"
[[ ! -e "$run_root" ]] || fail "run root already exists: $run_root"
mkdir -p "$run_root/output" "$log_root"

exec > >(tee -a "$run_root/harness.log") 2>&1
echo "HARNESS_START=$(date '+%F %T %z')"
echo "JOB=$SLURM_JOB_ID NODES=$SLURM_JOB_NODELIST"

available_kb=$(df -Pk /public/home/fujiake | awk 'NR==2 {print $4}')
[[ "$available_kb" -ge 10485760 ]] || fail "less than 10 GiB free: ${available_kb} KiB"
echo "DISK_AVAILABLE_KB=$available_kb"

ulimit -s unlimited || fail "cannot set unlimited process stack"
ulimit -l unlimited || fail "cannot set unlimited locked memory"

check_sha "$EXPECTED_SCRIPT_SHA" "$script_source"
check_sha "$expected_a_sha" "$a_bin"
check_sha "$expected_input" "$base_input"
check_sha "$expected_rules" "$rules"

[[ -L "$root/Inputfiles" ]] || fail "Inputfiles is not a symlink"
[[ "$(readlink -f "$root/Inputfiles")" == /public/home/fujiake/Inputfiles ]] || fail "wrong Inputfiles target"

module purge
module load compiler/devtoolset/7.3.1
module load mathlib/hdf5/1.8.20/gcc-7.3.1-noparallel
module load mathlib/netcdf/4.4.1/gcc-7.3.1
module load mpi/hpcx/2.7.4-gcc-7.3.1

export OMPI_MCA_coll_hcoll_enable=0
export OMP_NUM_THREADS=2
export OMP_PROC_BIND=close
export OMP_PLACES=cores
export OMP_STACKSIZE=256M
export KMP_BLOCKTIME=0
export KMP_HOT_TEAMS=1 KMP_HOT_TEAMS_MAX_PARALLEL=2

mapfile -t nodes < <(scontrol show hostnames "$SLURM_JOB_NODELIST")
[[ ${#nodes[@]} -eq 4 ]] || fail "expected four nodes"
pairs=(0,1 2,3 8,9 10,11 16,17 18,19 24,25 26,27 4,5 6,7 12,13 14,15 20,21 22,23 28,29 30,31)
rankfile=$run_root/rankfile
: > "$rankfile"
rank=0
for node in "${nodes[@]}"; do
  for pair in "${pairs[@]}"; do
    printf 'rank %d=%s slot=%s\n' "$rank" "$node" "$pair" >> "$rankfile"
    rank=$((rank+1))
  done
done
[[ $rank -eq 64 ]] || fail "rankfile rank count=$rank"

input=$run_root/input.in
/public/share/mcc2026_final/miniforge3/bin/python3 - "$base_input" "$input" "$run_root/output" <<'PY'
import re, sys
base_path, output_path, outdir = sys.argv[1:4]
base = open(base_path).read()
assert len(re.findall(r'(?m)^\s*NTIMES\s*==\s*144\s+720(?:\D|$)', base)) == 1
assert len(re.findall(r'(?m)^\s*NtileI\s*==\s*8\s+8(?:\D|$)', base)) == 1
assert len(re.findall(r'(?m)^\s*NtileJ\s*==\s*8\s+8(?:\D|$)', base)) == 1
count = base.count('output/')
assert count > 0
expected = base.replace('output/', outdir.rstrip('/') + '/')
open(output_path, 'w').write(expected)
actual = open(output_path).read()
assert actual == expected
print('INPUT_ASSERT_OK path=%s' % output_path)
PY

wrapper=$run_root/rank_wrapper.sh
cat > "$wrapper" <<'WRAP'
#!/bin/bash
set -u
rank="${OMPI_COMM_WORLD_RANK:-unknown}"
if [[ "$rank" == "0" ]]; then
  exec /usr/bin/perf record -F 99 -e cycles:u -g -o "${PERF_DATA:?}" -- "${MODEL_EXE:?}" "${MODEL_INPUT:?}"
fi
exec "${MODEL_EXE:?}" "${MODEL_INPUT:?}"
WRAP
chmod +x "$wrapper"

export PERF_DATA="$run_root/perf.data"
export MODEL_EXE="$a_bin"
export MODEL_INPUT="$input"

echo "RUN_START|perf|$(date '+%F %T %z')"
cd "$root"
set +e
{
  time mpirun -np 64 --rankfile "$rankfile" --report-bindings \
    -x OMP_NUM_THREADS -x OMP_PROC_BIND -x OMP_PLACES -x OMP_STACKSIZE -x KMP_BLOCKTIME \
    -x KMP_HOT_TEAMS -x KMP_HOT_TEAMS_MAX_PARALLEL \
    --mca coll_hcoll_enable 0 \
    --mca coll_tuned_use_dynamic_rules 1 \
    --mca coll_tuned_dynamic_rules_filename "$rules" \
    "$wrapper"
} > "$run_root/model.log" 2>&1
rc=$?
set -e
echo "RUN_RC=$rc"
grep -q 'ROMS/TOMS: DONE' "$run_root/model.log" || fail "model did not DONE rc=$rc"
[[ -s "$PERF_DATA" ]] || fail "perf.data empty"

echo "=== perf report (top 40, self) ==="
/usr/bin/perf report -i "$PERF_DATA" --stdio --no-children 2>/dev/null | head -60
echo "=== perf report (top 25, with children) ==="
/usr/bin/perf report -i "$PERF_DATA" --stdio 2>/dev/null | head -45
/usr/bin/perf report -i "$PERF_DATA" --stdio > "$run_root/perf_report.txt" 2>&1

grep -E '^[[:space:]]+[0-9]+[[:space:]]+0001-' "$run_root/model.log" > "$run_root/trajectory.txt" || true
grep -aE "Nonlinear model elapsed time profile|Model 2D kernel|GLS vertical|predictor step|Corrector time-step for tracers|Biological module|Message Passage: (2D|3D|4D) halo|point data gathering" "$run_root/model.log" > "$run_root/profile_extract.txt" || true
printf 'label\tvariant\treal_seconds\trc\tdone\n' > "$run_root/summary.tsv"
real_raw=$(grep -E '^real[[:space:]]' "$run_root/model.log" | tail -1 | awk '{print $2}')
real_sec=$(printf '%s\n' "$real_raw" | awk -F'[ms]' '{printf "%.3f", ($1*60)+$2}')
printf 'PERF\tHOTTEAMS\t%s\t%s\t%s\n' "$real_sec" "$rc" "yes" >> "$run_root/summary.tsv"
echo "PERF_REAL=$real_sec"

sha256sum "$run_root/perf_report.txt" "$run_root/summary.tsv" "$run_root/harness.log" > "$run_root/SHA256SUMS"
echo "HARNESS_DONE=$(date '+%F %T %z')"
echo "OUTPUT_RETAINED=$run_root"
