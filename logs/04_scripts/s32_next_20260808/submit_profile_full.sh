#!/usr/bin/env bash
set -euo pipefail
export LC_ALL=C LANG=C

# Submit BELOW_GATE PROFILE-on full diagnostic.
scripts_local_dir=/public/home/fujiake/fjk/agent_tmp/isolated/scripts/s32_belowgate_20260808
logdir=/public/home/fujiake/fjk/agent_tmp/logs/s32_profile_full_20260808
mkdir -p "$scripts_local_dir" "$logdir"

slurm_src=/public/home/fujiake/fjk/agent_tmp/isolated/scripts/s32_belowgate_20260808/run_s32_profile_full.slurm
# Expect the slurm file already copied here by deploy
[[ -f "$slurm_src" ]] || { echo "FATAL: missing $slurm_src"; exit 2; }

SCRIPT_SHA=$(sha256sum "$slurm_src" | awk '{print $1}')
echo "SCRIPT_SHA=$SCRIPT_SHA"
JOB=$(sbatch --export=ALL,EXPECTED_SCRIPT_SHA="$SCRIPT_SHA" "$slurm_src" | awk '{print $4}')
echo "SUBMITTED_PROFILE_FULL=$JOB"
echo "$JOB" > "$logdir/jobid.txt"
squeue -j "$JOB" -o '%.18i %.12P %.20j %.2t %.10M %R' || true
