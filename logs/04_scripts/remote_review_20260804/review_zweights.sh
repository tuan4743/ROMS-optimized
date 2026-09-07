#!/bin/bash
# Read-only: what z_weights still does every timestep after O7.
R=/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15

echo "########## A. main3d.F O7 gate around nzwgt ##########"
sed -n '700,730p' $R/ROMS/Nonlinear/main3d.F

echo
echo "########## B. mod_nesting.F O7 marker context ##########"
grep -n -B4 -A10 'OPTIMIZATION O7' $R/ROMS/Modules/mod_nesting.F

echo
echo "########## C. z_weights: every mp_assemble with its guard ##########"
awk 'NR>=6514 && NR<=7087' $R/ROMS/Nonlinear/nesting.F | grep -n 'mp_assemble\|IF (get_Vweights\|IF (Lnesting\|DO cr=\|Nzpts=\|Nkpts=\|Nwpts=\|END IF' | head -60

echo
echo "########## D. z_weights body around first assemble block ##########"
sed -n '6640,6745p' $R/ROMS/Nonlinear/nesting.F

echo
echo "########## E. nesting.F O10 marker context ##########"
grep -n -B3 -A12 'OPTIMIZATION O10' $R/ROMS/Nonlinear/nesting.F
