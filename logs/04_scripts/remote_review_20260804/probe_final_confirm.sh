#!/bin/bash
R=/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15
J=/public/home/fujiake/fjk/mcc_runs/118405320_o33_full_reproduce_64x2

echo "########## A. generated my_wtime body (cpp already resolved) ##########"
sed -n '95,115p' $R/Build/mp_routines.f90

echo
echo "########## B. run metadata of the scored job ##########"
cat $J/metadata/run_metadata.txt 2>/dev/null | head -60

echo
echo "########## C. rankfile of the scored job ##########"
head -8 $J/metadata/rankfile 2>/dev/null
echo "... lines:"; wc -l $J/metadata/rankfile 2>/dev/null

echo
echo "########## D. platform toolchain inventory ##########"
ls /opt/hpc/software/compiler 2>/dev/null
echo "--- mpi ---"
ls /opt/hpc/software/mpi 2>/dev/null
ls /opt/hpc/software/mpi/hpcx 2>/dev/null
echo "--- intel ---"
ls /opt/hpc/software/compiler/intel 2>/dev/null
echo "--- gcc ---"
ls /opt/hpc/software/compiler/gcc 2>/dev/null
echo "--- modulefiles ---"
ls /opt/hpc/software/modulefiles 2>/dev/null | head -30

echo
echo "########## E. node topology (cores per node, NUMA) ##########"
sinfo -o '%P %D %c %m %f' 2>/dev/null | head
echo "--- one compute node detail ---"
scontrol show node 2>/dev/null | grep -e NodeName= -e CPUAlloc -e CPUTot -e Sockets -e Cores -e Threads -e RealMemory | head -14
