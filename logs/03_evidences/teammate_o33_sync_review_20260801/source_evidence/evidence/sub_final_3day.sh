#!/bin/bash
#SBATCH -p kshcexclu06
#SBATCH -N 4
#SBATCH -n 64
#SBATCH --exclusive
#SBATCH -J nan_O33_final
#SBATCH -t 03:00:00
#SBATCH -o /public/home/fujiake/nan/backup/results/logs/slurm-%j.out
#SBATCH -e /public/home/fujiake/nan/backup/results/logs/slurm-%j.err
#
# O33 正式 3 天 + 自动精度检验
# 工作目录与输出均在 backup/ 下，不污染开发树。
#
set -e
ulimit -s unlimited
ulimit -l unlimited

BK=/public/home/fujiake/nan/backup
ROOT=$BK/ROMS_CoSiNE15
module purge
module load mathlib/netcdf/4.4.1/intel mpi/hpcx/2.7.4/intel-2017.5.239 mathlib/hdf5/1.8.20/intel compiler/intel/2017.5.239

cd "$ROOT"
BIN=$ROOT/oceanM.O33_final
RULES=$ROOT/coll_rules.conf
[[ -x "$BIN" && -f "$RULES" ]] || { echo "missing bin/rules"; exit 1; }

export OMPI_MCA_coll_hcoll_enable=0
export OMP_NUM_THREADS=2
export OMP_PROC_BIND=close
export OMP_PLACES=cores
export OMP_STACKSIZE=256M
export KMP_BLOCKTIME=0

RANKFILE=$ROOT/rankfile.final_3day.$$
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
[[ "$rank" -eq 64 ]] || { echo "rank=$rank"; exit 1; }

TIMESTAMP=$(date +%Y%m%d_%H%M%S)
OUTDIR=$BK/results/3day_${SLURM_JOB_ID}
mkdir -p "$OUTDIR" "$BK/results/logs" "$BK/results/vali"

IN_BASE=$ROOT/ROMS/External/ocean_SCS_Dongsha60_bio15.in
IN_JOB=$ROOT/ROMS/External/ocean_SCS_Dongsha60_bio15_final3day_${SLURM_JOB_ID}.in
cp -f "$IN_BASE" "$IN_JOB"
# compute node may only have "python" (2.7); keep this block ASCII-only
python - "$IN_JOB" "$OUTDIR" <<'PY'
import re, sys
path, outdir = sys.argv[1:3]
text = open(path).read()
text, n = re.subn(r'(?m)^(\s*NTIMES\s*==\s*).*$',
                  r'\g<1>2592 12960!  ! O33 final 3-day backup',
                  text, count=1)
open(path, 'w').write(text.replace('output/', outdir.rstrip('/') + '/'))
print('NTIMES=2592/12960', outdir)
PY

ln -sfn /public/home/fujiake/Inputfiles "$ROOT/Inputfiles"

LOG=$BK/results/logs/run_O33_final3day_${TIMESTAMP}_J${SLURM_JOB_ID}.txt
echo "[O33-final-3day] job=$SLURM_JOB_ID bin=$BIN out=$OUTDIR" | tee "$LOG"
# NOTE: bash builtin 'time' writes to stderr; keep mpirun+time both in $LOG.
# Also echo a copy of real/user/sys to Slurm stdout so sbatch -o shows timing.
{
  time mpirun -np 64 --rankfile "$RANKFILE" --report-bindings \
    -x OMP_NUM_THREADS -x OMP_PROC_BIND -x OMP_PLACES -x OMP_STACKSIZE -x KMP_BLOCKTIME \
    --mca coll_hcoll_enable 0 \
    --mca coll_tuned_use_dynamic_rules 1 \
    --mca coll_tuned_dynamic_rules_filename "$RULES" \
    "$BIN" "$IN_JOB"
} >> "$LOG" 2>&1
RC=$?
# surface timing for slurm-*.out and TIMING_*.txt
REAL_LINE=$(rg -n '^real' "$LOG" | tail -1 | cut -d: -f2-)
USER_LINE=$(rg -n '^user' "$LOG" | tail -1 | cut -d: -f2-)
SYS_LINE=$(rg -n '^sys' "$LOG" | tail -1 | cut -d: -f2-)
echo "[timing]${REAL_LINE}"
echo "[timing]${USER_LINE}"
echo "[timing]${SYS_LINE}"
{
  echo "job=$SLURM_JOB_ID"
  echo "rc=$RC"
  echo "${REAL_LINE}"
  echo "${USER_LINE}"
  echo "${SYS_LINE}"
  echo "log=$LOG"
} | tee "$BK/results/TIMING_${SLURM_JOB_ID}.txt"


# G02 热点摘要
if [[ -f "$LOG" ]]; then
  {
    echo "=== O33 final 3day G02 hotspot job=$SLURM_JOB_ID ==="
    rg -n 'Nonlinear model elapsed time profile, Grid: 02|Model 2D kernel|GLS vertical|3D equations predictor|Corrector time-step for tracers|Biological module|Message Passage: 2D halo|Message Passage: 4D halo|ROMS/TOMS: DONE|real\s' "$LOG" | head -60
  } > "$BK/results/logs/g02_hotspot_final3day_${SLURM_JOB_ID}.txt"
fi

rm -f "$RANKFILE" "$IN_JOB"

# 精度检验 → backup/results/vali/
if [[ $RC -eq 0 ]]; then
  PY=/public/share/mcc2026_final/miniforge3/envs/vali/bin/python
  VALI=$BK/results/vali/vali_final3day_${SLURM_JOB_ID}.py
  VALI_LOG=$BK/results/vali/vali_final3day_${SLURM_JOB_ID}.log
  cp -f /public/share/mcc2026_final/vali.py "$VALI"
  ABS_OUT="${OUTDIR}/"
  sed -i "s|dir_test = .*|dir_test = '${ABS_OUT}'|" "$VALI"
  echo "[O33-final-3day] vali on $ABS_OUT" | tee -a "$LOG"
  ls -lh "$OUTDIR"/SCS_avg_0001.nc "$OUTDIR"/Dongsha60_avg_0001.nc | tee -a "$LOG"
  "$PY" "$VALI" 2>&1 | tee "$VALI_LOG"
  echo "[O33-final-3day] vali log: $VALI_LOG" | tee -a "$LOG"
else
  echo "[O33-final-3day] RC=$RC skip vali" | tee -a "$LOG"
fi

# 结果清单
{
  echo "job_id=$SLURM_JOB_ID"
  echo "rc=$RC"
  echo "outdir=$OUTDIR"
  echo "log=$LOG"
  echo "vali_log=$BK/results/vali/vali_final3day_${SLURM_JOB_ID}.log"
  date
} > "$BK/results/RUN_SUMMARY_${SLURM_JOB_ID}.txt"

exit $RC
