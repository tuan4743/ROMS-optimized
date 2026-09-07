#!/bin/bash
# Read-only: does O10 sparse owner-map cover get_contact2d, or only get_contact3d?
R=/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15
N=$R/ROMS/Nonlinear/nesting.F

echo "########## A. get_Vweights final decision logic ##########"
sed -n '185,215p' $R/ROMS/Utility/set_contact.F

echo
echo "########## B. get_contact2d assemble path (line 4725-4900) ##########"
sed -n '4840,4890p' $N

echo
echo "########## C. get_contact3d: sparse owner-map path? ##########"
awk '/SUBROUTINE get_contact3d/,/END SUBROUTINE get_contact3d/' $N | grep -n 'mp_assemble\|OwnerMap\|owner\|mp_isend\|mp_irecv\|MPI_Isend\|MPI_Irecv\|sparse\|P2P' | head -30

echo
echo "########## D. get_persisted2d assemble path ##########"
sed -n '5440,5480p' $N

echo
echo "########## E. how often get_contact2d runs: nesting sections in fast loop ##########"
grep -n 'n2dPS\|n2dCS\|ngetD\|nputD' $R/ROMS/Nonlinear/main3d.F | head -20

echo
echo "########## F. count get_contact2d vs get_contact3d call sites ##########"
echo -n "get_contact2d call sites: "; grep -c 'CALL get_contact2d' $N
echo -n "get_contact3d call sites: "; grep -c 'CALL get_contact3d' $N
echo -n "get_persisted2d call sites: "; grep -c 'CALL get_persisted2d' $N
