#!/usr/bin/env bash
set -euo pipefail
export LC_ALL=C LANG=C

root=/public/home/fujiake/fjk/agent_tmp/isolated/work/s32_impi_20260808/ROMS_CoSiNE15
scripts=/public/home/fujiake/fjk/agent_tmp/isolated/scripts/s32_impi_20260808
logdir=/public/home/fujiake/fjk/agent_tmp/logs/s32_impi_20260808
slurm=$scripts/run_s32_impi_abba.slurm

fail() { echo "FATAL: $*" >&2; exit 2; }
sed -i 's/\r$//' "$slurm" "$scripts/submit_impi_abba.sh" 2>/dev/null || true

# Debug + simple gates (no pipefail traps on head)
set +e
a_ldd=$(ldd "$root/oceanM.S32_parent" 2>/dev/null)
b_ldd=$(ldd "$root/oceanM.S32_impi" 2>/dev/null)
set -e
echo "$a_ldd" | grep -E 'libmpi' | head -5
echo "$b_ldd" | grep -E 'libmpi' | head -5
echo "$a_ldd" | grep -q hpcx || fail "A missing hpcx in ldd"
echo "$b_ldd" | grep -q 'intelmpi' || fail "B missing intelmpi in ldd"
echo "$b_ldd" | grep -q hpcx && fail "B has hpcx"
echo "LDD_GATES_OK"

# Fix harness MPI checks to simple patterns
python3 - <<'PY'
from pathlib import Path
p = Path('/public/home/fujiake/fjk/agent_tmp/isolated/scripts/s32_impi_20260808/run_s32_impi_abba.slurm')
t = p.read_text().replace('\r\n','\n')
# replace fragile grep lines
import re
t2 = re.sub(
    r"ldd \"\$a_bin\" \| grep -qiE? '[^']+'\s*\|\| fail \"A[^\"]*\"",
    'ldd \"$a_bin\" | grep -q hpcx || fail \"A not HPC-X Open MPI\"',
    t, count=1)
t2 = re.sub(
    r"ldd \"\$b_bin\" \| grep -qiE? '[^']+'\s*&& fail \"B[^\"]*\"",
    'ldd \"$b_bin\" | grep -q hpcx && fail \"B still HPC-X\"',
    t2, count=1)
if 'libmpi.so.12' not in t2.split('B still')[0][-200:]:
    # ensure B positive check exists after A/B negative checks
    needle = 'ldd \"$b_bin\" | grep -q hpcx && fail \"B still HPC-X\"'
    if needle in t2 and 'intelmpi' not in t2[t2.find(needle):t2.find(needle)+200]:
        t2 = t2.replace(
            needle,
            needle + '\nldd \"$b_bin\" | grep -q intelmpi || fail \"B not Intel MPI\"'
        )
p.write_text(t2)
print('HARNESS_PATCHED')
PY
sed -i 's/\r$//' "$slurm"

A_SHA=$(sha256sum "$root/oceanM.S32_parent" | awk '{print $1}')
B_SHA=$(sha256sum "$root/oceanM.S32_impi" | awk '{print $1}')
SCRIPT_SHA=$(sha256sum "$slurm" | awk '{print $1}')
echo "A_SHA=$A_SHA"
echo "B_SHA=$B_SHA"
echo "SCRIPT_SHA=$SCRIPT_SHA"
printf '%s\n%s\n%s\n' "$A_SHA" "$B_SHA" "$SCRIPT_SHA" > "$logdir/abba_expected_hashes.txt"

squeue -u fujiake | head -10
df -h /public/home/fujiake | tail -1

job=$(sbatch --parsable \
  --export=ALL,EXPECTED_A_SHA=$A_SHA,EXPECTED_B_SHA=$B_SHA,EXPECTED_SCRIPT_SHA=$SCRIPT_SHA \
  "$slurm")
echo "ABBA_JOB=$job" | tee "$logdir/abba_job.txt"
squeue -j "$job"
