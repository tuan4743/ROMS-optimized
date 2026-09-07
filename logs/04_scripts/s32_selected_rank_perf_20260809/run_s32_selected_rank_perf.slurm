#!/usr/bin/env bash
#SBATCH -p kshcexclu06
#SBATCH -N 4
#SBATCH -n 64
#SBATCH --ntasks-per-node=16
#SBATCH --cpus-per-task=2
#SBATCH --exclusive
#SBATCH -J fjk_S32_rankperf
#SBATCH -t 00:20:00
#SBATCH -o /public/home/fujiake/fjk/agent_tmp/logs/s32_selected_rank_perf_20260809/slurm-%j.out
#SBATCH -e /public/home/fujiake/fjk/agent_tmp/logs/s32_selected_rank_perf_20260809/slurm-%j.err

set -u -o pipefail

# Diagnostic only: two short, source-identical S32 passes at NTIMES 144/720.
root=/public/home/fujiake/fjk/agent_tmp/isolated/work/s32_nofill_20260808/ROMS_CoSiNE15
script_root=/public/home/fujiake/fjk/agent_tmp/isolated/scripts/s32_selected_rank_perf_20260809
script_source=$script_root/run_s32_selected_rank_perf.slurm
wrapper=$script_root/rank_perf_wrapper.sh
run_root=/public/home/fujiake/fjk/mcc_runs/${SLURM_JOB_ID}_s32_selected_rank_perf
log_root=/public/home/fujiake/fjk/agent_tmp/logs/s32_selected_rank_perf_20260809
base_input=$root/ROMS/External/ocean_SCS_Dongsha60_bio15.in
rules=$root/coll_rules.conf
bin=$root/oceanM.S32_parent

expected_bin_sha=d9a45dbbc351a3e386a504c87d355f0db2197c6c6bdec2b5eb2b2276b36fe5a2
expected_input_sha=05ceb746d36522ccdb960ab082b70401d294fd0cc8a393c25bcb9e25365e7b21
expected_rules_sha=0ef5b45a357d06e27f3e5e6865010fdacf24ba0fc9ebd95aae8a5dd6dc4ce473
: "${EXPECTED_SCRIPT_SHA:?missing EXPECTED_SCRIPT_SHA}"
: "${EXPECTED_WRAPPER_SHA:?missing EXPECTED_WRAPPER_SHA}"

fail() { echo "FATAL: $*" >&2; exit 2; }
check_sha() {
  local expected=$1 path=$2 actual
  [[ -f "$path" ]] || fail "missing $path"
  actual=$(sha256sum "$path" | awk '{print $1}')
  [[ "$actual" == "$expected" ]] || fail "hash mismatch path=$path expected=$expected actual=$actual"
}

case "$run_root" in /public/home/fujiake/fjk/mcc_runs/*) ;; *) fail "unsafe run_root" ;; esac
[[ ! -e "$run_root" ]] || fail "run_root exists"
mkdir -p "$run_root" "$log_root"
exec > >(tee -a "$run_root/harness.log") 2>&1

echo "HARNESS_START=$(date '+%F %T %z') JOB=$SLURM_JOB_ID"
echo "STATE=DIAGNOSTIC_ONLY SCORING_CANDIDATE=no"

ulimit -s unlimited
ulimit -l unlimited
check_sha "$EXPECTED_SCRIPT_SHA" "$script_source"
check_sha "$EXPECTED_WRAPPER_SHA" "$wrapper"
check_sha "$expected_bin_sha" "$bin"
check_sha "$expected_input_sha" "$base_input"
check_sha "$expected_rules_sha" "$rules"
grep -Eq '^[[:space:]]*NTIMES[[:space:]]*==[[:space:]]*144[[:space:]]+720' "$base_input" || fail "base input is not debug NTIMES 144/720"
[[ -L "$root/Inputfiles" ]] || ln -sfn /public/home/fujiake/Inputfiles "$root/Inputfiles"

module purge
module load mathlib/netcdf/4.4.1/intel mpi/hpcx/2.7.4/intel-2017.5.239 mathlib/hdf5/1.8.20/intel compiler/intel/2017.5.239
export OMPI_MCA_coll_hcoll_enable=0
export OMP_NUM_THREADS=2 OMP_PROC_BIND=close OMP_PLACES=cores
export OMP_STACKSIZE=1G KMP_BLOCKTIME=0 KMP_HOT_TEAMS=1 KMP_HOT_TEAMS_MAX_PARALLEL=2
export PERF_SELECTED_RANKS=8,10,24,28,40,42,48,53

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

echo "PERF_VERSION=$(/usr/bin/perf --version)"
echo "PERF_PARANOID=$(cat /proc/sys/kernel/perf_event_paranoid 2>/dev/null || true)"
set +e
/usr/bin/perf stat -x, -e task-clock,cycles:u,instructions:u,branches:u,branch-misses:u \
  -o "$run_root/preflight.stat.csv" -- true
pre_stat_rc=$?
/usr/bin/perf record -q -F 99 -e cpu-clock:u -o "$run_root/preflight.perf.data" -- sleep 0.1
pre_record_rc=$?
set -e
echo "PREFLIGHT_STAT_RC=$pre_stat_rc PREFLIGHT_RECORD_RC=$pre_record_rc"
[[ "$pre_stat_rc" -eq 0 && "$pre_record_rc" -eq 0 ]] || fail "perf preflight failed"

for mode in stat record; do
  pass_root=$run_root/$mode
  export PERF_MODE=$mode PERF_ROOT=$pass_root/perf
  mkdir -p "$pass_root/output" "$PERF_ROOT"
  input=$pass_root/input.in
  log=$pass_root/model.log
  /public/share/mcc2026_final/miniforge3/bin/python3 - "$base_input" "$input" "$pass_root/output" <<'PY'
import sys
base = open(sys.argv[1]).read()
open(sys.argv[2], 'w').write(base.replace('output/', sys.argv[3].rstrip('/') + '/'))
print('INPUT_OK')
PY

  cd "$root"
  set +e
  {
    time mpirun -np 64 --rankfile "$rankfile" \
      -x OMP_NUM_THREADS -x OMP_PROC_BIND -x OMP_PLACES -x OMP_STACKSIZE -x KMP_BLOCKTIME \
      -x KMP_HOT_TEAMS -x KMP_HOT_TEAMS_MAX_PARALLEL \
      -x PERF_MODE -x PERF_ROOT -x PERF_SELECTED_RANKS \
      --mca coll_hcoll_enable 0 --mca coll_tuned_use_dynamic_rules 1 \
      --mca coll_tuned_dynamic_rules_filename "$rules" \
      "$wrapper" "$bin" "$input"
  } > "$log" 2>&1
  rc=$?
  set -e
  grep -q 'ROMS/TOMS: DONE' "$log" || fail "$mode pass not DONE rc=$rc"
  real_raw=$(grep -E '^real[[:space:]]' "$log" | tail -1 | awk '{print $2}')
  real_sec=$(printf '%s\n' "$real_raw" | awk -F'[ms]' '{printf "%.3f", ($1*60)+$2}')
  echo "PASS=$mode REAL_DIAGNOSTIC=$real_sec"
done

for rank in 8 10 24 28 40 42 48 53; do
  data=$run_root/record/perf/rank_${rank}.perf.data
  report=$run_root/record/perf/rank_${rank}.report.txt
  [[ -s "$run_root/stat/perf/rank_${rank}.stat.csv" ]] || fail "missing stat for rank $rank"
  [[ -s "$data" ]] || fail "missing perf.data for rank $rank"
  set +e
  /usr/bin/perf report --stdio --no-children --sort symbol,dso --percent-limit 0.25 \
    -i "$data" > "$report" 2>&1
  report_rc=$?
  set -e
  echo "REPORT_RANK=$rank RC=$report_rc DATA_BYTES=$(stat -c %s "$data")"
done

echo "HARNESS_DONE=$(date '+%F %T %z')"
echo "verdict=SELECTED_RANK_PERF_COLLECTED"
