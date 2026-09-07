#!/usr/bin/env bash
set -euo pipefail
PR=/public/home/fujiake/fjk/mcc_runs/118784141_s32_profile_full_belowgate
echo '==== REAL / DONE ===='
grep -E 'REAL=|ROMS/TOMS: DONE|elapsed|NTIMES' "$PR/harness.log" "$PR/model.log" 2>/dev/null | head -20
echo '==== PROFILE pools (grep) ===='
grep -E 'Writing of output|time averaged|Processing of input|Reading of input|Total:' "$PR/model.log" | head -40
echo '==== profile extract file ===='
ls -la "$PR"/ | head -40
find "$PR" -name '*extract*' -o -name '*profile*' -o -name 'decision*' 2>/dev/null | head
cat "$PR"/decision.txt 2>/dev/null || true
# also slurm out extract section
P=$(ls /public/home/fujiake/fjk/agent_tmp/logs/*/slurm-118784141.out 2>/dev/null | head -1)
sed -n '/PROFILE_EXTRACTED/,/HARNESS_DONE/p' "$P" | head -80
echo '==== disk ===='
df -h /public/home/fujiake | tail -1
bash /public/home/fujiake/fjk/agent_tmp/staging_belowgate/submit_abba_belowgate.sh nofill
