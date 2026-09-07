#!/usr/bin/env bash
set -euo pipefail

# [s2dfuse candidate] step2d three-loop fusion (Drhs/DUon/DVom), Stage-108
# P0-2.  Source patch on ROMS/Nonlinear/step2d_LF_AM3.h NESTING branch only:
#   first row JstrVm2-1: Drhs+DUon (DVom needs row j-1, out of range)
#   rows JstrVm2..Jendp2: Drhs+DVom fused into ONE unit-stride i-loop, then
#   DUon i-loop.
# Per-point arithmetic order unchanged -> bitwise-identical trajectory
# expected.  Compile flags identical to O33; only step2d.o rebuilt + relink.

parent=/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15
candidate_base=/public/home/fujiake/fjk/agent_tmp/isolated/work/o33_s2dfuse_20260806
root=$candidate_base/ROMS_CoSiNE15
script_root=/public/home/fujiake/fjk/agent_tmp/isolated/scripts/s2dfuse_20260806
logdir=/public/home/fujiake/fjk/agent_tmp/logs/s2dfuse_20260806

expected_parent_bin=5f1a137e42252c9b978ad50ab344b9d6493f5e5afeeb71ed2d83f0a4228cfcb9
expected_parent_mk=081b267b491f6ddf48cd03243a5fa466f9f277439ceb4eec5332a5355a9faced
expected_h=/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15/ROMS/Nonlinear/step2d_LF_AM3.h
expected_h_sha=$(sha256sum "$expected_h" | awk '{print $1}')

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

check_sha "$expected_parent_mk" "$parent/Compilers/Linux-ifort.mk"

# Apply the fusion patch to step2d_LF_AM3.h only.
check_sha "$expected_h_sha" "$root/ROMS/Nonlinear/step2d_LF_AM3.h"
/usr/bin/patch -p1 -d "$root" < "$script_root/step2d_fuse.patch" > "$logdir/patch.log" 2>&1
rc=$?
[[ $rc -eq 0 ]] || { cat "$logdir/patch.log"; fail "patch failed rc=$rc"; }
rm -f "$root/ROMS/Nonlinear/step2d_LF_AM3.h.orig"
grep -q 'O-s2dfuse' "$root/ROMS/Nonlinear/step2d_LF_AM3.h" || fail "fusion marker missing"
grep -q 'DO j=JstrVm2-1,JstrVm2-1' "$root/ROMS/Nonlinear/step2d_LF_AM3.h" || fail "first-row split missing"
[[ "$(hash_of "$root/ROMS/Nonlinear/step2d_LF_AM3.h")" != "$expected_h_sha" ]] || fail "header unchanged"
echo "PATCH_OK"

# Only the patched header may differ in ROMS/ (diff -qr reports it + any others).
diff -qr "$parent/ROMS" "$root/ROMS" > "$logdir/source_tree.diff" || true
grep -v 'step2d_LF_AM3\.h differ' "$logdir/source_tree.diff" | grep -q . && {
  cat "$logdir/source_tree.diff"
  fail "ROMS/ has unexpected diffs (only step2d_LF_AM3.h allowed)"
}
diff -u "$parent/Compilers/Linux-ifort.mk" "$root/Compilers/Linux-ifort.mk" \
  > "$logdir/mk.patch" || true
[[ ! -s "$logdir/mk.patch" ]] || fail "mk must be unchanged"

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
rm -f "$root"/Build/step2d.o
make -n > "$logdir/make_dry_run.txt" 2>&1
grep -E 'cd Build; .*mpif90 .* step2d\.f90$' "$logdir/make_dry_run.txt" || fail "dry run does not compile step2d"
grep -E 'cd Build; .*mpif90 .* (biology|pre_step3d|step3d_t|t3dmix|gls_corstep)\.f90$' \
  "$logdir/make_dry_run.txt" && fail "dry run recompiles other hot objects (must not)"

set +e
{ time make -j16; } > "$logdir/build.log" 2>&1
rc=$?
set -e
[[ $rc -eq 0 ]] || { tail -120 "$logdir/build.log"; exit "$rc"; }
[[ -x oceanM ]] || fail "missing linked oceanM"
cp -p oceanM oceanM.O33_s2dfuse
[[ "$(hash_of oceanM.O33_s2dfuse)" != "$expected_parent_bin" ]] || fail "candidate binary unchanged"
if ldd oceanM.O33_s2dfuse | grep -q 'not found'; then
  ldd oceanM.O33_s2dfuse
  fail "unresolved runtime dependency"
fi

echo "STEP2D_OBJECT_HASH=$(hash_of "$root/Build/step2d.o")"
grep -E '^step2d\.o|step2d\.o:' "$logdir/build.log" > "$logdir/compile_lines.txt" || true
cat "$logdir/compile_lines.txt"
echo "S2DFUSE_BUILD_OK hash=$(hash_of oceanM.O33_s2dfuse)"
