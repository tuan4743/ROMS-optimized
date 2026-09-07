#!/usr/bin/env bash
#SBATCH -p kshcexclu06
#SBATCH -N 4
#SBATCH -n 64
#SBATCH --exclusive
#SBATCH -J fjk_S159_TRAIN
#SBATCH -t 00:30:00
#SBATCH -o /public/home/fujiake/fjk/stage159_train-%j.out
#SBATCH -e /public/home/fujiake/fjk/stage159_train-%j.err
set -euo pipefail
ulimit -s unlimited
ulimit -l unlimited
module purge
module load mathlib/netcdf/4.4.1/intel mpi/hpcx/2.7.4/intel-2017.5.239 mathlib/hdf5/1.8.20/intel compiler/intel/2017.5.239

WORK=/public/home/fujiake/fjk/stage159_s47_retrain_pgo_20260812
ROOT="$WORK/pgogen"
BIN="$ROOT/oceanM.s47_exact_pgogen"
RULES="$ROOT/coll_rules.conf"
PROFILE="$WORK/profile"
cd "$WORK"
[[ -x "$BIN" && -f "$RULES" && -d "$PROFILE" ]] || { echo MISSING_INPUT; exit 2; }
ln -sfn /public/home/fujiake/Inputfiles Inputfiles
mkdir -p ROMS
ln -sfn "$ROOT/ROMS/External" ROMS/External
[[ "$(readlink -f ROMS/External)" == "$ROOT/ROMS/External" ]] || { echo BAD_EXTERNAL_LINK; exit 3; }

export OMPI_MCA_coll_hcoll_enable=0 OMP_NUM_THREADS=2 OMP_PROC_BIND=close OMP_PLACES=cores OMP_STACKSIZE=1G KMP_BLOCKTIME=0 KMP_HOT_TEAMS=1 KMP_HOT_TEAMS_MAX_PARALLEL=2
RANKFILE=rankfile.${SLURM_JOB_ID}
NODES=($(scontrol show hostnames "$SLURM_JOB_NODELIST"))
PAIRS=(0,1 2,3 8,9 10,11 16,17 18,19 24,25 26,27 4,5 6,7 12,13 14,15 20,21 22,23 28,29 30,31)
r=0
for n in "${NODES[@]}"; do for p in "${PAIRS[@]}"; do echo "rank ${r}=${n} slot=${p}" >> "$RANKFILE"; r=$((r+1)); done; done
[[ "$r" -eq 64 ]]

OUT=output_train_half_${SLURM_JOB_ID}
IN=ocean_train_half_${SLURM_JOB_ID}.in
mkdir -p "$OUT" logs
cp "$ROOT/ROMS/External/ocean_SCS_Dongsha60_bio15.in" "$IN"
/public/share/mcc2026_final/miniforge3/envs/vali/bin/python - "$IN" "$OUT" <<'PY'
import re,sys
p,o=sys.argv[1:]
s=open(p).read()
s,n=re.subn(r'(?m)^(\s*NTIMES\s*==\s*).*$',r'\g<1>432 2160 ! Stage159 exact-S47 PGO training',s,count=1)
assert n==1
open(p,'w').write(s.replace('output/',o.rstrip('/')+'/'))
PY

md5sum "$BIN" | tee logs/train_${SLURM_JOB_ID}.binary.md5
sha256sum "$RULES" | tee logs/train_${SLURM_JOB_ID}.rules.sha256
set +e
{ time mpirun -np 64 --rankfile "$RANKFILE" -x OMP_NUM_THREADS -x OMP_PROC_BIND -x OMP_PLACES -x OMP_STACKSIZE -x KMP_BLOCKTIME -x KMP_HOT_TEAMS -x KMP_HOT_TEAMS_MAX_PARALLEL --mca coll_hcoll_enable 0 --mca coll_tuned_use_dynamic_rules 1 --mca coll_tuned_dynamic_rules_filename "$RULES" "$BIN" "$IN" > logs/train_${SLURM_JOB_ID}.log 2>&1; } 2> logs/train_${SLURM_JOB_ID}.time
rc=$?
set -e
grep -q 'ROMS/TOMS: DONE' logs/train_${SLURM_JOB_ID}.log || rc=97
cat logs/train_${SLURM_JOB_ID}.time
find "$PROFILE" -maxdepth 1 -type f -printf '%f|%s|%TY-%Tm-%TdT%TH:%TM:%TS\n' | sort | tee logs/profile_manifest_${SLURM_JOB_ID}.txt
[[ -s logs/profile_manifest_${SLURM_JOB_ID}.txt ]] || rc=98
rm -f "$RANKFILE" "$IN"
echo "STAGE159_TRAIN_DONE rc=$rc"
exit "$rc"
