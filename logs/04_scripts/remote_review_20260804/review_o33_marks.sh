#!/bin/bash
# Read-only: enumerate optimization markers already present in immutable O33,
# and identify the routines that call mp_assemble on the hot path.
R=/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15

echo "########## A. all OPTIMIZATION markers in O33 sources ##########"
grep -rn 'OPTIMIZATION O' $R/ROMS/ 2>/dev/null | sed 's/:.*\(OPTIMIZATION O[0-9a-zA-Z]*\)/ -> \1/' | sort -u | head -60

echo
echo "########## B. marker counts per file ##########"
grep -rl 'OPTIMIZATION O' $R/ROMS/ 2>/dev/null | while read f; do
  n=$(grep -c 'OPTIMIZATION O' "$f")
  echo "$n  ${f#$R/}"
done | sort -rn

echo
echo "########## C. routine names owning the hot mp_assemble calls ##########"
for L in 573 1283 2321 4765 5328 6542; do
  echo "--- context near line $L ---"
  awk -v s=$((L-80)) -v e=$L 'NR>=s && NR<=e && /^      SUBROUTINE/ {print NR": "$0}' $R/ROMS/Nonlinear/nesting.F | tail -2
done

echo
echo "########## D. z_weights routine and its call frequency ##########"
grep -n 'SUBROUTINE z_weights\|CALL z_weights\|SUBROUTINE nesting\b\|CASE (nzwgt)\|nzwgt' $R/ROMS/Nonlinear/nesting.F | head -20

echo
echo "########## E. where nesting is called per timestep ##########"
grep -rn 'CALL nesting' $R/ROMS/Nonlinear/main3d.F | head -20
