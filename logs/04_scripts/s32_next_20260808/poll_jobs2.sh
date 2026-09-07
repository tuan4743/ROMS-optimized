#!/usr/bin/env bash
set -euo pipefail
squeue -u fujiake -o '%.18i %.12P %.22j %.2t %.10M %R'
echo '==== sacct ===='
sacct -j 118784141,118784623,118784424 --format=JobID,JobName%18,State,Elapsed,ExitCode -n | head -25
echo '==== setavg 118784623 ===='
L=/public/home/fujiake/fjk/agent_tmp/logs/s32_setavg_20260808/slurm-118784623.out
R=/public/home/fujiake/fjk/mcc_runs/118784623_s32_setavg_abba_belowgate
[[ -f "$L" ]] && { grep -E 'REAL=|DONE|FAIL|verdict|mean_|gain|both_|HARNESS|FATAL|INPUT' "$L" | tail -40; echo '---tail---'; tail -25 "$L"; }
[[ -f "$R/decision.txt" ]] && { echo '==== decision ===='; cat "$R/decision.txt"; }
[[ -f "$R/harness.log" ]] && { echo '==== harness tail ===='; tail -40 "$R/harness.log"; }
echo '==== profile ===='
P=$(ls /public/home/fujiake/fjk/agent_tmp/logs/*/slurm-118784141.out 2>/dev/null | head -1 || true)
[[ -n "$P" ]] && { grep -E 'REAL=|DONE|FAIL|HARNESS|Writing|set_avg|Elapsed' "$P" | tail -30; echo '---'; tail -20 "$P"; }
PR=/public/home/fujiake/fjk/mcc_runs/118784141_s32_profile_full_belowgate
[[ -d "$PR" ]] && { du -sh "$PR"; ls "$PR"/*.nc 2>/dev/null | wc -l; ls "$PR" | head -20; }
df -h /public/home/fujiake | tail -1
