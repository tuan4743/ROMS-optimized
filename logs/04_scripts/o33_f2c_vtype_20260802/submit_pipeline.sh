#!/usr/bin/env bash
set -euo pipefail

script_root=/public/home/fujiake/fjk/agent_tmp/isolated/scripts/o33_f2c_vtype_20260802
build=$script_root/build_f2c_vtype.slurm
run=$script_root/run_f2c_vtype_abba.slurm
patch=$script_root/o33_f2c_vtype.patch
for f in "$build" "$run" "$patch"; do [[ -f "$f" ]] || { echo "missing $f" >&2; exit 2; }; done

build_sha=$(sha256sum "$build" | awk '{print $1}')
run_sha=$(sha256sum "$run" | awk '{print $1}')
patch_sha=$(sha256sum "$patch" | awk '{print $1}')
build_job=$(sbatch --parsable --export=ALL,EXPECTED_BUILD_SCRIPT_SHA="$build_sha",EXPECTED_PATCH_SHA="$patch_sha" "$build")
run_job=$(sbatch --parsable --dependency=afterok:"$build_job" --export=ALL,EXPECTED_RUN_SCRIPT_SHA="$run_sha",EXPECTED_PATCH_SHA="$patch_sha" "$run")
printf 'BUILD_JOB=%s\nRUN_JOB=%s\nBUILD_SCRIPT_SHA=%s\nRUN_SCRIPT_SHA=%s\nPATCH_SHA=%s\n' "$build_job" "$run_job" "$build_sha" "$run_sha" "$patch_sha"
