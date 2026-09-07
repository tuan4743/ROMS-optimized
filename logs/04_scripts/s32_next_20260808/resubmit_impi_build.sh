#!/usr/bin/env bash
# Resubmit ImpI build without the broken mpif90 -E stdin probe.
set -euo pipefail
scripts=/public/home/fujiake/fjk/agent_tmp/isolated/scripts/s32_impi_20260808
logdir=/public/home/fujiake/fjk/agent_tmp/logs/s32_impi_20260808

# Remove the stdin probe lines from the remote build slurm
python3 - <<'PY'
from pathlib import Path
p = Path('/public/home/fujiake/fjk/agent_tmp/isolated/scripts/s32_impi_20260808/build_s32_impi.slurm')
t = p.read_text()
# drop the probe block
old = '''# Prove mpif.h visible
echo "include 'mpif.h'" | mpif90 -E - 2>&1 | head -5 | tee -a "$logdir/build_env.txt"

'''
if old in t:
    t = t.replace(old, '')
    p.write_text(t)
    print('PROBE_REMOVED')
else:
    print('PROBE_NOT_FOUND')
    # also try without blank line variants
    import re
    t2, n = re.subn(r'# Prove mpif\.h visible\n.*?\n\n', '', t, count=1, flags=re.S)
    if n:
        p.write_text(t2)
        print('PROBE_REMOVED_RE')
    else:
        print('NO_CHANGE')
PY

sed -i 's/\r$//' "$scripts/build_s32_impi.slurm"
# sanity: show must still have I_MPI_ROOT
grep -n 'I_MPI_ROOT\|mpif90 -E' "$scripts/build_s32_impi.slurm" | head

job=$(sbatch --parsable "$scripts/build_s32_impi.slurm")
echo "BUILD_JOB3=$job" | tee "$logdir/build_job3.txt"
squeue -j "$job"
