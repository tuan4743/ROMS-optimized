#!/bin/bash
# READ-ONLY: S32 hotspot source orientation for next candidate.
# Focus: 3D predictor, step3d_t, and what teammate already tried there.
N=/public/home/fujiake/nan/sprint/ROMS_CoSiNE15_s22b
R=/public/home/fujiake/fjk/agent_tmp/isolated/work/s32_profile_diag_20260808/ROMS_CoSiNE15
{
echo "############ which source files back the PROFILE timers"
grep -rn '3D equations predictor\|Corrector time-step for tracers\|Model 2D kernel\|GLS vertical' \
  "$R/ROMS/Utility/timers.F" 2>/dev/null | head -20

echo
echo "############ key Nonlinear sources present + sizes"
ls -l "$R/ROMS/Nonlinear"/pre_step3d.F "$R/ROMS/Nonlinear"/step3d_t.F \
  "$R/ROMS/Nonlinear"/step2d_LF_AM3.h "$R/ROMS/Nonlinear"/gls_corstep.F \
  "$R/ROMS/Nonlinear/Biology"/biology.F 2>/dev/null

echo
echo "############ OMP / PARALLEL DO counts in hot files"
for f in pre_step3d.F step3d_t.F step2d_LF_AM3.h gls_corstep.F; do
  p="$R/ROMS/Nonlinear/$f"
  [ -f "$p" ] || continue
  echo "---- $f"
  grep -c 'OMP PARALLEL' "$p" 2>/dev/null || echo 0
  grep -n 'OMP PARALLEL\|PRIVATE\|SHARED\|SCHEDULE' "$p" | head -15
done

echo
echo "############ teammate closed notes mentioning predictor/step3d_t/pre_step"
grep -aE 'step3d_t|pre_step3d|predictor|O5[0-9]|S2[0-9]' \
  /public/home/fujiake/nan/sprint/README.md 2>/dev/null | grep -aE 'step3d_t|pre_step|拒|回滚|STOP|fast=2' | head -25

echo
echo "############ our earlier closed analyses related to these regions"
ls /public/home/fujiake/fjk/agent_tmp/isolated/work/s32_ifort2022_20260808/ROMS_CoSiNE15/ROMS/Nonlinear/pre_step3d.F 2>/dev/null
# local workspace analyses
} | base64 -w0
