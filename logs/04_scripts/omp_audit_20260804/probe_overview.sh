#!/bin/bash
R=/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15
N=$R/ROMS/Nonlinear

echo "########## A. which t3dmix variant(s) are compiled ##########"
sed -n '1,60p' $N/t3dmix.F
echo "--- cpp switches in the project header ---"
grep -rn 'MIX_GEO_TS\|MIX_S_TS\|MIX_ISO_TS\|TS_DIF4\|TS_DIF2\|UV_VIS4\|UV_VIS2' \
  $R/ROMS/Include/*.h 2>/dev/null | grep -v '\.svn' | head -20

echo
echo "########## B. t3dmix.o already has -qopenmp? ##########"
grep -n 't3dmix' $R/Compilers/Linux-ifort.mk

echo
echo "########## C. timer region ids ##########"
for f in rhs3d.F step3d_uv.F rho_eos.F t3dmix.F; do
  echo "=== $f ==="
  grep -n 'wclock_on\|wclock_off\|SUBROUTINE ' $N/$f | head -20
done

echo
echo "########## D. timer id -> label map ##########"
grep -n 'Nonlinear model elapsed\|Message Passage' $R/ROMS/Modules/mod_strings.F | head
sed -n '50,95p' $R/ROMS/Modules/mod_strings.F
