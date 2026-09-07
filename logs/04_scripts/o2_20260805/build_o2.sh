#!/usr/bin/env bash
set -euo pipefail

# [-O2 candidate] single compile-axis change on immutable O33: global
# `FFLAGS += -ip -O3` -> `-ip -O2`.  Everything else byte-identical.
# Inherited signal: teammate zya o2_abba_118480888 (own tree, different
# baseline) showed B(-O2) ~2% faster than A(-O3) at 144/720; never tested
# on O33.  Trajectory may or may not change (-O2 vs -O3 usually keeps the
# same fp-model; gate is trajectory + wall + official 26/26).

export LC_ALL=C LANG=C

parent=/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15
candidate_base=/public/home/fujiake/fjk/agent_tmp/isolated/work/o33_o2_20260805
root=$candidate_base/ROMS_CoSiNE15
logdir=/public/home/fujiake/fjk/agent_tmp/logs/o2_20260805

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
sed -i 's|^           FFLAGS += -ip -O3$|           FFLAGS += -ip -O2|' "$root/Compilers/Linux-ifort.mk"
grep -q '^           FFLAGS += -ip -O2$' "$root/Compilers/Linux-ifort.mk" || fail "-O2 flag not applied"
grep -q '^           FFLAGS += -ip -O3$' "$root/Compilers/Linux-ifort.mk" && fail "-O3 still present"
echo "MK_O2_OK"
diff -u "$parent/Compilers/Linux-ifort.mk" "$root/Compilers/Linux-ifort.mk" \
  > "$logdir/mk.patch" || true

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
# Global flag change: full rebuild required.
rm -f "$root"/Build/*.o "$root"/Build/*.mod
set +e
{ time make -j16; } > "$logdir/build.log" 2>&1
rc=$?
set -e
[[ $rc -eq 0 ]] || { tail -120 "$logdir/build.log"; exit "$rc"; }
[[ -x oceanM ]] || fail "missing linked oceanM"
cp -p oceanM oceanM.O33_o2
[[ "$(hash_of oceanM.O33_o2)" != "$expected_parent_bin" ]] || fail "candidate binary unchanged"
if ldd oceanM.O33_o2 | grep -q 'not found'; then
  ldd oceanM.O33_o2
  fail "unresolved runtime dependency"
fi
grep -aE "cd Build.*mpif90.*-ip -O2" "$logdir/build.log" | head -2 \
  > "$logdir/o2_compile_lines.txt" || true
cat "$logdir/o2_compile_lines.txt"
echo "O2_BUILD_OK hash=$(hash_of oceanM.O33_o2)"
