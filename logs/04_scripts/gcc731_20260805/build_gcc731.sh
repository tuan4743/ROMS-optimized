#!/usr/bin/env bash
set -euo pipefail

# [compiler switch] GCC 7.3.1 (devtoolset) on immutable O33 sources, via the
# pre-customized Compilers/Linux-gfortran.mk in the O33 tree:
#   FFLAGS := -march=znver1 -mtune=znver1 -fstack-arrays -ffp-contract=off
#   + -O3 -funroll-loops, selective -fopenmp on the 5 hot objects.
# Only the compiler changes; Linux-ifort.mk is not used (FORT=gfortran).
# Trajectory will differ (different codegen) — gate is wall + vali 26/26.
# GCC 7.3.1 is the only gfortran version with a matching netcdf .mod on
# this platform (netcdf gcc-7.3.1-with-nc4); gfortran 9.3/13.3 cannot read
# the prebuilt netcdf.mod (version-checked) and no newer netcdf exists.

export LC_ALL=C LANG=C

parent=/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15
candidate_base=/public/home/fujiake/fjk/agent_tmp/isolated/work/o33_gcc731_20260805
root=$candidate_base/ROMS_CoSiNE15
logdir=/public/home/fujiake/fjk/agent_tmp/logs/gcc731_20260805

expected_parent_bin=5f1a137e42252c9b978ad50ab344b9d6493f5e5afeeb71ed2d83f0a4228cfcb9

fail() { echo "FATAL: $*" >&2; exit 2; }
hash_of() { sha256sum "$1" | awk '{print $1}'; }
check_sha() {
  local expected=$1 path=$2 actual
  [[ -f "$path" ]] || fail "missing $path"
  actual=$(hash_of "$path")
  [[ "$actual" == "$expected" ]] || fail "hash mismatch path=$path expected=$expected actual=$actual"
  printf 'HASH_OK|%s|%s\n' "$actual" "$path"
}

case "$candidate_base" in
  /public/home/fujiake/fjk/agent_tmp/isolated/work/*) ;;
  *) fail "unsafe candidate_base=$candidate_base" ;;
esac
case "$logdir" in
  /public/home/fujiake/fjk/agent_tmp/logs/*) ;;
  *) fail "unsafe logdir=$logdir" ;;
esac
[[ -d "$parent/Build" ]] || fail "missing immutable parent"
[[ ! -e "$candidate_base" ]] || fail "candidate already exists: $candidate_base"

mkdir -p "$candidate_base" "$logdir"
cp -a "$parent" "$root"
[[ -d "$root/Build" ]] || fail "candidate copy incomplete"
cp -p "$root/oceanM.O33_final" "$root/oceanM.O33_parent"

diff -qr "$parent/ROMS" "$root/ROMS" > "$logdir/source_tree.diff" || true
[[ ! -s "$logdir/source_tree.diff" ]] || {
  cat "$logdir/source_tree.diff"
  fail "ROMS/ must be untouched"
}

grep -q '^           FFLAGS := -march=znver1 -mtune=znver1 -fstack-arrays -ffp-contract=off$' \
  "$root/Compilers/Linux-gfortran.mk" || fail "Linux-gfortran.mk FFLAGS line missing"
grep -qF '$(SCRATCH_DIR)/biology.o: private FFLAGS += -ffree-form -ffree-line-length-none -fopenmp' \
  "$root/Compilers/Linux-gfortran.mk" || fail "Linux-gfortran.mk O37 rules missing"
echo "GFORTRAN_MK_OK"

if [[ -e "$root/Inputfiles" || -L "$root/Inputfiles" ]]; then
  rm -f "$root/Inputfiles"
fi
ln -s /public/home/fujiake/Inputfiles "$root/Inputfiles"
[[ "$(readlink -f "$root/Inputfiles")" == /public/home/fujiake/Inputfiles ]] \
  || fail "Inputfiles symlink wrong target"
echo "SYMLINK_OK"

module purge
module load compiler/devtoolset/7.3.1
module load mpi/hpcx/2.7.4/gcc-7.3.1
module load mathlib/netcdf/4.4.1/gcc-7.3.1

gfortran --version | head -1 > "$logdir/gfortran_version.txt"
grep -q '7.3.1' "$logdir/gfortran_version.txt" || fail "gfortran version unexpected"
cat "$logdir/gfortran_version.txt"
[[ "$(command -v mpif90)" == /opt/hpc/software/mpi/hpcx/v2.7.4/gcc-7.3.1/bin/mpif90 ]] \
  || fail "mpif90 not hpcx gcc-7.3.1: $(command -v mpif90)"

cd "$root"
# Toolchain change: full rebuild required.
rm -f "$root"/Build/*.o "$root"/Build/*.mod
set +e
{ time make -j16 FORT=gfortran; } > "$logdir/build.log" 2>&1
rc=$?
set -e
[[ $rc -eq 0 ]] || { tail -120 "$logdir/build.log"; exit "$rc"; }
[[ -x oceanM ]] || fail "missing linked oceanM"
cp -p oceanM oceanM.O33_gcc731
[[ "$(hash_of oceanM.O33_gcc731)" != "$expected_parent_bin" ]] || fail "candidate binary unchanged"
if ldd oceanM.O33_gcc731 | grep -q 'not found'; then
  ldd oceanM.O33_gcc731
  fail "unresolved runtime dependency"
fi
grep -aE "cd Build.*mpif90.*-march=znver1" "$logdir/build.log" | head -2 \
  > "$logdir/gcc731_compile_lines.txt" || true
cat "$logdir/gcc731_compile_lines.txt"
echo "GCC731_BUILD_OK hash=$(hash_of oceanM.O33_gcc731)"
