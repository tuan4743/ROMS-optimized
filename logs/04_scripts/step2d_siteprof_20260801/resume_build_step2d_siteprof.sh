#!/usr/bin/env bash
set -euo pipefail

parent=/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15
root=/public/home/fujiake/fjk/agent_tmp/isolated/work/o33_step2d_siteprof_20260801/ROMS_CoSiNE15
logdir=/public/home/fujiake/fjk/agent_tmp/logs/o33_step2d_siteprof_20260801
: "${EXPECTED_SOURCE_SHA:?missing EXPECTED_SOURCE_SHA}"

fail() { printf 'FATAL: %s\n' "$*" >&2; exit 2; }
hash_of() { sha256sum "$1" | awk '{print $1}'; }
case "$root" in
  /public/home/fujiake/fjk/agent_tmp/isolated/work/o33_step2d_siteprof_20260801/ROMS_CoSiNE15) ;;
  *) fail "unsafe root $root" ;;
esac
[[ -d "$root/Build" ]] || fail "missing retained variant"
[[ "$(hash_of "$parent/oceanM.O33_final")" == 5f1a137e42252c9b978ad50ab344b9d6493f5e5afeeb71ed2d83f0a4228cfcb9 ]] || fail "parent binary drift"
[[ "$(hash_of "$root/ROMS/Nonlinear/step2d_LF_AM3.h")" == "$EXPECTED_SOURCE_SHA" ]] || fail "fixed source hash mismatch"
grep -q 'mcc_flux_calls(2)' "$root/ROMS/Nonlinear/step2d_LF_AM3.h" || fail "fixed profiler declaration absent"

module purge
module load mathlib/netcdf/4.4.1/intel
module load mpi/hpcx/2.7.4/intel-2017.5.239
module load mathlib/hdf5/1.8.20/intel
module load compiler/intel/2017.5.239

cd "$root"
make -n > "$logdir/make_retry_dry_run.txt" 2>&1
if grep -q 'step2d.f90' "$logdir/make_retry_dry_run.txt"; then
  set +e
  { time make -j16; } > "$logdir/build_retry.log" 2>&1
  rc=$?
  set -e
  [[ $rc -eq 0 ]] || { tail -120 "$logdir/build_retry.log"; exit "$rc"; }
else
  echo 'NO_REBUILD_REQUIRED: retained retry build is current' > "$logdir/build_finalize.log"
fi
[[ -x oceanM ]] || fail "missing oceanM"
cp -p oceanM oceanM.O33_step2d_siteprof
grep -a -q 'MCC_STEP2D_SITE' oceanM.O33_step2d_siteprof || fail "binary marker absent"
nm -a oceanM.O33_step2d_siteprof > "$logdir/nm.txt"
grep -q 'MCC_UV_SECONDS' "$logdir/nm.txt" || fail "binary counter symbol absent"
if ldd oceanM.O33_step2d_siteprof | grep -q 'not found'; then
  fail "unresolved binary dependency"
fi
{
  echo "BUILD_END=$(date '+%F %T %z')"
  echo "HOST=$(hostname)"
  echo "PARENT=$parent"
  echo "ROOT=$root"
  echo 'CHANGE=profile-only counters, fixed two-slot storage for the frozen two-grid diagnostic'
  sha256sum oceanM.O33_parent oceanM.O33_step2d_siteprof \
    ROMS/Nonlinear/step2d_LF_AM3.h Build/step2d.f90 Build/step2d.o \
    Build/libNLM.a Compilers/Linux-ifort.mk \
    ROMS/External/ocean_SCS_Dongsha60_bio15.in coll_rules.conf
  ldd oceanM.O33_step2d_siteprof
} > "$logdir/build_metadata.txt"
sha256sum "$logdir/build.log" "$logdir/build_retry.log" \
  "$logdir/make_retry_dry_run.txt" "$logdir/build_metadata.txt" \
  > "$logdir/SHA256SUMS.retry"
cat "$logdir/build_metadata.txt"
echo BUILD_OK
