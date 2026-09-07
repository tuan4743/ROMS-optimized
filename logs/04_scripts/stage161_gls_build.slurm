#!/bin/bash
#SBATCH -p kshcexclu06
#SBATCH -N 1
#SBATCH -n 16
#SBATCH --exclusive
#SBATCH -J s161_gls_precise
#SBATCH -t 01:00:00
set -euo pipefail
module purge
module load compiler/intel/2021.3.0 mpi/hpcx/2.7.4/intel-2017.5.239 mathlib/netcdf/4.4.1/intel mathlib/hdf5/1.8.20/intel
ifort --version | head -1

ROOT=/public/home/fujiake/fjk/stage161_gls_precise_20260813
mkdir -p "$ROOT"
cd "$ROOT"
tar xzf /public/home/fujiake/nan/sprint/backup_S47_FULL_SRC_20260811.tar.gz
TREE="$ROOT/ROMS_CoSiNE15_S47_FULL_SRC_20260811"
cd "$TREE"

mk="$TREE/Compilers/Linux-ifort.mk"
cp -p "$mk" "$ROOT/Linux-ifort.mk.pre"
sed -i 's/gls_corstep.o: private FFLAGS += -qopenmp -no-heap-arrays -fp-model source/gls_corstep.o: private FFLAGS += -qopenmp -no-heap-arrays -fp-model precise/' "$mk"
grep -n 'gls_corstep.o' "$mk" | tee "$ROOT/mk_gls_line.txt"

/opt/rh/devtoolset-7/root/usr/bin/gmake clean >/dev/null 2>&1 || true
/opt/rh/devtoolset-7/root/usr/bin/gmake -j8 > "$ROOT/build_gls_precise.log" 2>&1
cp -f oceanM oceanM.gls_precise
md5sum oceanM.gls_precise | tee "$ROOT/gls_precise.md5"

echo "--- gls_corstep vectorization check (vdivpd/vmulpd count) ---"
objdump -d --no-show-raw-insn oceanM.gls_precise 2>/dev/null | awk '/<gls_corstep_mod_mp_gls_corstep_tile_>:/,/^\$/' | grep -cE 'vmulpd|vaddpd|vsubpd' | tee "$ROOT/gls_veccount.txt" || echo 0
echo STAGE161_BUILD_DONE
