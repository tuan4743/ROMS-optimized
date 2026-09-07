#!/bin/bash
# Read-only: build/run environment for the toolchain candidates (modules, FFLAGS, MPI).
S=/public/home/fujiake/fjk/agent_tmp/isolated/scripts
L=/public/home/fujiake/fjk/agent_tmp/logs
W=/public/home/fujiake/fjk/agent_tmp/isolated/work

echo "############ script dirs after Aug 4"
ls -dt "$S"/*/ 2>/dev/null | head -22

echo
echo "############ candidate build/run scripts: module + FFLAGS + mpirun"
for pat in ifort2021 gcc731 hpcx211 fast2_2021 biofast_2021 ifort2022 ifort2023 ifx align hotteams s2dfuse r3; do
  echo "==== $pat"
  files=$(find "$S" -maxdepth 2 -type f \( -name "*$pat*" \) 2>/dev/null | head -4)
  for f in $files; do
    echo "  [[${f#$S/}]]"
    grep -a -e '^ *module ' -e 'FFLAGS' -e 'mpirun' -e 'I_MPI' -e 'HPCX' -e 'hpcx' -e 'KMP_' -e 'OMP_' -e 'compilervars' -e 'setvars' -e '^ *source ' -e 'oceanM' \
      "$f" 2>/dev/null | head -18 | sed 's/^/    /'
  done
done

echo
echo "############ candidate tree existence (which are still on disk)"
for t in o33_ifort2021_20260805 o33_fast2_2021_20260806 o33_biofast_2021_20260806 o33_gcc731_20260805 o33_ifort2022_20260807 o33_ifort2023_20260807 o33_ifx_20260807 o33_align_20260807 o33_hotteams_20260805 o33_s2dfuse_20260806; do
  if [ -d "$W/$t" ]; then echo "  ON_DISK  $t"; else echo "  DELETED  $t"; fi
done

echo
echo "############ FFLAGS actually used, from candidate mk files still on disk"
for t in o33_ifort2021_20260805 o33_ifort2022_20260807 o33_ifort2023_20260807 o33_ifx_20260807 o33_align_20260807; do
  mk="$W/$t/ROMS_CoSiNE15/Compilers/Linux-ifort.mk"
  [ -f "$mk" ] || continue
  echo "==== $t"
  grep -n -e 'FFLAGS :=' -e 'FFLAGS +=' -e 'FC :=' "$mk" | grep -v '^ *#' | head -14 | sed 's/^/  /'
done

echo
echo "############ ifort versions available on the cluster"
ls /public/software/compiler/intel/ 2>/dev/null | head -20
module avail 2>&1 | tr ' ' '\n' | grep -i -e 'intel' -e 'hpcx' -e 'gcc' | sort -u | head -30
