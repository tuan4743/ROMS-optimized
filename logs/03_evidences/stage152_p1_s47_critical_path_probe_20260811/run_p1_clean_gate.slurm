#!/bin/bash
#SBATCH -p kshcexclu06
#SBATCH -N 4
#SBATCH -n 64
#SBATCH --exclusive
#SBATCH -J s152_p1clean
#SBATCH -t 00:40:00

set -euo pipefail
ulimit -s unlimited; ulimit -l unlimited
module purge
module load mathlib/netcdf/4.4.1/intel mpi/hpcx/2.7.4/intel-2017.5.239 mathlib/hdf5/1.8.20/intel compiler/intel/2017.5.239
ROOT=/public/home/fujiake/fjk/stage152_p1_s47_20260811
BIN=/public/home/fujiake/nan/sprint/ROMS_CoSiNE15_s47_quant/oceanM.s47_SELQUANT_best_20260810.bak
cd "$ROOT"; test -x "$BIN"; test -f build/libp1aggregate.so
ln -sfn /public/home/fujiake/Inputfiles Inputfiles
export OMPI_MCA_coll_hcoll_enable=0 OMP_NUM_THREADS=2 OMP_PROC_BIND=close OMP_PLACES=cores OMP_STACKSIZE=1G KMP_BLOCKTIME=0 KMP_HOT_TEAMS=1 KMP_HOT_TEAMS_MAX_PARALLEL=2
RANKFILE=rankfile.${SLURM_JOB_ID}; NODES=($(scontrol show hostnames "$SLURM_JOB_NODELIST")); PAIRS=(0,1 2,3 8,9 10,11 16,17 18,19 24,25 26,27 4,5 6,7 12,13 14,15 20,21 22,23 28,29 30,31); rank=0
for node in "${NODES[@]}"; do for pair in "${PAIRS[@]}"; do echo "rank ${rank}=${node} slot=${pair}" >> "$RANKFILE"; rank=$((rank+1)); done; done; test "$rank" -eq 64

run_leg(){
  local leg=$1
  local mode=$2
  local out=output_${leg}_${SLURM_JOB_ID}
  local in=ocean_${leg}_${SLURM_JOB_ID}.in
  local log=logs/${leg}_${SLURM_JOB_ID}.log
  local timing=logs/${leg}_${SLURM_JOB_ID}.time
  mkdir -p "$out" logs; cp -f ocean_SCS_Dongsha60_bio15.in "$in"
  python - "$in" "$out" <<'PY'
import re,sys
p,o=sys.argv[1:];s=open(p).read();s,n=re.subn(r'(?m)^(\s*NTIMES\s*==\s*).*$',r'\g<1>144 720 ! Stage152 clean',s,count=1);assert n==1;open(p,'w').write(s.replace('output/',o.rstrip('/')+'/'))
PY
  if [[ "$mode" == probe ]]; then
    export P1_PROBE_DIR=$ROOT/probe/${leg}_${SLURM_JOB_ID} P1_BLOCK_SECONDS=60.0 LD_PRELOAD=$ROOT/build/libp1aggregate.so; mkdir -p "$P1_PROBE_DIR"
    set +e; { time mpirun -np 64 --rankfile "$RANKFILE" -x OMP_NUM_THREADS -x OMP_PROC_BIND -x OMP_PLACES -x OMP_STACKSIZE -x KMP_BLOCKTIME -x KMP_HOT_TEAMS -x KMP_HOT_TEAMS_MAX_PARALLEL -x P1_PROBE_DIR -x P1_BLOCK_SECONDS -x LD_PRELOAD --mca coll_hcoll_enable 0 --mca coll_tuned_use_dynamic_rules 1 --mca coll_tuned_dynamic_rules_filename "$ROOT/coll_rules.conf" "$BIN" "$in" > "$log" 2>&1; } 2> "$timing"; rc=$?; set -e
  else
    unset P1_PROBE_DIR P1_BLOCK_SECONDS LD_PRELOAD || true
    set +e; { time mpirun -np 64 --rankfile "$RANKFILE" -x OMP_NUM_THREADS -x OMP_PROC_BIND -x OMP_PLACES -x OMP_STACKSIZE -x KMP_BLOCKTIME -x KMP_HOT_TEAMS -x KMP_HOT_TEAMS_MAX_PARALLEL --mca coll_hcoll_enable 0 --mca coll_tuned_use_dynamic_rules 1 --mca coll_tuned_dynamic_rules_filename "$ROOT/coll_rules.conf" "$BIN" "$in" > "$log" 2>&1; } 2> "$timing"; rc=$?; set -e
  fi
  grep -q 'ROMS/TOMS: DONE' "$log" || rc=97; echo "$leg rc=$rc $(tr '\n' ' ' < "$timing")"; rm -f "$in"; return "$rc"
}
md5sum "$BIN" | tee logs/clean_${SLURM_JOB_ID}.binary.md5; sha256sum build/libp1aggregate.so | tee logs/clean_${SLURM_JOB_ID}.probe.sha256
run_leg aprime_pre none
run_leg pclean1 probe
run_leg pclean2 probe
run_leg aprime_post none
rm -f "$RANKFILE"; echo STAGE152_CLEAN_GATE_DONE
