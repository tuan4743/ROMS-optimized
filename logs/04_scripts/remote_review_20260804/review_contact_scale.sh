#!/bin/bash
# Read-only: contact-point scale and vertical-coordinate coincidence between the two grids.
R=/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15
LOG=/public/home/fujiake/fjk/mcc_runs/118405320_o33_full_reproduce_64x2/logs/model.log

echo "########## A. vertical coordinate parameters (both grids) ##########"
grep -n 'Vtransform\|Vstretching\|THETA_S\|THETA_B\|TCLINE\|^ *N ==\|Lm ==\|Mm ==' $R/ROMS/External/ocean_SCS_Dongsha60_bio15.in | head -20

echo
echo "########## B. contact region summary from the full run log ##########"
grep -n -i 'contact region\|Contact Points\|Ncontact\|refinement factor\|donor grid\|receiver grid' $LOG | head -30

echo
echo "########## C. grid dimensions reported by the model ##########"
grep -n -i 'Lm =\|Mm =\|N =\|Number of' $LOG | head -25

echo
echo "########## D. is get_Vweights ever set FALSE anywhere ##########"
grep -rn 'get_Vweights' $R/ROMS/ 2>/dev/null | head -20
