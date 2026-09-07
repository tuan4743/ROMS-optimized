#!/bin/bash
# READ-ONLY: untried avenues on S32 — ifx availability, step2d structure, closed-list gaps.
set -euo pipefail
N=/public/home/fujiake/nan/sprint
R=/public/home/fujiake/fjk/agent_tmp/isolated/work/s32_profile_diag_20260808/ROMS_CoSiNE15
MK="$R/Compilers/Linux-ifort.mk"
{
echo "############ available Intel Fortran compilers"
ls -d /public/software/compiler/intel/*/bin/ifort 2>/dev/null | head -20
ls -d /public/software/compiler/inteloneapi/*/compiler/*/linux/bin/intel64/ifort 2>/dev/null | head -20
ls -d /public/software/compiler/inteloneapi/*/compiler/*/bin/ifx 2>/dev/null | head -20
find /public/software/compiler -name 'ifx' -type f 2>/dev/null | head -20
find /public/software/compiler -name 'ifort' -type f 2>/dev/null | head -40

echo
echo "############ teammate notes on ifx / llvm / oneAPI / icx"
grep -aE 'ifx|IFX|llvm|LLVM|oneAPI|icx|202[2-5]' "$N/README.md" 2>/dev/null | head -40

echo
echo "############ S32 Makefile hotspot flags"
sed -n '1,120p' "$MK"
echo "----"
grep -n 'FFLAGS\|biology\|gls\|pre_step\|step3d\|step2d\|qopenmp\|ipo\|avx\|fp-model\|heap' "$MK" | head -60

echo
echo "############ step2d: does it get -qopenmp? automatic arrays / allocate?"
# step2d is included from step2d.F
ls -l "$R/ROMS/Nonlinear"/step2d*.F "$R/ROMS/Nonlinear"/step2d*.h 2>/dev/null
grep -n 'INCLUDE\|step2d_LF\|allocate\|DIMENSION\|automatic\|!$OMP' \
  "$R/ROMS/Nonlinear/step2d.F" 2>/dev/null | head -40
echo "---- heap / for_allocate risk: large local arrays in step2d_LF_AM3.h"
grep -nE '^[ ]*(real|integer|logical).*(dimension|::)' \
  "$R/ROMS/Nonlinear/step2d_LF_AM3.h" 2>/dev/null | head -50
echo "---- count of array decls / ALLOCATE"
grep -cE 'ALLOCATE|allocate' "$R/ROMS/Nonlinear/step2d_LF_AM3.h" 2>/dev/null || true
grep -cE 'DIMENSION\(' "$R/ROMS/Nonlinear/step2d_LF_AM3.h" 2>/dev/null || true

echo
echo "############ our Stage90 OpenMP objects vs step2d"
# what objects currently have -qopenmp in S32 mk
grep -n 'qopenmp\|OpenMP' "$MK"

echo
echo "############ PROFILE G01 data broadcast timer source"
grep -rn 'data broadcast\|Data broadcast\|broadcast' "$R/ROMS/Utility/timers.F" 2>/dev/null | head -15
grep -rn 'get_contact2d\|mp_assemble\|mp_bcast' "$R/ROMS/Utility/nesting.F" 2>/dev/null | head -5

echo
echo "############ S32 vs our s21_ifort2021 source delta on Nonlinear hot files"
S21=/public/home/fujiake/fjk/agent_tmp/isolated/work/s21_ifort2021_20260807/ROMS_CoSiNE15
for f in pre_step3d.F step3d_t.F gls_corstep.F step2d_LF_AM3.h nesting.F; do
  a="$R/ROMS/Nonlinear/$f"
  b="$S21/ROMS/Nonlinear/$f"
  [ -f "$a" ] || a="$R/ROMS/Utility/$f"
  [ -f "$b" ] || b="$S21/ROMS/Utility/$f"
  if [ -f "$a" ] && [ -f "$b" ]; then
    if cmp -s "$a" "$b"; then echo "SAME $f"
    else echo "DIFF $f"; diff -u "$b" "$a" | head -40; fi
  else
    echo "MISSING $f a=$(test -f "$a" && echo y || echo n) b=$(test -f "$b" && echo y || echo n)"
  fi
done
} | base64 -w0
