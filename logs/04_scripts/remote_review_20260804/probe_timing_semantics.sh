#!/bin/bash
# Read-only: what does the ROMS PROFILE timer actually measure, and is halo exchange
# already using intra-node shared memory?
R=/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15

echo "########## A. locate wclock implementation ##########"
find $R/ROMS -name 'wclock*' -o -name 'timers*' 2>/dev/null | head
grep -rln 'SUBROUTINE wclock_on' $R/ROMS 2>/dev/null | head

echo
echo "########## B. timing primitive used ##########"
F=$(grep -rl 'SUBROUTINE wclock_on' $R/ROMS 2>/dev/null | head -1)
echo "file=$F"
grep -n 'my_wtime\|cpu_time\|CPU_TIME\|SYSTEM_CLOCK\|MPI_WTIME\|mpi_wtime\|OMP_GET_WTIME' $F | head -20

echo
echo "########## C. my_wtime definition ##########"
grep -rn 'FUNCTION my_wtime' $R/ROMS 2>/dev/null | head
MF=$(grep -rl 'FUNCTION my_wtime' $R/ROMS 2>/dev/null | head -1)
echo "file=$MF"
grep -n -A12 'FUNCTION my_wtime' $MF 2>/dev/null | head -40

echo
echo "########## D. how the total is accumulated across threads/ranks ##########"
grep -n 'Cstr\|Cend\|Csum\|proc(\|thread' $F 2>/dev/null | head -30
