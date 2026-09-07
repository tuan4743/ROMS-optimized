#!/usr/bin/env bash
set -euo pipefail

script=/public/home/fujiake/fjk/agent_tmp/isolated/scripts/o33_vtune_hotspots_20260802/run_o33_vtune_hotspots.slurm
expected=5aba743527c2b596caea76cc1d9c3b95475c34a020996ef3e57974f90f8a828e
actual=$(sha256sum "$script" | awk '{print $1}')
[[ "$actual" == "$expected" ]] || { echo "hash mismatch expected=$expected actual=$actual" >&2; exit 2; }
mkdir -p /public/home/fujiake/fjk/agent_tmp/logs/o33_vtune_hotspots_20260802 /public/home/fujiake/fjk/vtune_runs
sbatch --dependency=afterany:118418526 --export=ALL,EXPECTED_SCRIPT_SHA="$expected" "$script"
