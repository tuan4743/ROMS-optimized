#!/bin/bash
# READ-ONLY: the teammate mainline record and its scored timings. Write nothing under /nan.
N=/public/home/fujiake/nan

echo "############ nan/README.md  (head)"
sed -n '1,120p' "$N/README.md"

echo
echo "############ nan/README.md  (tail = most recent entries)"
tail -140 "$N/README.md"

echo
echo "############ O84 scored timings"
for f in "$N/ROMS_CoSiNE15"/TIMING_O84_*.txt; do
  [ -f "$f" ] && { echo "---- $(basename $f)"; cat "$f"; }
done
echo "---- O84 3day validation verdict"
tail -6 "$N/ROMS_CoSiNE15/vali_O84_3day_118556090.log" 2>/dev/null

echo
echo "############ sprint TIMING files (all)"
for f in $(ls -t "$N/sprint/ROMS_CoSiNE15_s22b"/TIMING_*.txt 2>/dev/null | head -20); do
  printf "%-44s %s\n" "$(basename $f)" "$(tr '\n' ' ' < $f)"
done

echo
echo "############ latest sprint validation verdicts"
for f in $(ls -t "$N/sprint/ROMS_CoSiNE15_s22b"/vali_*.log 2>/dev/null | head -4); do
  echo "---- $(basename $f)"; tail -5 "$f"
done
