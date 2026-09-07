#!/bin/bash
set -u
# targeted fast survey — no deep find
echo '==== squeue ===='
squeue -u fujiake | head -15
echo '==== impi bins ===='
ls /public/software/mpi/intelmpi/2017.4.239/intel64/bin/mpiifort
ls /public/software/mpi/intelmpi/2017.4.239/intel64/bin/mpirun
ls /public/software/mpi/intelmpi/2021.3.0/ 2>/dev/null | head
find /public/software/mpi/intelmpi/2021.3.0 -name mpiifort 2>/dev/null | head -3

echo '==== modulefiles intelmpi ===='
ls /public/software/modules/modulefiles/mpi/ 2>/dev/null | head
ls /usr/share/Modules/modulefiles/mpi/ 2>/dev/null | head
find /public/software -path '*modulefiles*intelmpi*' 2>/dev/null | head -10

echo '==== load test ===='
module purge
module use /public/software/modules/modulefiles 2>/dev/null
module load mpi/intelmpi/2017.4.239 2>&1 | tail -5
type mpiifort 2>&1
mpiifort -show 2>&1 | head -3

echo '==== ifort 2021 path ===='
ls /public/software/compiler/intel/oneapi/*/compiler/*/linux/bin/intel64/ifort 2>/dev/null | head
# known S32 ifort 2021.3.0
find /public/software/compiler/intel -path '*2021.3.0*ifort' 2>/dev/null | head -5
ls /public/software/compiler/intel/oneapi/oneapi-2021*/compiler/*/linux/bin/intel64/ifort 2>/dev/null | head

echo '==== S32 parent + source trees ===='
ls -la /public/home/fujiake/nan/sprint/ROMS_CoSiNE15_s22b/oceanM.s32_ifort2021_ipo.bak
md5sum /public/home/fujiake/nan/sprint/ROMS_CoSiNE15_s22b/oceanM.s32_ifort2021_ipo.bak
ls /public/home/fujiake/fjk/agent_tmp/isolated/work/ | grep -i s32
# clean source without bcasthier?
test -d /public/home/fujiake/fjk/agent_tmp/isolated/work/s32_profile_diag_20260808/ROMS_CoSiNE15 && echo HAS_PROFILE_TREE
test -f /public/home/fujiake/fjk/agent_tmp/isolated/work/s32_profile_diag_20260808/ROMS_CoSiNE15/Compilers/Linux-ifort.mk && \
  sha256sum /public/home/fujiake/fjk/agent_tmp/isolated/work/s32_profile_diag_20260808/ROMS_CoSiNE15/Compilers/Linux-ifort.mk | cut -c1-16

echo '==== RT_impi quick ===='
ls /public/home/fujiake/nan/sprint/*impi* 2>/dev/null | head
grep -a 'RT_impi\|mpiifort\|intelmpi' /public/home/fujiake/nan/sprint/README.md 2>/dev/null | head -15
