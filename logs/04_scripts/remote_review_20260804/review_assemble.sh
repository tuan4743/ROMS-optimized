#!/bin/bash
# Read-only: mp_assemble implementation and its callers (nesting contact points).
R=/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15

echo "########## A. mp_assemblef_2d full body (timer 49) ##########"
sed -n '1672,1795p' $R/ROMS/Utility/distribute.F

echo
echo "########## B. all callers of mp_assemble in the model ##########"
grep -rn 'mp_assemble' $R/ROMS/Nonlinear/*.F $R/ROMS/Utility/*.F $R/ROMS/Nonlinear/*.h 2>/dev/null | grep -v 'SUBROUTINE\|END SUBROUTINE\|distribute.F' | head -30

echo
echo "########## C. nesting.F use of mp_assemble ##########"
grep -n 'mp_assemble\|CALL get_contact\|CALL put_contact' $R/ROMS/Nonlinear/nesting.F | head -40
