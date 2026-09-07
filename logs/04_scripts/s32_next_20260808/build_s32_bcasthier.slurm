#!/usr/bin/env bash
#SBATCH -p kshcexclu06
#SBATCH -N 1
#SBATCH -n 16
#SBATCH --exclusive
#SBATCH -J fjk_S32_BCASTHIER_BUILD
#SBATCH -t 01:00:00
#SBATCH -o /public/home/fujiake/fjk/agent_tmp/logs/s32_bcasthier_20260808/build_slurm-%j.out
#SBATCH -e /public/home/fujiake/fjk/agent_tmp/logs/s32_bcasthier_20260808/build_slurm-%j.err

set -euo pipefail
export LC_ALL=C LANG=C

root=/public/home/fujiake/fjk/agent_tmp/isolated/work/s32_bcasthier_20260808/ROMS_CoSiNE15
logdir=/public/home/fujiake/fjk/agent_tmp/logs/s32_bcasthier_20260808
s32_parent=/public/home/fujiake/nan/sprint/ROMS_CoSiNE15_s22b/oceanM.s32_ifort2021_ipo.bak
ref_tree=/public/home/fujiake/fjk/agent_tmp/isolated/work/s32_ifort2022_20260808/ROMS_CoSiNE15
ifort_bin=/public/software/compiler/intel/oneapi/oneapi-2021.3.0/compiler/2021.3.0/linux/bin/intel64
ifort_lib=/public/software/compiler/intel/oneapi/oneapi-2021.3.0/compiler/2021.3.0/linux/compiler/lib/intel64_lin
MAKE=/usr/bin/make

fail() { echo "FATAL: $*" >&2; exit 2; }
[[ -d "$root" ]] || fail "missing tree"
grep -q 'S32-BcastHier' "$root/ROMS/Utility/distribute.F" || fail "patch missing"
mkdir -p "$logdir"

[[ -L "$root/Inputfiles" ]] || ln -sfn /public/home/fujiake/Inputfiles "$root/Inputfiles"
[[ -f "$root/coll_rules.conf" ]] || cp -p "$ref_tree/coll_rules.conf" "$root/coll_rules.conf"
[[ -f "$root/ROMS/External/ocean_SCS_Dongsha60_bio15.in" ]] || \
  cp -p "$ref_tree/ROMS/External/ocean_SCS_Dongsha60_bio15.in" "$root/ROMS/External/"

cp -p "$s32_parent" "$root/oceanM.S32_parent"

module purge
module load mathlib/netcdf/4.4.1/intel
module load mpi/hpcx/2.7.4/intel-2017.5.239
module load mathlib/hdf5/1.8.20/intel
export PATH=$ifort_bin:$PATH
export LD_LIBRARY_PATH=$ifort_lib:${LD_LIBRARY_PATH:-}
ulimit -s unlimited
ifort --version | head -1 | tee "$logdir/ifort_version_compute.txt"

cd "$root"
rm -rf Build
rm -f oceanM oceanM.S32_bcasthier
set +e
{ time "$MAKE" clean; } > "$logdir/clean_compute.log" 2>&1
{ time "$MAKE" -j16; } > "$logdir/build_compute.log" 2>&1
rc=$?
set -e
if [[ $rc -ne 0 ]]; then
  tail -120 "$logdir/build_compute.log"
  fail "build rc=$rc"
fi
cp -p oceanM oceanM.S32_bcasthier
md5sum oceanM.S32_parent oceanM.S32_bcasthier | tee "$logdir/binaries.md5"
sha256sum oceanM.S32_parent oceanM.S32_bcasthier | tee "$logdir/binaries.sha256"
strings oceanM.S32_bcasthier | grep -E 'MP_HIER_BCAST' | head -5 | tee "$logdir/strings_gate.txt"
echo "BCASTHIER_BUILD_OK"
