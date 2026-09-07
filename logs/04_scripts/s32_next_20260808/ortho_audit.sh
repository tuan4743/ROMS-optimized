#!/bin/bash
set -u
TREE=/public/home/fujiake/fjk/agent_tmp/isolated/work/s32_profile_diag_20260808/ROMS_CoSiNE15
LOG=/public/home/fujiake/fjk/mcc_runs/118769550_s32_profile_diag_sample/model.log

echo '==== PROFILE message buckets both grids ===='
grep -n 'Message Passage\|Total:\|All percentages' "$LOG" | head -40

echo '==== distribute.F: which collectives exist / hierarchy ===='
grep -n 'mp_scatter\|mp_bcast\|mp_aggregate\|MPI_Allgather\|MPI_Allreduce\|hier\|node_leader\|O9' \
  "$TREE/ROMS/Utility/distribute.F" 2>/dev/null | head -80

echo '==== mp_scatter2d vs 3d hierarchy markers ===='
awk '/SUBROUTINE mp_scatter2d/,/END SUBROUTINE mp_scatter2d/' "$TREE/ROMS/Utility/distribute.F" 2>/dev/null \
  | grep -n 'MPI_Bcast\|MPI_Scatter\|hier\|leader\|mpi_bcast\|Allgather' | head -40
echo '--- scatter3d ---'
awk '/SUBROUTINE mp_scatter3d/,/END SUBROUTINE mp_scatter3d/' "$TREE/ROMS/Utility/distribute.F" 2>/dev/null \
  | grep -n 'MPI_Bcast\|hier\|leader\|mpi_bcast\|Allgather\|node' | head -40

echo '==== call counts scatter/bcast/aggregate ===='
grep -RIn 'CALL mp_scatter2d\|CALL mp_scatter3d\|CALL mp_aggregate\|CALL mp_bcast' \
  "$TREE/ROMS" 2>/dev/null | wc -l
grep -RIn 'CALL mp_scatter2d' "$TREE/ROMS" 2>/dev/null | wc -l
grep -RIn 'CALL mp_scatter3d' "$TREE/ROMS" 2>/dev/null | wc -l

echo '==== nesting contact file vars ===='
ncdump -h /public/home/fujiake/Inputfiles/Dongsha60/SCS_Dongsha60_contact.nc 2>/dev/null | head -60

echo '==== teammate untried / residual notes ===='
ls /public/home/fujiake/zya/.mcc_opt/docs 2>/dev/null | head
rg -n '未测|剩余|建议|impi|scatter2d|PGO|128|set_avg|wet.mask|ceil' \
  /public/home/fujiake/zya/.mcc_opt/docs/*.md 2>/dev/null | head -40
rg -n 'S3[0-9]|未做|下一步|瓶颈' /public/home/fujiake/lsd -g '*.md' 2>/dev/null | head -30
