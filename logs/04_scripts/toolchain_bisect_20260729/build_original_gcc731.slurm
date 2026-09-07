#!/bin/bash
#SBATCH -p kshcexclu06
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -c 8
#SBATCH --exclusive
#SBATCH -J roms_orig_gcc731
#SBATCH -o /public/home/fujiake/fjk/ROMS_CoSiNE15_codex_20260727/.mcc_opt/logs/build_original_gcc731_%j.out
#SBATCH -e /public/home/fujiake/fjk/ROMS_CoSiNE15_codex_20260727/.mcc_opt/logs/build_original_gcc731_%j.err

set -euo pipefail

ROOT=/public/home/fujiake/fjk/ROMS_CoSiNE15_codex_20260727
VARIANT=original_gcc731_noomp
OPT=$ROOT/.mcc_opt
RULE_DIR=$OPT/compiler_rules/$VARIANT
RULE=$RULE_DIR/Linux-gfortran.mk
RULE_SOURCE=/public/home/fujiake/lsd/mcc2026_final/ROMS_CoSiNE15/.mcc_opt/scripts/Linux-gfortran.gcc731-znver1-precise.mk
SCRATCH=$OPT/build/$VARIANT
BIN_DIR=$OPT/bin/$VARIANT
META=$OPT/metadata/$VARIANT
LOG=$OPT/logs/make_${VARIANT}_${SLURM_JOB_ID}.log
TIME_LOG=$OPT/logs/make_${VARIANT}_${SLURM_JOB_ID}.time

mkdir -p "$RULE_DIR" "$BIN_DIR" "$META" "$OPT/logs" "$OPT/build"
cp "$RULE_SOURCE" "$RULE"
cd "$ROOT"

{
  echo "stage=build_original_gcc731_noomp"
  echo "date=$(date -Is)"
  echo "job_id=${SLURM_JOB_ID:-none}"
  echo "node=$(hostname)"
  echo "root=$ROOT"
  echo "variant=$VARIANT"
  echo "change=compiler_only_intel2017_to_gcc731; original model sources; no OpenMP"
  echo "deletion=none; previous task produced no model output"
  echo "rule_source=$RULE_SOURCE"
  echo "scratch=$SCRATCH"
  echo "binary=$BIN_DIR/oceanM"
} | tee "$META/build_metadata.txt"

test "$(sha256sum oceanM | awk '{print $1}')" = "903360ee3b94db17a628ee9332fd72ddb97bd15cd7e492ae04cda4db22deaf5c"
test "$(sha256sum ROMS/Utility/distribute.F | awk '{print $1}')" = "f03d0175a421510bcb237351dd8c9cef04e1cf95f1713680921423f111342977"
test "$(sha256sum ROMS/Nonlinear/nesting.F | awk '{print $1}')" = "9e9e7f3b2acbcc54ad5199bbb52c0d1e7425c4fdfa946c5f938cb41bea807c12"

sha256sum \
  oceanM \
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
