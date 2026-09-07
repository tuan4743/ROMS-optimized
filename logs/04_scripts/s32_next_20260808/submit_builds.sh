#!/usr/bin/env bash
set -euo pipefail
chmod +x /public/home/fujiake/fjk/agent_tmp/staging_belowgate/*.sh
mkdir -p /public/home/fujiake/fjk/agent_tmp/logs/s32_belowgate_build
J1=$(sbatch --export=ALL,WHICH=nofill /public/home/fujiake/fjk/agent_tmp/staging_belowgate/build_belowgate.slurm | awk '{print $4}')
J2=$(sbatch --export=ALL,WHICH=setavg /public/home/fujiake/fjk/agent_tmp/staging_belowgate/build_belowgate.slurm | awk '{print $4}')
echo "NOFILL_BUILD=$J1"
echo "SETAVG_BUILD=$J2"
mkdir -p /public/home/fujiake/fjk/agent_tmp/logs/s32_nofill_20260808 /public/home/fujiake/fjk/agent_tmp/logs/s32_setavg_20260808
echo "$J1" > /public/home/fujiake/fjk/agent_tmp/logs/s32_nofill_20260808/build_jobid.txt
echo "$J2" > /public/home/fujiake/fjk/agent_tmp/logs/s32_setavg_20260808/build_jobid.txt
squeue -u fujiake -o '%.18i %.12P %.20j %.2t %.10M %R'
