#!/bin/bash
# Read-only: exact boundaries and full text of the two contact routines.
R=/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15
N=$R/ROMS/Nonlinear/nesting.F

echo "########## A. routine boundaries ##########"
grep -n 'SUBROUTINE get_contact2d\|END SUBROUTINE get_contact2d\|SUBROUTINE get_contact3d\|END SUBROUTINE get_contact3d\|SUBROUTINE get_persisted2d\|END SUBROUTINE get_persisted2d' $N

echo
echo "########## B. O10 sparse machinery: module-level state ##########"
grep -n 'OwnerMap\|owner_map\|SparsePlan\|sparse_plan\|Osparse\|contact_owner\|MPI_Isend\|MPI_Irecv\|MPI_Sendrecv\|mpi_isend\|mpi_irecv\|mpi_sendrecv\|mpi_waitall' $N | head -50

echo
echo "########## C. get_contact2d full argument list and declarations ##########"
sed -n '4725,4800p' $N

echo
echo "########## D. sha256 of nesting.F and distribute.F ##########"
sha256sum $N $R/ROMS/Utility/distribute.F $R/ROMS/Utility/set_contact.F
