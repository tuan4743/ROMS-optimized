#!/bin/bash
#SBATCH -p kshcexclu06
#SBATCH -N 4
#SBATCH -n 64
#SBATCH --exclusive
#SBATCH -J s157_round4_micro
#SBATCH -t 00:20:00
set -euo pipefail
ulimit -s unlimited
module purge
module load mathlib/netcdf/4.4.1/intel mpi/hpcx/2.7.4/intel-2017.5.239 mathlib/hdf5/1.8.20/intel compiler/intel/2017.5.239

ROOT=/public/home/fujiake/fjk/stage157_autoloop_round4_20260812
RULES_PARENT=/public/home/fujiake/nan/sprint/ROMS_CoSiNE15_s47_quant/coll_rules.conf
RULES_CAND=${ROOT}/coll_rules_134368_alg5.conf
SRC=${ROOT}/micro_allred.c
BIN=${ROOT}/micro_allred
cd "$ROOT"
mkdir -p logs

sha256sum "$RULES_PARENT" | tee logs/round4_rules_parent.sha256
sha256sum "$RULES_CAND"   | tee logs/round4_rules_cand.sha256

mpicc -std=c99 -O2 -o "$BIN" "$SRC"
md5sum "$BIN" | tee logs/round4_${SLURM_JOB_ID}.binary.md5

export OMPI_MCA_coll_hcoll_enable=0

run_micro() {
  local leg=$1
  local rules=$2
  local log=logs/micro_${leg}_${SLURM_JOB_ID}.log
  local timing=logs/micro_${leg}_${SLURM_JOB_ID}.time
  set +e
  { time mpirun -np 64 --mca coll_tuned_use_dynamic_rules 1 --mca coll_tuned_dynamic_rules_filename "$rules" "$BIN" > "$log" 2>&1; } 2> "$timing"
  rc=$?
  set -e
  echo "$leg rc=$rc $(tr '\n' ' ' < "$timing")"
  grep -E '^ranks=' "$log" || echo "$leg NO_OUTPUT"
}

md5sum "$BIN" | tee logs/round4_${SLURM_JOB_ID}.binary.md5

run_micro A1 "$RULES_PARENT"
run_micro A2 "$RULES_PARENT"
run_micro A3 "$RULES_PARENT"
run_micro B1 "$RULES_CAND"
run_micro B2 "$RULES_CAND"
run_micro B3 "$RULES_CAND"
echo STAGE157_ROUND4_DONE
