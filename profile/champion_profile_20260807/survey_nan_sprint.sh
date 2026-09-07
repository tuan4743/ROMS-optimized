#!/bin/bash
# READ-ONLY survey of the teammate (nan) sprint line. Write nothing under /nan.
N=/public/home/fujiake/nan

echo "############ nan top level"
ls -lt "$N" 2>/dev/null | head -20

echo
echo "############ sprint dir"
ls -lt "$N/sprint" 2>/dev/null | head -30

echo
echo "############ binaries in the active sprint tree (with mtimes)"
S=$N/sprint/ROMS_CoSiNE15_s22b
ls -lt "$S"/oceanM* 2>/dev/null | head -20

echo
echo "############ any results / notes / logs in the sprint tree"
ls -lt "$S" 2>/dev/null | head -40

echo
echo "############ markdown / txt records anywhere under sprint"
find "$N/sprint" -maxdepth 3 \( -name '*.md' -o -name '*RESULT*' -o -name '*result*' -o -name '*.csv' -o -name 'NOTES*' -o -name '*.log' \) 2>/dev/null | head -25

echo
echo "############ recent slurm outputs and their headline timings"
for f in $(ls -t "$S"/slurm-*.out 2>/dev/null | head -12); do
  echo "---- $(basename $f)"
  grep -a -m2 -e '^\[sprint' -e 'NTIMES' "$f" 2>/dev/null | sed 's/^/    /'
  grep -a -e '^real' -e 'DONE' "$f" 2>/dev/null | tail -3 | sed 's/^/    /'
done

echo
echo "############ what distinguishes O84 from O33? look for an optimization record"
find "$N" -maxdepth 3 \( -iname '*O84*' -o -iname '*optimi*' -o -iname '*record*' \) 2>/dev/null | head -20
