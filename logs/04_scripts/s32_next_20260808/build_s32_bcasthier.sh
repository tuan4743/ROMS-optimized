#!/usr/bin/env bash
set -euo pipefail
export LC_ALL=C LANG=C

# [S32-BcastHier] Rebuild S32 with hierarchical mp_bcast* only.
# Compiler/flags identical to S32 parent (ifort 2021.3.0). Runtime libimf stays 2017.

root=/public/home/fujiake/fjk/agent_tmp/isolated/work/s32_bcasthier_20260808/ROMS_CoSiNE15
logdir=/public/home/fujiake/fjk/agent_tmp/logs/s32_bcasthier_20260808
s32_parent=/public/home/fujiake/nan/sprint/ROMS_CoSiNE15_s22b/oceanM.s32_ifort2021_ipo.bak
ref_tree=/public/home/fujiake/fjk/agent_tmp/isolated/work/s32_ifort2022_20260808/ROMS_CoSiNE15
ifort_bin=/public/software/compiler/intel/oneapi/oneapi-2021.3.0/compiler/2021.3.0/linux/bin/intel64
ifort_lib=/public/software/compiler/intel/oneapi/oneapi-2021.3.0/compiler/2021.3.0/linux/compiler/lib/intel64_lin

fail() { echo "FATAL: $*" >&2; exit 2; }
[[ -d "$root" ]] || fail "missing tree $root"
[[ -f "$root/ROMS/Utility/distribute.F.pre_bcasthier" ]] || fail "missing pre backup"
grep -q 'S32-BcastHier' "$root/ROMS/Utility/distribute.F" || fail "patch marker missing"
mkdir -p "$logdir"

# Ensure Inputfiles + coll_rules from a known-good S32 work tree
[[ -L "$root/Inputfiles" ]] || ln -sfn /public/home/fujiake/Inputfiles "$root/Inputfiles"
if [[ ! -f "$root/coll_rules.conf" ]]; then
  cp -p "$ref_tree/coll_rules.conf" "$root/coll_rules.conf"
fi
# Ensure ocean .in exists
if [[ ! -f "$root/ROMS/External/ocean_SCS_Dongsha60_bio15.in" ]]; then
  cp -p "$ref_tree/ROMS/External/ocean_SCS_Dongsha60_bio15.in" "$root/ROMS/External/"
fi

cp -p "$s32_parent" "$root/oceanM.S32_parent"
parent_md5=$(md5sum "$root/oceanM.S32_parent" | awk '{print $1}')
echo "PARENT_MD5=$parent_md5"
[[ "$parent_md5" == "92ffbd0184e82f84d47896d8eaa0712b" ]] || echo "WARN parent md5 unexpected: $parent_md5"

# PROFILE must stay off for performance binary
grep -n 'PROFILE' "$root/ROMS/Include/globaldefs.h" | head -8 | tee "$logdir/profile_state.txt"

module purge
module load mathlib/netcdf/4.4.1/intel
module load mpi/hpcx/2.7.4/intel-2017.5.239
module load mathlib/hdf5/1.8.20/intel
# Prefer system make; some module stacks expose a broken /opt/glibc make wrapper.
MAKE=/usr/bin/make
[[ -x "$MAKE" ]] || MAKE=/opt/rh/devtoolset-7/root/usr/bin/make
[[ -x "$MAKE" ]] || fail "no working make"
export PATH=$ifort_bin:$PATH
export LD_LIBRARY_PATH=$ifort_lib:${LD_LIBRARY_PATH:-}
ifort --version | head -1 | tee "$logdir/ifort_version.txt"
echo "MAKE=$MAKE ($( "$MAKE" --version | head -1 ))" | tee -a "$logdir/ifort_version.txt"
which ifort | tee -a "$logdir/ifort_version.txt"
which mpif90 | tee -a "$logdir/ifort_version.txt"

cd "$root"
rm -rf Build
rm -f oceanM oceanM.S32_bcasthier
set +e
{ time "$MAKE" clean; } > "$logdir/clean.log" 2>&1
# -j4: login node -ipo OOM risk at -j16
{ time "$MAKE" -j4; } > "$logdir/build.log" 2>&1
rc=$?
set -e
if [[ $rc -ne 0 ]]; then
  echo "---- build.log tail ----"
  tail -100 "$logdir/build.log"
  fail "build rc=$rc"
fi
cp -p oceanM oceanM.S32_bcasthier
echo "BCASTHIER_BUILD_OK"
md5sum oceanM.S32_parent oceanM.S32_bcasthier | tee "$logdir/binaries.md5"
sha256sum oceanM.S32_parent oceanM.S32_bcasthier | tee "$logdir/binaries.sha256"
# Prove helper strings landed
strings oceanM.S32_bcasthier | grep -E 'MP_HIER_BCAST|S32-BcastHier|MP_BCASTF_0D' | head -10 | tee "$logdir/strings_gate.txt"
grep -E 'libimf|libsvml' <<<"$(ldd oceanM.S32_bcasthier)" | sed 's/^/  B_link: /'
