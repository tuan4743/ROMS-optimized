#!/bin/bash
R=/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15
N=$R/ROMS/Nonlinear

echo "########## A. MIX_* context in the active project header ##########"
sed -n '55,75p' $R/ROMS/Include/bye24bio15.h
echo "--- which header is active? ---"
grep -n 'ROMS_APPLICATION' $R/makefile | head -3

echo
echo "########## B. wclock ids inside each t3dmix variant ##########"
for f in t3dmix4_s.h t3dmix4_geo.h t3dmix2_s.h t3dmix2_geo.h; do
  [ -f $N/$f ] && echo "=== $f ===" && grep -n 'wclock_on\|wclock_off' $N/$f | head -4
done

echo
echo "########## C. what actually landed in the generated t3dmix.f90 ##########"
ls -la $R/Build/t3dmix.f90 2>/dev/null
grep -c '' $R/Build/t3dmix.f90 2>/dev/null
echo "--- subroutine names present ---"
grep -n 'SUBROUTINE t3dmix\|wclock_on (ng, iNLM' $R/Build/t3dmix.f90 2>/dev/null | head -10
echo "--- geopotential-only markers (dZdx/dZde) present? ---"
grep -c 'dZdx\|dZde' $R/Build/t3dmix.f90 2>/dev/null
echo "--- OMP directives already in generated file ---"
grep -n '\$OMP' $R/Build/t3dmix.f90 2>/dev/null | head

echo
echo "########## D. who else uses timer 28 ##########"
grep -rn 'wclock_on (ng, iNLM, 28)\|wclock_on (ng, model, 28)' $R/ROMS 2>/dev/null | grep -v '\.svn' | head

echo
echo "########## E. active rho_eos_tile branch ##########"
grep -n 'NONLIN_EOS' $R/ROMS/Include/bye24bio15.h | head
grep -n 'ifdef NONLIN_EOS\|ifndef NONLIN_EOS\|else' $N/rho_eos.F | head -8
echo "--- generated rho_eos.f90 ---"
grep -n 'SUBROUTINE rho_eos_tile' $R/Build/rho_eos.f90 2>/dev/null | head
grep -c '' $R/Build/rho_eos.f90 2>/dev/null

echo
echo "########## F. generated file sizes for the four targets ##########"
for f in rhs3d step3d_uv rho_eos t3dmix; do
  [ -f $R/Build/$f.f90 ] && echo "$f.f90 $(grep -c '' $R/Build/$f.f90) lines"
done
