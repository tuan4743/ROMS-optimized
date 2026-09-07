#!/usr/bin/env bash
set -euo pipefail

parent=/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15
variant_base=/public/home/fujiake/fjk/agent_tmp/isolated/work/o33_step2d_siteprof_20260801
root=$variant_base/ROMS_CoSiNE15
script_root=/public/home/fujiake/fjk/agent_tmp/isolated/scripts/step2d_siteprof_20260801
patch_file=$script_root/instrument_step2d.patch
logdir=/public/home/fujiake/fjk/agent_tmp/logs/o33_step2d_siteprof_20260801

expected_parent_binary=5f1a137e42252c9b978ad50ab344b9d6493f5e5afeeb71ed2d83f0a4228cfcb9
expected_parent_source=0f03de3175e5454f617cfc2476093336d2fb3d957b1daf64e16627346c5c98a7
: "${EXPECTED_PATCH_SHA:?missing EXPECTED_PATCH_SHA}"

fail() { printf 'FATAL: %s\n' "$*" >&2; exit 2; }
hash_of() { sha256sum "$1" | awk '{print $1}'; }
check_sha() {
  local expected=$1 path=$2 actual
  [[ -f "$path" ]] || fail "missing $path"
  actual=$(hash_of "$path")
  [[ "$actual" == "$expected" ]] || fail "hash mismatch path=$path expected=$expected actual=$actual"
  printf 'HASH_OK|%s|%s\n' "$actual" "$path"
}

case "$variant_base" in
  /public/home/fujiake/fjk/agent_tmp/isolated/work/o33_step2d_siteprof_20260801) ;;
  *) fail "unsafe variant root $variant_base" ;;
esac
[[ ! -e "$variant_base" ]] || fail "variant already exists: $variant_base"
check_sha "$expected_parent_binary" "$parent/oceanM.O33_final"
check_sha "$expected_parent_source" "$parent/ROMS/Nonlinear/step2d_LF_AM3.h"
check_sha "$EXPECTED_PATCH_SHA" "$patch_file"

mkdir -p "$variant_base" "$logdir"
cp -a "$parent" "$root"
cp -p "$root/oceanM.O33_final" "$root/oceanM.O33_parent"
cd "$root"
patch --dry-run -p1 < "$patch_file" | tee "$logdir/patch_dry_run.log"
patch -p1 < "$patch_file" | tee "$logdir/patch_apply.log"
grep -q 'MCC_STEP2D_SITE' ROMS/Nonlinear/step2d_LF_AM3.h || fail "profile marker absent"
diff -u "$parent/ROMS/Nonlinear/step2d_LF_AM3.h" \
  ROMS/Nonlinear/step2d_LF_AM3.h > "$logdir/source.diff" || true
[[ -s "$logdir/source.diff" ]] || fail "empty source diff"

module purge
module load mathlib/netcdf/4.4.1/intel
module load mpi/hpcx/2.7.4/intel-2017.5.239
module load mathlib/hdf5/1.8.20/intel
module load compiler/intel/2017.5.239

make -n > "$logdir/make_dry_run.txt" 2>&1
grep -q 'step2d.f90' "$logdir/make_dry_run.txt" || fail "dry run does not rebuild step2d"
set +e
{ time make -j16; } > "$logdir/build.log" 2>&1
rc=$?
set -e
[[ $rc -eq 0 ]] || { tail -120 "$logdir/build.log"; exit "$rc"; }
[[ -x oceanM ]] || fail "missing oceanM"
cp -p oceanM oceanM.O33_step2d_siteprof
grep -a -q 'MCC_STEP2D_SITE' oceanM.O33_step2d_siteprof || fail "binary marker absent"
if ldd oceanM.O33_step2d_siteprof | grep -q 'not found'; then
  ldd oceanM.O33_step2d_siteprof
  fail "unresolved binary dependency"
fi

{
  echo "BUILD_END=$(date '+%F %T %z')"
  echo "HOST=$(hostname)"
  echo "PARENT=$parent"
  echo "ROOT=$root"
  echo 'CHANGE=timing counters only around exact step2d DUon/DVom and ubar/vbar mp_exchange2d calls'
  sha256sum oceanM.O33_parent oceanM.O33_step2d_siteprof \
    ROMS/Nonlinear/step2d_LF_AM3.h Build/step2d.f90 Build/step2d.o \
    Build/libNLM.a Compilers/Linux-ifort.mk \
    ROMS/External/ocean_SCS_Dongsha60_bio15.in coll_rules.conf
  ldd oceanM.O33_step2d_siteprof
} > "$logdir/build_metadata.txt"
sha256sum "$patch_file" "$logdir/patch_dry_run.log" \
  "$logdir/patch_apply.log" "$logdir/source.diff" \
  "$logdir/make_dry_run.txt" "$logdir/build.log" \
  "$logdir/build_metadata.txt" > "$logdir/SHA256SUMS"
cat "$logdir/build_metadata.txt"
echo BUILD_OK
