#!/bin/bash
set -u
J=118781403
echo "==== $(date -Is) build $J ===="
squeue -j $J 2>/dev/null || true
sacct -j $J --format=JobID,State,ExitCode,Elapsed,NodeList -n 2>/dev/null | head
LOG=/public/home/fujiake/fjk/agent_tmp/logs/s32_impi_20260808
ls -lt "$LOG"/slurm-build-* 2>/dev/null | head -3
if [[ -f "$LOG/BUILD_OK" ]]; then echo HAS_BUILD_OK; cat "$LOG/BUILD_OK"; cat "$LOG/binaries.sha256" 2>/dev/null; fi
if ls "$LOG"/slurm-build-*.out >/dev/null 2>&1; then
  f=$(ls -t "$LOG"/slurm-build-*.out | head -1)
  echo "OUT=$f"
  tail -40 "$f"
fi
