#!/usr/bin/env bash
#SBATCH -p kshcexclu06
#SBATCH -N 4
#SBATCH -n 64
#SBATCH --ntasks-per-node=16
#SBATCH --cpus-per-task=2
#SBATCH --exclusive
#SBATCH -J fjk_O33_CLEAN_AB
#SBATCH -t 00:30:00
#SBATCH -o /public/home/fujiake/fjk/agent_tmp/logs/o33_clean_rebuild_20260802/run-%j.out
#SBATCH -e /public/home/fujiake/fjk/agent_tmp/logs/o33_clean_rebuild_20260802/run-%j.err

set -euo pipefail

parent=/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15
clean=/public/home/fujiake/fjk/delivery/o33_20260802/clean_builds/118412739/ROMS_CoSiNE15
script_root=/public/home/fujiake/fjk/agent_tmp/isolated/scripts/o33_clean_rebuild_20260802
run_root=/public/home/fujiake/fjk/mcc_runs/${SLURM_JOB_ID}_o33_clean_rebuild_abba_sample
base_input=$clean/ROMS/External/ocean_SCS_Dongsha60_bio15.in
rules=$clean/coll_rules.conf
a_bin=$parent/oceanM
b_bin=$clean/oceanM

expected_parent=5f1a137e42252c9b978ad50ab344b9d6493f5e5afeeb71ed2d83f0a4228cfcb9
expected_clean=e64347f3bd44eb69c5c224684306ebeb8898e909ce81a0260c0878650bbd53bb
expected_config=081b267b491f6ddf48cd03243a5fa466f9f277439ceb4eec5332a5355a9faced
expected_rules=0ef5b45a357d06e27f3e5e6865010fdacf24ba0fc9ebd95aae8a5dd6dc4ce473
: "${EXPECTED_RUN_SCRIPT_SHA:?missing EXPECTED_RUN_SCRIPT_SHA}"

fail() { echo "FATAL: $*" >&2; exit 2; }
sha() { sha256sum "$1" | awk '{print $1}'; }
check_sha() {
  local expected=$1 path=$2 actual
  [[ -f "$path" ]] || fail "missing $path"
  actual=$(sha "$path")
  [[ "$actual" == "$expected" ]] || fail "hash mismatch path=$path expected=$expected actual=$actual"
  echo "HASH_OK|$actual|$path"
}

case "$run_root" in /public/home/fujiake/fjk/mcc_runs/*) ;; *) fail "unsafe run_root=$run_root";; esac
[[ "${SLURM_NNODES:-0}" == 4 && "${SLURM_NTASKS:-0}" == 64 && "${SLURM_CPUS_PER_TASK:-0}" == 2 ]] || fail "unexpected Slurm layout"
[[ ! -e "$run_root" ]] || fail "existing run root=$run_root"
mkdir -p "$run_root"
exec > >(tee -a "$run_root/harness.log") 2>&1

echo "HARNESS_START=$(date '+%F %T %z')"
echo "JOB=$SLURM_JOB_ID NODES=$SLURM_JOB_NODELIST NNODES=$SLURM_NNODES NTASKS=$SLURM_NTASKS CPUS_PER_TASK=$SLURM_CPUS_PER_TASK"
available_kb=$(df -Pk /public/home/fujiake | awk 'NR==2 {print $4}')
[[ "$available_kb" -ge 10485760 ]] || fail "less than 10 GiB free"
ulimit -s unlimited
ulimit -l unlimited

check_sha "$EXPECTED_RUN_SCRIPT_SHA" "$script_root/run_clean_rebuild_abba.slurm"
check_sha "$expected_parent" "$a_bin"
check_sha "$expected_clean" "$b_bin"
check_sha "$expected_config" "$clean/Compilers/Linux-ifort.mk"
check_sha "$expected_rules" "$rules"
[[ -f "$base_input" ]] || fail "missing input $base_input"
[[ -L "$clean/Inputfiles" && "$(readlink -f "$clean/Inputfiles")" == /public/home/fujiake/Inputfiles ]] || fail "wrong clean Inputfiles link"

module purge
module load mathlib/netcdf/4.4.1/intel mpi/hpcx/2.7.4/intel-2017.5.239 mathlib/hdf5/1.8.20/intel compiler/intel/2017.5.239
if ldd "$a_bin" "$b_bin" | grep -q 'not found'; then fail "unresolved runtime dependency"; fi
export OMPI_MCA_coll_hcoll_enable=0 OMP_NUM_THREADS=2 OMP_PROC_BIND=close OMP_PLACES=cores OMP_STACKSIZE=256M KMP_BLOCKTIME=0

mapfile -t nodes < <(scontrol show hostnames "$SLURM_JOB_NODELIST")
pairs=(0,1 2,3 8,9 10,11 16,17 18,19 24,25 26,27 4,5 6,7 12,13 14,15 20,21 22,23 28,29 30,31)
rankfile=$run_root/rankfile
rank=0
for node in "${nodes[@]}"; do
  for pair in "${pairs[@]}"; do
    printf 'rank %d=%s slot=%s\n' "$rank" "$node" "$pair"
    rank=$((rank+1))
  done
done > "$rankfile"
[[ "$rank" == 64 ]] || fail "rankfile count=$rank"
printf 'label\tvariant\treal_seconds\trc\tdone\ttrajectory_sha\tlog_sha\tnc_count\n' > "$run_root/summary.tsv"

prepare_input() {
  local input=$1 outdir=$2
  /public/share/mcc2026_final/miniforge3/bin/python3 - "$base_input" "$input" "$outdir" <<'PY'
import re, sys
base_path, output_path, outdir = sys.argv[1:4]
base = open(base_path).read()
actual, n = re.subn(r'(?m)^(\s*NTIMES\s*==\s*).*$', r'\g<1>144 720!  ! clean-build diagnostic', base, count=1)
assert n == 1
assert len(re.findall(r'(?m)^\s*NtileI\s*==\s*8\s+8(?:\D|$)', actual)) == 1
assert len(re.findall(r'(?m)^\s*NtileJ\s*==\s*8\s+8(?:\D|$)', actual)) == 1
assert len(re.findall(r'(?m)^\s*DT\s*==\s*100\.0d0\s+20\.0d0(?:\D|$)', actual)) == 1
assert len(re.findall(r'(?m)^\s*NDTFAST\s*==\s*30\s+30(?:\D|$)', actual)) == 1
count = actual.count('output/')
assert count > 0
actual = actual.replace('output/', outdir.rstrip('/') + '/')
open(output_path, 'w').write(actual)
print('INPUT_ASSERT_OK replacements=%d path=%s' % (count, output_path))
PY
}

run_one() {
  local label=$1 variant=$2 binary=$3 run_dir=$run_root/$1 input=$run_root/$1/input.in log=$run_root/$1/model.log
  local rc done real_raw real_sec trajectory_sha log_sha nc_count
  mkdir -p "$run_dir/output"
  prepare_input "$input" "$run_dir/output"
  echo "RUN_START|$label|$variant|$(date '+%F %T %z')|$binary"
  cd "$clean"
  set +e
  { time mpirun -np 64 --rankfile "$rankfile" --report-bindings \
      -x OMP_NUM_THREADS -x OMP_PROC_BIND -x OMP_PLACES -x OMP_STACKSIZE -x KMP_BLOCKTIME \
      --mca coll_hcoll_enable 0 \
      --mca coll_tuned_use_dynamic_rules 1 \
      --mca coll_tuned_dynamic_rules_filename "$rules" \
      "$binary" "$input"; } > "$log" 2>&1
  rc=$?
  set -e
  done=no; grep -q 'ROMS/TOMS: DONE' "$log" && done=yes
  real_raw=$(grep -E '^real[[:space:]]' "$log" | tail -1 | awk '{print $2}')
  [[ -n "$real_raw" ]] || fail "$label missing shell real"
  real_sec=$(printf '%s\n' "$real_raw" | awk -F'[ms]' '{printf "%.3f", ($1*60)+$2}')
  grep -E '^[[:space:]]+[0-9]+[[:space:]]+0001-' "$log" > "$run_dir/trajectory.txt"
  [[ -s "$run_dir/trajectory.txt" ]] || fail "$label missing trajectory"
  trajectory_sha=$(sha "$run_dir/trajectory.txt")
  log_sha=$(sha "$log")
  nc_count=$(find "$run_dir/output" -maxdepth 1 -type f -name '*.nc' | wc -l)
  grep -Fq 'Grid: 01 TimeSteps: 00000001 - 00000144' "$log" || fail "$label missing coarse steps"
  grep -Fq 'Grid: 02 TimeSteps: 00000001 - 00000720' "$log" || fail "$label missing fine steps"
  grep -Fq 'Nonlinear model elapsed time profile, Grid: 01' "$log" || fail "$label missing Grid01 profile"
  grep -Fq 'Nonlinear model elapsed time profile, Grid: 02' "$log" || fail "$label missing Grid02 profile"
  [[ "$rc" == 0 && "$done" == yes ]] || fail "$label rc=$rc done=$done"
  grep -E 'Nonlinear model elapsed time profile|Nonlinear model message Passage profile|Model 2D kernel|3D equations predictor step|Corrector time-step for tracers|Biological module|GLS vertical|Message Passage: (2D halo|3D halo|4D halo)|All percentages are with respect' "$log" > "$run_dir/profile_extract.txt"
  printf '%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\n' "$label" "$variant" "$real_sec" "$rc" "$done" "$trajectory_sha" "$log_sha" "$nc_count" >> "$run_root/summary.tsv"
  echo "RUN_DONE|$label|$variant|real=$real_sec|trajectory=$trajectory_sha|nc=$nc_count"
}

run_one A1 O33_VALIDATED "$a_bin"
run_one B1 O33_CLEAN_REBUILD "$b_bin"
run_one B2 O33_CLEAN_REBUILD "$b_bin"
run_one A2 O33_VALIDATED "$a_bin"

/public/share/mcc2026_final/miniforge3/bin/python3 - "$run_root/summary.tsv" "$run_root/decision.txt" <<'PY'
import csv, sys
rows = list(csv.DictReader(open(sys.argv[1]), delimiter='\t'))
assert [r['label'] for r in rows] == ['A1', 'B1', 'B2', 'A2']
a = [float(r['real_seconds']) for r in rows if r['variant'] == 'O33_VALIDATED']
b = [float(r['real_seconds']) for r in rows if r['variant'] == 'O33_CLEAN_REBUILD']
delta = (sum(b)/len(b) - sum(a)/len(a)) / (sum(a)/len(a)) * 100
same = len({r['trajectory_sha'] for r in rows}) == 1
if not same:
    verdict = 'SOURCE_REBUILD_TRAJECTORY_MISMATCH'
elif delta > 2:
    verdict = 'SOURCE_REBUILD_PERFORMANCE_REGRESSION'
else:
    verdict = 'SOURCE_REBUILD_DIAGNOSTIC_EQUIVALENT'
text = 'mean_parent_seconds=%.3f\nmean_clean_seconds=%.3f\nclean_delta_percent=%.4f\ntrajectory_consistent=%s\nverdict=%s\n' % (sum(a)/len(a), sum(b)/len(b), delta, same, verdict)
open(sys.argv[2], 'w').write(text)
print(text, end='')
PY
sha256sum "$run_root/summary.tsv" "$run_root/decision.txt" "$run_root/harness.log" "$run_root/rankfile" > "$run_root/SHA256SUMS"
echo "HARNESS_DONE=$(date '+%F %T %z')"

