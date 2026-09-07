#!/bin/bash
# Read-only: (a) current queue, (b) teammate nopow work status, (c) the actual pow
# call sites in the champion's gls_corstep, (d) whether pow is still hot under 2021.
echo "############ queue now"
squeue -u fujiake 2>/dev/null
echo "-- all users on our project dirs --"
squeue 2>/dev/null | grep -i -e fujiake -e zya | head -20

echo
echo "############ teammate nopow / pow-related runs anywhere visible"
ls -dt /public/home/fujiake/fjk/mcc_runs/*nopow* 2>/dev/null | head
ls -dt /public/home/fujiake/zya/* 2>/dev/null | head -20
ls -dt /public/home/fujiake/fjk/agent_tmp/logs/*pow* 2>/dev/null | head
ls -dt /public/home/fujiake/fjk/agent_tmp/isolated/scripts/*pow* 2>/dev/null | head

echo
echo "############ pow call sites in the preprocessed champion source"
C=/public/home/fujiake/fjk/agent_tmp/isolated/work/o33_ifort2021_20260805/ROMS_CoSiNE15
echo "-- Lmy25 detection block --"
sed -n '255,300p' "$C/ROMS/Nonlinear/gls_corstep.F" 2>/dev/null | grep -n -e 'Lmy25' -e 'gls_p' -e 'gls_m' -e 'gls_n' | head
echo "-- all ** occurrences in gls_corstep.F with line numbers --"
grep -n '\*\*' "$C/ROMS/Nonlinear/gls_corstep.F" 2>/dev/null | head -40
echo
echo "-- count of ** in the preprocessed file --"
grep -c '\*\*' "$C/Build/gls_corstep.f90" 2>/dev/null

echo
echo "############ is pow still called at run time in the champion object?"
nm -u "$C/Build/gls_corstep.o" 2>/dev/null | grep -i -e pow
objdump -d "$C/Build/gls_corstep.o" 2>/dev/null | grep -c 'call.*pow'
