#!/bin/bash
# Read-only: quantify tracer-invariant reload in t3dmix4_s, and set_avg loop structure.
R=/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15

echo "########## A. t3dmix4_s.h loop nest head (itrc outer?) ##########"
sed -n '190,340p' $R/ROMS/Nonlinear/t3dmix4_s.h

echo
echo "########## B. which t3dmix files are compiled (active) ##########"
ls -la $R/ROMS/Nonlinear/t3dmix*.h $R/ROMS/Nonlinear/t3dmix.F 2>/dev/null
grep -n 'include' $R/ROMS/Nonlinear/t3dmix.F | head

echo
echo "########## C. timer labels: confirm 46-49 meaning ##########"
grep -rn 'point data gathering\|boundary data gathering\|data gathering\|data scattering' $R/ROMS/Modules/mod_strings.F | head

echo
echo "########## D. distribute.F routine names around timer 49 ##########"
awk 'NR>=1400 && NR<=2160 && /^      SUBROUTINE|wclock_on \(ng, model, 4/ {print NR": "$0}' $R/ROMS/Utility/distribute.F

echo
echo "########## E. set_avg loop head sample ##########"
grep -n 'DO k=1,N(ng)\|DO j=Jstr,Jend\|DO i=Istr,Iend\|AVERAGE(ng)%avgAKv\|AVERAGE(ng)%avgt' $R/ROMS/Nonlinear/set_avg.F | head -40
