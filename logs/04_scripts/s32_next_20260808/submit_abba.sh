#!/bin/bash
set -euo pipefail
remote=/public/home/fujiake/fjk/agent_tmp/isolated/scripts/s32_bcasthier_20260808/run_s32_bcasthier_abba.slurm
sed -i 's/\r$//' "$remote"
script_sha=$(sha256sum "$remote" | awk '{print $1}')
echo "SCRIPT_SHA=$script_sha"
A=d9a45dbbc351a3e386a504c87d355f0db2197c6c6bdec2b5eb2b2276b36fe5a2
B=401103186b52f5a75b102e0880c49fd0331ee9163076bff0d97e2e9377af9b8e
sbatch --export=ALL,EXPECTED_A_SHA=$A,EXPECTED_B_SHA=$B,EXPECTED_SCRIPT_SHA=$script_sha "$remote"
squeue -u fujiake | head -8
