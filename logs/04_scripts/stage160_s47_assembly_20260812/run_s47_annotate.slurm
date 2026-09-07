#!/usr/bin/env bash
#SBATCH -p kshcexclu06
#SBATCH -N 4
#SBATCH -n 64
#SBATCH --ntasks-per-node=16
#SBATCH --cpus-per-task=2
#SBATCH --exclusive
#SBATCH -J fjk_S160_ASM
#SBATCH -t 00:20:00
#SBATCH -o /public/home/fujiake/fjk/stage160_asm-%j.out
#SBATCH -e /public/home/fujiake/fjk/stage160_asm-%j.err
set -euo pipefail
ulimit -s unlimited
ulimit -l unlimited

SRC=/public/home/fujiake/nan/sprint/ROMS_CoSiNE15_s47_quant
BIN="$SRC/oceanM.s47_SELQUANT_best_20260810.bak"
RULES="$SRC/coll_rules.conf"
BASE="$SRC/ROMS/External/ocean_SCS_Dongsha60_bio15.in"
WRAPPER=/public/home/fujiake/fjk/stage160_s47_assembly_scripts/rank_perf_wrapper.sh
RUN=/public/home/fujiake/fjk/stage160_s47_assembly_run_${SLURM_JOB_ID}
EXPECTED_MD5=1fc3be38a746ba1f5f5885eaf98e3bee
[[ ! -e "$RUN" ]] || { echo RUN_EXISTS; exit 2; }
[[ "$(md5sum "$BIN" | awk '{print $1}')" == "$EXPECTED_MD5" ]] || { echo BIN_DRIFT; exit 3; }
mkdir -p "$RUN/perf" "$RUN/output" "$RUN/annotate"
ln -sfn /public/home/fujiake/Inputfiles "$RUN/Inputfiles"
mkdir -p "$RUN/ROMS"
ln -sfn "$SRC/ROMS/External" "$RUN/ROMS/External"
cd "$RUN"

module purge
module load mathlib/netcdf/4.4.1/intel mpi/hpcx/2.7.4/intel-2017.5.239 mathlib/hdf5/1.8.20/intel compiler/intel/2017.5.239
export OMPI_MCA_coll_hcoll_enable=0 OMP_NUM_THREADS=2 OMP_PROC_BIND=close OMP_PLACES=cores OMP_STACKSIZE=1G KMP_BLOCKTIME=0 KMP_HOT_TEAMS=1 KMP_HOT_TEAMS_MAX_PARALLEL=2
export PERF_ROOT="$RUN/perf" PERF_SELECTED_RANKS=8,10,24,28,40,42,48,53

RANKFILE="$RUN/rankfile"
NODES=($(scontrol show hostnames "$SLURM_JOB_NODELIST"))
PAIRS=(0,1 2,3 8,9 10,11 16,17 18,19 24,25 26,27 4,5 6,7 12,13 14,15 20,21 22,23 28,29 30,31)
r=0
for n in "${NODES[@]}"; do for p in "${PAIRS[@]}"; do echo "rank ${r}=${n} slot=${p}" >> "$RANKFILE"; r=$((r+1)); done; done
[[ "$r" -eq 64 ]]

IN="$RUN/input.in"
/public/share/mcc2026_final/miniforge3/bin/python3 - "$BASE" "$IN" "$RUN/output" <<'PY'
import re,sys
s=open(sys.argv[1]).read()
s,n=re.subn(r'(?m)^(\s*NTIMES\s*==\s*).*$',r'\g<1>144 720 ! Stage160 assembly profile',s,count=1)
assert n==1
open(sys.argv[2],'w').write(s.replace('output/',sys.argv[3].rstrip('/')+'/'))
PY

set +e
{ time mpirun -np 64 --rankfile "$RANKFILE" -x OMP_NUM_THREADS -x OMP_PROC_BIND -x OMP_PLACES -x OMP_STACKSIZE -x KMP_BLOCKTIME -x KMP_HOT_TEAMS -x KMP_HOT_TEAMS_MAX_PARALLEL -x PERF_ROOT -x PERF_SELECTED_RANKS --mca coll_hcoll_enable 0 --mca coll_tuned_use_dynamic_rules 1 --mca coll_tuned_dynamic_rules_filename "$RULES" "$WRAPPER" "$BIN" "$IN" > "$RUN/model.log" 2>&1; } 2> "$RUN/timing.txt"
rc=$?
set -e
grep -q 'ROMS/TOMS: DONE' "$RUN/model.log" || rc=97
[[ "$rc" -eq 0 ]] || exit "$rc"

for rank in 8 10 24 28 40 42 48 53; do
  data="$RUN/perf/rank_${rank}.perf.data"
  [[ -s "$data" ]] || { echo "MISSING_PERF rank=$rank"; exit 4; }
  /usr/bin/perf report --stdio --no-children --sort symbol,dso --percent-limit 0.10 -i "$data" > "$RUN/perf/rank_${rank}.report.txt" 2>&1 || true
done
for rank in 28 42; do
  data="$RUN/perf/rank_${rank}.perf.data"
  for sym in pre_step3d_mod_mp_pre_step3d_tile_ step3d_t_mod_mp_step3d_t_tile_ gls_corstep_mod_mp_gls_corstep_tile_ biology_mod_mp_biology_tile_ step2d_mod_mp_step2d_tile_ t3dmix_mod_mp_t3dmix4_tile_; do
    /usr/bin/perf annotate --stdio --no-source --symbol "$sym" -i "$data" > "$RUN/annotate/rank_${rank}_${sym}.txt" 2>&1 || true
  done
done
md5sum "$BIN" > "$RUN/binary.md5"
sha256sum "$RULES" > "$RUN/rules.sha256"
cat "$RUN/timing.txt"
echo STAGE160_S47_ASSEMBLY_PROFILE_DONE
