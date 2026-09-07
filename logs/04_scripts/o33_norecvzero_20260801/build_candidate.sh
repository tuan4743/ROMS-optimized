#!/usr/bin/env bash
set -euo pipefail

ROOT=/public/home/fujiake/fjk/agent_tmp/isolated/work/o33_norecvzero_abba_20260801/ROMS_CoSiNE15
PARENT=/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15
LOGDIR=/public/home/fujiake/fjk/agent_tmp/logs/o33_norecvzero_abba_20260801
EXPECTED_PARENT_SOURCE=e1de89f3a01974084a91b09bb6064b7e4ff0d67be8276aee7e8d10ef0dcb743a
: "${EXPECTED_SOURCE_SHA:?set EXPECTED_SOURCE_SHA to the patched distribute.F SHA-256}"

case "$ROOT" in
  /public/home/fujiake/fjk/agent_tmp/isolated/work/*) ;;
  *) echo "unsafe ROOT=$ROOT" >&2; exit 2 ;;
esac
[[ -d "$ROOT" && -d "$PARENT" ]] || { echo "missing root or parent" >&2; exit 2; }
mkdir -p "$LOGDIR"
BUILD_LOG="$LOGDIR/build_$(date +%Y%m%d_%H%M%S).log"
exec > >(tee -a "$BUILD_LOG") 2>&1

echo "BUILD_START=$(date '+%F %T %z')"
echo "HOST=$(hostname)"
echo "ROOT=$ROOT"
echo "PARENT=$PARENT"

actual_parent=$(sha256sum "$PARENT/ROMS/Utility/distribute.F" | awk '{print $1}')
actual_source=$(sha256sum "$ROOT/ROMS/Utility/distribute.F" | awk '{print $1}')
[[ "$actual_parent" == "$EXPECTED_PARENT_SOURCE" ]] || { echo "parent source hash mismatch"; exit 3; }
[[ "$actual_source" == "$EXPECTED_SOURCE_SHA" ]] || { echo "candidate source hash mismatch"; exit 3; }

mapfile -t sites < <(grep -n 'Arecv=0.0_r8' "$ROOT/ROMS/Utility/distribute.F" | cut -d: -f1)
[[ ${#sites[@]} -eq 4 ]] || { printf 'unexpected Arecv count: %s\n' "${#sites[@]}"; exit 4; }
[[ "${sites[*]}" == "2735 3073 4931 5212" ]] || { printf 'unexpected remaining sites: %s\n' "${sites[*]}"; exit 4; }

module purge
module load mathlib/netcdf/4.4.1/intel mpi/hpcx/2.7.4/intel-2017.5.239 mathlib/hdf5/1.8.20/intel compiler/intel/2017.5.239
cd "$ROOT"

make -n > "$LOGDIR/make_dry_run.txt" 2>&1
grep -q 'distribute' "$LOGDIR/make_dry_run.txt" || { echo "dry run does not rebuild distribute"; exit 5; }
grep -q -- '-o oceanM' "$LOGDIR/make_dry_run.txt" || { echo "dry run does not relink oceanM"; exit 5; }

set +e
{ time make -j16; }
rc=$?
set -e
echo "MAKE_RC=$rc"
[[ $rc -eq 0 ]] || exit "$rc"
[[ -x oceanM ]] || { echo "missing oceanM"; exit 6; }
cp -p oceanM oceanM.O33_norecvzero

if ldd oceanM.O33_norecvzero | grep -q 'not found'; then
  ldd oceanM.O33_norecvzero
  echo "unresolved runtime dependency"
  exit 7
fi

{
  echo "BUILD_END=$(date '+%F %T %z')"
  echo "ROOT=$ROOT"
  echo "PARENT_SOURCE_SHA=$actual_parent"
  echo "CANDIDATE_SOURCE_SHA=$actual_source"
  echo "ARECV_SITES=${sites[*]}"
  sha256sum oceanM oceanM.O33_norecvzero coll_rules.conf ROMS/External/ocean_SCS_Dongsha60_bio15.in Compilers/Linux-ifort.mk makefile
  ldd oceanM.O33_norecvzero
} | tee "$LOGDIR/build_metadata.txt"

echo "BUILD_OK"
