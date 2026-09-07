#!/bin/bash
J=/public/home/fujiake/fjk/mcc_runs/118405320_o33_full_reproduce_64x2
R=/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15

echo "########## A. per-rank total reported by ROMS ##########"
grep -h 'Node   #' $J/logs/model.log | awk '{print $NF}' | sort -n | awk '
  NR==1{min=$1} {s+=$1; n++; max=$1} END{printf "n=%d  min=%.3f  max=%.3f  mean=%.3f  sum=%.3f\n", n, min, max, s/n, s}'

echo
echo "########## B. ROMS profile total line ##########"
grep -n 'Total:' $J/logs/model.log | head -6

echo
echo "########## C. shell wall time of the job ##########"
for f in $J/logs/*.log $J/*.txt $J/logs/*.txt; do
  [ -f "$f" ] || continue
  grep -Hn '^real\|^user\|^sys\|Elapsed' "$f" 2>/dev/null | head -4
done

echo
echo "########## D. is wclock_on/off called INSIDE the OpenMP parallel region? ##########"
echo "--- main3d tile loop around step3d_t ---"
grep -n -B6 -A2 'CALL step3d_t' $R/ROMS/Nonlinear/main3d.F | head -40

echo
echo "--- wclock_on inside step3d_t (tile driver) ---"
grep -n 'wclock_on\|wclock_off\|SUBROUTINE step3d_t' $R/ROMS/Nonlinear/step3d_t.F | head -10

echo
echo "########## E. which regions are OpenMP-parallel in this build ##########"
grep -rln 'OMP PARALLEL DO\|\$OMP DO' $R/ROMS/Nonlinear/*.F $R/ROMS/Nonlinear/*.h $R/ROMS/Utility/*.F $R/ROMS/Bin/../Nonlinear/Biology/*.F* 2>/dev/null | head -30
