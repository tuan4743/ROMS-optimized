#!/bin/bash
#SBATCH -p kshcexclu06
#SBATCH -N 4
#SBATCH -n 64
#SBATCH --exclusive
#SBATCH -J s152_p1census
#SBATCH -t 00:20:00

set -euo pipefail
ulimit -s unlimited
ulimit -l unlimited
module purge
module load mathlib/netcdf/4.4.1/intel mpi/hpcx/2.7.4/intel-2017.5.239 mathlib/hdf5/1.8.20/intel compiler/intel/2017.5.239

ROOT=/public/home/fujiake/fjk/stage152_p1_s47_20260811
PARENT=/public/home/fujiake/nan/sprint/ROMS_CoSiNE15_s47_quant
BIN=$PARENT/oceanM.s47_SELQUANT_best_20260810.bak
cd "$ROOT"

test -x "$BIN"
test -f build/libp1probe.so
test -f coll_rules.conf
test -f ocean_SCS_Dongsha60_bio15.in
ln -sfn /public/home/fujiake/Inputfiles Inputfiles

export OMPI_MCA_coll_hcoll_enable=0
export OMP_NUM_THREADS=2
export OMP_PROC_BIND=close
export OMP_PLACES=cores
export OMP_STACKSIZE=1G
export KMP_BLOCKTIME=0
export KMP_HOT_TEAMS=1
export KMP_HOT_TEAMS_MAX_PARALLEL=2

LEG=p1_census_${SLURM_JOB_ID}
OUTDIR=output_${LEG}
PROBEDIR=probe/${LEG}
mkdir -p "$OUTDIR" "$PROBEDIR" logs

IN_JOB=ocean_${LEG}.in
cp -f ocean_SCS_Dongsha60_bio15.in "$IN_JOB"
python - "$IN_JOB" "$OUTDIR" <<'PY'
import re,sys
path,outdir=sys.argv[1:]
text=open(path).read()
text,n=re.subn(r'(?m)^(\s*NTIMES\s*==\s*).*$',r'\g<1>12 60 ! Stage152 census',text,count=1)
assert n == 1
open(path,'w').write(text.replace('output/',outdir.rstrip('/')+'/'))
PY

RANKFILE=rankfile.${SLURM_JOB_ID}
NODES=($(scontrol show hostnames "$SLURM_JOB_NODELIST"))
PAIRS=(0,1 2,3 8,9 10,11 16,17 18,19 24,25 26,27 4,5 6,7 12,13 14,15 20,21 22,23 28,29 30,31)
rank=0
for node in "${NODES[@]}"; do
  for pair in "${PAIRS[@]}"; do
    echo "rank ${rank}=${node} slot=${pair}" >> "$RANKFILE"
    rank=$((rank+1))
  done
done
test "$rank" -eq 64

export P1_PROBE_DIR=$ROOT/$PROBEDIR
export P1_MAX_EVENTS=100000
export LD_PRELOAD=$ROOT/build/libp1probe.so

md5sum "$BIN" | tee logs/${LEG}.binary.md5
sha256sum build/libp1probe.so | tee logs/${LEG}.probe.sha256
set +e
{ time mpirun -np 64 --rankfile "$RANKFILE" --report-bindings \
  -x OMP_NUM_THREADS -x OMP_PROC_BIND -x OMP_PLACES -x OMP_STACKSIZE \
  -x KMP_BLOCKTIME -x KMP_HOT_TEAMS -x KMP_HOT_TEAMS_MAX_PARALLEL \
  -x P1_PROBE_DIR -x P1_MAX_EVENTS -x LD_PRELOAD \
  --mca coll_hcoll_enable 0 \
  --mca coll_tuned_use_dynamic_rules 1 \
  --mca coll_tuned_dynamic_rules_filename "$ROOT/coll_rules.conf" \
  "$BIN" "$IN_JOB" > logs/${LEG}.log 2>&1; } 2> logs/${LEG}.time
rc=$?
set -e

grep -E '^#rank=' "$PROBEDIR"/p1_rank_*.tsv > logs/${LEG}.event_headers || true
grep -En 'ROMS/TOMS: DONE|Blows|ERROR' logs/${LEG}.log | tail -20 || true
cat logs/${LEG}.time
echo "RC=$rc files=$(find "$PROBEDIR" -type f | wc -l)"
if ! grep -q 'ROMS/TOMS: DONE' logs/${LEG}.log; then
  echo "INVALID: ROMS DONE marker absent"
  rc=97
fi
rm -f "$RANKFILE" "$IN_JOB"
exit "$rc"
