#!/usr/bin/env bash
set -euo pipefail

# [O34b] get_contact2d/get_persisted2d sparse owner-map candidate build.
# Single-file change: ROMS/Nonlinear/nesting.F (port of the validated
# get_contact3d [O10] sparse path).  Fresh private tree; Inputfiles
# symlink restored (Stage-85 failure mode).

export LC_ALL=C LANG=C

parent=/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15
candidate_base=/public/home/fujiake/fjk/agent_tmp/isolated/work/o33_g2d_r3_20260804
root=$candidate_base/ROMS_CoSiNE15
script_root=/public/home/fujiake/fjk/agent_tmp/isolated/scripts/g2d_20260804
logdir=/public/home/fujiake/fjk/agent_tmp/logs/g2d_20260804

expected_parent_bin=5f1a137e42252c9b978ad50ab344b9d6493f5e5afeeb71ed2d83f0a4228cfcb9
expected_parent_nesting=9d8434c7c7291309d4dd281b4c8531dff7ee988bfc038590301484516b53795c
expected_parent_distribute=e1de89f3a01974084a91b09bb6064b7e4ff0d67be8276aee7e8d10ef0dcb743a
: "${EXPECTED_CAND_NESTING:?missing EXPECTED_CAND_NESTING}"

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

check_sha "$expected_parent_bin"       "$parent/oceanM.O33_final"
check_sha "$expected_parent_nesting"   "$parent/ROMS/Nonlinear/nesting.F"
check_sha "$expected_parent_distribute" "$parent/ROMS/Utility/distribute.F"
check_sha "$EXPECTED_CAND_NESTING"     "$script_root/nesting.F"

mkdir -p "$candidate_base" "$logdir"
cp -a "$parent" "$root"
[[ -d "$root/Build" ]] || fail "candidate copy incomplete"
cp -p "$root/oceanM.O33_final" "$root/oceanM.O33_parent"

cp -p "$script_root/nesting.F" "$root/ROMS/Nonlinear/nesting.F"
check_sha "$EXPECTED_CAND_NESTING" "$root/ROMS/Nonlinear/nesting.F"

diff -u "$parent/ROMS/Nonlinear/nesting.F" "$root/ROMS/Nonlinear/nesting.F" \
  > "$logdir/nesting.patch" || true

# Exactly one ROMS/ source file may differ: nesting.F.
diff -qr "$parent/ROMS" "$root/ROMS" > "$logdir/source_tree.diff" || true
grep -E '^Files |^Only in' "$logdir/source_tree.diff" > "$logdir/source_tree_files.txt" || true
[[ $(wc -l < "$logdir/source_tree_files.txt") -eq 1 ]] || {
  cat "$logdir/source_tree_files.txt"
  fail "expected exactly one differing ROMS/ file"
}
grep -q 'ROMS/Nonlinear/nesting.F' "$logdir/source_tree_files.txt" || {
  cat "$logdir/source_tree_files.txt"
  fail "the differing file is not nesting.F"
}
diff -qr "$parent/Compilers" "$root/Compilers" > "$logdir/compilers_tree.diff" || true
[[ ! -s "$logdir/compilers_tree.diff" ]] || {
  cat "$logdir/compilers_tree.diff"
  fail "Compilers/ must be untouched"
}

# The patch hunks must lie inside the two edited routines only
# (get_contact2d 4725-4880, get_persisted2d 5277-5475 in the parent file).
awk '/^@@/ {
  split($0,a," ");
  old=a[2]; sub(/,.*/,"",old); sub(/^-/,"",old);
  if (!((old>=4725 && old<=4880) || (old>=5277 && old<=5475))) {
    print "patch hunk outside edited routines: " $0;
    bad=1;
  }
}
END { if (bad) exit 1 }' "$logdir/nesting.patch" > "$logdir/hunk_check.txt" || {
  cat "$logdir/hunk_check.txt"
  fail "nesting.patch touches code outside get_contact2d/get_persisted2d"
}
echo "HUNK_SCOPE_OK"

# The candidate must keep both the sparse markers and the collective
# call sites removed in exactly the two routines.
grep -c '\[O34\] sparse owner-map transport for 2D' "$root/ROMS/Nonlinear/nesting.F" > "$logdir/sparse_count.txt"
[[ $(cat "$logdir/sparse_count.txt") -eq 2 ]] || fail "expected two sparse markers"
echo "SPARSE_MARKERS_OK|2"

# Restore the shared-input symlink (Stage-85 harness failure root cause).
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
rm -f "$root"/Build/nesting.o
make -n > "$logdir/make_dry_run.txt" 2>&1
grep -q 'nesting' "$logdir/make_dry_run.txt" || fail "dry run does not rebuild nesting"

set +e
{ time make -j16; } > "$logdir/build.log" 2>&1
rc=$?
set -e
[[ $rc -eq 0 ]] || { tail -120 "$logdir/build.log"; exit "$rc"; }
[[ -x oceanM ]] || fail "missing linked oceanM"
cp -p oceanM oceanM.O33_g2d
[[ "$(hash_of oceanM.O33_g2d)" != "$expected_parent_bin" ]] || fail "candidate binary unchanged"
if ldd oceanM.O33_g2d | grep -q 'not found'; then
  ldd oceanM.O33_g2d
  fail "unresolved runtime dependency"
fi

# The sparse block must survive C-preprocessing and reach the binary.
grep -q 'GET_CONTACT2D - unsupported sparse grid type' "$root/Build/nesting.f90" \
  || fail "sparse block missing from nesting.f90"
grep -q 'tag=1700+10\*cr+Tindex' "$root/Build/nesting.f90" \
  || fail "2D sparse tag missing from nesting.f90"
strings oceanM.O33_g2d | grep -q 'GET_CONTACT2D' \
  || fail "sparse string missing from binary"
# The shared filesystem can serve stale reads of a just-copied binary
# (observed 2026-08-04: strings gate flake on the r2/r3 builds, string
# verified present afterwards).  Re-verify on the settled file.
sleep 3
strings oceanM.O33_g2d | grep -q 'GET_CONTACT2D' \
  || fail "sparse string missing from binary (settled re-check)"
echo "PROBE_OK|nesting.f90+binary"

# Only nesting.o may have been rebuilt: spot-check untouched objects
# byte-identical to parent, and nesting.o different from parent.
for f in mp_exchange.o distribute.o set_contact.o gls_corstep.o; do
  a=$(hash_of "$root/Build/$f")
  b=$(hash_of "$parent/Build/$f")
  [[ "$a" == "$b" ]] || fail "unexpectedly rebuilt $f"
done
a=$(hash_of "$root/Build/nesting.o")
b=$(hash_of "$parent/Build/nesting.o")
[[ "$a" != "$b" ]] || fail "nesting.o unchanged"
echo "OBJECTS_OK|only nesting.o differs"

{
  echo "BUILD_END=$(date '+%F %T %z')"
  echo "HOST=$(hostname)"
  echo "PARENT=$parent"
  echo "ROOT=$root"
  echo 'CANDIDATE=[O34b] get_contact2d/get_persisted2d sparse owner-map (2 sparse blocks, 2 routines)'
  sha256sum "$root/oceanM.O33_parent" "$root/oceanM.O33_g2d" \
    "$root/Build/nesting.o" "$root/Build/nesting.f90" \
    "$root/ROMS/Nonlinear/nesting.F" \
    "$root/ROMS/External/ocean_SCS_Dongsha60_bio15.in" "$root/coll_rules.conf"
  ldd "$root/oceanM.O33_g2d"
} > "$logdir/build_metadata.txt"

sha256sum "$logdir"/*.txt "$logdir"/*.patch "$logdir"/*.diff "$logdir/build.log" \
  > "$logdir/SHA256SUMS"
cat "$logdir/build_metadata.txt"
echo BUILD_OK
