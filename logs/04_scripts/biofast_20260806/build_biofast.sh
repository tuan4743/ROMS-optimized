#!/usr/bin/env bash
set -euo pipefail

# [biofast candidate] biology-only fast-math compile axis, Stage-108 plan P0-1:
#   biology.o:   + -fp-model fast=2 -no-prec-div -fp-speculation=fast
#   gls_corstep.o: UNCHANGED (-qopenmp -no-heap-arrays, precise inherited)
# All else (global -heap-arrays -fp-model precise, -ip -O3, other 4 hot
# objects, source) stays byte-identical to immutable O33.  Single causal
# axis = compile flags on ONE object.  Stage-104 fast2 (biology+gls source)
# measured -1.06% with GLS +19.7% regression; this isolates biology only.

parent=/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15
candidate_base=/public/home/fujiake/fjk/agent_tmp/isolated/work/o33_biofast_20260806
root=$candidate_base/ROMS_CoSiNE15
script_root=/public/home/fujiake/fjk/agent_tmp/isolated/scripts/biofast_20260806
logdir=/public/home/fujiake/fjk/agent_tmp/logs/biofast_20260806

expected_parent_bin=5f1a137e42252c9b978ad50ab344b9d6493f5e5afeeb71ed2d83f0a4228cfcb9
expected_parent_mk=081b267b491f6ddf48cd03243a5fa466f9f277439ceb4eec5332a5355a9faced

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

check_sha "$expected_parent_mk" "$parent/Compilers/Linux-ifort.mk"

sed -i \
  -e 's|^\($(SCRATCH_DIR)/biology\.o: private FFLAGS += -qopenmp -no-heap-arrays\)$|\1 -fp-model fast=2 -no-prec-div -fp-speculation=fast|' \
  "$root/Compilers/Linux-ifort.mk"

grep -q 'biology.o: private FFLAGS += -qopenmp -no-heap-arrays -fp-model fast=2 -no-prec-div -fp-speculation=fast' \
  "$root/Compilers/Linux-ifort.mk" || fail "biology fast=2 flag not applied"
grep -q 'gls_corstep.o: private FFLAGS += -qopenmp -no-heap-arrays$' \
  "$root/Compilers/Linux-ifort.mk" || fail "gls_corstep line was modified"
grep -q 'gls_corstep.o: private FFLAGS += -qopenmp -no-heap-arrays -fp-model source' \
  "$root/Compilers/Linux-ifort.mk" && fail "gls_corstep must stay precise"
echo "MK_FLAGS_OK"

diff -u "$parent/Compilers/Linux-ifort.mk" "$root/Compilers/Linux-ifort.mk" \
  > "$logdir/mk.patch" || true
echo "MK_DIFF_LINES=$(wc -l < "$logdir/mk.patch")"

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
rm -f "$root"/Build/biology.o
make -n > "$logdir/make_dry_run.txt" 2>&1
grep -q 'biology' "$logdir/make_dry_run.txt" || fail "dry run does not rebuild biology"

set +e
{ time make -j16; } > "$logdir/build.log" 2>&1
rc=$?
set -e
[[ $rc -eq 0 ]] || { tail -120 "$logdir/build.log"; exit "$rc"; }
[[ -x oceanM ]] || fail "missing linked oceanM"
cp -p oceanM oceanM.O33_biofast
[[ "$(hash_of oceanM.O33_biofast)" != "$expected_parent_bin" ]] || fail "candidate binary unchanged"
if ldd oceanM.O33_biofast | grep -q 'not found'; then
  ldd oceanM.O33_biofast
  fail "unresolved runtime dependency"
fi

echo "BIOLOGY_OBJECT_HASH=$(hash_of "$root/Build/biology.o")"
grep -E '^biology\.o|biology\.o:' "$logdir/build.log" > "$logdir/compile_lines.txt" || true
cat "$logdir/compile_lines.txt"
echo "BIOFAST_BUILD_OK hash=$(hash_of oceanM.O33_biofast)"
