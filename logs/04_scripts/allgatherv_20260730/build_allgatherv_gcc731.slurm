#!/bin/bash
#SBATCH -p kshcexclu06
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -c 8
#SBATCH --exclusive
#SBATCH -J build_allgatherv
#SBATCH -o /public/home/fujiake/fjk/ROMS_CoSiNE15_allgatherv_20260730/.mcc_opt/logs/build_allgatherv_%j.out
#SBATCH -e /public/home/fujiake/fjk/ROMS_CoSiNE15_allgatherv_20260730/.mcc_opt/logs/build_allgatherv_%j.err

set -euo pipefail

ROOT=/public/home/fujiake/fjk/ROMS_CoSiNE15_allgatherv_20260730
VARIANT=allgatherv_rankordered_gcc731_noomp
OPT=$ROOT/.mcc_opt
RULE_DIR=$OPT/compiler_rules/$VARIANT
RULE=$RULE_DIR/Linux-gfortran.mk
RULE_SOURCE=/public/home/fujiake/fjk/ROMS_CoSiNE15_codex_20260727/.mcc_opt/compiler_rules/original_gcc731_noomp/Linux-gfortran.mk
SCRATCH=$OPT/build/$VARIANT
BIN_DIR=$OPT/bin/$VARIANT
META=$OPT/metadata/$VARIANT
LOG=$OPT/logs/make_${VARIANT}_${SLURM_JOB_ID}.log
TIME_LOG=$OPT/logs/make_${VARIANT}_${SLURM_JOB_ID}.time

mkdir -p "$RULE_DIR" "$BIN_DIR" "$META" "$OPT/logs" "$OPT/build"
cp "$RULE_SOURCE" "$RULE"
cd "$ROOT"

{
  echo "stage=build_allgatherv_rankordered_gcc731_noomp"
  echo "date=$(date -Is)"
  echo "job_id=${SLURM_JOB_ID:-none}"
  echo "node=$(hostname)"
  echo "root=$ROOT"
  echo "variant=$VARIANT"
  echo "change=mp_aggregate2d/3d padded MPI_Allgather to rank-ordered exact-count MPI_Allgatherv; remove aggregate Arecv zero-fill"
  echo "physics_ecology_change=none"
  echo "deletion=none; retained all validated/reproduction outputs"
  echo "rule_source=$RULE_SOURCE"
  echo "scratch=$SCRATCH"
  echo "binary=$BIN_DIR/oceanM"
} | tee "$META/build_metadata.txt"

test "$(sha256sum ROMS/Utility/distribute.F | awk '{print $1}')" = "d573dcec715b2531c7f15a86a1a30a43c7baa7ff2affd24e01bf3eb94e0561df"
test "$(sha256sum ROMS/Nonlinear/nesting.F | awk '{print $1}')" = "9e9e7f3b2acbcc54ad5199bbb52c0d1e7425c4fdfa946c5f938cb41bea807c12"

sha256sum \
  makefile \
  "$RULE" \
  ROMS/Utility/distribute.F \
  ROMS/Nonlinear/nesting.F \
  ROMS/Nonlinear/step3d_t.F \
  ROMS/Nonlinear/pre_step3d.F \
  ROMS/Nonlinear/t3dmix4_s.h \
  ROMS/Nonlinear/gls_corstep.F \
  ROMS/Nonlinear/Biology/bio_UMAINE15.h \
  > "$META/prebuild_sha256.txt"

module purge
module load compiler/devtoolset/7.3.1 \
  mathlib/hdf5/1.8.20/gcc-7.3.1-noparallel \
  mathlib/netcdf/4.4.1/gcc-7.3.1 \
  mpi/hpcx/2.7.4-gcc-7.3.1

{
  module list 2>&1
  echo "mpif90=$(command -v mpif90)"
  mpif90 --version
  nf-config --all
} > "$META/toolchain.txt" 2>&1

make FORT=gfortran COMPILERS="$RULE_DIR" SCRATCH_DIR="$SCRATCH" clean \
  > "$OPT/logs/make_clean_${VARIANT}_${SLURM_JOB_ID}.log" 2>&1

set +e
/usr/bin/time -v -o "$TIME_LOG" \
  make -j1 FORT=gfortran COMPILERS="$RULE_DIR" SCRATCH_DIR="$SCRATCH" BINDIR="$BIN_DIR" \
  > "$LOG" 2>&1
rc=$?
set -e

echo "$rc" > "$META/build_status.txt"
if [ "$rc" -ne 0 ]; then
  echo "build_result=failed rc=$rc" | tee -a "$META/build_metadata.txt"
  exit "$rc"
fi

test -x "$BIN_DIR/oceanM"
sha256sum "$BIN_DIR/oceanM" > "$META/binary_sha256.txt"
ldd "$BIN_DIR/oceanM" > "$META/binary_ldd.txt"
grep -E -- '-fopenmp|-D_OPENMP|-lgomp' "$LOG" > "$META/openmp_tokens.txt" || true
if [ -s "$META/openmp_tokens.txt" ]; then
  echo "ERROR: unexpected OpenMP token in build log" >&2
  exit 74
fi

echo "build_result=success" | tee -a "$META/build_metadata.txt"
cat "$META/binary_sha256.txt"
ls -lh "$BIN_DIR/oceanM"
