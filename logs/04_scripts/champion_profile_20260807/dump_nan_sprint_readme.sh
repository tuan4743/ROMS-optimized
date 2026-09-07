#!/bin/bash
# READ-ONLY: base64 the teammate sprint README so Windows-side encoding cannot corrupt it.
N=/public/home/fujiake/nan
{
  echo "===== FILE: sprint/README.md ====="
  cat "$N/sprint/README.md" 2>/dev/null
  echo
  echo "===== FILE: sprint TIMING summary ====="
  S=$N/sprint/ROMS_CoSiNE15_s22b
  for f in $(ls -t "$S"/TIMING_*.txt 2>/dev/null | head -24); do
    printf "%-46s %s\n" "$(basename $f)" "$(tr '\n' ' ' < $f)"
  done
  echo
  echo "===== latest vali verdicts ====="
  for f in $(ls -t "$S"/vali_*.log 2>/dev/null | head -4); do
    echo "---- $(basename $f)"; tail -6 "$f"
  done
  echo
  echo "===== O84 timings ====="
  for f in "$N/ROMS_CoSiNE15"/TIMING_O84_*.txt; do
    [ -f "$f" ] && { printf "%-46s %s\n" "$(basename $f)" "$(tr '\n' ' ' < $f)"; }
  done
  echo "---- O84 3day vali tail ----"
  tail -6 "$N/ROMS_CoSiNE15/vali_O84_3day_118556090.log" 2>/dev/null
} | base64 -w0
