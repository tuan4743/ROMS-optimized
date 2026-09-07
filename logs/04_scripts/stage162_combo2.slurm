#!/bin/bash
#SBATCH -p kshcexclu06
#SBATCH -N 4
#SBATCH -n 64
#SBATCH --exclusive
#SBATCH -J s162_combo2
#SBATCH -t 00:40:00
set -euo pipefail
ulimit -s unlimited
ulimit -l unlimited
module purge
module load mathlib/netcdf/4.4.1/intel mpi/hpcx/2.7.4/intel-2017.5.239 mathlib/hdf5/1.8.20/intel compiler/intel/2017.5.239

ROOT=/public/home/fujiake/fjk/stage162_combo_20260813
mkdir -p "$ROOT/logs" "$ROOT/runs"
cd "$ROOT"
ln -sfn /public/home/fujiake/Inputfiles Inputfiles
mkdir -p ROMS
ln -sfn /public/home/fujiake/nan/sprint/ROMS_CoSiNE15_s47_quant/ROMS/External ROMS/External

BIN_A=/public/home/fujiake/nan/sprint/ROMS_CoSiNE15_s47_quant/oceanM.s47_SELQUANT_best_20260810.bak
BIN_B=/public/home/fujiake/fjk/stage161_gls_precise_20260813/ROMS_CoSiNE15_S47_FULL_SRC_20260811/oceanM.gls_precise
RULES=/public/home/fujiake/nan/sprint/ROMS_CoSiNE15_s47_quant/coll_rules.conf
md5sum "$BIN_A" | tee logs/binary_A.md5
md5sum "$BIN_B" | tee logs/binary_B.md5
sha256sum "$RULES" | tee logs/rules.sha256

export OMPI_MCA_coll_hcoll_enable=0 OMP_NUM_THREADS=2 OMP_PROC_BIND=close OMP_PLACES=cores OMP_STACKSIZE=1G KMP_BLOCKTIME=0 KMP_HOT_TEAMS=1 KMP_HOT_TEAMS_MAX_PARALLEL=2
RANKFILE=rankfile.${SLURM_JOB_ID}
NODES=($(scontrol show hostnames "$SLURM_JOB_NODELIST"))
PAIRS=(0,1 2,3 8,9 10,11 16,17 18,19 24,25 26,27 4,5 6,7 12,13 14,15 20,21 22,23 28,29 30,31)
r=0
for n in "${NODES[@]}"; do
  for p in "${PAIRS[@]}"; do
    echo "rank ${r}=${n} slot=${p}" >> "$RANKFILE"
    r=$((r+1))
  done
done
test "$r" -eq 64

run_leg(){
  local leg=$1
  local mode=$2
  local out=runs/output_${leg}_${SLURM_JOB_ID}
  local in=ocean_${leg}_${SLURM_JOB_ID}.in
  local log=logs/${leg}_${SLURM_JOB_ID}.log
  local timing=logs/${leg}_${SLURM_JOB_ID}.time
  mkdir -p "$out"
  cp /public/home/fujiake/fjk/stage156_autoloop_round3_20260812/ocean_SCS_Dongsha60_bio15.in "$in"
  /public/share/mcc2026_final/miniforge3/envs/vali/bin/python - "$in" "$out" <<'PY'
import re,sys
p,o=sys.argv[1:]
s=open(p).read()
s,n=re.subn(r'(?m)^(\s*NTIMES\s*==\s*).*$',r'\g<1>144 720 ! Stage162',s,count=1)
assert n==1
open(p,'w').write(s.replace('output/',o.rstrip('/')+'/'))
PY
  set +e
  if [[ "$mode" == B ]]; then
    { time mpirun -np 64 --rankfile "$RANKFILE" -x OMP_NUM_THREADS -x OMP_PROC_BIND -x OMP_PLACES -x OMP_STACKSIZE -x KMP_BLOCKTIME -x KMP_HOT_TEAMS -x KMP_HOT_TEAMS_MAX_PARALLEL=1 -x UCX_TLS=rc_x,shm,self --mca coll_hcoll_enable 0 --mca coll_tuned_use_dynamic_rules 1 --mca coll_tuned_dynamic_rules_filename "$RULES" --mca mpi_yield_when_idle 1 --mca mpi_leave_pinned 1 "$BIN_B" "$in" > "$log" 2>&1; } 2> "$timing"
  else
    { time mpirun -np 64 --rankfile "$RANKFILE" -x OMP_NUM_THREADS -x OMP_PROC_BIND -x OMP_PLACES -x OMP_STACKSIZE -x KMP_BLOCKTIME -x KMP_HOT_TEAMS -x KMP_HOT_TEAMS_MAX_PARALLEL --mca coll_hcoll_enable 0 --mca coll_tuned_use_dynamic_rules 1 --mca coll_tuned_dynamic_rules_filename "$RULES" "$BIN_A" "$in" > "$log" 2>&1; } 2> "$timing"
  fi
  rc=$?
  set -e
  grep -q 'ROMS/TOMS: DONE' "$log" || rc=97
  echo "$leg mode=$mode rc=$rc $(tr '\n' ' ' < "$timing")"
  rm -f "$in"
  return "$rc"
}

run_leg A1 A
run_leg B1 B
run_leg B2 B
run_leg A2 A
rm -f "$RANKFILE"
echo STAGE162_COMBO_DONE
