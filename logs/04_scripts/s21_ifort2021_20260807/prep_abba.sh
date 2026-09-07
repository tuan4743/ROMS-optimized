#!/bin/bash
# READ-ONLY: check the new candidate tree has everything the run harness needs,
# and show our existing A-B-B-A slurm template for reuse.
R=/public/home/fujiake/fjk/agent_tmp/isolated/work/s21_ifort2021_20260807/ROMS_CoSiNE15
{
echo "############ candidate tree run dependencies"
for f in coll_rules.conf vali.py sub.sh make.sh ROMS/External/ocean_SCS_Dongsha60_bio15.in Inputfiles; do
  if [ -e "$R/$f" ]; then echo "  OK      $f"; else echo "  MISSING $f"; fi
done
echo
echo "  binaries:"
ls -l "$R"/oceanM* 2>/dev/null | awk '{print "    "$5"  "$9}'
echo "  md5:"
for b in "$R"/oceanM.S21_parent "$R"/oceanM.S21_ifort2021; do
  [ -f "$b" ] && echo "    $(md5sum "$b" | awk '{print $1}')  $(basename $b)"
done

echo
echo "############ NTIMES currently in the base .in"
grep -n 'NTIMES' "$R/ROMS/External/ocean_SCS_Dongsha60_bio15.in" | head -4

echo
echo "############ our existing A-B-B-A slurm template"
ls -t /public/home/fujiake/fjk/agent_tmp/isolated/scripts/ifort2021_20260805/ 2>/dev/null
echo "---- run_ifort2021_abba.slurm ----"
cat /public/home/fujiake/fjk/agent_tmp/isolated/scripts/ifort2021_20260805/run_ifort2021_abba.slurm 2>/dev/null

echo
echo "############ queue + partition state"
squeue -u fujiake 2>/dev/null
sinfo -p kshcexclu06 2>/dev/null | head -5
} | base64 -w0
