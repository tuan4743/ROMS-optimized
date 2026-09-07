#!/bin/bash
# Read-only probe of remote state for README sync (2026-08-07). Creates nothing remotely.
W=/public/home/fujiake/fjk/agent_tmp/isolated/work

for d in o33_ifort2021_20260805 o33_ifort2022_20260807 o33_ifort2023_20260807 o33_ifx_20260807 o33_align_20260807; do
  echo "=== $d ==="
  ls -la "$W/$d" 2>/dev/null | head -10
  find "$W/$d" -maxdepth 3 \( -name '*.md' -o -name 'decision*' -o -name 'NOTES*' -o -name '*.log' \) 2>/dev/null | head -8
done

echo
echo "=== mcc_runs newest 16 ==="
ls -dt /public/home/fujiake/fjk/mcc_runs/*/ 2>/dev/null | head -16

echo
echo "=== running job detail ==="
scontrol show job 118733013 2>/dev/null | tr -s ' ' '\n' | grep -e WorkDir -e JobName -e RunTime -e NumNodes -e StdOut
