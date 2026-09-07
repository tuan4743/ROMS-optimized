#!/usr/bin/env bash
#SBATCH -p kshcexclu06
#SBATCH -N 4
#SBATCH -n 64
#SBATCH --ntasks-per-node=16
#SBATCH --cpus-per-task=2
#SBATCH --exclusive
#SBATCH -J fjk_skew_probe
#SBATCH -t 00:40:00
#SBATCH -o /public/home/fujiake/fjk/agent_tmp/logs/skew_20260804/slurm-run-%j.out
#SBATCH -e /public/home/fujiake/fjk/agent_tmp/logs/skew_20260804/slurm-run-%j.err

set -u -o pipefail

root=/public/home/fujiake/fjk/agent_tmp/isolated/work/o33_skew_20260804/ROMS_CoSiNE15
script_source=/public/home/fujiake/fjk/agent_tmp/isolated/scripts/skew_20260804/run_skew.slurm
run_root=/public/home/fujiake/fjk/mcc_runs/${SLURM_JOB_ID}_o33_skew_probe
log_root=/public/home/fujiake/fjk/agent_tmp/logs/skew_20260804
base_input=$root/ROMS/External/ocean_SCS_Dongsha60_bio15.in
rules=$root/coll_rules.conf
probe_bin=$root/oceanM.O33_skew

expected_input=05ceb746d36522ccdb960ab082b70401d294fd0cc8a393c25bcb9e25365e7b21
expected_rules=0ef5b45a357d06e27f3e5e6865010fdacf24ba0fc9ebd95aae8a5dd6dc4ce473
expected_trajectory=fa498694109f9a578ca07133f55d8e58961dde55666ca5347707d86eb40e44b0
: "${EXPECTED_SCRIPT_SHA:?missing EXPECTED_SCRIPT_SHA}"
: "${EXPECTED_PROBE_SHA:?missing EXPECTED_PROBE_SHA}"

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
mkdir -p "$run_root" "$log_root"

exec > >(tee -a "$run_root/harness.log") 2>&1
echo "HARNESS_START=$(date '+%F %T %z')"
echo "JOB=$SLURM_JOB_ID NODES=$SLURM_JOB_NODELIST NNODES=$SLURM_NNODES NTASKS=$SLURM_NTASKS CPUS_PER_TASK=$SLURM_CPUS_PER_TASK"

available_kb=$(df -Pk /public/home/fujiake | awk 'NR==2 {print $4}')
[[ "$available_kb" -ge 10485760 ]] || fail "less than 10 GiB free: ${available_kb} KiB"
echo "DISK_AVAILABLE_KB=$available_kb"

ulimit -s unlimited || fail "cannot set unlimited process stack"
ulimit -l unlimited || fail "cannot set unlimited locked memory"

check_sha "$EXPECTED_SCRIPT_SHA" "$script_source"
check_sha "$EXPECTED_PROBE_SHA" "$probe_bin"
check_sha "$expected_input" "$base_input"
check_sha "$expected_rules" "$rules"

[[ -L "$root/Inputfiles" ]] || fail "Inputfiles is not a symlink"
[[ "$(readlink -f "$root/Inputfiles")" == /public/home/fujiake/Inputfiles ]] || fail "wrong Inputfiles target"

module purge
module load mathlib/netcdf/4.4.1/intel
module load mpi/hpcx/2.7.4/intel-2017.5.239
module load mathlib/hdf5/1.8.20/intel
module load compiler/intel/2017.5.239
if ldd "$probe_bin" | grep -q 'not found'; then
  fail "unresolved runtime dependency"
fi

export OMPI_MCA_coll_hcoll_enable=0
export OMP_NUM_THREADS=2
export OMP_PROC_BIND=close
export OMP_PLACES=cores
export OMP_STACKSIZE=256M
export KMP_BLOCKTIME=0

mapfile -t nodes < <(scontrol show hostnames "$SLURM_JOB_NODELIST")
[[ ${#nodes[@]} -eq 4 ]] || fail "expected four nodes, got ${#nodes[@]}"
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

# Record which node each rank landed on so per-rank results can be mapped
# back to hardware, not only to the tile grid.
awk '{print $2, $3}' "$rankfile" | nl -v0 -ba > "$run_root/rank_to_node.txt"

printf 'label\treal_seconds\trc\tdone\ttrajectory_sha\tprobe_files\tnc_count\n' > "$run_root/summary.tsv"

prepare_input() {
  local input=$1 outdir=$2
  /public/share/mcc2026_final/miniforge3/bin/python3 - "$base_input" "$input" "$outdir" <<'PY'
import re, sys
base_path, output_path, outdir = sys.argv[1:4]
base = open(base_path).read()
assert len(re.findall(r'(?m)^\s*NTIMES\s*==\s*144\s+720(?:\D|$)', base)) == 1
assert len(re.findall(r'(?m)^\s*NtileI\s*==\s*8\s+8(?:\D|$)', base)) == 1
assert len(re.findall(r'(?m)^\s*NtileJ\s*==\s*8\s+8(?:\D|$)', base)) == 1
assert len(re.findall(r'(?m)^\s*DT\s*==\s*100\.0d0\s+20\.0d0(?:\D|$)', base)) == 1
assert len(re.findall(r'(?m)^\s*NDTFAST\s*==\s*30\s+30(?:\D|$)', base)) == 1
count = base.count('output/')
assert count > 0
expected = base.replace('output/', outdir.rstrip('/') + '/')
open(output_path, 'w').write(expected)
actual = open(output_path).read()
assert actual == expected
assert actual.count(outdir.rstrip('/') + '/') == count
print('INPUT_ASSERT_OK replacements=%d path=%s' % (count, output_path))
PY
}

run_one() {
  local label=$1 run_dir input log rc done real_raw real_sec trajectory_sha probe_files nc_count
  run_dir=$run_root/$label
  mkdir -p "$run_dir/output"
  input=$run_dir/input.in
  log=$run_dir/model.log
  prepare_input "$input" "$run_dir/output"
  # The probe opens with POSITION='append', so the directory must start empty
  # or successive runs would concatenate.
  rm -rf "$root/skewprobe"
  mkdir -p "$root/skewprobe"
  echo "RUN_START|$label|$(date '+%F %T %z')|$probe_bin"
  cd "$root"
  set +e
  {
    time mpirun -np 64 --rankfile "$rankfile" \
      -x OMP_NUM_THREADS -x OMP_PROC_BIND -x OMP_PLACES -x OMP_STACKSIZE -x KMP_BLOCKTIME \
      --mca coll_hcoll_enable 0 \
      --mca coll_tuned_use_dynamic_rules 1 \
      --mca coll_tuned_dynamic_rules_filename "$rules" \
      "$probe_bin" "$input"
  } > "$log" 2>&1
  rc=$?
  set -e
  done=no
  grep -q 'ROMS/TOMS: DONE' "$log" && done=yes
  real_raw=$(grep -E '^real[[:space:]]' "$log" | tail -1 | awk '{print $2}')
  [[ -n "$real_raw" ]] || fail "$label missing shell time real"
  real_sec=$(printf '%s\n' "$real_raw" | awk -F'[ms]' '{printf "%.3f", ($1*60)+$2}')
  grep -E '^[[:space:]]+[0-9]+[[:space:]]+0001-' "$log" > "$run_dir/trajectory.txt"
  [[ -s "$run_dir/trajectory.txt" ]] || fail "$label missing trajectory lines"
  trajectory_sha=$(sha256sum "$run_dir/trajectory.txt" | awk '{print $1}')
  nc_count=$(find "$run_dir/output" -maxdepth 1 -type f -name '*.nc' | wc -l)
  grep -Fq 'Grid: 01 TimeSteps: 00000001 - 00000144' "$log" || fail "$label missing coarse step range"
  grep -Fq 'Grid: 02 TimeSteps: 00000001 - 00000720' "$log" || fail "$label missing fine step range"
  [[ $rc -eq 0 && "$done" == yes ]] || fail "$label rc=$rc done=$done"
  # The probe must not perturb the solution.
  [[ "$trajectory_sha" == "$expected_trajectory" ]] || fail "$label trajectory changed: $trajectory_sha"
  # Collect the per-rank dumps.
  mkdir -p "$run_dir/skewprobe"
  mv "$root"/skewprobe/rank*.txt "$run_dir/skewprobe/" 2>/dev/null || true
  probe_files=$(find "$run_dir/skewprobe" -maxdepth 1 -type f -name 'rank*.txt' | wc -l)
  [[ "$probe_files" -eq 64 ]] || fail "$label produced $probe_files probe files, expected 64"
  cat "$run_dir"/skewprobe/rank*.txt > "$run_dir/skewprobe_all.tsv"
  # Full per-rank total-CPU list, which the model already prints for all ranks.
  grep -E '^ Node   #' "$log" > "$run_dir/node_cpu.txt" || true
  sed -n '/elapsed time profile, Grid: 01/,$p' "$log" > "$run_dir/profile_full.txt"
  printf '%s\t%s\t%s\t%s\t%s\t%s\t%s\n' "$label" "$real_sec" "$rc" "$done" "$trajectory_sha" "$probe_files" "$nc_count" >> "$run_root/summary.tsv"
  echo "RUN_DONE|$label|real=$real_sec|probe_files=$probe_files|nc=$nc_count|$(date '+%F %T %z')"
}

set -e
run_one P1
run_one P2
run_one P3

sha256sum "$run_root"/*/skewprobe_all.tsv "$run_root/summary.tsv" "$run_root/rankfile" \
  > "$run_root/SHA256SUMS"
cat "$run_root/summary.tsv"
echo "HARNESS_DONE=$(date '+%F %T %z')"
echo "OUTPUT_RETAINED=$run_root"
