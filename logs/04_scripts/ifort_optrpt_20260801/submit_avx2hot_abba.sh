#!/usr/bin/env bash
set -euo pipefail

script=/public/home/fujiake/fjk/agent_tmp/isolated/scripts/ifort_optrpt_20260801/run_avx2hot_abba.slurm
[[ -f "$script" ]] || { echo "missing $script" >&2; exit 2; }
script_sha=$(sha256sum "$script" | awk '{print $1}')
echo "SCRIPT_SHA256=$script_sha"
sbatch --export=ALL,EXPECTED_SCRIPT_SHA="$script_sha" "$script"
