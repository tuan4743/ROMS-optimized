#!/bin/bash
R=/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15
J=/public/home/fujiake/fjk/mcc_runs/118405320_o33_full_reproduce_64x2

echo "########## A. tile count per rank (is tile-level OpenMP degenerate?) ##########"
grep -n -i -e 'NtileI' -e 'NtileJ' $R/ROMS/External/ocean_SCS_Dongsha60_bio15.in 2>/dev/null | head
grep -n -e 'Number of parallel nodes' -e 'tile partition' -e 'Tile partition' $J/logs/model.log | head -8
grep -n -A6 'Tile partition information for Grid 01' $J/logs/model.log | head -14

echo
echo "########## B. every file containing an OpenMP worksharing directive ##########"
grep -rl '^!\$OMP' $R/ROMS $R/Master 2>/dev/null | grep -v '\.svn' | sort

echo
echo "########## C. directive census per file (excluding svn) ##########"
for f in $(grep -rl '^!\$OMP' $R/ROMS $R/Master 2>/dev/null | grep -v '\.svn' | sort); do
  n_par=$(grep -c '^!\$OMP PARALLEL' $f)
  n_do=$(grep -c '^!\$OMP *DO\|^!\$OMP PARALLEL DO' $f)
  n_mas=$(grep -c '^!\$OMP MASTER' $f)
  n_bar=$(grep -c '^!\$OMP BARRIER' $f)
  echo "$(basename $f)  PARALLEL=$n_par  DO=$n_do  MASTER=$n_mas  BARRIER=$n_bar"
done

echo
echo "########## D. biology / step2d OpenMP status ##########"
ls $R/ROMS/Nonlinear/Biology/ 2>/dev/null | head -20
echo "--- omp in biology sources ---"
grep -rn '\$OMP' $R/ROMS/Nonlinear/Biology/*.h $R/ROMS/Nonlinear/Biology/*.F* 2>/dev/null | grep -v '\.svn' | head
echo "--- omp in step2d ---"
grep -n '\$OMP' $R/ROMS/Nonlinear/step2d_LF_AM3.h $R/ROMS/Nonlinear/step2d.F 2>/dev/null | head
