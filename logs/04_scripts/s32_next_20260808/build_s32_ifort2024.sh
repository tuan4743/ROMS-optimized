#!/usr/bin/env bash
set -euo pipefail
export LC_ALL=C LANG=C

# [S32-2024] Rebuild S32 with ifort from oneAPI 2024.0.1.
# Needs gcc-12 libstdc++ for the ifort driver itself (GLIBCXX_3.4.21).
# Run-time of oceanM still pinned to 2017 modules (math lib fixed).

src=/public/home/fujiake/fjk/agent_tmp/isolated/work/s32_ifort2022_20260808/ROMS_CoSiNE15
candidate_base=/public/home/fujiake/fjk/agent_tmp/isolated/work/s32_ifort2024_20260808
root=$candidate_base/ROMS_CoSiNE15
logdir=/public/home/fujiake/fjk/agent_tmp/logs/s32_ifort2024_20260808
s32_parent=/public/home/fujiake/nan/sprint/ROMS_CoSiNE15_s22b/oceanM.s32_ifort2021_ipo.bak

expected_mk_16=38824c70b2e15fef
expected_s32_md5=92ffbd0184e82f84d47896d8eaa0712b
ifort_bin=/public/software/compiler/intel/oneapi/oneapi-2024.0.1/compiler/2024.0/bin
ifort_lib=/public/software/compiler/intel/oneapi/oneapi-2024.0.1/compiler/2024.0/lib
gcc12_lib=/public/software/compiler/gnu/gcc-12.2.0/lib64

fail() { echo "FATAL: $*" >&2; exit 2; }
[[ -d "$src/ROMS" ]] || fail "missing S32 working tree to clone"
[[ ! -e "$candidate_base" ]] || fail "exists: $candidate_base"
mkdir -p "$candidate_base" "$logdir"

echo "=== copy tree from s32_ifort2022 work (same S32 sources) ==="
cp -a "$src" "$root"
# drop previous binaries / Build
rm -f "$root"/oceanM "$root"/oceanM.S32_ifort2022 "$root"/oceanM.S32_parent 2>/dev/null || true
rm -rf "$root/Build"
cp -p "$s32_parent" "$root/oceanM.S32_parent"
md5=$(md5sum "$root/oceanM.S32_parent" | awk '{print $1}')
[[ "$md5" == "$expected_s32_md5" ]] || fail "parent md5 $md5"
mk_16=$(sha256sum "$root/Compilers/Linux-ifort.mk" | cut -c1-16)
[[ "$mk_16" == "$expected_mk_16" ]] || fail "mk $mk_16"
echo "PARENT_OK MK_OK"

# ifort 2024 needs gcc12 libstdc++ for the DRIVER
export PATH=$ifort_bin:$PATH
export LD_LIBRARY_PATH=$gcc12_lib:$ifort_lib:${LD_LIBRARY_PATH:-}

module purge
module load mathlib/netcdf/4.4.1/intel
module load mpi/hpcx/2.7.4/intel-2017.5.239
module load mathlib/hdf5/1.8.20/intel
# re-prepend after module (modules may prepend their own libs)
export PATH=$ifort_bin:$PATH
export LD_LIBRARY_PATH=$gcc12_lib:$ifort_lib:$LD_LIBRARY_PATH

command -v ifort
ifort --version 2>&1 | head -3 | tee "$logdir/ifort_version.txt"
grep -qi ifort "$logdir/ifort_version.txt" || fail "ifort 2024 failed to start"

# 2024 ifort may be a clang-based driver; -ipo and -march=core-avx2 should still work
# for classic-compatible mode. If build fails on flags, capture and stop.

cd "$root"
if [[ -e Inputfiles || -L Inputfiles ]]; then rm -f Inputfiles; fi
ln -s /public/home/fujiake/Inputfiles Inputfiles

set +e
{ time make clean; } > "$logdir/clean.log" 2>&1
{ time make -j16; } > "$logdir/build.log" 2>&1
rc=$?
set -e
if [[ $rc -ne 0 ]]; then
  echo "---- build.log tail ----"
  tail -100 "$logdir/build.log"
  fail "build failed rc=$rc"
fi
[[ -x oceanM ]] || fail "no oceanM"
cp -p oceanM oceanM.S32_ifort2024
echo "S32_IFORT2024_BUILD_OK"
md5sum oceanM.S32_parent oceanM.S32_ifort2024
sha256sum oceanM.S32_ifort2024 | awk '{print substr($1,1,20)}'
grep -aE 'ifort|ipo|core-avx2' "$logdir/build.log" | head -5
