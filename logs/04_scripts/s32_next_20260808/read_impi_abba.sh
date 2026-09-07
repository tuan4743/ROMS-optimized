#!/bin/bash
set -u
d=/public/home/fujiake/fjk/mcc_runs/118781643_s32_impi_abba_belowgate
echo '==== decision ===='
cat "$d/decision.txt"
echo '==== summary ===='
cat "$d/summary.tsv"
echo '==== sacct ===='
sacct -j 118781643 --format=JobID,State,ExitCode,Elapsed,NodeList -n | head -5
echo '==== harness tail ===='
tail -40 "$d/harness.log"
echo '==== trajectories ===='
for L in A1 B1 B2 A2; do
  echo -n "$L "; sha256sum "$d/$L/trajectory.txt" 2>/dev/null | awk '{print $1}'
done
