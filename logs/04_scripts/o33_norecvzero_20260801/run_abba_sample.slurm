#!/usr/bin/env bash
#SBATCH -p kshcexclu06
#SBATCH -N 4
#SBATCH -n 64
#SBATCH --ntasks-per-node=16
#SBATCH --cpus-per-task=2
#SBATCH --exclusive
#SBATCH -J fjk_O33_NRZ_ABBA
#SBATCH -t 00:30:00
#SBATCH -o /public/home/fujiake/fjk/agent_tmp/logs/o33_norecvzero_abba_20260801/slurm-%j.out
#SBATCH -e /public/home/fujiake/fjk/agent_tmp/logs/o33_norecvzero_abba_20260801/slurm-%j.err

set -u -o pipefail

ROOT=/public/home/fujiake/fjk/agent_tmp/isolated/work/o33_norecvzero_abba_20260801/ROMS_CoSiNE15
PARENT=/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15
SCRIPT_SOURCE=/public/home/fujiake/fjk/agent_tmp/isolated/work/o33_norecvzero_abba_20260801/run_abba_sample.slurm
RUN_ROOT=/public/home/fujiake/fjk/mcc_runs/${SLURM_JOB_ID}_o33_nrz_abba_sample
LOG_ROOT=/public/home/fujiake/fjk/agent_tmp/logs/o33_norecvzero_abba_20260801
BASE_INPUT=$ROOT/ROMS/External/ocean_SCS_Dongsha60_bio15.in
RULES=$ROOT/coll_rules.conf
A_BIN=$PARENT/oceanM.O33_final
B_BIN=$ROOT/oceanM.O33_norecvzero
VALIDATOR=/public/share/mcc2026_final/vali.py

EXPECTED_A_SHA=5f1a137e42252c9b978ad50ab344b9d6493f5e5afeeb71ed2d83f0a4228cfcb9
EXPECTED_INPUT_SHA=05ceb746d36522ccdb960ab082b70401d294fd0cc8a393c25bcb9e25365e7b21
EXPECTED_RULES_SHA=0ef5b45a357d06e27f3e5e6865010fdacf24ba0fc9ebd95aae8a5dd6dc4ce473
EXPECTED_VALIDATOR_SHA=97230e0b0dd4533a4000155bd691c81d243bdc45c24e6ceaeb09ffa6b1bb878a
: "${EXPECTED_B_SHA:?missing EXPECTED_B_SHA}"
: "${EXPECTED_SOURCE_SHA:?missing EXPECTED_SOURCE_SHA}"
: "${EXPECTED_SCRIPT_SHA:?missing EXPECTED_SCRIPT_SHA}"

fail() { echo "FATAL: $*" >&2; exit 2; }
check_sha() {
  local expected=$1 path=$2 actual
  [[ -f "$path" ]] || fail "missing $path"
  actual=$(sha256sum "$path" | awk '{print $1}')
  [[ "$actual" == "$expected" ]] || fail "hash mismatch path=$path expected=$expected actual=$actual"
  printf 'HASH_OK|%s|%s\n' "$actual" "$path"
}

case "$RUN_ROOT" in
  /public/home/fujiake/fjk/mcc_runs/*) ;;
  *) fail "unsafe RUN_ROOT=$RUN_ROOT" ;;
esac
[[ "${SLURM_NNODES:-0}" == 4 ]] || fail "SLURM_NNODES=${SLURM_NNODES:-unset}"
[[ "${SLURM_NTASKS:-0}" == 64 ]] || fail "SLURM_NTASKS=${SLURM_NTASKS:-unset}"
[[ "${SLURM_CPUS_PER_TASK:-0}" == 2 ]] || fail "SLURM_CPUS_PER_TASK=${SLURM_CPUS_PER_TASK:-unset}"
[[ ! -e "$RUN_ROOT" ]] || fail "run root already exists: $RUN_ROOT"
mkdir -p "$RUN_ROOT" "$LOG_ROOT"

exec > >(tee -a "$RUN_ROOT/harness.log") 2>&1
echo "HARNESS_START=$(date '+%F %T %z')"
echo "JOB=$SLURM_JOB_ID NODES=$SLURM_JOB_NODELIST NNODES=$SLURM_NNODES NTASKS=$SLURM_NTASKS CPUS_PER_TASK=$SLURM_CPUS_PER_TASK"

avail_kb=$(df -Pk /public/home/fujiake | awk 'NR==2 {print $4}')
[[ "$avail_kb" -ge 10485760 ]] || fail "less than 10 GiB free: ${avail_kb} KiB"
echo "DISK_AVAILABLE_KB=$avail_kb"

ulimit -s unlimited || fail "cannot set unlimited process stack"
ulimit -l unlimited || fail "cannot set unlimited locked memory"
echo "ULIMIT_STACK=$(ulimit -s) ULIMIT_LOCKED=$(ulimit -l)"

check_sha "$EXPECTED_SCRIPT_SHA" "$SCRIPT_SOURCE"
check_sha "$EXPECTED_A_SHA" "$A_BIN"
check_sha "$EXPECTED_B_SHA" "$B_BIN"
check_sha "$EXPECTED_SOURCE_SHA" "$ROOT/ROMS/Utility/distribute.F"
check_sha "$EXPECTED_INPUT_SHA" "$BASE_INPUT"
check_sha "$EXPECTED_RULES_SHA" "$RULES"
check_sha "$EXPECTED_VALIDATOR_SHA" "$VALIDATOR"

[[ -L "$ROOT/Inputfiles" ]] || fail "Inputfiles is not a symlink"
[[ "$(readlink -f "$ROOT/Inputfiles")" == /public/home/fujiake/Inputfiles ]] || fail "wrong Inputfiles target"

module purge
module load mathlib/netcdf/4.4.1/intel mpi/hpcx/2.7.4/intel-2017.5.239 mathlib/hdf5/1.8.20/intel compiler/intel/2017.5.239
if ldd "$A_BIN" "$B_BIN" | grep -q 'not found'; then
  ldd "$A_BIN" "$B_BIN"
  fail "unresolved runtime dependency"
fi

export OMPI_MCA_coll_hcoll_enable=0
export OMP_NUM_THREADS=2
export OMP_PROC_BIND=close
export OMP_PLACES=cores
export OMP_STACKSIZE=256M
export KMP_BLOCKTIME=0

mapfile -t NODES < <(scontrol show hostnames "$SLURM_JOB_NODELIST")
[[ ${#NODES[@]} -eq 4 ]] || fail "expected four nodes, got ${#NODES[@]}"
PAIRS=(0,1 2,3 8,9 10,11 16,17 18,19 24,25 26,27 4,5 6,7 12,13 14,15 20,21 22,23 28,29 30,31)
RANKFILE=$RUN_ROOT/rankfile
: > "$RANKFILE"
rank=0
for node in "${NODES[@]}"; do
  for pair in "${PAIRS[@]}"; do
    printf 'rank %d=%s slot=%s\n' "$rank" "$node" "$pair" >> "$RANKFILE"
    rank=$((rank+1))
  done
done
[[ $rank -eq 64 ]] || fail "rankfile rank count=$rank"

printf 'label\tvariant\treal_seconds\trc\tdone\ttrajectory_sha\tlog_sha\tnc_count\n' > "$RUN_ROOT/summary.tsv"

prepare_input() {
  local input=$1 outdir=$2
  python - "$BASE_INPUT" "$input" "$outdir" <<'PY'
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
assert len(re.findall(r'(?m)^\s*NTIMES\s*==\s*144\s+720(?:\D|$)', actual)) == 1
print('INPUT_ASSERT_OK replacements=%d path=%s' % (count, output_path))
PY
}

run_one() {
  local label=$1 variant=$2 bin=$3 run_dir input log rc done real_raw real_sec traj_sha log_sha nc_count
  run_dir=$RUN_ROOT/$label
  mkdir -p "$run_dir/output"
  input=$run_dir/input.in
  log=$run_dir/model.log
  prepare_input "$input" "$run_dir/output"
  echo "RUN_START|$label|$variant|$(date '+%F %T %z')|$bin"
  cd "$ROOT"
  set +e
  {
    time mpirun -np 64 --rankfile "$RANKFILE" --report-bindings \
      -x OMP_NUM_THREADS -x OMP_PROC_BIND -x OMP_PLACES -x OMP_STACKSIZE -x KMP_BLOCKTIME \
      --mca coll_hcoll_enable 0 \
      --mca coll_tuned_use_dynamic_rules 1 \
      --mca coll_tuned_dynamic_rules_filename "$RULES" \
      "$bin" "$input"
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
  traj_sha=$(sha256sum "$run_dir/trajectory.txt" | awk '{print $1}')
  log_sha=$(sha256sum "$log" | awk '{print $1}')
  nc_count=$(find "$run_dir/output" -maxdepth 1 -type f -name '*.nc' | wc -l)
  grep -Fq 'Grid: 01 TimeSteps: 00000001 - 00000144' "$log" || fail "$label missing exact coarse step range"
  grep -Fq 'Grid: 02 TimeSteps: 00000001 - 00000720' "$log" || fail "$label missing exact fine step range"
  grep -Fq 'Nonlinear model elapsed time profile, Grid: 01' "$log" || fail "$label missing coarse completion profile"
  grep -Fq 'Nonlinear model elapsed time profile, Grid: 02' "$log" || fail "$label missing fine completion profile"
  [[ $rc -eq 0 && "$done" == yes ]] || fail "$label rc=$rc done=$done"
  grep -E 'Nonlinear model elapsed time profile|Nonlinear model message Passage profile|Model 2D kernel|3D equations predictor step|Corrector time-step for tracers|Biological module|GLS vertical|Message Passage: (2D halo|4D halo|data gathering|point data gathering)|All percentages are with respect' "$log" > "$run_dir/profile_extract.txt"
  printf '%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\n' "$label" "$variant" "$real_sec" "$rc" "$done" "$traj_sha" "$log_sha" "$nc_count" >> "$RUN_ROOT/summary.tsv"
  echo "RUN_DONE|$label|$variant|real=$real_sec|trajectory=$traj_sha|nc=$nc_count|$(date '+%F %T %z')"
}

set -e
run_one A1 O33 "$A_BIN"
run_one B1 O33_NORECVZERO "$B_BIN"
run_one B2 O33_NORECVZERO "$B_BIN"
run_one A2 O33 "$A_BIN"

python - "$RUN_ROOT/summary.tsv" "$RUN_ROOT/decision.txt" <<'PY'
import csv, sys
summary, decision = sys.argv[1:3]
rows = list(csv.DictReader(open(summary), delimiter='\t'))
assert [r['label'] for r in rows] == ['A1', 'B1', 'B2', 'A2']
a = [float(r['real_seconds']) for r in rows if r['variant'] == 'O33']
b = [float(r['real_seconds']) for r in rows if r['variant'] == 'O33_NORECVZERO']
mean_a = sum(a) / len(a)
mean_b = sum(b) / len(b)
gain = (mean_a - mean_b) / mean_a * 100.0
both_b_faster = max(b) < min(a)
trajectory_consistent = len(set(r['trajectory_sha'] for r in rows)) == 1
if gain >= 3.0 and both_b_faster and trajectory_consistent:
    verdict = 'PROCEED_FULL'
elif gain < 2.0 or not trajectory_consistent:
    verdict = 'STOP_BRANCH'
else:
    verdict = 'REVIEW_PROFILE'
lines = [
    'mean_A_seconds=%.3f' % mean_a,
    'mean_B_seconds=%.3f' % mean_b,
    'gain_percent=%.4f' % gain,
    'both_B_faster=%s' % both_b_faster,
    'trajectory_consistent=%s' % trajectory_consistent,
    'verdict=%s' % verdict,
]
open(decision, 'w').write('\n'.join(lines) + '\n')
print('\n'.join(lines))
PY

echo "HARNESS_DONE=$(date '+%F %T %z')"
echo "OUTPUT_RETAINED=$RUN_ROOT"
