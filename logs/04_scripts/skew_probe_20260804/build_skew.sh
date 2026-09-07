#!/usr/bin/env bash
set -euo pipefail

# diff/grep messages are localised on the compute nodes; the tree-integrity
# checks below match on English output.
export LC_ALL=C LANG=C

parent=/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15
candidate_base=/public/home/fujiake/fjk/agent_tmp/isolated/work/o33_skew_20260804
root=$candidate_base/ROMS_CoSiNE15
script_root=/public/home/fujiake/fjk/agent_tmp/isolated/scripts/skew_20260804
logdir=/public/home/fujiake/fjk/agent_tmp/logs/skew_20260804

expected_parent_bin=5f1a137e42252c9b978ad50ab344b9d6493f5e5afeeb71ed2d83f0a4228cfcb9
expected_parent_timers=c74076498496a08aae1103a2ebccd3f3282a4ad1c06d6d8cdd3d6ac930929312
: "${EXPECTED_CAND_TIMERS:?missing EXPECTED_CAND_TIMERS}"

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

check_sha "$expected_parent_bin"    "$parent/oceanM.O33_final"
check_sha "$expected_parent_timers" "$parent/ROMS/Utility/timers.F"
check_sha "$EXPECTED_CAND_TIMERS"   "$script_root/timers.F"

mkdir -p "$candidate_base" "$logdir"
cp -a "$parent" "$root"
[[ -d "$root/Build" ]] || fail "candidate copy incomplete"
cp -p "$root/oceanM.O33_final" "$root/oceanM.O33_parent"

cp -p "$script_root/timers.F" "$root/ROMS/Utility/timers.F"
check_sha "$EXPECTED_CAND_TIMERS" "$root/ROMS/Utility/timers.F"

diff -u "$parent/ROMS/Utility/timers.F" "$root/ROMS/Utility/timers.F" > "$logdir/timers.patch" || true

# Exactly one file may differ anywhere in the tree.  Count raw diff -qr lines
# so the check does not depend on the message locale.
diff -qr "$parent/ROMS" "$root/ROMS" > "$logdir/source_tree.diff" || true
[[ $(wc -l < "$logdir/source_tree.diff") -eq 1 ]] || {
  cat "$logdir/source_tree.diff"
  fail "expected exactly one differing ROMS/ file"
}
grep -q 'ROMS/Utility/timers.F' "$logdir/source_tree.diff" || {
  cat "$logdir/source_tree.diff"
  fail "the single differing file is not timers.F"
}
diff -qr "$parent/Compilers" "$root/Compilers" > "$logdir/compilers_tree.diff" || true
[[ ! -s "$logdir/compilers_tree.diff" ]] || {
  cat "$logdir/compilers_tree.diff"
  fail "Compilers/ must be untouched"
}

# The probe may only add lines; nothing in the parent may be removed.
removed=$(grep -E '^-' "$logdir/timers.patch" | grep -v '^---' || true)
[[ -z "$removed" ]] || { printf '%s\n' "$removed"; fail "timers.F removes parent lines"; }

module purge
module load mathlib/netcdf/4.4.1/intel
module load mpi/hpcx/2.7.4/intel-2017.5.239
module load mathlib/hdf5/1.8.20/intel
module load compiler/intel/2017.5.239

cd "$root"
rm -f "$root"/Build/timers.o
make -n > "$logdir/make_dry_run.txt" 2>&1
grep -q 'timers' "$logdir/make_dry_run.txt" || fail "dry run does not rebuild timers"

set +e
{ time make -j16; } > "$logdir/build.log" 2>&1
rc=$?
set -e
[[ $rc -eq 0 ]] || { tail -120 "$logdir/build.log"; exit "$rc"; }
[[ -x oceanM ]] || fail "missing linked oceanM"
cp -p oceanM oceanM.O33_skew
[[ "$(hash_of oceanM.O33_skew)" != "$expected_parent_bin" ]] || fail "candidate binary unchanged"
if ldd oceanM.O33_skew | grep -q 'not found'; then
  ldd oceanM.O33_skew
  fail "unresolved runtime dependency"
fi

# The probe must survive C-preprocessing and reach the binary.
grep -q "skewprobe/rank" "$root/Build/timers.f90" || fail "probe missing from timers.f90"
strings oceanM.O33_skew | grep -q 'skewprobe/rank' || fail "probe string missing from binary"
echo "PROBE_OK|timers.f90+binary"

# No object other than timers.o may have been recompiled by this change.
newer=$(find "$root/Build" -name '*.o' -newer "$root/oceanM.O33_parent" -printf '%f\n' | sort)
echo "REBUILT_OBJECTS=$newer"

{
  echo "BUILD_END=$(date '+%F %T %z')"
  echo "HOST=$(hostname)"
  echo "PARENT=$parent"
  echo "ROOT=$root"
  echo 'CANDIDATE=[P1] per-rank region-time dump in timers.F (diagnostic only, no physics path touched)'
  sha256sum "$root/oceanM.O33_parent" "$root/oceanM.O33_skew" \
    "$root/Build/timers.o" "$root/Build/timers.f90" \
    "$root/ROMS/Utility/timers.F" \
    "$root/ROMS/External/ocean_SCS_Dongsha60_bio15.in" "$root/coll_rules.conf"
  ldd "$root/oceanM.O33_skew"
} > "$logdir/build_metadata.txt"

sha256sum "$logdir"/*.txt "$logdir"/*.patch "$logdir"/*.diff "$logdir/build.log" \
  > "$logdir/SHA256SUMS"
cat "$logdir/build_metadata.txt"
echo BUILD_OK
