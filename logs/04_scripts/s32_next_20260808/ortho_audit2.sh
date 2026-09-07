#!/bin/bash
set -u
# Fast read-only: O36 evidence + contact density + mp_exchange size
N=/public/home/fujiake/nan
echo '==== O36 / 32x4 notes in nan README ===='
grep -aEn 'O36|32.?MPI|4.?OMP|4x8|Ntile.*4' "$N/sprint/README.md" 2>/dev/null | head -40
grep -aEn 'O36|32.?MPI|4.?OMP' "$N/mcc_perf" -r --include='*.md' 2>/dev/null | head -20

echo '==== zya residual / unequal ===='
grep -aEn '不等|shared|halo|剩余|1–3|1-3|银弹|建议' /public/home/fujiake/zya/.mcc_opt/docs/*.md 2>/dev/null | head -30
ls /public/home/fujiake/nan/sprint/REFACTOR* 2>/dev/null
head -80 /public/home/fujiake/nan/sprint/REFACTOR_unequal_allocation_feasibility.md 2>/dev/null

echo '==== contact nc dims / ncontact ===='
ncdump -h /public/home/fujiake/Inputfiles/Dongsha60/SCS_Dongsha60_contact.nc 2>/dev/null | head -80

echo '==== S32 mp_exchange.F isend count / size ===='
wc -l /public/home/fujiake/fjk/agent_tmp/isolated/work/s32_profile_diag_20260808/ROMS_CoSiNE15/ROMS/Utility/mp_exchange.F
grep -c 'mpi_isend\|mpi_irecv\|MPI_Isend\|MPI_Irecv' \
  /public/home/fujiake/fjk/agent_tmp/isolated/work/s32_profile_diag_20260808/ROMS_CoSiNE15/ROMS/Utility/mp_exchange.F

echo '==== data reduction G02 callers ===='
grep -RIn 'wclock_on.*46\|data reduction\|mp_reduce\|mp_assemble' \
  /public/home/fujiake/fjk/agent_tmp/isolated/work/s32_profile_diag_20260808/ROMS_CoSiNE15/ROMS/Utility/mod_strings.F 2>/dev/null | head
