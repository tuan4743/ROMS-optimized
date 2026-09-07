#!/usr/bin/env bash
# Stage-130 plan pass probe 2: READ-ONLY. Locate S32 parent build recipe/provenance.
set -uo pipefail
echo '===== S32 champion job 118755216 metadata ====='
sacct -j 118755216 --format=JobID,JobName%22,State,Elapsed,End,WorkDir%120 -n 2>/dev/null | head -5
echo '===== find binary by exact size 6783248 in nan space ====='
find /public/home/fujiake/nan -type f -size 6783248c 2>/dev/null | head -10
echo '===== sha check candidates ====='
for f in $(find /public/home/fujiake/nan -type f -size 6783248c 2>/dev/null | head -5); do
  echo "-- $f"; sha256sum "$f" 2>/dev/null
done
echo '===== recent teammate build/run scripts (since 08-06) ====='
find /public/home/fujiake/nan -maxdepth 4 -type f \( -name '*.sh' -o -name '*.slurm' -o -name '*.mk' \) -newermt '2026-08-06' -printf '%T+ %p\n' 2>/dev/null | sort -r | head -20
echo '===== scripts mentioning no-fma / ipo / core-avx2 ====='
grep -rln -- '-no-fma\|-ipo\|core-avx2' /public/home/fujiake/nan --include='*.sh' --include='*.slurm' --include='*.mk' 2>/dev/null | head -15
echo '===== teammate trees top level ====='
ls -la /public/home/fujiake/nan/ 2>/dev/null | head -20
echo '===== where our parent copy came from: our freeze log ====='
grep -rn 'S32_parent\|d9a45dbb' /public/home/fujiake/fjk/agent_tmp/logs/s32_nofill_20260808/*.txt /public/home/fujiake/fjk/agent_tmp/logs/s32_setavg_20260808/*.txt 2>/dev/null | head -10
echo '===== teammate current 1day jobs workdir ====='
sacct -j 118809092,118809093 --format=JobID,JobName%16,State,WorkDir%120 -n 2>/dev/null | head -6
