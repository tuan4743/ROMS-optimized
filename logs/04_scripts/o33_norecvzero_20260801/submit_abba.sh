#!/usr/bin/env bash
set -euo pipefail

SCRIPT=/public/home/fujiake/fjk/agent_tmp/isolated/work/o33_norecvzero_abba_20260801/run_abba_sample.slurm
BINARY=/public/home/fujiake/fjk/agent_tmp/isolated/work/o33_norecvzero_abba_20260801/ROMS_CoSiNE15/oceanM.O33_norecvzero
SOURCE=/public/home/fujiake/fjk/agent_tmp/isolated/work/o33_norecvzero_abba_20260801/ROMS_CoSiNE15/ROMS/Utility/distribute.F
SCRIPT_SHA=a28ad4f7bdb98288f671d5bad74ce55d7b82133091b4cffd6e5e2715223486a2
BINARY_SHA=3f9aa42af02861d205b85a3b73ae1c72eef13a4875a4b8b5584cc813d7a75b4c
SOURCE_SHA=c91c138ec6b912647f7d0c1d616cd6babc4d3250b7ae7c4e43efd61a8313d704

[[ $(squeue -p kshcexclu06 -h | wc -l) -eq 0 ]]
[[ $(df -Pk /public/home/fujiake | awk 'NR==2 {print $4}') -ge 20971520 ]]
[[ $(sha256sum "$SCRIPT" | awk '{print $1}') == "$SCRIPT_SHA" ]]
[[ $(sha256sum "$BINARY" | awk '{print $1}') == "$BINARY_SHA" ]]
[[ $(sha256sum "$SOURCE" | awk '{print $1}') == "$SOURCE_SHA" ]]
bash -n "$SCRIPT"

echo "PRE_SUBMIT_OK=$(date '+%F %T %z')"
job=$(sbatch --parsable \
  --export=ALL,EXPECTED_B_SHA=${BINARY_SHA},EXPECTED_SOURCE_SHA=${SOURCE_SHA},EXPECTED_SCRIPT_SHA=${SCRIPT_SHA} \
  "$SCRIPT")
echo "JOB_ID=$job"
scontrol show job "$job" -o
