#!/usr/bin/env bash
#SBATCH -p kshcexclu06
#SBATCH -N 4
#SBATCH -n 64
#SBATCH --ntasks-per-node=16
#SBATCH --cpus-per-task=2
#SBATCH --exclusive
#SBATCH -J fjk_S32_PROF_FULL
#SBATCH -t 01:30:00
#SBATCH -o /public/home/fujiake/fjk/agent_tmp/logs/s32_profile_full_20260808/slurm-%j.out
#SBATCH -e /public/home/fujiake/fjk/agent_tmp/logs/s32_profile_full_20260808/slurm-%j.err

set -u -o pipefail

# BELOW_GATE diagnostic: PROFILE-on full 2592/12960 on frozen S32-profile binary.
# Authorization: user 2026-08-08. Not a scoring candidate. Measures Writing/set_avg absolute.
root=/public/home/fujiake/fjk/agent_tmp/isolated/work/s32_profile_diag_20260808/ROMS_CoSiNE15
script_source=/public/home/fujiake/fjk/agent_tmp/isolated/scripts/s32_belowgate_20260808/run_s32_profile_full.slurm
run_root=/public/home/fujiake/fjk/mcc_runs/${SLURM_JOB_ID}_s32_profile_full_belowgate
log_root=/public/home/fujiake/fjk/agent_tmp/logs/s32_profile_full_20260808
base_input=$root/ROMS/External/ocean_SCS_Dongsha60_bio15.in
rules=$root/coll_rules.conf
bin=$root/oceanM.S32_profile_diag

expected_bin_sha=5b41590faa4d1575bf190c76562607abbb6cc61e959e353658dc74c3b6fbd2b6
expected_input=05ceb746d36522ccdb960ab082b70401d294fd0cc8a393c25bcb9e25365e7b21
expected_rules=0ef5b45a357d06e27f3e5e6865010fdacf24ba0fc9ebd95aae8a5dd6dc4ce473
: "${EXPECTED_SCRIPT_SHA:?missing EXPECTED_SCRIPT_SHA}"

fail() { echo "FATAL: $*" >&2; exit 2; }
check_sha() {
  local expected=$1 path=$2 actual
  [[ -f "$path" ]] || fail "missing $path"
  actual=$(sha256sum "$path" | awk '{print $1}')
  [[ "$actual" == "$expected" ]] || fail "hash mismatch path=$path expected=$expected actual=$actual"
}

case "$run_root" in /public/home/fujiake/fjk/mcc_runs/*) ;; *) fail "unsafe" ;; esac
[[ ! -e "$run_root" ]] || fail "exists"
mkdir -p "$run_root/output" "$log_root"
exec > >(tee -a "$run_root/harness.log") 2>&1
echo "HARNESS_START=$(date '+%F %T %z') JOB=$SLURM_JOB_ID"
echo "BELOW_GATE=PROFILE_ON_FULL authorization=user_20260808 scoring_candidate=no"

# Disk guard: need ~12G free for full NetCDF
free_g=$(df -BG /public/home/fujiake | awk 'NR==2{gsub(/G/,"",$4); print $4}')
[[ "$free_g" -ge 20 ]] || fail "disk free ${free_g}G < 20G"

ulimit -s unlimited; ulimit -l unlimited
check_sha "$EXPECTED_SCRIPT_SHA" "$script_source"
check_sha "$expected_bin_sha" "$bin"
check_sha "$expected_input" "$base_input"
check_sha "$expected_rules" "$rules"
[[ -L "$root/Inputfiles" ]] || ln -sfn /public/home/fujiake/Inputfiles "$root/Inputfiles"

module purge
module load mathlib/netcdf/4.4.1/intel mpi/hpcx/2.7.4/intel-2017.5.239 mathlib/hdf5/1.8.20/intel compiler/intel/2017.5.239
export OMPI_MCA_coll_hcoll_enable=0 OMP_NUM_THREADS=2 OMP_PROC_BIND=close OMP_PLACES=cores
export OMP_STACKSIZE=1G KMP_BLOCKTIME=0 KMP_HOT_TEAMS=1 KMP_HOT_TEAMS_MAX_PARALLEL=2

mapfile -t nodes < <(scontrol show hostnames "$SLURM_JOB_NODELIST")
pairs=(0,1 2,3 8,9 10,11 16,17 18,19 24,25 26,27 4,5 6,7 12,13 14,15 20,21 22,23 28,29 30,31)
rankfile=$run_root/rankfile; : > "$rankfile"; rank=0
for node in "${nodes[@]}"; do
  for pair in "${pairs[@]}"; do
    printf 'rank %d=%s slot=%s\n' "$rank" "$node" "$pair" >> "$rankfile"
    rank=$((rank+1))
  done
done

input=$run_root/input.in
log=$run_root/model.log
/public/share/mcc2026_final/miniforge3/bin/python3 - "$base_input" "$input" "$run_root/output" <<'PY'
import re, sys
base=open(sys.argv[1]).read()
base=base.replace('output/', sys.argv[3].rstrip('/')+'/')
# Force full NTIMES
base=re.sub(r'(?m)^\s*NTIMES\s*==.*$', '      NTIMES == 2592 12960', base, count=1)
open(sys.argv[2],'w').write(base)
print('INPUT_OK full NTIMES=2592/12960')
PY
grep -E '^\s*NTIMES' "$input" | head -3

cd "$root"
set +e
{
  time mpirun -np 64 --rankfile "$rankfile" \
    -x OMP_NUM_THREADS -x OMP_PROC_BIND -x OMP_PLACES -x OMP_STACKSIZE -x KMP_BLOCKTIME \
    -x KMP_HOT_TEAMS -x KMP_HOT_TEAMS_MAX_PARALLEL \
    --mca coll_hcoll_enable 0 --mca coll_tuned_use_dynamic_rules 1 \
    --mca coll_tuned_dynamic_rules_filename "$rules" \
    "$bin" "$input"
} > "$log" 2>&1
rc=$?
set -e
grep -q 'ROMS/TOMS: DONE' "$log" || fail "not DONE rc=$rc"
grep -q 'Time profiling activated' "$log" || fail "PROFILE not active in log"
real_raw=$(grep -E '^real[[:space:]]' "$log" | tail -1 | awk '{print $2}')
real_sec=$(printf '%s\n' "$real_raw" | awk -F'[ms]' '{printf "%.3f", ($1*60)+$2}')
echo "REAL=$real_sec"
nc_count=$(find "$run_root/output" -name '*.nc' 2>/dev/null | wc -l)
echo "NC_COUNT=$nc_count"
ls -la "$run_root/output" | head -25

awk '/elapsed time profile, Grid: 01/,/All percentages are with respect to total time =/{print}' "$log" > "$run_root/profile_g01.txt"
awk '/elapsed time profile, Grid: 02/,/All percentages are with respect to total time =/{print}' "$log" > "$run_root/profile_g02.txt"
awk '/message Passage profile, Grid: 01/,/All percentages are with respect to total time =/{print}' "$log" > "$run_root/message_g01.txt"
awk '/message Passage profile, Grid: 02/,/All percentages are with respect to total time =/{print}' "$log" > "$run_root/message_g02.txt"
echo "PROFILE_EXTRACTED"
echo "==== Writing / set_avg / input (both grids) ===="
grep -E 'Writing of output data|Processing of output time averaged|Processing of input data|Reading of input data|All percentages are with respect' "$log" | head -30
echo "HARNESS_DONE=$(date '+%F %T %z')"
echo "verdict=BELOW_GATE_PROFILE_FULL_DONE"
