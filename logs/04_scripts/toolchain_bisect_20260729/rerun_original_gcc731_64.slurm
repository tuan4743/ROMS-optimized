#!/bin/bash
#SBATCH -p kshcexclu06
#SBATCH -N 2
#SBATCH -n 64
#SBATCH --ntasks-per-node=32
#SBATCH --exclusive
#SBATCH -J repro_gcc731_64
#SBATCH -o /public/home/fujiake/fjk/ROMS_CoSiNE15_codex_20260727/.mcc_opt/logs/rerun_original_gcc731_64_%j.out
#SBATCH -e /public/home/fujiake/fjk/ROMS_CoSiNE15_codex_20260727/.mcc_opt/logs/rerun_original_gcc731_64_%j.err

set -euo pipefail
ulimit -s unlimited
ulimit -l unlimited

ROOT=/public/home/fujiake/fjk/ROMS_CoSiNE15_codex_20260727
BIN=$ROOT/.mcc_opt/bin/original_gcc731_noomp/oceanM
INPUT=$ROOT/experiments/inputs/ocean_full_64_8x8.in
RUN_ROOT=/public/home/fujiake/fjk/mcc_runs
RUN_DIR=$RUN_ROOT/${SLURM_JOB_ID}_original_gcc731_noomp_64_8x8_repro
PREVIOUS_RUN=$RUN_ROOT/118169717_original_gcc731_noomp_64_8x8
MIN_FREE_KB=26214400

test -x "$BIN"
test -r "$INPUT"
test -d "$PREVIOUS_RUN/output"
test -s "$ROOT/analysis/toolchain_run_118169717/03_validity_check.md"
mkdir -p "$RUN_ROOT"
mkdir "$RUN_DIR"
mkdir "$RUN_DIR/output" "$RUN_DIR/logs" "$RUN_DIR/validation" "$RUN_DIR/metadata" "$RUN_DIR/analysis"
ln -s /public/home/fujiake/Inputfiles "$RUN_DIR/Inputfiles"
ln -s "$ROOT/ROMS" "$RUN_DIR/ROMS"
ln -s "$BIN" "$RUN_DIR/oceanM"
cp "$INPUT" "$RUN_DIR/metadata/ocean_SCS_Dongsha60_bio15.in"

FREE_KB=$(df -Pk /public/home/fujiake | awk 'NR==2 {print $4}')
if [ "$FREE_KB" -lt "$MIN_FREE_KB" ]; then
  echo "ERROR: free_kb=$FREE_KB is below required_kb=$MIN_FREE_KB" >&2
  exit 73
fi

cd "$RUN_DIR"
module purge
module load compiler/devtoolset/7.3.1 \
  mathlib/hdf5/1.8.20/gcc-7.3.1-noparallel \
  mathlib/netcdf/4.4.1/gcc-7.3.1 \
  mpi/hpcx/2.7.4-gcc-7.3.1

{
  echo "stage=reproduce_valid_original_gcc731_noomp_64_8x8"
  echo "date=$(date -Is)"
  echo "root=$ROOT"
  echo "run_dir=$RUN_DIR"
  echo "previous_valid_run=$PREVIOUS_RUN"
  echo "job_id=$SLURM_JOB_ID"
  echo "nodes=$SLURM_JOB_NODELIST"
  echo "mpi_ranks=$SLURM_NTASKS"
  echo "free_kb_before=$FREE_KB"
  echo "change=none; exact reproduction of validated job 118169717"
  echo "deletion=none; retain previous latest valid output during variance reproduction"
  echo "ntile_i=8,8"
  echo "ntile_j=8,8"
  echo "ntimes=2592,12960"
  module list 2>&1
  scontrol show job "$SLURM_JOB_ID" -o
  sha256sum oceanM metadata/ocean_SCS_Dongsha60_bio15.in
} > metadata/run_metadata.txt

{
  /usr/bin/time -p mpirun -np 64 ./oceanM metadata/ocean_SCS_Dongsha60_bio15.in
} > logs/model.log 2> logs/time_and_stderr.log

grep -q 'ROMS/TOMS: DONE' logs/model.log
echo "model_result=done" >> metadata/run_metadata.txt
du -sh output >> metadata/run_metadata.txt
find output -maxdepth 1 -type f -printf '%f|%s|%TY-%Tm-%TdT%TH:%TM:%TS\n' | sort > metadata/output_manifest.txt
