#!/usr/bin/env bash
set -euo pipefail
echo '==== squeue ===='
squeue -u fujiake -o '%.18i %.12P %.22j %.2t %.10M %R'
echo '==== sacct ===='
sacct -j 118784141,118784424 --format=JobID,JobName%18,State,Elapsed,ExitCode -n | head -20
echo '==== setavg log ===='
L=/public/home/fujiake/fjk/agent_tmp/logs/s32_setavg_20260808/slurm-118784424.out
if [[ -f "$L" ]]; then
  grep -E 'REAL=|DONE|FAIL|VERDICT|A1|B1|B2|A2|both_B|gain|ERROR|FATAL|HARNESS' "$L" | tail -40
  tail -20 "$L"
fi
echo '==== profile ===='
P=/public/home/fujiake/fjk/agent_tmp/logs/s32_profile_full/slurm-118784141.out
[[ -f "$P" ]] || P=$(ls /public/home/fujiake/fjk/agent_tmp/logs/*/slurm-118784141.out 2>/dev/null | head -1 || true)
if [[ -n "${P:-}" && -f "$P" ]]; then
  grep -E 'REAL=|DONE|FAIL|Writing|set_avg|HARNESS|ERROR' "$P" | tail -20
  tail -10 "$P"
fi
ls /public/home/fujiake/fjk/mcc_runs/118784141_s32_profile_full_belowgate/*.nc 2>/dev/null | wc -l
du -sh /public/home/fujiake/fjk/mcc_runs/118784141_s32_profile_full_belowgate 2>/dev/null || true
du -sh /public/home/fujiake/fjk/mcc_runs/118784424* 2>/dev/null || true
