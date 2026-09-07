#!/usr/bin/env bash
set -euo pipefail

# Candidate [S21-2021]: teammate S21 base, rebuilt with Intel oneAPI classic
# ifort 2021.3.0 instead of 2017.5.239. EXACTLY ONE variable changes: the
# compiler used at build time.
#   - source tree: byte-identical copy of nan/sprint/ROMS_CoSiNE15_s21
#   - Linux-ifort.mk: unchanged (global -march=core-avx2 -no-fma, biology
#     fast=2, gls -fp-model source, per-file -no-heap-arrays)
#   - RUN-TIME environment: unchanged, still compiler/intel/2017.5.239, so the
#     2017 libimf/libsvml stay in use. This is the difference from the
#     teammate I21 line, whose sub.sh also loaded 2021 at run time and thereby
#     changed transcendental results (suspected cause of their vali failure).
# Gate: sample A-B-B-A first; 1day + official vali only if B is faster.

export LC_ALL=C LANG=C

parent=/public/home/fujiake/nan/sprint/ROMS_CoSiNE15_s21
candidate_base=/public/home/fujiake/fjk/agent_tmp/isolated/work/s21_ifort2021_20260807
root=$candidate_base/ROMS_CoSiNE15
logdir=/public/home/fujiake/fjk/agent_tmp/logs/s21_ifort2021_20260807

expected_parent_mk=27f0bf68c982004a
ifort21_bin=/public/software/compiler/intel/oneapi/oneapi-2021.3.0/compiler/2021.3.0/linux/bin/intel64
ifort21_lib=/public/software/compiler/intel/oneapi/oneapi-2021.3.0/compiler/2021.3.0/linux/compiler/lib/intel64_lin

fail() { echo "FATAL: $*" >&2; exit 2; }
hash_of() { sha256sum "$1" | awk '{print $1}'; }

case "$candidate_base" in
  /public/home/fujiake/fjk/agent_tmp/isolated/work/*) ;;
  *) fail "unsafe candidate_base=$candidate_base" ;;
esac
[[ -d "$parent" ]] || fail "missing S21 parent tree"
[[ ! -e "$candidate_base" ]] || fail "candidate already exists: $candidate_base"

# Never write into the teammate tree.
[[ -w "$parent" ]] && echo "NOTE: parent is writable; this script only reads it."

mkdir -p "$candidate_base" "$logdir"

echo "=== copying S21 source tree (read-only source, excluding run outputs) ==="
cp -a "$parent" "$root"
[[ -d "$root/ROMS" ]] || fail "candidate copy incomplete"

# Drop the teammate's run artefacts so nothing stale is mistaken for ours.
rm -rf "$root"/output_* "$root"/log_*.txt "$root"/TIMING_*.txt "$root"/vali_*.log \
       "$root"/slurm-*.out "$root"/rankfile.* 2>/dev/null || true
rm -f "$root"/ROMS/External/ocean_SCS_Dongsha60_bio15_sprint_*.in \
      "$root"/ROMS/External/ocean_SCS_Dongsha60_bio15_final3day_*.in 2>/dev/null || true

echo "=== provenance ==="
echo "PARENT_BIN_SHA=$(hash_of "$parent/oceanM")"
cp -p "$root/oceanM" "$root/oceanM.S21_parent"
echo "PARENT_BIN_MD5=$(md5sum "$root/oceanM.S21_parent" | awk '{print $1}')  (expect 6f355bef...)"

mk_sha_short=$(sha256sum "$root/Compilers/Linux-ifort.mk" | cut -c1-16)
[[ "$mk_sha_short" == "$expected_parent_mk" ]] || fail "mk changed: $mk_sha_short != $expected_parent_mk"
echo "MK_UNCHANGED_OK sha256_16=$mk_sha_short"

# Confirm the source really is S21 and not something else.
diff -rq "$parent/ROMS/Nonlinear" "$root/ROMS/Nonlinear" > "$logdir/source_tree.diff" 2>&1 || true
[[ ! -s "$logdir/source_tree.diff" ]] || { cat "$logdir/source_tree.diff"; fail "source copy mismatch"; }
echo "SOURCE_IDENTICAL_OK"

if [[ -e "$root/Inputfiles" || -L "$root/Inputfiles" ]]; then rm -f "$root/Inputfiles"; fi
ln -s /public/home/fujiake/Inputfiles "$root/Inputfiles"
[[ "$(readlink -f "$root/Inputfiles")" == /public/home/fujiake/Inputfiles ]] || fail "Inputfiles symlink wrong"
echo "SYMLINK_OK"

echo "=== toolchain: build with 2021, run-time modules unchanged ==="
module purge
module load mathlib/netcdf/4.4.1/intel
module load mpi/hpcx/2.7.4/intel-2017.5.239
module load mathlib/hdf5/1.8.20/intel
export PATH=$ifort21_bin:$PATH
export LD_LIBRARY_PATH=$ifort21_lib:$LD_LIBRARY_PATH

[[ "$(command -v ifort)" == "$ifort21_bin/ifort" ]] || fail "ifort not 2021.3.0: $(command -v ifort)"
ifort --version 2>/dev/null | head -1 | tee "$logdir/ifort_version.txt"
grep -q '2021.3.0' "$logdir/ifort_version.txt" || fail "ifort version unexpected"

cd "$root"
echo "=== full rebuild (toolchain change) ==="
set +e
{ time make clean; } > "$logdir/clean.log" 2>&1
{ time make -j16; } > "$logdir/build.log" 2>&1
rc=$?
set -e
if [[ $rc -ne 0 ]]; then
  echo "---- build.log tail ----"; tail -80 "$logdir/build.log"
  fail "build failed rc=$rc"
fi
[[ -x oceanM ]] || fail "missing linked oceanM"
cp -p oceanM oceanM.S21_ifort2021

new_sha=$(hash_of oceanM.S21_ifort2021)
old_sha=$(hash_of oceanM.S21_parent)
[[ "$new_sha" != "$old_sha" ]] || fail "candidate binary identical to parent - compiler switch had no effect"

if ldd oceanM.S21_ifort2021 | grep -q 'not found'; then
  ldd oceanM.S21_ifort2021; fail "unresolved runtime dependency"
fi

echo
echo "S21_IFORT2021_BUILD_OK"
echo "  candidate_sha256=$new_sha"
echo "  candidate_md5=$(md5sum oceanM.S21_ifort2021 | awk '{print $1}')"
echo "  parent_md5=$(md5sum oceanM.S21_parent | awk '{print $1}')"
echo "  tree=$root"
grep -aE 'mpif90.*core-avx2' "$logdir/build.log" | head -2
echo "  build warnings/errors summary:"
grep -aic -e 'error' "$logdir/build.log" || true
