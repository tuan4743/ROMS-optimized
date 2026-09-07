#!/usr/bin/env bash
#SBATCH -p kshcexclu06
#SBATCH -N 4
#SBATCH -n 64
#SBATCH --ntasks-per-node=16
#SBATCH --cpus-per-task=2
#SBATCH --exclusive
#SBATCH -J fjk_BIOFAST21_ABBA
#SBATCH -t 00:45:00
#SBATCH -o /public/home/fujiake/fjk/agent_tmp/logs/biofast_2021_20260806/abba-%j.out
#SBATCH -e /public/home/fujiake/fjk/agent_tmp/logs/biofast_2021_20260806/abba-%j.err

set -u -o pipefail

# [Stage 110] Candidate R2: biology-ONLY -fp-model fast=2 (gls_corstep precise)
# (ifort 2021.3.0 champion toolchain). A = champion, B = O33_biofast_2021 (ifort2021, biology.o only).
# Float semantics change (libm accuracy) -> trajectory gate is observation
# only; wall-time gate + full official 26/26 are the decision.

root=/public/home/fujiake/fjk/agent_tmp/isolated/work/o33_biofast_2021_20260806/ROMS_CoSiNE15
parent=/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15
script_source=/public/home/fujiake/fjk/agent_tmp/isolated/scripts/biofast_2021_20260806/run_biofast_2021_abba.slurm
run_root=/public/home/fujiake/fjk/mcc_runs/${SLURM_JOB_ID}_o33_biofast_2021_abba_sample
log_root=/public/home/fujiake/fjk/agent_tmp/logs/biofast_2021_20260806
base_input=$root/ROMS/External/ocean_SCS_Dongsha60_bio15.in
rules=$parent/coll_rules.conf
a_bin=/public/home/fujiake/fjk/agent_tmp/isolated/work/o33_ifort2021_20260805/ROMS_CoSiNE15/oceanM.O33_ifort2021
b_bin=$root/oceanM.O33_biofast_2021

expected_a_sha=7cd466279e822e4b807e9c0920000f9cb97e1f407538329f3c54b91e01dd9ff4
expected_input=05ceb746d36522ccdb960ab082b70401d294fd0cc8a393c25bcb9e25365e7b21
expected_rules=0ef5b45a357d06e27f3e5e6865010fdacf24ba0fc9ebd95aae8a5dd6dc4ce473
: "${EXPECTED_SCRIPT_SHA:?missing EXPECTED_SCRIPT_SHA}"
: "${EXPECTED_B_SHA:?missing EXPECTED_B_SHA}"

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
check_sha "$expected_a_sha" "$a_bin"
check_sha "$EXPECTED_B_SHA" "$b_bin"
check_sha "$expected_input" "$base_input"
check_sha "$expected_rules" "$rules"

[[ -L "$root/Inputfiles" ]] || fail "Inputfiles is not a symlink"
[[ "$(readlink -f "$root/Inputfiles")" == /public/home/fujiake/Inputfiles ]] || fail "wrong Inputfiles target"

module purge
module load mathlib/netcdf/4.4.1/intel
module load mpi/hpcx/2.7.4/intel-2017.5.239
module load mathlib/hdf5/1.8.20/intel
module load compiler/intel/2017.5.239
if ldd "$a_bin" "$b_bin" | grep -q 'not found'; then
  ldd "$a_bin" "$b_bin"
  fail "unresolved runtime dependency"
fi

export OMPI_MCA_coll_hcoll_enable=0
export OMP_NUM_THREADS=2
export OMP_PROC_BIND=close
export OMP_PLACES=cores
export OMP_STACKSIZE=256M
export KMP_BLOCKTIME=0
export KMP_HOT_TEAMS=1 KMP_HOT_TEAMS_MAX_PARALLEL=2

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

printf 'label\tvariant\treal_seconds\trc\tdone\ttrajectory_sha\tlog_sha\tnc_count\n' > "$run_root/summary.tsv"

prepare_input() {
  local input=$1 outdir=$2
  /public/share/mcc2026_final/miniforge3/bin/python3 - "$base_input" "$input" "$outdir" <<'PY'
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
}

run_one() {
  local label=$1 variant=$2 binary=$3 run_dir input log rc done real_raw real_sec trajectory_sha log_sha nc_count
  run_dir=$run_root/$label
  mkdir -p "$run_dir/output"
  input=$run_dir/input.in
  log=$run_dir/model.log
  prepare_input "$input" "$run_dir/output"
  echo "RUN_START|$label|$variant|$(date '+%F %T %z')|$binary"
  cd "$root"
  set +e
  {
    time mpirun -np 64 --rankfile "$rankfile" --report-bindings \
      -x OMP_NUM_THREADS -x OMP_PROC_BIND -x OMP_PLACES -x OMP_STACKSIZE -x KMP_BLOCKTIME \
      -x KMP_HOT_TEAMS -x KMP_HOT_TEAMS_MAX_PARALLEL \
      --mca coll_hcoll_enable 0 \
      --mca coll_tuned_use_dynamic_rules 1 \
      --mca coll_tuned_dynamic_rules_filename "$rules" \
      "$binary" "$input"
  } > "$log" 2>&1
  rc=$?
  set -e
  done=no
  grep -q 'ROMS/TOMS: DONE' "$log" && done=yes
  real_raw=$(grep -E '^real[[:space:]]' "$log" | tail -1 | awk '{print $2}')
  [[ -n "$real_raw" ]] || fail "$label missing shell time real"
  real_sec=$(printf '%s\n' "$real_raw" | awk -F'[ms]' '{printf "%.3f", ($1*60)+$2}')
  grep -E '^[[:space:]]+[0-9]+[[:space:]]+0001-' "$log" > "$run_dir/trajectory.txt" || true
  trajectory_sha=$(sha256sum "$run_dir/trajectory.txt" 2>/dev/null | awk '{print $1}')
  log_sha=$(sha256sum "$log" | awk '{print $1}')
  nc_count=$(find "$run_dir/output" -maxdepth 1 -type f -name '*.nc' | wc -l)
  grep -Fq 'Grid: 01 TimeSteps: 00000001 - 00000144' "$log" || fail "$label missing coarse step range"
  grep -Fq 'Grid: 02 TimeSteps: 00000001 - 00000720' "$log" || fail "$label missing fine step range"
  [[ $rc -eq 0 && "$done" == yes ]] || fail "$label rc=$rc done=$done"
  printf '%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\n' "$label" "$variant" "$real_sec" "$rc" "$done" "$trajectory_sha" "$log_sha" "$nc_count" >> "$run_root/summary.tsv"
  echo "RUN_DONE|$label|$variant|real=$real_sec|trajectory=$trajectory_sha|nc=$nc_count|$(date '+%F %T %z')"
}

set -e
run_one W0 WARMUP "$a_bin"
run_one A1 O33_CHAMPION "$a_bin"
run_one B1 O33_BIOFAST21 "$b_bin"
run_one B2 O33_BIOFAST21 "$b_bin"
run_one A2 O33_CHAMPION "$a_bin"

/public/share/mcc2026_final/miniforge3/bin/python3 - "$run_root/summary.tsv" "$run_root/decision.txt" <<'PY'
import csv, sys
summary, decision = sys.argv[1:3]
rows = list(csv.DictReader(open(summary), delimiter='\t'))
scored = [r for r in rows if r['variant'] != 'WARMUP']
assert [r['label'] for r in scored] == ['A1', 'B1', 'B2', 'A2']
a = [float(r['real_seconds']) for r in scored if r['variant'] == 'O33_CHAMPION']
b = [float(r['real_seconds']) for r in scored if r['variant'] == 'O33_BIOFAST21']
mean_a = sum(a) / len(a)
mean_b = sum(b) / len(b)
gain = (mean_a - mean_b) / mean_a * 100.0
both_b_faster = max(b) < min(a)
trajectory_note = 'EXPECTED_DIFFERENT' if len(set(r['trajectory_sha'] for r in scored)) > 1 else 'SAME'
if gain >= 3.0 and both_b_faster:
    verdict = 'PROCEED_FULL_REVIEW_REQUIRED'
elif gain < 0.0 or not both_b_faster:
    verdict = 'STOP_BRANCH'
else:
    verdict = 'REVIEW_PROFILE'
lines = [
    'mean_A_seconds=%.3f' % mean_a,
    'mean_B_seconds=%.3f' % mean_b,
    'gain_percent=%.4f' % gain,
    'both_B_faster=%s' % both_b_faster,
    'trajectory_%s' % trajectory_note,
    'verdict=%s' % verdict,
]
open(decision, 'w').write('\n'.join(lines) + '\n')
print('\n'.join(lines))
PY

sha256sum "$run_root/summary.tsv" "$run_root/decision.txt" "$run_root/harness.log" "$run_root/rankfile" > "$run_root/SHA256SUMS"
echo "HARNESS_DONE=$(date '+%F %T %z')"
echo "OUTPUT_RETAINED=$run_root"
