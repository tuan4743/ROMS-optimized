#!/bin/bash
# P1 capability-only probe: no ROMS binary, input, output, or shared-tree write.
#SBATCH -J fjk_perf_cap
#SBATCH -p kshcexclu06
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -c 1
#SBATCH -o /public/home/fujiake/fjk/agent_tmp/logs/perf_capability_20260803/perf-%j.out
#SBATCH -e /public/home/fujiake/fjk/agent_tmp/logs/perf_capability_20260803/perf-%j.err

set -uo pipefail

ROOT="/public/home/fujiake/fjk/agent_tmp/isolated/audits/perf_capability_${SLURM_JOB_ID}"
mkdir -p "$ROOT"

{
  date -Is
  echo "job=${SLURM_JOB_ID} node=$(hostname)"
  lscpu | grep -E 'Vendor ID|Model name|CPU\(s\)|NUMA'
  echo "perf_event_paranoid=$(cat /proc/sys/kernel/perf_event_paranoid 2>/dev/null || true)"
  for pass in 1 2; do
    echo "PASS=${pass}"
    /usr/bin/perf stat -x, -e task-clock,cycles,instructions,cache-references,cache-misses,branches,branch-misses -- \
      timeout 2s yes >/dev/null
    echo "PERF_RC=${?}"
  done
} >"$ROOT/perf_capability.log" 2>&1

cat "$ROOT/perf_capability.log"
exit 0
