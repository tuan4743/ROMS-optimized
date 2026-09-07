#!/bin/bash
set -u
J=118781643
ROOT=/public/home/fujiake/fjk/mcc_runs
LOG=/public/home/fujiake/fjk/agent_tmp/logs/s32_impi_20260808
for i in $(seq 1 60); do
  st=$(sacct -j $J --format=State -n -P 2>/dev/null | head -1 | tr -d ' ')
  echo "$(date -Is) poll=$i state=$st"
  # find run root
  d=$(ls -d $ROOT/${J}_s32_impi_abba_belowgate 2>/dev/null || true)
  if [[ -n "$d" && -f "$d/decision.txt" ]]; then
    echo "DECISION_PATH=$d/decision.txt"
    cat "$d/decision.txt"
    cat "$d/summary.tsv"
    exit 0
  fi
  if [[ "$st" == FAILED* || "$st" == CANCELLED* || "$st" == TIMEOUT* ]]; then
    echo FAIL
    tail -80 $LOG/slurm-abba-$J.out 2>/dev/null
    tail -40 $LOG/slurm-abba-$J.err 2>/dev/null
    # also search run dir partial
    ls -d $ROOT/${J}_* 2>/dev/null
    exit 1
  fi
  if [[ "$st" == COMPLETED* ]]; then
    sleep 5
    d=$(ls -d $ROOT/${J}_s32_impi_abba_belowgate 2>/dev/null || true)
    if [[ -n "$d" && -f "$d/decision.txt" ]]; then
      cat "$d/decision.txt"; cat "$d/summary.tsv"; exit 0
    fi
    echo COMPLETED_BUT_NO_DECISION
    ls -la "$d" 2>/dev/null
    tail -60 $LOG/slurm-abba-$J.out 2>/dev/null
    exit 2
  fi
  sleep 90
done
echo STILL_RUNNING
squeue -j $J
exit 3
