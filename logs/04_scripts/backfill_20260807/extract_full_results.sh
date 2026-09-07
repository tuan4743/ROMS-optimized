#!/bin/bash
# Read-only extraction of full-run wall time, official validation and build metadata.
# Creates nothing on the remote side.
M=/public/home/fujiake/fjk/mcc_runs

FULLS="118405320_o33_full_reproduce_64x2
118616644_o33_hotteams_full_64x2
118662236_o33_ifort2021_full_64x2
118663696_o33_gcc731_full_64x2
118714595_o33_hpcx211_full_64x2
118716467_o33_fast2_2021_full_64x2
118720373_o33_biofast_2021_full_64x2
118730406_o33_ifort2022_full_64x2"

for b in $FULLS; do
  d="$M/$b"
  echo "================ $b"
  [ -d "$d" ] || { echo "  MISSING"; continue; }
  echo "  mtime: $(stat -c %y "$d" | cut -d. -f1)"

  ml=$(find "$d" -maxdepth 3 -name 'model.log' 2>/dev/null | head -1)
  echo "  model.log: ${ml:-NONE}"
  if [ -n "$ml" ]; then
    grep -a -i -e 'Total wall' -e 'All percentages' -e 'ROMS/TOMS - Output' "$ml" 2>/dev/null | head -4 | sed 's/^/    /'
    grep -a -i 'elapsed CPU time' "$ml" 2>/dev/null | tail -2 | sed 's/^/    /'
    grep -a -i -e 'Total:' "$ml" 2>/dev/null | tail -3 | sed 's/^/    /'
    tail -6 "$ml" 2>/dev/null | sed 's/^/    tail| /'
  fi

  echo "  --- validation ---"
  if [ -d "$d/validation" ]; then
    ls "$d/validation" | head -12 | sed 's/^/    /'
    vf=$(find "$d/validation" -maxdepth 2 -type f \( -name '*.log' -o -name '*.txt' -o -name '*.out' \) 2>/dev/null | head -3)
    for v in $vf; do
      echo "    [[$(basename $v)]] PASS=$(grep -a -c -i 'pass' "$v" 2>/dev/null) FAIL=$(grep -a -c -i 'fail' "$v" 2>/dev/null)"
      grep -a -i -e 'pass' -e 'fail' -e 'rmse' "$v" 2>/dev/null | tail -6 | sed 's/^/      /'
    done
  else
    echo "    no validation dir"
  fi

  echo "  --- metadata ---"
  if [ -d "$d/metadata" ]; then
    ls "$d/metadata" | head -10 | sed 's/^/    /'
    for mf in "$d"/metadata/*; do
      [ -f "$mf" ] || continue
      echo "    [[$(basename $mf)]]"
      sed -n '1,25p' "$mf" | sed 's/^/      /'
    done
  fi
done
