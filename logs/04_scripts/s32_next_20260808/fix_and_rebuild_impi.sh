#!/usr/bin/env bash
# Rewrite ImpI wrapper + rebuild job after I_MPI_ROOT fix.
set -euo pipefail
export LC_ALL=C LANG=C

base=/public/home/fujiake/fjk/agent_tmp/isolated/work/s32_impi_20260808
wrap=$base/mpi_wrappers
logdir=/public/home/fujiake/fjk/agent_tmp/logs/s32_impi_20260808
scripts=/public/home/fujiake/fjk/agent_tmp/isolated/scripts/s32_impi_20260808
impi_root=/public/software/mpi/intelmpi/2021.3.0

mkdir -p "$wrap" "$logdir"
cat > "$wrap/mpif90" <<EOF
#!/usr/bin/env bash
# BELOW_GATE: ROMS mpif90 -> Intel MPI 2021.3.0 mpiifort
export I_MPI_ROOT=$impi_root
export PATH=\$I_MPI_ROOT/bin:\$PATH
export LD_LIBRARY_PATH=\$I_MPI_ROOT/lib/release:\$I_MPI_ROOT/lib:\${LD_LIBRARY_PATH:-}
exec \$I_MPI_ROOT/bin/mpiifort "\$@"
EOF
chmod +x "$wrap/mpif90"
ln -sfn mpif90 "$wrap/mpifort"

# Patch build slurm: ensure I_MPI_ROOT + ifort_lib before make
# Rewrite critical env section by regenerating from known-good template already on disk
# Quick in-place: prepend exports via a small runner
cat > "$scripts/build_s32_impi.slurm" <<'SLURM'
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
export I_MPI_ROOT=$impi_root
export PATH=$wrap:$ifort_bin:$impi_root/bin:$PATH
export LD_LIBRARY_PATH=$ifort_lib:$impi_root/lib/release:$impi_root/lib:$impi_root/libfabric/lib:${LD_LIBRARY_PATH:-}
export I_MPI_F90=ifort
export I_MPI_FC=ifort
hash -r

MAKE=/usr/bin/make
[[ -x "$MAKE" ]] || MAKE=/opt/rh/devtoolset-7/root/usr/bin/make

{
  echo "BUILD_START=$(date '+%F %T %z')"
  echo "HOST=$(hostname)"
  echo "I_MPI_ROOT=$I_MPI_ROOT"
  which ifort
  ifort --version | head -1
  which mpif90
  mpif90 -show 2>&1 | head -2
} | tee "$logdir/build_env.txt"

# Prove mpif.h visible
echo "include 'mpif.h'" | mpif90 -E - 2>&1 | head -5 | tee -a "$logdir/build_env.txt"

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

ldd oceanM.S32_impi | tee "$logdir/ldd.txt"
grep -E 'libmpi' "$logdir/ldd.txt" | sed 's/^/  MPI: /'
grep -qi 'libmpi.so.40\|openmpi\|hpcx' "$logdir/ldd.txt" && fail "still linked to Open MPI/HPC-X"
grep -E 'libmpi.so.12|libmpifort' "$logdir/ldd.txt" || fail "not linked to Intel MPI sonames"

parent_sha=$(sha256sum oceanM.S32_parent | awk '{print $1}')
cand_sha=$(sha256sum oceanM.S32_impi | awk '{print $1}')
[[ "$parent_sha" != "$cand_sha" ]] || fail "binary identical to parent"

md5sum oceanM.S32_parent oceanM.S32_impi | tee "$logdir/binaries.md5"
sha256sum oceanM.S32_parent oceanM.S32_impi | tee "$logdir/binaries.sha256"
echo "S32_IMPI_BUILD_OK" | tee "$logdir/BUILD_OK"
echo "BUILD_DONE=$(date '+%F %T %z')"
SLURM

sed -i 's/\r$//' "$scripts/build_s32_impi.slurm" "$wrap/mpif90"
job=$(sbatch --parsable "$scripts/build_s32_impi.slurm")
echo "BUILD_JOB2=$job" | tee "$logdir/build_job2.txt"
squeue -j "$job"
