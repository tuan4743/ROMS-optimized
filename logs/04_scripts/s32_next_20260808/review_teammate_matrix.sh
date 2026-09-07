#!/bin/bash
# READ-ONLY: teammate closed matrix for prefetch/PGO/ipo and remaining open ideas
set -euo pipefail
N=/public/home/fujiake/nan/sprint
{
echo "############ teammate README: prefetch / PGO / ipo / qopt"
grep -aEn 'prefetch|prof-gen|prof-use|PGO|qopt-|ipo|inline-level|unroll|ALIGN|align array' \
  "$N/README.md" 2>/dev/null | head -60

echo
echo "############ teammate sprint dirs / decision notes"
ls "$N" 2>/dev/null | head -40
ls "$N"/decision* "$N"/NOTES* "$N"/closed* 2>/dev/null || true
find "$N" -maxdepth 2 -name '*.md' 2>/dev/null | head -30

echo
echo "############ S22-S32 lineage one-liners"
grep -aEn '^### S(2[2-9]|3[0-2])|^-ipo|prefetch|PGO|prof-|qopt-prefetch|inline' \
  "$N/README.md" 2>/dev/null | head -80

echo
echo "############ our prior prefetch/PGO evidence if any"
ls /public/home/fujiake/fjk/agent_tmp/isolated/work/ 2>/dev/null | grep -iE 'prefetch|pgo|prof|qopt|ipo|s32' | head -40

echo
echo "############ PROFILE sample numbers from S32 diag job"
LOG=/public/home/fujiake/fjk/mcc_runs/s32_profile_diag_20260808
ls "$LOG" 2>/dev/null | head -20
find /public/home/fujiake/fjk -name '*118769550*' 2>/dev/null | head -10
} | base64 -w0
