#!/usr/bin/env bash
set -euo pipefail
echo '==== squeue ===='
squeue -u fujiake -o '%.18i %.12P %.20j %.2t %.10M %R'
echo '==== build 118784165 nofill ===='
tail -20 /public/home/fujiake/fjk/agent_tmp/logs/s32_belowgate_build/slurm-118784165.out 2>/dev/null || echo no_out
tail -10 /public/home/fujiake/fjk/agent_tmp/logs/s32_belowgate_build/slurm-118784165.err 2>/dev/null || true
ls /public/home/fujiake/fjk/agent_tmp/logs/s32_nofill_20260808/ 2>/dev/null | head
echo '==== build 118784167 setavg ===='
tail -20 /public/home/fujiake/fjk/agent_tmp/logs/s32_belowgate_build/slurm-118784167.out 2>/dev/null || echo no_out
tail -10 /public/home/fujiake/fjk/agent_tmp/logs/s32_belowgate_build/slurm-118784167.err 2>/dev/null || true
ls /public/home/fujiake/fjk/agent_tmp/logs/s32_setavg_20260808/ 2>/dev/null | head
echo '==== profile 118784141 ===='
tail -8 /public/home/fujiake/fjk/mcc_runs/118784141_s32_profile_full_belowgate/harness.log 2>/dev/null || true
wc -c /public/home/fujiake/fjk/mcc_runs/118784141_s32_profile_full_belowgate/model.log 2>/dev/null || true
ls /public/home/fujiake/fjk/mcc_runs/118784141_s32_profile_full_belowgate/output 2>/dev/null | head
