#!/bin/bash
D=/public/home/fujiake/fjk/agent_tmp/isolated/work/s32_bcasthier_20260808/ROMS_CoSiNE15/ROMS/Utility/distribute.F
ls -la /public/home/fujiake/fjk/agent_tmp/isolated/work/s32_bcasthier_20260808/
ls "$D" 2>&1
grep -n 'SUBROUTINE mp_bcast\|END SUBROUTINE mp_bcast\|SUBROUTINE mp_boundary\|      CONTAINS' "$D" | head -50
echo '==== check pre backup ===='
ls -la "${D}.pre_bcasthier" 2>&1
wc -l "$D" "${D}.pre_bcasthier" 2>&1
