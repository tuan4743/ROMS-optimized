#!/usr/bin/env bash
set -euo pipefail

# [fast=2 candidate] compile-axis port of teammate S10 (nan sprint):
#   biology.o:   + -fp-model fast=2 -no-prec-div -fp-speculation=fast
#   gls_corstep.o: + -fp-model source
# All else (global -heap-arrays -fp-model precise, -ip -O3, other 3 hot
# objects, source) stays byte-identical to immutable O33.  Single causal
# axis = compile flags on two objects.  Trajectory WILL change (float
# semantics) — gate is official vali.py 26/26, not bitwise identity.

export LC_ALL=C LANG=C

parent=/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15
candidate_base=/public/home/fujiake/fjk/agent_tmp/isolated/work/o33_fast2_20260805
root=$candidate_base/ROMS_CoSiNE15
script_root=/public/home/fujiake/fjk/agent_tmp/isolated/scripts/fast2_20260805
logdir=/public/home/fujiake/fjk/agent_tmp/logs/fast2_20260805

expected_parent_bin=5f1a137e42252c9b978ad50ab344b9d6493f5e5afeeb71ed2d83f0a4228cfcb9
expected_parent_mk=081b267b491f6ddf48cd03243a5fa466f9f277439ceb4eec5332a5355a9faced
expected_parent_biology=/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15/ROMS/Nonlinear/Biology/bio_UMAINE15.h
expected_gls_source=1.0

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

# Only Compilers/Linux-ifort.mk may differ from the parent.
diff -qr "$parent/ROMS" "$root/ROMS" > "$logdir/source_tree.diff" || true
[[ ! -s "$logdir/source_tree.diff" ]] || {
  cat "$logdir/source_tree.diff"
  fail "ROMS/ must be untouched"
}

# Parent mk hash must match the immutable O33 baseline first.
check_sha "$expected_parent_mk" "$parent/Compilers/Linux-ifort.mk"

# Apply the two compile-flag changes.
sed -i \
  -e 's|^\($(SCRATCH_DIR)/biology\.o: private FFLAGS += -qopenmp -no-heap-arrays\)$|\1 -fp-model fast=2 -no-prec-div -fp-speculation=fast|' \
  -e 's|^\($(SCRATCH_DIR)/gls_corstep\.o: private FFLAGS += -qopenmp -no-heap-arrays\)$|\1 -fp-model source|' \
  "$root/Compilers/Linux-ifort.mk"

grep -q 'biology.o: private FFLAGS += -qopenmp -no-heap-arrays -fp-model fast=2 -no-prec-div -fp-speculation=fast' \
  "$root/Compilers/Linux-ifort.mk" || fail "biology fast=2 flag not applied"
grep -q 'gls_corstep.o: private FFLAGS += -qopenmp -no-heap-arrays -fp-model source' \
  "$root/Compilers/Linux-ifort.mk" || fail "gls fp-model source flag not applied"
echo "MK_FLAGS_OK"

diff -u "$parent/Compilers/Linux-ifort.mk" "$root/Compilers/Linux-ifort.mk" \
  > "$logdir/mk.patch" || true
echo "MK_DIFF_LINES=$(wc -l < "$logdir/mk.patch")"

# Restore the shared-input symlink (Stage-85 failure mode).
if [[ -e "$root/Inputfiles" || -L "$root/Inputfiles" ]]; then
  rm -f "$root/Inputfiles"
fi
ln -s /public/home/fujiake/Inputfiles "$root/Inputfiles"
[[ "$(readlink -f "$root/Inputfiles")" == /public/home/fujiake/Inputfiles ]] \
  || fail "Inputfiles symlink wrong target"
echo "SYMLINK_OK"

module purge
module load mathlib/netcdf/4.4.1/intel
module load mpi/hpcx/2.7.4/intel-2017.5.239
module load mathlib/hdf5/1.8.20/intel
module load compiler/intel/2017.5.239

cd "$root"
rm -f "$root"/Build/biology.o "$root"/Build/gls_corstep.o
make -n > "$logdir/make_dry_run.txt" 2>&1
grep -q 'biology' "$logdir/make_dry_run.txt" || fail "dry run does not rebuild biology"
grep -q 'gls_corstep' "$logdir/make_dry_run.txt" || fail "dry run does not rebuild gls_corstep"

set +e
{ time make -j16; } > "$logdir/build.log" 2>&1
rc=$?
set -e
[[ $rc -eq 0 ]] || { tail -120 "$logdir/build.log"; exit "$rc"; }
[[ -x oceanM ]] || fail "missing linked oceanM"
cp -p oceanM oceanM.O33_fast2
[[ "$(hash_of oceanM.O33_fast2)" != "$expected_parent_bin" ]] || fail "candidate binary unchanged"
if ldd oceanM.O33_fast2 | grep -q 'not found'; then
  ldd oceanM.O33_fast2
  fail "unresolved runtime dependency"
fi

# Fast-transcendental evidence: the biology object should no longer resolve
# general __libm double pow/exp in the precise form (spot check only).
strings "$root"/Build/biology.o | grep -c 'libm' > "$logdir/biology_libm_refs.txt" || true
echo "BIOLOGY_OBJECT_HASH=$(hash_of "$root/Build/biology.o")"
echo "GLS_OBJECT_HASH=$(hash_of "$root/Build/gls_corstep.o")"

grep -E '^biology\.o|biology\.o:|^gls_corstep\.o|gls_corstep\.o:' "$logdir/build.log" \
  > "$logdir/compile_lines.txt" || true
cat "$logdir/compile_lines.txt"
echo "FAST2_BUILD_OK hash=$(hash_of oceanM.O33_fast2)"
