#!/usr/bin/env bash
set -euo pipefail

root=/public/home/fujiake/fjk/agent_tmp/isolated/scripts/pmpi_collective_hist_20260801
cd "$root"

sha256sum pmpi_collective_hist.c analyze_collective_hist.py run_collective_hist.slurm
bash -n run_collective_hist.slurm
/public/share/mcc2026_final/miniforge3/bin/python -m py_compile analyze_collective_hist.py

module purge
module load compiler/intel/2017.5.239
module load mpi/hpcx/2.7.4/intel-2017.5.239
mpicc -O2 -std=gnu99 -fPIC -shared -o libmcc_pmpi_collective_hist.preflight.so pmpi_collective_hist.c
ldd libmcc_pmpi_collective_hist.preflight.so
if ldd libmcc_pmpi_collective_hist.preflight.so | grep -q 'not found'; then
  printf 'PREFLIGHT_FAIL=unresolved_dependency\n' >&2
  exit 2
fi
sha256sum libmcc_pmpi_collective_hist.preflight.so
printf 'PREFLIGHT_OK\n'
