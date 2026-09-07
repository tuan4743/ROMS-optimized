#!/usr/bin/env bash
set -euo pipefail
bash /public/home/fujiake/fjk/agent_tmp/staging_belowgate/poll_belowgate.sh
echo '==== sacct ===='
sacct -j 118784293,118784294,118784141 --format=JobID,JobName%20,State,Elapsed,ExitCode -n | head -20
echo '==== build outs ===='
for j in 118784293 118784294; do
  f=/public/home/fujiake/fjk/agent_tmp/logs/s32_belowgate_build/slurm-${j}.out
  echo "-- $j --"
  if [[ -f "$f" ]]; then
    grep -E 'BUILD_OK|FATAL|NOFILL_PATCHED|SETAVG|SHA256|omp|ERROR|error|SUCCESS' "$f" | tail -40
    tail -15 "$f"
  else
    echo missing
  fi
done
echo '==== bins ===='
ls -la /public/home/fujiake/fjk/agent_tmp/isolated/work/s32_nofill_20260808/ROMS_CoSiNE15/oceanM.S32_* 2>/dev/null || echo no_nofill_bins
ls -la /public/home/fujiake/fjk/agent_tmp/isolated/work/s32_setavg_20260808/ROMS_CoSiNE15/oceanM.S32_* 2>/dev/null || echo no_setavg_bins
