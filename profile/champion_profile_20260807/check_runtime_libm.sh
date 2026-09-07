#!/bin/bash
# Read-only: which libimf/libm does the 2021-compiled champion actually resolve at run time?
# Build prepended the 2021 compiler lib dir; the RUN scripts load the 2017 compiler module.
BIN=/public/home/fujiake/fjk/agent_tmp/isolated/work/o33_ifort2021_20260805/ROMS_CoSiNE15/oceanM.O33_ifort2021
PAR=/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15/oceanM
L21=/public/software/compiler/intel/oneapi/oneapi-2021.3.0/compiler/2021.3.0/linux/compiler/lib/intel64_lin

echo "############ RUN-TIME module set used by the champion runs (from the run script)"
sed -n '1,80p' /public/home/fujiake/fjk/agent_tmp/isolated/scripts/cand_20260806/full_validate_hpcx211.slurm \
  | grep -n -e 'module' -e 'LD_LIBRARY_PATH' -e 'export'

echo
echo "############ ldd under the RUN environment (2017 compiler module)"
module purge 2>/dev/null
module load mathlib/netcdf/4.4.1/intel 2>/dev/null
module load mpi/hpcx/2.7.4/intel-2017.5.239 2>/dev/null
module load mathlib/hdf5/1.8.20/intel 2>/dev/null
module load compiler/intel/2017.5.239 2>/dev/null
echo "-- champion --"
ldd "$BIN" 2>/dev/null | grep -i -e 'libimf' -e 'libm\.' -e 'libirc' -e 'libsvml' -e 'libintlc' -e 'not found'
echo "-- parent 2017 binary (control) --"
ldd "$PAR" 2>/dev/null | grep -i -e 'libimf' -e 'libm\.' -e 'libirc' -e 'libsvml' -e 'libintlc' -e 'not found'

echo
echo "############ ldd with the 2021 compiler libs prepended (the proposed B leg)"
LD_LIBRARY_PATH=$L21:$LD_LIBRARY_PATH ldd "$BIN" 2>/dev/null \
  | grep -i -e 'libimf' -e 'libm\.' -e 'libirc' -e 'libsvml' -e 'libintlc' -e 'not found'

echo
echo "############ do the two libimf differ?"
for f in $(ldd "$BIN" 2>/dev/null | awk '/libimf/{print $3}') "$L21/libimf.so"; do
  [ -e "$f" ] && echo "  $(sha256sum "$f" | cut -c1-16)  $(ls -l "$f" | awk '{print $5}')  $f"
done

echo
echo "############ does the champion actually need pow at run time?"
nm -D "$BIN" 2>/dev/null | grep -i -e ' U pow' -e 'powr8' -e ' U exp' -e ' U log' | head
echo "-- which lib provides pow --"
for f in $(ldd "$BIN" 2>/dev/null | awk '/libimf|libm\./{print $3}'); do
  echo "  $f : $(nm -D --defined-only "$f" 2>/dev/null | grep -c -w -e 'pow' -e '__powr8i4') pow-ish symbols"
done
