#!/bin/bash
#SBATCH -p kshcexclu06
#SBATCH -N 4
#SBATCH -n 64
#SBATCH --exclusive
#SBATCH -J s160_perf_s47
#SBATCH -t 00:30:00
set -euo pipefail
ulimit -s unlimited
ulimit -l unlimited
module purge
module load mathlib/netcdf/4.4.1/intel mpi/hpcx/2.7.4/intel-2017.5.239 mathlib/hdf5/1.8.20/intel compiler/intel/2017.5.239

ROOT=/public/home/fujiake/fjk/stage160_perf_s47_20260813
mkdir -p "$ROOT/logs"
cd "$ROOT"
ln -sfn /public/home/fujiake/Inputfiles Inputfiles
mkdir -p ROMS
ln -sfn /public/home/fujiake/nan/sprint/ROMS_CoSiNE15_s47_quant/ROMS/External ROMS/External
cp /public/home/fujiake/fjk/stage156_autoloop_round3_20260812/ocean_SCS_Dongsha60_bio15.in ocean.in

BIN=/public/home/fujiake/nan/sprint/ROMS_CoSiNE15_s47_quant/oceanM.s47_SELQUANT_best_20260810.bak
RULES=/public/home/fujiake/nan/sprint/ROMS_CoSiNE15_s47_quant/coll_rules.conf
md5sum "$BIN" | tee logs/binary.md5

/public/share/mcc2026_final/miniforge3/envs/vali/bin/python - ocean.in runs/output_perf_${SLURM_JOB_ID} <<'PY'
import re,sys
p,o=sys.argv[1:]
s=open(p).read()
s,n=re.subn(r'(?m)^(\s*NTIMES\s*==\s*).*$',r'\g<1>144 720 ! Stage160',s,count=1)
assert n==1
open(p,'w').write(s.replace('output/',o.rstrip('/')+'/'))
PY

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

# rank0-only perf (same method as 118617130)
set +e
{ time mpirun -np 64 --rankfile "$RANKFILE" -x OMP_NUM_THREADS -x OMP_PROC_BIND -x OMP_PLACES -x OMP_STACKSIZE -x KMP_BLOCKTIME -x KMP_HOT_TEAMS -x KMP_HOT_TEAMS_MAX_PARALLEL --mca coll_hcoll_enable 0 --mca coll_tuned_use_dynamic_rules 1 --mca coll_tuned_dynamic_rules_filename "$RULES" "$BIN" ocean.in > logs/model.log 2>&1; } 2> logs/model.time
rc=$?
set -e
grep -q 'ROMS/TOMS: DONE' logs/model.log || rc=97
echo "model rc=$rc $(tr '\n' ' ' < logs/model.time)"

# perf on rank 0 only, sampling during steady state
set +e
{ time mpirun -np 64 --rankfile "$RANKFILE" -x OMP_NUM_THREADS -x OMP_PROC_BIND -x OMP_PLACES -x OMP_STACKSIZE -x KMP_BLOCKTIME -x KMP_HOT_TEAMS -x KMP_HOT_TEAMS_MAX_PARALLEL --mca coll_hcoll_enable 0 --mca coll_tuned_use_dynamic_rules 1 --mca coll_tuned_dynamic_rules_filename "$RULES" perf record -F 99 -e cycles:u -g -o perf.data "$BIN" ocean.in > logs/perf_model.log 2>&1; } 2> logs/perf_model.time
rc=$?
set -e
grep -q 'ROMS/TOMS: DONE' logs/perf_model.log || rc=97
echo "perf rc=$rc"
ls -la perf.data
rm -f "$RANKFILE" ocean.in
echo STAGE160_PERF_DONE
