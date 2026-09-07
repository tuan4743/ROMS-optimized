#!/usr/bin/env bash
set -euo pipefail
export LC_ALL=C LANG=C

root=/public/home/fujiake/fjk/agent_tmp/isolated/work/s32_impi_20260808/ROMS_CoSiNE15
scripts=/public/home/fujiake/fjk/agent_tmp/isolated/scripts/s32_impi_20260808
logdir=/public/home/fujiake/fjk/agent_tmp/logs/s32_impi_20260808
slurm=$scripts/run_s32_impi_abba.slurm

fail() { echo "FATAL: $*" >&2; exit 2; }
[[ -f "$logdir/BUILD_OK" ]] || fail "no BUILD_OK"
[[ -x "$root/oceanM.S32_impi" ]] || fail "no ImpI binary"
[[ -x "$root/oceanM.S32_parent" ]] || fail "no parent"
sed -i 's/\r$//' "$slurm"

echo '==== ldd gates ===='
ldd "$root/oceanM.S32_parent" | grep -E 'libmpi|libimf' | head -8
ldd "$root/oceanM.S32_impi" | grep -E 'libmpi|libimf|libmpifort' | head -8
ldd "$root/oceanM.S32_impi" | grep -qiE 'libmpi\.so\.40|openmpi|/hpcx/' && fail "B is Open MPI"
ldd "$root/oceanM.S32_parent" | grep -qiE 'libmpi\.so\.40|openmpi|/hpcx/' || fail "A not Open MPI"
ldd "$root/oceanM.S32_impi" | grep -qiE 'libmpi\.so\.12|libmpifort' || fail "B not Intel MPI"

A_SHA=$(sha256sum "$root/oceanM.S32_parent" | awk '{print $1}')
B_SHA=$(sha256sum "$root/oceanM.S32_impi" | awk '{print $1}')
SCRIPT_SHA=$(sha256sum "$slurm" | awk '{print $1}')
echo "A_SHA=$A_SHA"
echo "B_SHA=$B_SHA"
echo "SCRIPT_SHA=$SCRIPT_SHA"
echo "$A_SHA $B_SHA $SCRIPT_SHA" > "$logdir/abba_expected_hashes.txt"

# Also fix the same broken grep in the ABBA harness if present
sed -i 's/grep -qi '\''libmpi\.so\.40\\\|openmpi\\\|hpcx'\''/grep -qiE '\''libmpi.so.40|openmpi|hpcx'\''/g' "$slurm" || true
# simpler explicit fix via python
python3 - <<'PY'
from pathlib import Path
p = Path('/public/home/fujiake/fjk/agent_tmp/isolated/scripts/s32_impi_20260808/run_s32_impi_abba.slurm')
t = p.read_text()
t2 = t.replace("grep -qi 'libmpi.so.40\\|openmpi\\|hpcx'", "grep -qiE 'libmpi.so.40|openmpi|hpcx'")
if t2 != t:
    p.write_text(t2)
    print('HARNESS_GREP_FIXED')
else:
    print('HARNESS_GREP_UNCHANGED')
PY
SCRIPT_SHA=$(sha256sum "$slurm" | awk '{print $1}')
echo "SCRIPT_SHA_FINAL=$SCRIPT_SHA"

squeue -u fujiake | head -12
df -h /public/home/fujiake | tail -1

job=$(sbatch --parsable \
  --export=ALL,EXPECTED_A_SHA=$A_SHA,EXPECTED_B_SHA=$B_SHA,EXPECTED_SCRIPT_SHA=$SCRIPT_SHA \
  "$slurm")
echo "ABBA_JOB=$job" | tee "$logdir/abba_job.txt"
squeue -j "$job"
