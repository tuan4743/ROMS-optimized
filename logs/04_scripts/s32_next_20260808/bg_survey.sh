#!/usr/bin/env bash
set -euo pipefail
export LC_ALL=C LANG=C

echo '==== binaries ===='
bin=/public/home/fujiake/fjk/agent_tmp/isolated/work/s32_profile_diag_20260808/ROMS_CoSiNE15/oceanM.S32_profile_diag
parent=/public/home/fujiake/fjk/agent_tmp/isolated/work/s32_bcasthier_20260808/ROMS_CoSiNE15/oceanM.S32_parent
ls -la "$bin" "$parent"
sha256sum "$bin" "$parent"
md5sum "$parent"
grep -n PROFILE /public/home/fujiake/fjk/agent_tmp/isolated/work/s32_profile_diag_20260808/ROMS_CoSiNE15/ROMS/Include/globaldefs.h | head -8
echo '==== queue/disk ===='
squeue -u fujiake -o '%.18i %.12P %.20j %.2t %.10M' | head -15
df -h /public/home/fujiake | tail -1
echo '==== set_avg head ===='
wc -l /public/home/fujiake/nan/sprint/ROMS_CoSiNE15/ROMS/Nonlinear/set_avg.F
grep -nE 'SUBROUTINE|wclock|!\$OMP|DO j=|DO i=|DO itrc|tile' /public/home/fujiake/nan/sprint/ROMS_CoSiNE15/ROMS/Nonlinear/set_avg.F | head -60
echo '==== netcdf_create ===='
sed -n '5975,6025p' /public/home/fujiake/nan/sprint/ROMS_CoSiNE15/ROMS/Modules/mod_netcdf.F
echo '==== makefile openmp objects ===='
grep -nE 'set_avg|qopenmp|no-heap' /public/home/fujiake/nan/sprint/ROMS_CoSiNE15/Compilers/Linux-ifort.mk | head -40
