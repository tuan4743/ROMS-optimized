#!/bin/bash
R=/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15
J=/public/home/fujiake/fjk/mcc_runs/118405320_o33_full_reproduce_64x2

echo "########## A. what is in the scored job dir ##########"
ls -la $J 2>/dev/null
echo "--- logs ---"
ls -la $J/logs 2>/dev/null

echo
echo "########## B. runtime env / launch line ##########"
for f in $(find $J -maxdepth 2 -name '*.sh' -o -maxdepth 2 -name '*metadata*' -o -maxdepth 2 -name '*.slurm' 2>/dev/null); do
  echo "=== $f ==="
  grep -n -i -e OMP_NUM_THREADS -e KMP_ -e OMP_PROC_BIND -e OMP_PLACES -e mpirun -e cpus-per-task -e ntasks -e rankfile -e 'map-by' -e 'bind-to' "$f" 2>/dev/null | head -25
done

echo
echo "########## C. did the generated timers.f90 keep cpu_time? ##########"
find $R -name 'timers.f90' -o -name 'mp_routines.f90' 2>/dev/null | head
for f in $(find $R -name 'mp_routines.f90' 2>/dev/null | head -2); do
  echo "=== $f ==="
  grep -n -A6 'FUNCTION my_wtime' "$f" | head -20
done

echo
echo "########## D. USE_OpenMP actually set at build time? ##########"
grep -rn 'USE_OpenMP' $R/makefile $R/build*.sh $R/build*.bash 2>/dev/null | head

echo
echo "########## E. is _OPENMP in the cpp flags? ##########"
grep -rn 'D_OPENMP\|_OPENMP' $R/Compilers/Linux-ifort.mk $R/Compilers/make_macros.h 2>/dev/null | head

echo
echo "########## F. binary: does it link libiomp5? ##########"
find $R -maxdepth 2 -name 'oceanM' -o -maxdepth 2 -name 'romsM' 2>/dev/null | head
B=$(find $R -maxdepth 2 -name 'oceanM' 2>/dev/null | head -1)
echo "bin=$B"
[ -n "$B" ] && ldd "$B" 2>/dev/null | grep -i -e iomp -e omp -e mpi | head
