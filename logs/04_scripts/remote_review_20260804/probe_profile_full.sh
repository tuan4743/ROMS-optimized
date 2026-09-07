#!/bin/bash
J=/public/home/fujiake/fjk/mcc_runs/118405320_o33_full_reproduce_64x2
R=/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15

echo "########## A. full profile block (both grids) ##########"
sed -n '6540,6700p' $J/logs/model.log

echo
echo "########## B. shared-memory / window usage anywhere in the tree ##########"
grep -rn 'MPI_Win\|MPI_WIN\|Win_allocate\|COMM_TYPE_SHARED\|Comm_split_type\|comm_split_type' \
  $R/ROMS/Utility/*.F $R/ROMS/Modules/*.F $R/Master/*.F 2>/dev/null | grep -v '\.svn' | head -20

echo
echo "########## C. OPTIMIZATION markers ##########"
grep -rho 'OPTIMIZATION O[0-9]*' $R/ROMS $R/Master 2>/dev/null | sort | uniq -c | sort -k2V

echo
echo "########## D. mp_exchange transport ##########"
grep -n 'mpi_irecv\|mpi_isend\|mpi_waitall\|mpi_sendrecv\|MPI_IRECV\|MPI_ISEND\|MPI_WAITALL' \
  $R/ROMS/Utility/mp_exchange.F 2>/dev/null | head -20
