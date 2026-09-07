#!/bin/bash
# Read-only independent verification of official validation results.
# Counts per-variable PASS/FAIL marks (UTF-8 check/cross) instead of trusting metadata.
M=/public/home/fujiake/fjk/mcc_runs
OK=$'\xe2\x9c\x85'   # check mark
BAD=$'\xe2\x9d\x8c'  # cross mark

printf "%-42s %6s %6s %6s %-9s %-9s\n" RUN RMSE OK FAIL META VERDICT
for d in "$M"/118405320_o33_full_reproduce_64x2 "$M"/*_full_64x2; do
  b=$(basename "$d")
  v="$d/validation/vali_result.txt"
  [ -f "$v" ] || continue
  id=${b%%_*}
  case "$id" in ''|*[!0-9]*) continue ;; esac
  if [ "$id" -ne 118405320 ] && [ "$id" -le 118541006 ]; then continue; fi

  n=$(grep -a -c 'RMSE' "$v")
  ok=$(grep -a -o "$OK" "$v" | wc -l)
  bad=$(grep -a -o "$BAD" "$v" | wc -l)
  meta=$(grep -a -m1 '^validation_result=' "$d/metadata/run_metadata.txt" 2>/dev/null | cut -d= -f2)
  if [ "$bad" -eq 0 ] && [ "$ok" -gt 0 ]; then vd=PASS_ALL; else vd="FAIL($bad)"; fi
  printf "%-42s %6s %6s %6s %-9s %-9s\n" "$b" "$n" "$ok" "$bad" "${meta:-NONE}" "$vd"
done

echo
echo "### which variables exceeded, for the failing runs"
for b in 118716467_o33_fast2_2021_full_64x2 118663696_o33_gcc731_full_64x2; do
  echo "==== $b"
  grep -a -B1 -A0 "$BAD" "$M/$b/validation/vali_result.txt" 2>/dev/null | grep -a 'RMSE' | sed 's/^/  /'
  grep -a "$BAD" "$M/$b/validation/vali_result.txt" 2>/dev/null | awk '{print "  EXCEED: "$1"  "$3" "$4}' 
done

echo
echo "### grid section headers in a passing reference"
grep -a -n -e 'SCS' -e 'Dongsha60' "$M/118405320_o33_full_reproduce_64x2/validation/vali_result.txt" 2>/dev/null | head -8 | sed 's/^/  /'
