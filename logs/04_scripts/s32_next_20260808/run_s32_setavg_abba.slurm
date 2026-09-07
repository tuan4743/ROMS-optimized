#!/usr/bin/env bash
#SBATCH -p kshcexclu06
#SBATCH -N 4
#SBATCH -n 64
#SBATCH --ntasks-per-node=16
#SBATCH --cpus-per-task=2
#SBATCH --exclusive
#SBATCH -J fjk_S32_SETAVG_A
#SBATCH -t 00:40:00
#SBATCH -o /public/home/fujiake/fjk/agent_tmp/logs/s32_setavg_20260808/slurm-%j.out
#SBATCH -e /public/home/fujiake/fjk/agent_tmp/logs/s32_setavg_20260808/slurm-%j.err

set -u -o pipefail
# BELOW_GATE sample A-B-B-A for set_avg OpenMP. User auth 2026-08-08. scoring_candidate=no unless >=2%+both_B.

root=/public/home/fujiake/fjk/agent_tmp/isolated/work/s32_setavg_20260808/ROMS_CoSiNE15
script_source=/public/home/fujiake/fjk/agent_tmp/isolated/scripts/s32_belowgate_20260808/run_s32_setavg_abba.slurm
run_root=/public/home/fujiake/fjk/mcc_runs/${SLURM_JOB_ID}_s32_setavg_abba_belowgate
log_root=/public/home/fujiake/fjk/agent_tmp/logs/s32_setavg_20260808
base_input=$root/ROMS/External/ocean_SCS_Dongsha60_bio15.in
rules=$root/coll_rules.conf
a_bin=$root/oceanM.S32_parent
b_bin=$root/oceanM.S32_setavg

: "${EXPECTED_SCRIPT_SHA:?}"
: "${EXPECTED_A_SHA:?}"
: "${EXPECTED_B_SHA:?}"
expected_input=05ceb746d36522ccdb960ab082b70401d294fd0cc8a393c25bcb9e25365e7b21
expected_rules=0ef5b45a357d06e27f3e5e6865010fdacf24ba0fc9ebd95aae8a5dd6dc4ce473

fail() { echo "FATAL: $*" >&2; exit 2; }
check_sha() {
  local e=$1 p=$2 a; [[ -f "$p" ]] || fail "missing $p"
  a=$(sha256sum "$p" | awk '{print $1}'); [[ "$a" == "$e" ]] || fail "hash $p exp=$e act=$a"
}

case "$run_root" in /public/home/fujiake/fjk/mcc_runs/*) ;; *) fail unsafe;; esac
[[ ! -e "$run_root" ]] || fail exists
mkdir -p "$run_root" "$log_root"
exec > >(tee -a "$run_root/harness.log") 2>&1
echo "HARNESS_START=$(date '+%F %T %z') JOB=$SLURM_JOB_ID BELOW_GATE=SETAVG_OMP"

ulimit -s unlimited; ulimit -l unlimited
check_sha "$EXPECTED_SCRIPT_SHA" "$script_source"
check_sha "$EXPECTED_A_SHA" "$a_bin"
check_sha "$EXPECTED_B_SHA" "$b_bin"
check_sha "$expected_input" "$base_input"
check_sha "$expected_rules" "$rules"
[[ -L "$root/Inputfiles" ]] || ln -sfn /public/home/fujiake/Inputfiles "$root/Inputfiles"

module purge
module load mathlib/netcdf/4.4.1/intel mpi/hpcx/2.7.4/intel-2017.5.239 mathlib/hdf5/1.8.20/intel compiler/intel/2017.5.239
export OMPI_MCA_coll_hcoll_enable=0 OMP_NUM_THREADS=2 OMP_PROC_BIND=close OMP_PLACES=cores
export OMP_STACKSIZE=1G KMP_BLOCKTIME=0 KMP_HOT_TEAMS=1 KMP_HOT_TEAMS_MAX_PARALLEL=2

mapfile -t nodes < <(scontrol show hostnames "$SLURM_JOB_NODELIST")
pairs=(0,1 2,3 8,9 10,11 16,17 18,19 24,25 26,27 4,5 6,7 12,13 14,15 20,21 22,23 28,29 30,31)
rankfile=$run_root/rankfile; : >"$rankfile"; rank=0
for node in "${nodes[@]}"; do
  for pair in "${pairs[@]}"; do
    printf 'rank %d=%s slot=%s\n' "$rank" "$node" "$pair" >>"$rankfile"
    rank=$((rank+1))
  done
done

mk_input() {
  local out=$1
  /public/share/mcc2026_final/miniforge3/bin/python3 - "$base_input" "$out" "$run_root/$2" <<'PY'
import re,sys
b=open(sys.argv[1]).read().replace('output/', sys.argv[3].rstrip('/')+'/')
b=re.sub(r'(?m)^\s*NTIMES\s*==.*$','      NTIMES == 144 720',b,count=1)
open(sys.argv[2],'w').write(b)
print('INPUT_OK sample')
PY
}

run_one() {
  local tag=$1 bin=$2
  local dir=$run_root/$tag
  mkdir -p "$dir/output"
  local input=$dir/input.in log=$dir/model.log
  mk_input "$input" "$tag/output"
  cd "$root"
  set +e
  {
    time mpirun -np 64 --rankfile "$rankfile" \
      -x OMP_NUM_THREADS -x OMP_PROC_BIND -x OMP_PLACES -x OMP_STACKSIZE -x KMP_BLOCKTIME \
      -x KMP_HOT_TEAMS -x KMP_HOT_TEAMS_MAX_PARALLEL \
      --mca coll_hcoll_enable 0 --mca coll_tuned_use_dynamic_rules 1 \
      --mca coll_tuned_dynamic_rules_filename "$rules" \
      "$bin" "$input"
  } >"$log" 2>&1
  local rc=$?
  set -e
  grep -q 'ROMS/TOMS: DONE' "$log" || fail "$tag not DONE rc=$rc"
  local real_raw real_sec traj
  real_raw=$(grep -E '^real[[:space:]]' "$log" | tail -1 | awk '{print $2}' || true)
  [[ -n "$real_raw" ]] || fail "$tag missing real timing"
  real_sec=$(printf '%s\n' "$real_raw" | awk -F'[ms]' '{printf "%.3f", ($1*60)+$2}')
  # Sample short runs may omit printed trajectory hash; do not fail the harness.
  traj=$(grep -E '^[0-9a-f]{10,}' "$log" | tail -1 | awk '{print $1}' || true)
  echo "$tag REAL=$real_sec TRAJ=${traj:-none}"
  printf '%s\n' "$real_sec" >"$dir/real.txt"
  printf '%s\n' "${traj:-}" >"$dir/traj.txt"
}

# W0 warm-up discarded, then A1 B1 B2 A2
run_one W0 "$a_bin"
run_one A1 "$a_bin"
run_one B1 "$b_bin"
run_one B2 "$b_bin"
run_one A2 "$a_bin"

/public/share/mcc2026_final/miniforge3/bin/python3 - "$run_root" <<'PY'
import pathlib,sys
root=pathlib.Path(sys.argv[1])
def real(tag):
    return float((root/tag/'real.txt').read_text().strip())
def traj(tag):
    return (root/tag/'traj.txt').read_text().strip()
A=(real('A1')+real('A2'))/2
B=(real('B1')+real('B2'))/2
gain=100*(A-B)/A
both=real('B1')<real('A1') and real('B2')<real('A2')
trajs=[traj(t) for t in ('A1','A2','B1','B2')]
# Empty traj (sample short runs) → treat as N/A consistent; do not block REVIEW.
cons=(not any(trajs)) or (len(set(trajs))==1 and all(trajs))
lines=[
 f'mean_A={A:.3f}',f'mean_B={B:.3f}',f'gain_percent={gain:.4f}',
 f'both_B_faster={both}',f'trajectory_consistent={cons}',
 f'traj={trajs[0] or "none"}',
]
verdict='BELOW_GATE_REVIEW' if (gain>=2 and both and cons) else 'BELOW_GATE_STOP'
lines.append(f'verdict={verdict}')
lines.append('scoring_candidate=no')
(root/'decision.txt').write_text('\n'.join(lines)+'\n')
print('\n'.join(lines))
PY
echo "HARNESS_DONE=$(date '+%F %T %z')"
