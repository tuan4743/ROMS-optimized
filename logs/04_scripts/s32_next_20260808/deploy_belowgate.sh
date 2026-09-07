#!/usr/bin/env bash
set -euo pipefail
export LC_ALL=C LANG=C

# Deploy below-gate scripts and submit PROFILE-on full.
base=/public/home/fujiake/fjk/agent_tmp
scripts=$base/isolated/scripts/s32_belowgate_20260808
logs=$base/logs/s32_profile_full_20260808
mkdir -p "$scripts" "$logs"

# Files expected already at $base/staging_belowgate/ from scp
stg=$base/staging_belowgate
cp -p "$stg/run_s32_profile_full.slurm" "$scripts/"
cp -p "$stg/submit_profile_full.sh" "$scripts/"
cp -p "$stg/setup_build_nofill.sh" "$scripts/"
chmod +x "$scripts"/*.sh

SCRIPT_SHA=$(sha256sum "$scripts/run_s32_profile_full.slurm" | awk '{print $1}')
echo "SCRIPT_SHA=$SCRIPT_SHA"
JOB=$(sbatch --export=ALL,EXPECTED_SCRIPT_SHA="$SCRIPT_SHA" "$scripts/run_s32_profile_full.slurm" | awk '{print $4}')
echo "SUBMITTED_PROFILE_FULL=$JOB"
echo "$JOB" | tee "$logs/jobid.txt"
squeue -u fujiake -o '%.18i %.12P %.20j %.2t %.10M %R' | head -10
