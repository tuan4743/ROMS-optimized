#!/bin/bash
#SBATCH -p kshcexclu06
#SBATCH -N 4
#SBATCH -n 64
#SBATCH --exclusive
#SBATCH -J s160_perf_s47b
#SBATCH -t 00:30:00
set -euo pipefail
ulimit -s unlimited
ulimit -l unlimited
module purge
module load mathlib/netcdf/4.4.1/intel mpi/hpcx/2.7.4/intel-2017.5.239 mathlib/hdf5/1.8.20/intel compiler/intel/2017.5.239

ROOT=/public/home/fujiake/fjk/stage160_perf_s47_20260813
cd "$ROOT"
BIN=/public/home/fujiake/nan/sprint/ROMS_CoSiNE15_s47_quant/oceanM.s47_SELQUANT_best_20260810.bak
RULES=/public/home/fujiake/nan/sprint/ROMS_CoSiNE15_s47_quant/coll_rules.conf
cp /public/home/fujiake/fjk/stage156_autoloop_round3_20260812/ocean_SCS_Dongsha60_bio15.in ocean.in

/public/share/mcc2026_final/miniforge3/envs/vali/bin/python - ocean.in runs/output_perfb_${SLURM_JOB_ID} <<'PY'
import re,sys
p,o=sys.argv[1:]
s=open(p).read()
s,n=re.subn(r'(?m)^(\s*NTIMES\s*==\s*).*$',r'\g<1>144 720 ! Stage160b',s,count=1)
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

set +e
{ time PERF_DATA="$ROOT/perf_flat.data" MODEL_EXE="$BIN" MODEL_INPUT="$PWD/ocean.in" mpirun -np 64 --rankfile "$RANKFILE" -x OMP_NUM_THREADS -x OMP_PROC_BIND -x OMP_PLACES -x OMP_STACKSIZE -x KMP_BLOCKTIME -x KMP_HOT_TEAMS -x KMP_HOT_TEAMS_MAX_PARALLEL -x PERF_DATA -x MODEL_EXE -x MODEL_INPUT --mca coll_hcoll_enable 0 --mca coll_tuned_use_dynamic_rules 1 --mca coll_tuned_dynamic_rules_filename "$RULES" "$ROOT/rank_wrapper_flat.sh" > logs/perf_flat.log 2>&1; } 2> logs/perf_flat.time
rc=$?
set -e
grep -q 'ROMS/TOMS: DONE' logs/perf_flat.log || rc=97
echo "perf_flat rc=$rc"
ls -la perf_flat.data

perf report --stdio -i perf_flat.data --symbol-filter=pre_step3d_mod_mp_pre_step3d_tile_ > report_flat_pre_step3d.txt 2>&1 || true
perf annotate --stdio -i perf_flat.data -s pre_step3d_mod_mp_pre_step3d_tile_ > annot_flat_pre_step3d.txt 2>&1 || true
perf report --stdio -i perf_flat.data > report_flat_full.txt 2>&1 || true
wc -l report_flat_pre_step3d.txt annot_flat_pre_step3d.txt report_flat_full.txt
rm -f "$RANKFILE" ocean.in
echo STAGE160_PERF_FLAT_DONE
