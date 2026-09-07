#!/usr/bin/env bash
#SBATCH -p kshcexclu06
#SBATCH -N 4
#SBATCH -n 64
#SBATCH --ntasks-per-node=16
#SBATCH --cpus-per-task=2
#SBATCH --exclusive
#SBATCH -J fjk_S21_IFORT2021_1DAY
#SBATCH -t 01:30:00
#SBATCH -o /public/home/fujiake/fjk/agent_tmp/logs/s21_ifort2021_20260807/slurm-%j.out
#SBATCH -e /public/home/fujiake/fjk/agent_tmp/logs/s21_ifort2021_20260807/slurm-%j.err

set -u -o pipefail

# [S21-2021] 1day gate (NTIMES 864 4320) after sample A-B-B-A 118736265 returned
# gain=8.3409%, both_B_faster=True, trajectory_SAME (bit-identical trajectory).
# Runs A then B in the same allocation, then official vali on BOTH, so the
# comparison and the precision verdict come from one window.
# Run-time modules stay on compiler/intel/2017.5.239 for both legs.

root=/public/home/fujiake/fjk/agent_tmp/isolated/work/s21_ifort2021_20260807/ROMS_CoSiNE15
script_source=/public/home/fujiake/fjk/agent_tmp/isolated/scripts/s21_ifort2021_20260807/run_s21_ifort2021_1day.slurm
run_root=/public/home/fujiake/fjk/mcc_runs/${SLURM_JOB_ID}_s21_ifort2021_1day
log_root=/public/home/fujiake/fjk/agent_tmp/logs/s21_ifort2021_20260807
base_input=$root/ROMS/External/ocean_SCS_Dongsha60_bio15.in
rules=$root/coll_rules.conf
a_bin=$root/oceanM.S21_parent
b_bin=$root/oceanM.S21_ifort2021
vali_py=/public/share/mcc2026_final/miniforge3/envs/vali/bin/python

expected_a_sha=616670c727935dfa508de6d8dcae298008803d8c8007bee3667905abd40aceb6
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
mkdir -p "$run_root" "$log_root"

exec > >(tee -a "$run_root/harness.log") 2>&1
echo "HARNESS_START=$(date '+%F %T %z')"
echo "JOB=$SLURM_JOB_ID NODES=$SLURM_JOB_NODELIST"

available_kb=$(df -Pk /public/home/fujiake | awk 'NR==2 {print $4}')
[[ "$available_kb" -ge 20971520 ]] || fail "less than 20 GiB free: ${available_kb} KiB"
echo "DISK_AVAILABLE_KB=$available_kb"

ulimit -s unlimited || fail "cannot set unlimited process stack"
ulimit -l unlimited || fail "cannot set unlimited locked memory"

check_sha "$EXPECTED_SCRIPT_SHA" "$script_source"
check_sha "$expected_a_sha" "$a_bin"
check_sha "$expected_b_sha" "$b_bin"
check_sha "$expected_input" "$base_input"
check_sha "$expected_rules" "$rules"

[[ -L "$root/Inputfiles" ]] || fail "Inputfiles is not a symlink"

module purge
module load mathlib/netcdf/4.4.1/intel
module load mpi/hpcx/2.7.4/intel-2017.5.239
module load mathlib/hdf5/1.8.20/intel
module load compiler/intel/2017.5.239
ldd "$a_bin" | grep -E 'libimf|libsvml' | sed 's/^/  A: /'
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

printf 'label\tvariant\treal_seconds\trc\tdone\ttrajectory_sha\tnc_count\n' > "$run_root/summary.tsv"

prepare_input() {
  local input=$1 outdir=$2
  /public/share/mcc2026_final/miniforge3/bin/python3 - "$base_input" "$input" "$outdir" <<'PY'
import re, sys
base_path, output_path, outdir = sys.argv[1:4]
base = open(base_path).read()
assert len(re.findall(r'(?m)^\s*NTIMES\s*==\s*144\s+720(?:\D|$)', base)) == 1
assert len(re.findall(r'(?m)^\s*NtileI\s*==\s*8\s+8(?:\D|$)', base)) == 1
text, n = re.subn(r'(?m)^(\s*NTIMES\s*==\s*)144\s+720', r'\g<1>864 4320', base, count=1)
assert n == 1
text = text.replace('output/', outdir.rstrip('/') + '/')
open(output_path, 'w').write(text)
assert '864 4320' in open(output_path).read()
print('INPUT_ASSERT_OK 1day path=%s' % output_path)
PY
}

run_one() {
  local label=$1 variant=$2 binary=$3 run_dir input log rc done real_raw real_sec trajectory_sha nc_count
  run_dir=$run_root/$label
  mkdir -p "$run_dir/output"
  input=$run_dir/input.in
  log=$run_dir/model.log
  prepare_input "$input" "$run_dir/output"
  echo "RUN_START|$label|$variant|$(date '+%F %T %z')"
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
  nc_count=$(find "$run_dir/output" -maxdepth 1 -type f -name '*.nc' | wc -l)
  [[ $rc -eq 0 && "$done" == yes ]] || fail "$label rc=$rc done=$done"
  printf '%s\t%s\t%s\t%s\t%s\t%s\t%s\n' "$label" "$variant" "$real_sec" "$rc" "$done" "$trajectory_sha" "$nc_count" >> "$run_root/summary.tsv"
  echo "RUN_DONE|$label|$variant|real=$real_sec|nc=$nc_count"
}

validate() {
  local label=$1 run_dir=$run_root/$1 v
  v=$run_dir/vali.py
  cp -f "$root/vali.py" "$v"
  sed -i "s|dir_test = .*|dir_test = '$run_dir/output/'|" "$v"
  echo "VALI_START|$label"
  "$vali_py" "$v" > "$run_dir/vali_result.txt" 2>&1 || true
  rm -f "$v"
  echo "---- vali $label ----"
  cat "$run_dir/vali_result.txt"
}

set -e
run_one A S21_PARENT "$a_bin"
run_one B S21_IFORT2021 "$b_bin"
validate A
validate B

/public/share/mcc2026_final/miniforge3/bin/python3 - "$run_root" <<'PY'
import csv, os, sys, re
run_root = sys.argv[1]
rows = list(csv.DictReader(open(os.path.join(run_root, 'summary.tsv')), delimiter='\t'))
d = {r['label']: r for r in rows}
a, b = float(d['A']['real_seconds']), float(d['B']['real_seconds'])
gain = (a - b) / a * 100.0
same_traj = d['A']['trajectory_sha'] == d['B']['trajectory_sha']

def verdict_of(label):
    p = os.path.join(run_root, label, 'vali_result.txt')
    if not os.path.exists(p):
        return 'NO_FILE', 0, 0
    t = open(p, encoding='utf-8', errors='replace').read()
    ok = t.count('\u2705')
    bad = t.count('\u274c')
    return ('PASS_ALL' if bad == 0 and ok > 0 else 'FAIL(%d)' % bad), ok, bad

va, oka, bada = verdict_of('A')
vb, okb, badb = verdict_of('B')
if vb.startswith('PASS') and gain >= 2.0:
    verdict = 'PROCEED_3DAY'
elif not vb.startswith('PASS'):
    verdict = 'STOP_VALI_FAIL'
else:
    verdict = 'REVIEW'
lines = [
    'A_1day_seconds=%.3f' % a,
    'B_1day_seconds=%.3f' % b,
    'gain_percent=%.4f' % gain,
    'trajectory_identical=%s' % same_traj,
    'vali_A=%s (ok=%d fail=%d)' % (va, oka, bada),
    'vali_B=%s (ok=%d fail=%d)' % (vb, okb, badb),
    'verdict=%s' % verdict,
]
open(os.path.join(run_root, 'decision.txt'), 'w').write('\n'.join(lines) + '\n')
print('\n'.join(lines))
PY

sha256sum "$run_root/summary.tsv" "$run_root/decision.txt" "$run_root/harness.log" > "$run_root/SHA256SUMS"
echo "HARNESS_DONE=$(date '+%F %T %z')"
echo "OUTPUT_RETAINED=$run_root"
