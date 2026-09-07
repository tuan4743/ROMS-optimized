#!/bin/bash
R=/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15
J=/public/home/fujiake/fjk/mcc_runs/118405320_o33_full_reproduce_64x2

echo "########## A. which step2d variant is compiled ##########"
grep -rn 'step2d_LF_AM3\|step2d.h' $R/ROMS/Nonlinear/step2d.F 2>/dev/null | head
wc -l $R/ROMS/Nonlinear/step2d_LF_AM3.h $R/ROMS/Nonlinear/step2d.F 2>/dev/null

echo
echo "########## B. how the 5 existing OMP objects do it (reference pattern) ##########"
echo "--- t3dmix4_s.h (smallest reference) ---"
grep -n -B3 -A12 '\$OMP PARALLEL' $R/ROMS/Nonlinear/t3dmix4_s.h | head -40

echo
echo "########## C. step2d structure: MPI calls inside the tile routine ##########"
grep -n 'mp_exchange\|mp_reduce\|mp_assemble\|CALL exchange_' $R/ROMS/Nonlinear/step2d_LF_AM3.h 2>/dev/null | head -30

echo
echo "########## D. step2d main loop nests (candidate parallel targets) ##########"
grep -n 'DO j=\|DO i=\|DO k=' $R/ROMS/Nonlinear/step2d_LF_AM3.h 2>/dev/null | wc -l
grep -n 'DO j=Jstr\|DO j=JstrV\|DO j=JstrR\|DO j=Jstr-\|DO j=JstrT' $R/ROMS/Nonlinear/step2d_LF_AM3.h 2>/dev/null | head -30

echo
echo "########## E. reductions / scalar accumulations in step2d ##########"
grep -n 'my_sum\|cff=cff+\|cff1=cff1+\|=.*+.*cff.*$' $R/ROMS/Nonlinear/step2d_LF_AM3.h 2>/dev/null | grep -i 'sum\|volume\|integral' | head -15
grep -n 'DO_VOLCONS\|obc_volcons\|volume' $R/ROMS/Nonlinear/step2d_LF_AM3.h 2>/dev/null | head -10

echo
echo "########## F. other non-OMP compute hotspots: file + size ##########"
for f in rhs3d.F step3d_uv.F rho_eos.F set_avg.F set_data.F t3dmix4_geo.h prsgrd31.h omega.F; do
  p=$(find $R/ROMS -name "$f" 2>/dev/null | grep -v '\.svn' | head -1)
  [ -n "$p" ] && echo "$f -> $(wc -l < $p) lines  omp=$(grep -c '\$OMP' $p)"
done

echo
echo "########## G. ndtfast / nfast confirm ##########"
grep -n -e 'ndtfast' -e 'nfast' $J/logs/model.log | head -6
