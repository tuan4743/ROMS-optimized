#!/bin/bash
#SBATCH -p kshcexclu06
#SBATCH -N 4
#SBATCH -n 64
#SBATCH --exclusive
#SBATCH --exclude=j04r2n[00-03],j01r2n[00-03],i17r1n[00-03],i17r2n[00-03],j05r2n[00-19]
#SBATCH -J nan_new_3day
#SBATCH -t 01:30:00

set -euo pipefail
ulimit -s unlimited
ulimit -l unlimited
module purge
module load mathlib/netcdf/4.4.1/intel mpi/hpcx/2.7.4/intel-2017.5.239 mathlib/hdf5/1.8.20/intel compiler/intel/2017.5.239

cd /public/home/fujiake/nan/new

export OMPI_MCA_coll_hcoll_enable=0
export OMP_NUM_THREADS=2
export OMP_PROC_BIND=close
export OMP_PLACES=cores
export OMP_STACKSIZE=1G
export KMP_BLOCKTIME=0
export KMP_HOT_TEAMS=1
export KMP_HOT_TEAMS_MAX_PARALLEL=2

RANKFILE=$PWD/rankfile.$$
rm -f "$RANKFILE"
NODES=($(scontrol show hostnames "$SLURM_JOB_NODELIST"))
PAIRS=(0,1 2,3 8,9 10,11 16,17 18,19 24,25 26,27 4,5 6,7 12,13 14,15 20,21 22,23 28,29 30,31)
rank=0
for node in "${NODES[@]}"; do
  for pair in "${PAIRS[@]}"; do
    echo "rank ${rank}=${node} slot=${pair}" >> "$RANKFILE"
    rank=$((rank+1))
  done
done

OUTDIR=output_3day_${SLURM_JOB_ID}
IN_BASE=ROMS/External/ocean_SCS_Dongsha60_bio15.in
IN_JOB=ROMS/External/ocean_SCS_Dongsha60_bio15_3day_${SLURM_JOB_ID}.in
cp -f "$IN_BASE" "$IN_JOB"
python - "$IN_JOB" "$OUTDIR" <<'PY'
import sys
p, outdir = sys.argv[1], sys.argv[2]
t = open(p).read()
open(p, 'w').write(t.replace('output/', outdir.rstrip('/') + '/'))
print('OUTDIR=', outdir)
PY

mkdir -p "$OUTDIR"
LOG=log_SCS_Dongsha60_3day_J${SLURM_JOB_ID}.txt
TIMING=TIMING_3day_${SLURM_JOB_ID}.txt

set +e
{ time mpirun -np 64 --rankfile "$RANKFILE" --report-bindings \
  -x OMP_NUM_THREADS -x OMP_PROC_BIND -x OMP_PLACES -x OMP_STACKSIZE -x KMP_BLOCKTIME \
  --mca coll_hcoll_enable 0 \
  --mca coll_tuned_use_dynamic_rules 1 \
  --mca coll_tuned_dynamic_rules_filename ./coll_rules.conf \
  ./oceanM "$IN_JOB" > "$LOG" 2>&1 ; } 2> "$TIMING"
RC=$?
set -e

echo "RC=$RC"
cat "$TIMING" || true
grep -E 'DONE|Blows|ERROR' "$LOG" | head -10 || true

if [[ $RC -eq 0 ]]; then
  PY=/public/share/mcc2026_final/miniforge3/envs/vali/bin/python
  VALI=$PWD/.vali_3day_${SLURM_JOB_ID}.py
  cp -f vali.py "$VALI"
  sed -i "s|dir_test = .*|dir_test = '$PWD/$OUTDIR/'|" "$VALI"
  "$PY" "$VALI" 2>&1 | tee "vali_3day_${SLURM_JOB_ID}.log"
  rm -f "$VALI"
fi

rm -f "$RANKFILE" "$IN_JOB"
echo "DONE log=$LOG timing=$TIMING"
exit $RC
