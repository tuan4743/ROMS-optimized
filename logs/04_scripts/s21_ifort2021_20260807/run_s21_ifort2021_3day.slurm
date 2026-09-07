#!/usr/bin/env bash
#SBATCH -p kshcexclu06
#SBATCH -N 4
#SBATCH -n 64
#SBATCH --ntasks-per-node=16
#SBATCH --cpus-per-task=2
#SBATCH --exclusive
#SBATCH -J fjk_S21_IFORT2021_3DAY
#SBATCH -t 03:00:00
#SBATCH -o /public/home/fujiake/fjk/agent_tmp/logs/s21_ifort2021_20260807/slurm-%j.out
#SBATCH -e /public/home/fujiake/fjk/agent_tmp/logs/s21_ifort2021_20260807/slurm-%j.err

set -u -o pipefail

# [S21-2021] formal 3-day gate after 1day 118742729:
#   A=667.347s B=617.580s gain=7.4574% trajectory_identical
#   vali_A=PASS_ALL(26) vali_B=PASS_ALL(26) Dongsha u=0.000052
# Runs B only (candidate) at NTIMES 2592/12960 + official vali.
# A (S21 parent) 3-day reference already exists as teammate job 118690177 = 1979.6s.
# Run-time modules stay on compiler/intel/2017.5.239.

root=/public/home/fujiake/fjk/agent_tmp/isolated/work/s21_ifort2021_20260807/ROMS_CoSiNE15
script_source=/public/home/fujiake/fjk/agent_tmp/isolated/scripts/s21_ifort2021_20260807/run_s21_ifort2021_3day.slurm
run_root=/public/home/fujiake/fjk/mcc_runs/${SLURM_JOB_ID}_s21_ifort2021_3day
log_root=/public/home/fujiake/fjk/agent_tmp/logs/s21_ifort2021_20260807
base_input=$root/ROMS/External/ocean_SCS_Dongsha60_bio15.in
rules=$root/coll_rules.conf
b_bin=$root/oceanM.S21_ifort2021
vali_py=/public/share/mcc2026_final/miniforge3/envs/vali/bin/python

expected_b_sha=33354fac2567e306411c5f1cc4224224da630129e90e7136fea3a6809595ca63
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
[[ ! -e "$run_root" ]] || fail "run root already exists: $run_root"
mkdir -p "$run_root" "$log_root" "$run_root/output" "$run_root/validation" "$run_root/metadata" "$run_root/logs"

exec > >(tee -a "$run_root/harness.log") 2>&1
echo "HARNESS_START=$(date '+%F %T %z')"
echo "JOB=$SLURM_JOB_ID NODES=$SLURM_JOB_NODELIST"

available_kb=$(df -Pk /public/home/fujiake | awk 'NR==2 {print $4}')
[[ "$available_kb" -ge 31457280 ]] || fail "less than 30 GiB free: ${available_kb} KiB"
echo "DISK_AVAILABLE_KB=$available_kb"

ulimit -s unlimited || fail "cannot set unlimited process stack"
ulimit -l unlimited || fail "cannot set unlimited locked memory"

check_sha "$EXPECTED_SCRIPT_SHA" "$script_source"
check_sha "$expected_b_sha" "$b_bin"
check_sha "$expected_input" "$base_input"
check_sha "$expected_rules" "$rules"
[[ -L "$root/Inputfiles" ]] || fail "Inputfiles is not a symlink"

module purge
module load mathlib/netcdf/4.4.1/intel
module load mpi/hpcx/2.7.4/intel-2017.5.239
module load mathlib/hdf5/1.8.20/intel
module load compiler/intel/2017.5.239
ldd "$b_bin" | grep -E 'libimf|libsvml' | sed 's/^/  B: /'

export OMPI_MCA_coll_hcoll_enable=0
export OMP_NUM_THREADS=2
export OMP_PROC_BIND=close
export OMP_PLACES=cores
export OMP_STACKSIZE=1G
export KMP_BLOCKTIME=0
export KMP_HOT_TEAMS=1 KMP_HOT_TEAMS_MAX_PARALLEL=2

mapfile -t nodes < <(scontrol show hostnames "$SLURM_JOB_NODELIST")
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
log=$run_root/logs/model.log
outdir=$run_root/output

/public/share/mcc2026_final/miniforge3/bin/python3 - "$base_input" "$input" "$outdir" <<'PY'
import re, sys
base_path, output_path, outdir = sys.argv[1:4]
base = open(base_path).read()
assert len(re.findall(r'(?m)^\s*NTIMES\s*==\s*144\s+720(?:\D|$)', base)) == 1
text, n = re.subn(r'(?m)^(\s*NTIMES\s*==\s*)144\s+720', r'\g<1>2592 12960', base, count=1)
assert n == 1
text = text.replace('output/', outdir.rstrip('/') + '/')
open(output_path, 'w').write(text)
assert '2592 12960' in open(output_path).read()
print('INPUT_ASSERT_OK 3day path=%s' % output_path)
PY

{
  echo "stage=s21_ifort2021_3day"
  echo "job=$SLURM_JOB_ID"
  echo "ntimes=2592 12960"
  echo "bin=$(sha256sum "$b_bin" | awk '{print $1}')  $b_bin"
  echo "compiler_build=ifort 2021.3.0"
  echo "compiler_runtime=2017.5.239"
  echo "base=S21 teammate parent 1979.6s (job 118690177)"
  echo "prior_sample=118736265 gain=8.3409% trajectory_SAME"
  echo "prior_1day=118742729 A=667.347 B=617.580 gain=7.4574% vali_B=26/26"
} > "$run_root/metadata/run_metadata.txt"

echo "RUN_START|B|S21_IFORT2021|$(date '+%F %T %z')"
cd "$root"
set +e
{
  time mpirun -np 64 --rankfile "$rankfile" --report-bindings \
    -x OMP_NUM_THREADS -x OMP_PROC_BIND -x OMP_PLACES -x OMP_STACKSIZE -x KMP_BLOCKTIME \
    -x KMP_HOT_TEAMS -x KMP_HOT_TEAMS_MAX_PARALLEL \
    --mca coll_hcoll_enable 0 \
    --mca coll_tuned_use_dynamic_rules 1 \
    --mca coll_tuned_dynamic_rules_filename "$rules" \
    "$b_bin" "$input"
} > "$log" 2>&1
rc=$?
set -e

done=no
grep -q 'ROMS/TOMS: DONE' "$log" && done=yes
real_raw=$(grep -E '^real[[:space:]]' "$log" | tail -1 | awk '{print $2}')
[[ -n "$real_raw" ]] || fail "missing shell time real"
real_sec=$(printf '%s\n' "$real_raw" | awk -F'[ms]' '{printf "%.3f", ($1*60)+$2}')
nc_count=$(find "$outdir" -maxdepth 1 -type f -name '*.nc' | wc -l)
[[ $rc -eq 0 && "$done" == yes ]] || fail "rc=$rc done=$done"
echo "RUN_DONE|B|real=$real_sec|nc=$nc_count"

{
  echo "real_seconds=$real_sec"
  echo "rc=$rc"
  echo "done=$done"
  echo "nc_count=$nc_count"
} >> "$run_root/metadata/run_metadata.txt"

v=$run_root/validation/vali.py
cp -f "$root/vali.py" "$v"
sed -i "s|dir_test = .*|dir_test = '$outdir/'|" "$v"
echo "VALI_START"
"$vali_py" "$v" > "$run_root/validation/vali_result.txt" 2>&1 || true
rm -f "$v"
cp -f "$run_root/validation/vali_result.txt" "$run_root/validation/vali_result_copy.txt"
echo "---- vali ----"
cat "$run_root/validation/vali_result.txt"

/public/share/mcc2026_final/miniforge3/bin/python3 - "$run_root" "$real_sec" <<'PY'
import os, sys
run_root, real_s = sys.argv[1], float(sys.argv[2])
t = open(os.path.join(run_root, 'validation', 'vali_result.txt'), encoding='utf-8', errors='replace').read()
ok = t.count('\u2705'); bad = t.count('\u274c')
vali = 'PASS_ALL' if bad == 0 and ok > 0 else 'FAIL(%d)' % bad
ref = 1979.6
gain = (ref - real_s) / ref * 100.0
if vali == 'PASS_ALL' and gain >= 2.0:
    verdict = 'NEW_CHAMPION'
elif vali != 'PASS_ALL':
    verdict = 'STOP_VALI_FAIL'
else:
    verdict = 'REVIEW'
lines = [
    'B_3day_seconds=%.3f' % real_s,
    'S21_ref_seconds=%.3f' % ref,
    'gain_vs_S21_percent=%.4f' % gain,
    'gain_vs_O33_percent=%.4f' % ((2136.310 - real_s) / 2136.310 * 100.0),
    'vali_B=%s (ok=%d fail=%d)' % (vali, ok, bad),
    'verdict=%s' % verdict,
]
open(os.path.join(run_root, 'decision.txt'), 'w').write('\n'.join(lines) + '\n')
open(os.path.join(run_root, 'metadata', 'run_metadata.txt'), 'a').write(
    'validation_result=%s\nCOMPLETE %s\n' % (vali, os.popen('date +%F_%T').read().strip()))
print('\n'.join(lines))
PY

sha256sum "$run_root/decision.txt" "$run_root/harness.log" "$log" > "$run_root/SHA256SUMS"
echo "HARNESS_DONE=$(date '+%F %T %z')"
echo "OUTPUT_RETAINED=$run_root"
