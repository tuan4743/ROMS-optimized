#!/usr/bin/env bash
set -euo pipefail
# Dump exact netcdf_create OutThread block for patch alignment
mod=/public/home/fujiake/nan/sprint/ROMS_CoSiNE15/ROMS/Modules/mod_netcdf.F
# Prefer clean S32 work tree if nan tree differs
for cand in \
  /public/home/fujiake/fjk/agent_tmp/isolated/work/s32_ifort2022_20260808/ROMS_CoSiNE15/ROMS/Modules/mod_netcdf.F \
  /public/home/fujiake/fjk/agent_tmp/isolated/work/s32_bcasthier_20260808/ROMS_CoSiNE15/ROMS/Modules/mod_netcdf.F \
  /public/home/fujiake/nan/sprint/ROMS_CoSiNE15/ROMS/Modules/mod_netcdf.F
 do
  if [[ -f "$cand" ]]; then echo "FILE $cand"; sed -n '5988,6025p' "$cand"; echo '----'; fi
done
# Also check set_avg for OpenMP insertion candidates: count DO j under ifdef AVERAGES
sa=/public/home/fujiake/fjk/agent_tmp/isolated/work/s32_ifort2022_20260808/ROMS_CoSiNE15/ROMS/Nonlinear/set_avg.F
echo "set_avg path exists? $(test -f $sa && echo yes || echo no)"
wc -l "$sa" 2>/dev/null || true
grep -n 'DO itrc\|DO k=\|AVERAGE\|wclock\|vorticity' "$sa" 2>/dev/null | head -40
# Linux-ifort.mk omp lines
mk=/public/home/fujiake/fjk/agent_tmp/isolated/work/s32_ifort2022_20260808/ROMS_CoSiNE15/Compilers/Linux-ifort.mk
grep -n 'qopenmp\|biology\|set_avg\|gls_corstep' "$mk" | head -30
