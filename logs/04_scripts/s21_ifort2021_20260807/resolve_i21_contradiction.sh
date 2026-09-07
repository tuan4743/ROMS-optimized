#!/bin/bash
# READ-ONLY: resolve the contradiction between
#   teammate I21-C ("2021, all precise, no fast flags") -> vali FAIL u=4.37e-4
#   our  O33+2021  ("2021, all precise")                -> vali PASS u=5.2e-5
# Hypothesis: the I21 bases still carry global -march=core-avx2, and 2021's
# vectoriser changes reduction/rounding even with -no-fma.
N=/public/home/fujiake/nan/sprint
I=/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801

{
echo "############ all i21* trees"
ls -dt "$N"/*i21* 2>/dev/null

echo
echo "############ FFLAGS of every i21 tree (this is the decisive comparison)"
for d in "$N"/*i21*/; do
  mk="$d/Compilers/Linux-ifort.mk"
  echo "==== $(basename $d)   sha256=$( [ -f "$mk" ] && sha256sum "$mk" | cut -c1-16 )"
  [ -f "$mk" ] || { echo "   no mk"; continue; }
  grep -n -e '^ *FFLAGS :=' -e 'private FFLAGS' -e '^ *FC :=' "$mk" | grep -v '^[0-9]*: *#' | head -30
done

echo
echo "############ our O33 immutable baseline FFLAGS (the configuration that PASSED with 2021)"
grep -n -e '^ *FFLAGS :=' -e 'private FFLAGS' -e '^ *FC :=' "$I/ROMS_CoSiNE15/Compilers/Linux-ifort.mk" | grep -v '^[0-9]*: *#' | head -30

echo
echo "############ S21 for reference"
grep -n -e '^ *FFLAGS :=' -e 'private FFLAGS' "$N/ROMS_CoSiNE15_s21/Compilers/Linux-ifort.mk" | grep -v '^[0-9]*: *#' | head -30

echo
echo "############ i21 build/run scripts: which compiler and which base"
for d in "$N"/*i21*/; do
  echo "==== $(basename $d)"
  ls -t "$d"/*.sh "$d"/build*.log 2>/dev/null | head -5
  grep -l 'oneapi\|2021' "$d"/*.sh 2>/dev/null | head -3 | while read f; do
    echo "  [[$(basename $f)]]"
    grep -n -e 'oneapi' -e '2021' -e 'module' -e 'PATH' "$f" | head -10
  done
done

echo
echo "############ i21 vali results actually recorded"
for d in "$N"/*i21*/; do
  for v in "$d"/vali_*.log; do
    [ -f "$v" ] || continue
    echo "---- $(basename $d)/$(basename $v)"
    grep -a -e 'RMSE' "$v" 2>/dev/null | head -8
  done
done

echo
echo "############ source diff: does S21 differ from O33 in SOURCE, or only in flags?"
for f in ROMS/Nonlinear/step2d_LF_AM3.h ROMS/Nonlinear/gls_corstep.F ROMS/Utility/mp_exchange.F ROMS/Nonlinear/pre_step3d.F; do
  a="$I/ROMS_CoSiNE15/$f"; b="$N/ROMS_CoSiNE15_s21/$f"
  if [ -f "$a" ] && [ -f "$b" ]; then
    printf "  %-42s %s\n" "$(basename $f)" "$( cmp -s "$a" "$b" && echo IDENTICAL || echo DIFFERS )"
  fi
done
echo "-- count of differing files across the whole ROMS source dir --"
diff -rq "$I/ROMS_CoSiNE15/ROMS" "$N/ROMS_CoSiNE15_s21/ROMS" 2>/dev/null | head -30
echo "-- total differing --"
diff -rq "$I/ROMS_CoSiNE15/ROMS" "$N/ROMS_CoSiNE15_s21/ROMS" 2>/dev/null | wc -l
} | base64 -w0
