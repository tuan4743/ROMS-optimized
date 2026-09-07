#!/bin/bash
R=/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15

echo "########## A. does mp_exchange already use shared memory windows? ##########"
grep -n 'MPI_WIN\|mpi_win\|Win_allocate\|shared_mem\|SHARED_MEM\|MPI_COMM_TYPE_SHARED\|Comm_split_type' \
  $R/ROMS/Utility/mp_exchange.F $R/ROMS/Utility/distribute.F 2>/dev/null | head -30

echo
echo "########## B. OPTIMIZATION markers present in the tree ##########"
grep -rho 'OPTIMIZATION O[0-9]*' $R/ROMS 2>/dev/null | sort -u

echo
echo "########## C. mp_exchange2d transport primitive ##########"
grep -n 'mpi_irecv\|mpi_isend\|mpi_send\|mpi_recv\|mpi_waitall\|MPI_IRECV\|MPI_ISEND\|MPI_WAITALL\|MPI_SENDRECV' \
  $R/ROMS/Utility/mp_exchange.F 2>/dev/null | head -30

echo
echo "########## D. available compilers / MPI on the platform ##########"
module avail 2>&1 | head -60
echo "--- which ---"
which mpiifort ifort icc gfortran mpif90 2>/dev/null
echo "--- versions ---"
ifort --version 2>/dev/null | head -2
gfortran --version 2>/dev/null | head -2
mpirun --version 2>/dev/null | head -3
