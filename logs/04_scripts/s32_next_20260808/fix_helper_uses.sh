#!/bin/bash
set -euo pipefail
D=/public/home/fujiake/fjk/agent_tmp/isolated/work/s32_bcasthier_20260808/ROMS_CoSiNE15/ROMS/Utility/distribute.F
perl -i -0pe 's/(SUBROUTINE mp_hier_bcast_real \(Npts, A, MyError\)\n)(      USE mod_parallel)/$1      USE mod_param\n$2/s' "$D"
perl -i -0pe 's/(SUBROUTINE mp_hier_bcast_int \(Npts, A, MyError\)\n)(      USE mod_parallel)/$1      USE mod_param\n$2/s' "$D"
perl -i -0pe 's/(SUBROUTINE mp_hier_bcast_log \(Npts, A, MyError\)\n)(      USE mod_parallel)/$1      USE mod_param\n$2/s' "$D"
echo "==== real helper header ===="
sed -n '/SUBROUTINE mp_hier_bcast_real/,/implicit none/p' "$D" | head -12
echo "==== count USE mod_param near hier ===="
grep -n 'mp_hier_bcast_real\|USE mod_param' "$D" | head -20
md5sum "$D" | tee /public/home/fujiake/fjk/agent_tmp/isolated/work/s32_bcasthier_20260808/distribute_after_usefix.md5
