#!/usr/bin/env bash
set -euo pipefail
squeue -u fujiake -o '%.18i %.12P %.22j %.2t %.10M %R'
sacct -j 118784944 --format=JobID,JobName%18,State,Elapsed,ExitCode -n | head -20
R=/public/home/fujiake/fjk/mcc_runs/118784944_s32_nofill_abba_belowgate
echo '==== harness ===='
cat "$R/harness.log" 2>/dev/null || echo missing
echo '==== dirs ===='
ls -la "$R" 2>/dev/null
echo '==== decision ===='
cat "$R/decision.txt" 2>/dev/null || echo none
df -h /public/home/fujiake | tail -1
du -sh "$R" 2>/dev/null || true
for t in W0 A1 B1 B2 A2; do
  if [[ -f "$R/$t/real.txt" ]]; then echo "$t REAL=$(cat "$R/$t/real.txt")"; fi
done
