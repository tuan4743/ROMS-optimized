#!/bin/bash
D=/public/home/fujiake/fjk/agent_tmp/isolated/work/s32_bcasthier_20260808/ROMS_CoSiNE15/ROMS/Utility/distribute.F
sed -n '118,185p' "$D"
echo '==== int helper ===='
sed -n '180,250p' "$D"
