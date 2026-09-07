#!/usr/bin/env bash
#SBATCH -p kshcexclu06
#SBATCH -N 4
#SBATCH -n 64
#SBATCH --ntasks-per-node=16
#SBATCH --cpus-per-task=2
#SBATCH --exclusive
#SBATCH -J fjk_O33_S2DHEAP_AB
#SBATCH -t 00:30:00
#SBATCH -o /public/home/fujiake/fjk/agent_tmp/logs/o33_step2d_noheap_20260802/run-%j.out
#SBATCH -e /public/home/fujiake/fjk/agent_tmp/logs/o33_step2d_noheap_20260802/run-%j.err

set -euo pipefail

parent=/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15
root=/public/home/fujiake/fjk/agent_tmp/isolated/work/o33_step2d_noheap_20260802/ROMS_CoSiNE15
script_root=/public/home/fujiake/fjk/agent_tmp/isolated/scripts/o33_step2d_noheap_20260802
run_root=/public/home/fujiake/fjk/mcc_runs/${SLURM_JOB_ID}_o33_step2d_noheap_abba_sample
base_input=$root/ROMS/External/ocean_SCS_Dongsha60_bio15.in
rules=$root/coll_rules.conf
a_bin=$parent/oceanM
b_bin=$root/oceanM.O33_step2d_noheap

expected_parent_binary=5f1a137e42252c9b978ad50ab344b9d6493f5e5afeeb71ed2d83f0a4228cfcb9
expected_parent_config=081b267b491f6ddf48cd03243a5fa466f9f277439ceb4eec5332a5355a9faced
expected_input=05ceb746d36522ccdb960ab082b70401d294fd0cc8a393c25bcb9e25365e7b21
expected_rules=0ef5b45a357d06e27f3e5e6865010fdacf24ba0fc9ebd95aae8a5dd6dc4ce473
: "${EXPECTED_RUN_SCRIPT_SHA:?missing EXPECTED_RUN_SCRIPT_SHA}"
: "${EXPECTED_PATCH_SHA:?missing EXPECTED_PATCH_SHA}"

fail() { echo "FATAL: $*" >&2; exit 2; }
check_sha() {
  local expected=$1 path=$2 actual
  [[ -f "$path" ]] || fail "missing $path"
  actual=$(sha256sum "$path" | awk '{print $1}')
  [[ "$actual" == "$expected" ]] || fail "hash mismatch path=$path expected=$expected actual=$actual"
  printf 'HASH_OK|%s|%s\n' "$actual" "$path"
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

check_sha "$EXPECTED_RUN_SCRIPT_SHA" "$script_root/run_f2c_vtype_abba.slurm"
check_sha "$EXPECTED_PATCH_SHA" "$script_root/o33_step2d_noheap.patch"
check_sha "$expected_parent_binary" "$a_bin"
check_sha "$expected_parent_config" "$parent/Compilers/Linux-ifort.mk"
check_sha "$expected_input" "$base_input"
check_sha "$expected_rules" "$rules"
grep -Fq 'BUILD_OK=' "$root/build_metadata.txt" || fail "build marker missing"
[[ -L "$root/Inputfiles" && "$(readlink -f "$root/Inputfiles")" == /public/home/fujiake/Inputfiles ]] || fail "wrong Inputfiles link"
candidate_binary_sha=$(sha256sum "$b_bin" | awk '{print $1}')
candidate_config_sha=$(sha256sum "$root/Compilers/Linux-ifort.mk" | awk '{print $1}')
echo "CANDIDATE_BINARY_SHA=$candidate_binary_sha"
echo "CANDIDATE_CONFIG_SHA=$candidate_config_sha"
grep -Fq "$candidate_binary_sha  $root/oceanM.O33_step2d_noheap" "$root/build_metadata.txt" || fail "candidate binary differs from build metadata"

module purge
module load mathlib/netcdf/4.4.1/intel mpi/hpcx/2.7.4/intel-2017.5.239 mathlib/hdf5/1.8.20/intel compiler/intel/2017.5.239
if ldd "$a_bin" "$b_bin" | grep -q 'not found'; then fail "unresolved runtime dependency"; fi
export OMPI_MCA_coll_hcoll_enable=0 OMP_NUM_THREADS=2 OMP_PROC_BIND=close OMP_PLACES=cores OMP_STACKSIZE=256M KMP_BLOCKTIME=0

mapfile -t nodes < <(scontrol show hostnames "$SLURM_JOB_NODELIST")
pairs=(0,1 2,3 8,9 10,11 16,17 18,19 24,25 26,27 4,5 6,7 12,13 14,15 20,21 22,23 28,29 30,31)
rankfile=$run_root/rankfile
rank=0
for node in "${nodes[@]}"; do for pair in "${pairs[@]}"; do printf 'rank %d=%s slot=%s\n' "$rank" "$node" "$pair"; rank=$((rank+1)); done; done > "$rankfile"
[[ "$rank" == 64 ]] || fail "rankfile count=$rank"
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
assert len(re.findall(r'(?m)^\s*DT\s*==\s*100\.0d0\s+20\.0d0(?:\D|$)', base)) == 1
assert len(re.findall(r'(?m)^\s*NDTFAST\s*==\s*30\s+30(?:\D|$)', base)) == 1
count = base.count('output/')
assert count > 0
actual = base.replace('output/', outdir.rstrip('/') + '/')
open(output_path, 'w').write(actual)
assert open(output_path).read() == actual
print('INPUT_ASSERT_OK replacements=%d path=%s' % (count, output_path))
PY
}

run_one() {
  local label=$1 variant=$2 binary=$3 run_dir=$run_root/$1 input=$run_root/$1/input.in log=$run_root/$1/model.log rc done real_raw real_sec trajectory_sha log_sha nc_count
  mkdir -p "$run_dir/output"
  prepare_input "$input" "$run_dir/output"
  echo "RUN_START|$label|$variant|$(date '+%F %T %z')|$binary"
  cd "$root"
  set +e
  { time mpirun -np 64 --rankfile "$rankfile" --report-bindings -x OMP_NUM_THREADS -x OMP_PROC_BIND -x OMP_PLACES -x OMP_STACKSIZE -x KMP_BLOCKTIME --mca coll_hcoll_enable 0 --mca coll_tuned_use_dynamic_rules 1 --mca coll_tuned_dynamic_rules_filename "$rules" "$binary" "$input"; } > "$log" 2>&1
  rc=$?
  set -e
  done=no; grep -q 'ROMS/TOMS: DONE' "$log" && done=yes
  real_raw=$(grep -E '^real[[:space:]]' "$log" | tail -1 | awk '{print $2}')
  [[ -n "$real_raw" ]] || fail "$label missing shell real"
  real_sec=$(printf '%s\n' "$real_raw" | awk -F'[ms]' '{printf "%.3f", ($1*60)+$2}')
  grep -E '^[[:space:]]+[0-9]+[[:space:]]+0001-' "$log" > "$run_dir/trajectory.txt"
  [[ -s "$run_dir/trajectory.txt" ]] || fail "$label missing trajectory"
  trajectory_sha=$(sha256sum "$run_dir/trajectory.txt" | awk '{print $1}')
  log_sha=$(sha256sum "$log" | awk '{print $1}')
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

run_one A1 O33 "$a_bin"
run_one B1 O33_STEP2D_NOHEAP "$b_bin"
run_one B2 O33_STEP2D_NOHEAP "$b_bin"
run_one A2 O33 "$a_bin"

/public/share/mcc2026_final/miniforge3/bin/python3 - "$run_root/summary.tsv" "$run_root/decision.txt" <<'PY'
import csv, sys
rows = list(csv.DictReader(open(sys.argv[1]), delimiter='\t'))
assert [r['label'] for r in rows] == ['A1', 'B1', 'B2', 'A2']
a = [float(r['real_seconds']) for r in rows if r['variant'] == 'O33']
b = [float(r['real_seconds']) for r in rows if r['variant'] == 'O33_STEP2D_NOHEAP']
gain = (sum(a)/len(a) - sum(b)/len(b)) / (sum(a)/len(a)) * 100
both = max(b) < min(a)
same = len({r['trajectory_sha'] for r in rows}) == 1
verdict = 'PROCEED_FULL_REVIEW_REQUIRED' if gain >= 3 and both and same else ('STOP_BRANCH' if gain < 2 or not same else 'REVIEW_PROFILE')
text = 'mean_A_seconds=%.3f\nmean_B_seconds=%.3f\ngain_percent=%.4f\nboth_B_faster=%s\ntrajectory_consistent=%s\nverdict=%s\n' % (sum(a)/len(a), sum(b)/len(b), gain, both, same, verdict)
open(sys.argv[2], 'w').write(text)
print(text, end='')
PY
sha256sum "$run_root/summary.tsv" "$run_root/decision.txt" "$run_root/harness.log" "$run_root/rankfile" > "$run_root/SHA256SUMS"
echo "HARNESS_DONE=$(date '+%F %T %z')"
