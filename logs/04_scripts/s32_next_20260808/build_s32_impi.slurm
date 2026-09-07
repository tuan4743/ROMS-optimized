#!/usr/bin/env bash
#SBATCH -p kshcexclu06
#SBATCH -N 1
#SBATCH -n 1
#SBATCH --cpus-per-task=16
#SBATCH --exclusive
#SBATCH -J fjk_S32_IMPI_BUILD
#SBATCH -t 01:30:00
#SBATCH -o /public/home/fujiake/fjk/agent_tmp/logs/s32_impi_20260808/slurm-build-%j.out
#SBATCH -e /public/home/fujiake/fjk/agent_tmp/logs/s32_impi_20260808/slurm-build-%j.err

set -euo pipefail
export LC_ALL=C LANG=C

# BELOW_GATE diagnostic build: S32 sources + ifort 2021.3.0 flags, Intel MPI 2021.3.0 link.
# Not authorized as a ≥2% scoring candidate.

root=/public/home/fujiake/fjk/agent_tmp/isolated/work/s32_impi_20260808/ROMS_CoSiNE15
wrap=/public/home/fujiake/fjk/agent_tmp/isolated/work/s32_impi_20260808/mpi_wrappers
logdir=/public/home/fujiake/fjk/agent_tmp/logs/s32_impi_20260808
ifort_bin=/public/software/compiler/intel/oneapi/oneapi-2021.3.0/compiler/2021.3.0/linux/bin/intel64
ifort_lib=/public/software/compiler/intel/oneapi/oneapi-2021.3.0/compiler/2021.3.0/linux/compiler/lib/intel64_lin
impi_root=/public/software/mpi/intelmpi/2021.3.0

fail() { echo "FATAL: $*" >&2; exit 2; }
[[ -d "$root" ]] || fail "missing $root"
[[ -x "$wrap/mpif90" ]] || fail "missing wrapper"
mkdir -p "$logdir"

module purge
module load mathlib/netcdf/4.4.1/intel
module load mathlib/hdf5/1.8.20/intel
# Do not load HPC-X — ImpI only.
export PATH=$wrap:$ifort_bin:$impi_root/bin:$PATH
export LD_LIBRARY_PATH=$ifort_lib:$impi_root/lib/release:$impi_root/libfabric/lib:${LD_LIBRARY_PATH:-}
export I_MPI_F90=ifort
export I_MPI_FC=ifort
export I_MPI_CC=icc
# Prefer classic ifort from PATH for mpiifort
hash -r

MAKE=/usr/bin/make
[[ -x "$MAKE" ]] || MAKE=/opt/rh/devtoolset-7/root/usr/bin/make

{
  echo "BUILD_START=$(date '+%F %T %z')"
  echo "HOST=$(hostname)"
  which ifort
  ifort --version | head -1
  which mpif90
  mpif90 -show 2>&1 | head -2
  which mpiifort
  echo "I_MPI_F90=$I_MPI_F90"
} | tee "$logdir/build_env.txt"

cd "$root"
rm -rf Build
rm -f oceanM oceanM.S32_impi
set +e
{ time "$MAKE" clean; } > "$logdir/clean.log" 2>&1
{ time "$MAKE" -j8; } > "$logdir/build.log" 2>&1
rc=$?
set -e
if [[ $rc -ne 0 ]]; then
  tail -120 "$logdir/build.log"
  fail "build rc=$rc"
fi
[[ -x oceanM ]] || fail "no oceanM"
cp -p oceanM oceanM.S32_impi

# Must link Intel MPI, not Open MPI
ldd oceanM.S32_impi | tee "$logdir/ldd.txt"
grep -qi 'libmpi.so' "$logdir/ldd.txt" || fail "no libmpi"
grep -qi 'openmpi\|hpcx\|libmpi.so.40' "$logdir/ldd.txt" && fail "still linked to Open MPI/HPC-X"
grep -qi 'intel\|libmpi.so.12\|libmpifort\|2021' "$logdir/ldd.txt" || \
  echo "WARN: could not positively ID ImpI soname; inspect ldd.txt"

parent_sha=$(sha256sum oceanM.S32_parent | awk '{print $1}')
cand_sha=$(sha256sum oceanM.S32_impi | awk '{print $1}')
[[ "$parent_sha" != "$cand_sha" ]] || fail "binary identical to parent"

md5sum oceanM.S32_parent oceanM.S32_impi | tee "$logdir/binaries.md5"
sha256sum oceanM.S32_parent oceanM.S32_impi | tee "$logdir/binaries.sha256"
echo "S32_IMPI_BUILD_OK" | tee "$logdir/BUILD_OK"
echo "BUILD_DONE=$(date '+%F %T %z')"
