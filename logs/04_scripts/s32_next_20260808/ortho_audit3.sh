#!/bin/bash
set -u
module purge
module load compiler/intel/2017.5.239 >/dev/null 2>&1
module load mathlib/netcdf/4.4.1/intel >/dev/null 2>&1

echo '==== find contact files ===='
find /public/home/fujiake/Inputfiles -name '*contact*' 2>/dev/null
find /public/home/fujiake/Inputfiles -name '*Contact*' 2>/dev/null

echo '==== REFACTOR unequal file ===='
wc -c /public/home/fujiake/nan/sprint/REFACTOR_unequal_allocation_feasibility.md
cat /public/home/fujiake/nan/sprint/REFACTOR_unequal_allocation_feasibility.md 2>/dev/null | head -60

echo '==== UCX shm / intra-node env in S32 run scripts ===='
grep -RIn 'UCX_\|shm\|cma\|posix' \
  /public/home/fujiake/fjk/agent_tmp/isolated/work/s32_profile_diag_20260808/*.slurm \
  /public/home/fujiake/fjk/agent_tmp/isolated/work/s32_profile_diag_20260808/*.sh \
  2>/dev/null | head -30
# teammate S32 launch
grep -aRn 'UCX_\|mpirun\|HPCX' /public/home/fujiake/nan/sprint/*.sh 2>/dev/null | head -40

echo '==== O36 exact lines from README ===='
grep -aA6 'O36' /public/home/fujiake/nan/mcc_perf/.mcc_opt/docs/*.md 2>/dev/null | head -40
grep -aA8 '### O36' /public/home/fujiake/nan/sprint/README.md 2>/dev/null | head -20
