#!/bin/bash
R=/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15

echo "########## A. my_wtime real source ##########"
sed -n '150,182p' $R/ROMS/Utility/mp_routines.F

echo
echo "########## B. wclock_off accumulation ##########"
sed -n '100,200p' $R/ROMS/Utility/timers.F

echo
echo "########## C. numthreads / how many threads call it ##########"
grep -rn 'numthreads *=' $R/ROMS/Utility/*.F $R/ROMS/Modules/*.F 2>/dev/null | head
