#!/usr/bin/env bash
set -euo pipefail
export LC_ALL=C LANG=C

candidate_base=/public/home/fujiake/fjk/agent_tmp/isolated/work/s32_ifort2022_20260808
root=$candidate_base/ROMS_CoSiNE15
logdir=/public/home/fujiake/fjk/agent_tmp/logs/s32_ifort2022_20260808
s32_bin_src=/public/home/fujiake/nan/sprint/ROMS_CoSiNE15_s22b/oceanM.s32_ifort2021_ipo.bak
expected_mk_16=38824c70b2e15fef
expected_s32_md5=92ffbd0184e82f84d47896d8eaa0712b
ifort_bin=/public/software/compiler/intel/oneapi/oneapi-2022.3.0/compiler/2022.2.0/linux/bin/intel64
ifort_lib=/public/software/compiler/intel/oneapi/oneapi-2022.3.0/compiler/2022.2.0/linux/compiler/lib/intel64_lin

fail() { echo "FATAL: $*" >&2; exit 2; }

# Flat extract already present under candidate_base; nest it as ROMS_CoSiNE15.
if [[ ! -d "$root" ]]; then
  mkdir -p "$root"
  # move everything except the new ROMS_CoSiNE15 dir itself
  shopt -s dotglob nullglob
  for item in "$candidate_base"/*; do
    base=$(basename "$item")
    [[ "$base" == "ROMS_CoSiNE15" ]] && continue
    mv "$item" "$root/"
  done
  shopt -u dotglob nullglob
fi
[[ -d "$root/ROMS" && -f "$root/makefile" ]] || fail "tree not ready"
mkdir -p "$logdir"

mk_16=$(sha256sum "$root/Compilers/Linux-ifort.mk" | cut -c1-16)
[[ "$mk_16" == "$expected_mk_16" ]] || fail "mk hash $mk_16 != $expected_mk_16"
echo "MK_OK $mk_16"

cp -p "$s32_bin_src" "$root/oceanM.S32_parent"
md5=$(md5sum "$root/oceanM.S32_parent" | awk '{print $1}')
[[ "$md5" == "$expected_s32_md5" ]] || fail "S32 parent md5 $md5 != $expected_s32_md5"
echo "PARENT_MD5_OK $md5"

# Need Master/ etc? Check if tarball missed Build-needed dirs
ls "$root" | head -30
[[ -d "$root/Master" ]] || echo "WARN: no Master dir"
[[ -f "$root/coll_rules.conf" ]] || fail "missing coll_rules"

if [[ -e "$root/Inputfiles" || -L "$root/Inputfiles" ]]; then rm -f "$root/Inputfiles"; fi
ln -s /public/home/fujiake/Inputfiles "$root/Inputfiles"

module purge
module load mathlib/netcdf/4.4.1/intel
module load mpi/hpcx/2.7.4/intel-2017.5.239
module load mathlib/hdf5/1.8.20/intel
export PATH=$ifort_bin:$PATH
export LD_LIBRARY_PATH=$ifort_lib:$LD_LIBRARY_PATH
[[ "$(command -v ifort)" == "$ifort_bin/ifort" ]] || fail "ifort path wrong: $(command -v ifort)"
ifort --version 2>/dev/null | head -1 | tee "$logdir/ifort_version.txt"

cd "$root"
echo "=== full rebuild (ipo makes this slow) ==="
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
[[ -x oceanM ]] || fail "missing oceanM"
cp -p oceanM oceanM.S32_ifort2022
new=$(sha256sum oceanM.S32_ifort2022 | awk '{print $1}')
old=$(sha256sum oceanM.S32_parent | awk '{print $1}')
[[ "$new" != "$old" ]] || fail "binary identical"
if ldd oceanM.S32_ifort2022 | grep -q 'not found'; then
  ldd oceanM.S32_ifort2022; fail "unresolved"
fi
echo "S32_IFORT2022_BUILD_OK"
echo "  candidate_sha256=$new"
echo "  candidate_md5=$(md5sum oceanM.S32_ifort2022 | awk '{print $1}')"
echo "  parent_md5=$md5"
grep -aE 'mpif90.*-ipo|mpif90.*core-avx2' "$logdir/build.log" | head -3
