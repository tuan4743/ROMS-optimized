#!/bin/bash
#SBATCH -p kshcexclu06
#SBATCH -N 4
#SBATCH -n 64
#SBATCH --ntasks-per-node=16
#SBATCH --exclusive
#SBATCH -J s1_allgatherv
#SBATCH -o /public/home/fujiake/fjk/ROMS_CoSiNE15_allgatherv_20260730/.mcc_opt/logs/run_s1_allgatherv_4n64_halfday_%j.out
#SBATCH -e /public/home/fujiake/fjk/ROMS_CoSiNE15_allgatherv_20260730/.mcc_opt/logs/run_s1_allgatherv_4n64_halfday_%j.err

set -euo pipefail
ulimit -s unlimited
ulimit -l unlimited

ROOT=/public/home/fujiake/fjk/ROMS_CoSiNE15_allgatherv_20260730
BASE_ROOT=/public/home/fujiake/fjk/ROMS_CoSiNE15_codex_20260727
BIN=$ROOT/.mcc_opt/bin/allgatherv_rankordered_gcc731_noomp/oceanM
INPUT=$BASE_ROOT/experiments/inputs/ocean_halfday_64_8x8.in
RUN_ROOT=/public/home/fujiake/fjk/mcc_runs
RUN_DIR=$RUN_ROOT/${SLURM_JOB_ID}_s1_allgatherv_gcc731_4n64_halfday_8x8
MIN_FREE_KB=15728640

test -x "$BIN"
test -r "$INPUT"
test "$(sha256sum "$BIN" | awk '{print $1}')" = "55a95f9eb23e6345d34437cd65c136c1d2f5d6555d0e34550c725ad411c19c19"
test "$(sha256sum "$INPUT" | awk '{print $1}')" = "4b0087cb692ccff9a2298b85470ee4ad0c23b44a8aefb9d4021454a9537cacb7"
test "$(sha256sum "$ROOT/ROMS/Utility/distribute.F" | awk '{print $1}')" = "d573dcec715b2531c7f15a86a1a30a43c7baa7ff2affd24e01bf3eb94e0561df"

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

mapfile -t hosts < <(scontrol show hostnames "$SLURM_JOB_NODELIST")
test "${#hosts[@]}" -eq 4
RANKFILE=$RUN_DIR/metadata/rankfile.spread_numa16_ccx
: > "$RANKFILE"
for node_index in 0 1 2 3; do
  for local_rank in $(seq 0 15); do
    row=$((local_rank / 8))
    col=$((local_rank % 8))
    numa=$((col / 2))
    within=$((row * 4 + col % 2))
    core=$((numa * 8 + within))
    rank=$((node_index * 16 + local_rank))
    printf 'rank %d=%s slot=%d\n' "$rank" "${hosts[$node_index]}" "$core" >> "$RANKFILE"
  done
done

cd "$RUN_DIR"
module purge
module load compiler/devtoolset/7.3.1 \
  mathlib/hdf5/1.8.20/gcc-7.3.1-noparallel \
  mathlib/netcdf/4.4.1/gcc-7.3.1 \
  mpi/hpcx/2.7.4-gcc-7.3.1
export OMP_NUM_THREADS=1

{
  echo "stage=s1_allgatherv_gcc731_4n64_halfday_8x8"
  echo "date=$(date -Is)"
  echo "root=$ROOT"
  echo "run_dir=$RUN_DIR"
  echo "job_id=$SLURM_JOB_ID"
  echo "nodes=$SLURM_JOB_NODELIST"
  echo "mpi_ranks=$SLURM_NTASKS"
  echo "ranks_per_node=16"
  echo "mapping=spread_numa16_ccx"
  echo "free_kb_before=$FREE_KB"
  echo "change=mp_aggregate2d/3d padded Allgather to rank-ordered exact-count Allgatherv; remove aggregate Arecv zero-fill"
  echo "physics_ecology_change=none"
  echo "deletion=none; retained valid and reproduction outputs"
  echo "ntile_i=8,8"
  echo "ntile_j=8,8"
  echo "ntimes=432,2160; organizer-approved half-day diagnostic"
  module list 2>&1
  scontrol show job "$SLURM_JOB_ID" -o
  sha256sum oceanM metadata/ocean_SCS_Dongsha60_bio15.in "$RANKFILE" ROMS/Utility/distribute.F
} > metadata/run_metadata.txt

{
  /usr/bin/time -p mpirun -np 64 --rankfile "$RANKFILE" --report-bindings \
    ./oceanM metadata/ocean_SCS_Dongsha60_bio15.in
} > logs/model.log 2> logs/time_and_stderr.log

grep -q 'ROMS/TOMS: DONE' logs/model.log
echo "model_result=done" >> metadata/run_metadata.txt
du -sh output >> metadata/run_metadata.txt
find output -maxdepth 1 -type f -printf '%f|%s|%TY-%Tm-%TdT%TH:%TM:%TS\n' | sort > metadata/output_manifest.txt
find output -maxdepth 1 -type f -name '*.nc' -exec sha256sum {} + | sort -k2 > metadata/output_sha256.txt
