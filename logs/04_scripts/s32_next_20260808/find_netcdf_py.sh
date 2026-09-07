#!/bin/bash
set -u
echo "==== try pythons ===="
for py in \
  /public/share/mcc2026_final/miniforge3/bin/python \
  /public/share/mcc2026_final/miniforge3/bin/python3 \
  /public/home/fujiake/miniconda3/bin/python \
  /usr/bin/python3
 do
  [ -x "$py" ] || continue
  echo -n "$py : "
  "$py" -c 'import netCDF4; print(netCDF4.__version__)' 2>&1 | head -1
done
echo "==== ncdump ===="
which ncdump || true
module purge >/dev/null 2>&1
module load mathlib/netcdf/4.4.1/intel >/dev/null 2>&1
which ncdump
ncdump -h /public/home/fujiake/Inputfiles/Dongsha60/Dongsha60_grd.nc 2>&1 | head -50
# NCO?
which ncks ncap2 2>/dev/null || true
