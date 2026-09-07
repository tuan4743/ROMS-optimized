#!/usr/bin/env bash
set -euo pipefail
source_dir=/public/home/fujiake/fjk/agent_tmp/isolated/scripts/mpi_overlap_probe_20260801
source_sha=$1
script_sha=$2
test -f "$source_dir/mpi_overlap_probe.c"
test -f "$source_dir/run_mpi_overlap_probe.slurm"
test "$(sha256sum "$source_dir/mpi_overlap_probe.c" | awk '{print $1}')" = "$source_sha"
test "$(sha256sum "$source_dir/run_mpi_overlap_probe.slurm" | awk '{print $1}')" = "$script_sha"
bash -n "$source_dir/run_mpi_overlap_probe.slurm"
sbatch --export=ALL,EXPECTED_SOURCE_SHA="$source_sha",EXPECTED_SCRIPT_SHA="$script_sha" \
  "$source_dir/run_mpi_overlap_probe.slurm"
