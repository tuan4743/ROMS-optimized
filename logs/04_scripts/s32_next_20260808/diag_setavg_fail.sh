#!/usr/bin/env bash
set -euo pipefail
L=/public/home/fujiake/fjk/agent_tmp/logs/s32_setavg_20260808/slurm-118784424.out
E=/public/home/fujiake/fjk/agent_tmp/logs/s32_setavg_20260808/slurm-118784424.err
echo '==== OUT full ===='
wc -l "$L" 2>/dev/null; cat "$L" 2>/dev/null | tail -80
echo '==== ERR ===='
wc -l "$E" 2>/dev/null; cat "$E" 2>/dev/null | tail -80
echo '==== run dir ===='
ls -la /public/home/fujiake/fjk/mcc_runs/ | grep 118784424 || true
R=$(ls -d /public/home/fujiake/fjk/mcc_runs/118784424* 2>/dev/null | head -1 || true)
if [[ -n "$R" ]]; then
  echo "ROOT=$R"
  ls -la "$R" | head -40
  find "$R" -name 'model.log' -o -name '*.out' -o -name 'timing*' -o -name 'FAIL*' 2>/dev/null | head -20
  for f in $(find "$R" -name 'model.log' 2>/dev/null | head -4); do
    echo "-- $f --"
    tail -40 "$f"
  done
fi
echo '==== script head ===='
head -80 /public/home/fujiake/fjk/agent_tmp/isolated/scripts/s32_belowgate_20260808/run_s32_setavg_abba.slurm
