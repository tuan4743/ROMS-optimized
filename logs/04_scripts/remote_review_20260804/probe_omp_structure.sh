#!/bin/bash
R=/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15
J=/public/home/fujiake/fjk/mcc_runs/118405320_o33_full_reproduce_64x2

echo "########## A. outer OMP PARALLEL in nl_ocean.h (is it guarded?) ##########"
grep -n -B4 -A6 '\$OMP PARALLEL' $R/ROMS/Drivers/nl_ocean.h | head -60

echo
echo "########## B. first_tile / last_tile definition ##########"
grep -rn 'first_tile\|last_tile' $R/ROMS/Modules/mod_parallel.F $R/ROMS/Utility/inp_par.F 2>/dev/null | grep -v '\.svn' | head -20

echo
echo "########## C. tile_count / chunk assignment ##########"
grep -n -B6 -A14 'first_tile(ng)=' $R/ROMS/Utility/inp_par.F 2>/dev/null | head -40

echo
echo "########## D. region-0 wclock_on call sites ##########"
grep -rn 'wclock_on (ng, iNLM, 0)\|wclock_on (ng, model, 0)\|wclock_on(ng,iNLM,0)' $R/ROMS $R/Master 2>/dev/null | grep -v '\.svn' | head

echo
echo "########## E. build flags actually used ##########"
for f in $R/Compilers/Linux-ifort.mk $R/makefile $R/build.bash $R/build.sh; do
  [ -f "$f" ] && echo "=== $f ===" && grep -n -i 'openmp\|qopenmp\|FFLAGS\|OMP' "$f" | head -20
done

echo
echo "########## F. runtime OMP env in the scored job ##########"
grep -rn -i 'OMP_NUM_THREADS\|KMP_\|OMP_NESTED\|OMP_PROC_BIND\|cpus-per-task\|ntasks' \
  $J/*.sh $J/logs/*.log $J/*.txt 2>/dev/null | head -20
