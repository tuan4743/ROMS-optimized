#!/usr/bin/env bash
set -euo pipefail
R=/public/home/fujiake/fjk/mcc_runs/118784424_s32_setavg_abba_belowgate
echo '==== harness.log ===='
cat "$R/harness.log"
echo '==== W0 dir ===='
ls -la "$R/W0" | head -30
echo '==== script rest ===='
sed -n '100,220p' /public/home/fujiake/fjk/agent_tmp/isolated/scripts/s32_belowgate_20260808/run_s32_setavg_abba.slurm
echo '==== local script ===='
# also check if local copy differs
ls -la /public/home/fujiake/fjk/agent_tmp/staging_belowgate/run_s32_setavg_abba.slurm 2>/dev/null || true
