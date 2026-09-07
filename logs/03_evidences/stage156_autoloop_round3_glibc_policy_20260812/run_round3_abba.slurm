#!/bin/bash
#SBATCH -p kshcexclu06
#SBATCH -N 4
#SBATCH -n 64
#SBATCH --exclusive
#SBATCH -J s156_glibc
#SBATCH -t 00:30:00
set -euo pipefail
ulimit -s unlimited
ulimit -l unlimited
module purge
module load mathlib/netcdf/4.4.1/intel mpi/hpcx/2.7.4/intel-2017.5.239 mathlib/hdf5/1.8.20/intel compiler/intel/2017.5.239
ROOT=/public/home/fujiake/fjk/stage156_autoloop_round3_20260812
BIN=/public/home/fujiake/nan/sprint/ROMS_CoSiNE15_s47_quant/oceanM.s47_SELQUANT_best_20260810.bak
RULES=/public/home/fujiake/nan/sprint/ROMS_CoSiNE15_s47_quant/coll_rules.conf
cd "$ROOT"
ln -sfn /public/home/fujiake/Inputfiles Inputfiles
mkdir -p ROMS
ln -sfn /public/home/fujiake/nan/sprint/ROMS_CoSiNE15_s47_quant/ROMS/External ROMS/External
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
  local out=output_${leg}_${SLURM_JOB_ID}
  local in=ocean_${leg}_${SLURM_JOB_ID}.in
  local log=logs/${leg}_${SLURM_JOB_ID}.log
  local timing=logs/${leg}_${SLURM_JOB_ID}.time
  mkdir -p "$out" logs
  cp ocean_SCS_Dongsha60_bio15.in "$in"
  /public/share/mcc2026_final/miniforge3/envs/vali/bin/python - "$in" "$out" <<'PY'
import re,sys
p,o=sys.argv[1:]
s=open(p).read()
s,n=re.subn(r'(?m)^(\s*NTIMES\s*==\s*).*$',r'\g<1>144 720 ! Stage156',s,count=1)
assert n==1
open(p,'w').write(s.replace('output/',o.rstrip('/')+'/'))
PY
  set +e
  if [[ "$mode" == B ]]; then
    { time mpirun -np 64 --rankfile "$RANKFILE" -x MALLOC_MMAP_MAX_=0 -x MALLOC_TRIM_THRESHOLD_=-1 -x OMP_NUM_THREADS -x OMP_PROC_BIND -x OMP_PLACES -x OMP_STACKSIZE -x KMP_BLOCKTIME -x KMP_HOT_TEAMS -x KMP_HOT_TEAMS_MAX_PARALLEL --mca coll_hcoll_enable 0 --mca coll_tuned_use_dynamic_rules 1 --mca coll_tuned_dynamic_rules_filename "$RULES" "$BIN" "$in" > "$log" 2>&1; } 2> "$timing"
  else
    { time mpirun -np 64 --rankfile "$RANKFILE" -x OMP_NUM_THREADS -x OMP_PROC_BIND -x OMP_PLACES -x OMP_STACKSIZE -x KMP_BLOCKTIME -x KMP_HOT_TEAMS -x KMP_HOT_TEAMS_MAX_PARALLEL --mca coll_hcoll_enable 0 --mca coll_tuned_use_dynamic_rules 1 --mca coll_tuned_dynamic_rules_filename "$RULES" "$BIN" "$in" > "$log" 2>&1; } 2> "$timing"
  fi
  rc=$?
  set -e
  grep -q 'ROMS/TOMS: DONE' "$log" || rc=97
  echo "$leg mode=$mode rc=$rc $(tr '\n' ' ' < "$timing")"
  rm -f "$in"
  return "$rc"
}
md5sum "$BIN" | tee logs/round3_${SLURM_JOB_ID}.binary.md5
sha256sum "$RULES" | tee logs/round3_${SLURM_JOB_ID}.rules.sha256
run_leg A1 A
run_leg B1 B
run_leg B2 B
run_leg A2 A
rm -f "$RANKFILE"
echo STAGE156_ROUND3_DONE
