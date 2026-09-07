#!/bin/bash
set -u
J=118781462
LOG=/public/home/fujiake/fjk/agent_tmp/logs/s32_impi_20260808
for i in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30; do
  st=$(sacct -j $J --format=State -n -P 2>/dev/null | head -1 | tr -d ' ')
  echo "$(date -Is) poll=$i state=$st"
  if [[ "$st" == COMPLETED* ]]; then
    cat "$LOG/BUILD_OK" 2>/dev/null
    cat "$LOG/binaries.sha256" 2>/dev/null
    exit 0
  fi
  if [[ "$st" == FAILED* || "$st" == CANCELLED* || "$st" == TIMEOUT* ]]; then
    echo FAIL
    tail -60 "$LOG/slurm-build-$J.out" 2>/dev/null
    tail -20 "$LOG/build.log" 2>/dev/null
    exit 1
  fi
  # also check BUILD_OK mid-flight
  if [[ -f "$LOG/BUILD_OK" ]]; then
    cat "$LOG/BUILD_OK"
    cat "$LOG/binaries.sha256"
    exit 0
  fi
  sleep 60
done
echo STILL_RUNNING
squeue -j $J
exit 2
