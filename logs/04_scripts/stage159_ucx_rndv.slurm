#!/bin/bash
#SBATCH -p kshcexclu06
#SBATCH -N 4
#SBATCH -n 64
#SBATCH --exclusive
#SBATCH -J s159_ucx_rndv
#SBATCH -t 00:20:00
set -euo pipefail
ulimit -s unlimited
module purge
module load mathlib/netcdf/4.4.1/intel mpi/hpcx/2.7.4/intel-2017.5.239 mathlib/hdf5/1.8.20/intel compiler/intel/2017.5.239

ROOT=/public/home/fujiake/fjk/stage159_ucx_rndv_20260812
mkdir -p "$ROOT/logs"
cd "$ROOT"
cp /public/home/fujiake/fjk/stage159_setavg_omp_20260812/micro_allred2.c "$ROOT/" 2>/dev/null || true

mpicc -std=c99 -O2 -o micro_allred2 micro_allred2.c
md5sum micro_allred2 | tee logs/binary.md5

export OMPI_MCA_coll_hcoll_enable=0

run_micro() {
  local leg=$1
  local log=logs/micro_${leg}_${SLURM_JOB_ID}.log
  local timing=logs/micro_${leg}_${SLURM_JOB_ID}.time
  set +e
  if [[ "$leg" == B* ]]; then
    { time mpirun -np 64 -x UCX_RNDV_THRESH=inf ./micro_allred2 16796 78302 > "$log" 2>&1; } 2> "$timing"
  else
    { time mpirun -np 64 ./micro_allred2 16796 78302 > "$log" 2>&1; } 2> "$timing"
  fi
  rc=$?
  set -e
  echo "$leg rc=$rc"
  grep -E '^ranks=' "$log" || echo "$leg NO_OUTPUT"
}

run_micro A1
run_micro B1
run_micro A2
run_micro B2
run_micro A3
run_micro B3
echo STAGE159_UCX_RNDV_DONE
