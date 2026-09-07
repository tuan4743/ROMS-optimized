#!/bin/bash
set -u
echo '==== squeue fujiake ===='
squeue -u fujiake -o '%.18i %.12P %.20j %.8u %.2t %.10M %.6D %R' | head -30
echo '==== df home ===='
df -h /public/home/fujiake | tail -2
echo '==== Intel MPI modules ===='
ls /public/software/mpi/intel* 2>/dev/null | head
ls -d /public/software/mpi/intelmpi* 2>/dev/null | head
module avail 2>&1 | grep -i impi | head -20
module avail 2>&1 | grep -i 'intel.*mpi\|mpi.*intel' | head -20
echo '==== which mpiifort if loaded 2017 ===='
module purge
module load compiler/intel/2017.5.239 2>/dev/null
module load mpi/intel/2017.4.239 2>/dev/null || module load intelmpi/2017.4.239 2>/dev/null || true
type mpiifort 2>/dev/null || true
type mpirun 2>/dev/null || true
ls /public/software/mpi/ 2>/dev/null | head -40

echo '==== teammate RT_impi ===='
find /public/home/fujiake/nan /public/home/fujiake/zya -name '*impi*' 2>/dev/null | head -40
find /public/home/fujiake/nan /public/home/fujiake/zya -name '*RT_impi*' 2>/dev/null | head -20
grep -aRln 'RT_impi\|mpiifort\|intelmpi' /public/home/fujiake/nan/sprint 2>/dev/null | head -20

echo '==== S32 parent binary ===='
find /public/home/fujiake/nan/sprint /public/home/fujiake/fjk -name 'oceanM.S32*' 2>/dev/null | head -20
find /public/home/fujiake/fjk -name 'oceanM*' -path '*s32*' 2>/dev/null | head -30
