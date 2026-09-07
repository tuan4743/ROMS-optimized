#!/usr/bin/env bash
# Submit only the previously built candidate's diagnostic ABBA run.
set -euo pipefail

script_dir=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
run_script="$script_dir/run_f2c_vtype_abba.slurm"
patch_file="$script_dir/o33_step2d_noheap.patch"

[[ -f "$run_script" ]] || { echo "missing: $run_script" >&2; exit 2; }
[[ -f "$patch_file" ]] || { echo "missing: $patch_file" >&2; exit 2; }

run_sha=$(sha256sum "$run_script" | awk '{print $1}')
patch_sha=$(sha256sum "$patch_file" | awk '{print $1}')

sbatch --parsable \
  --export=ALL,EXPECTED_RUN_SCRIPT_SHA="$run_sha",EXPECTED_PATCH_SHA="$patch_sha" \
  "$run_script"
