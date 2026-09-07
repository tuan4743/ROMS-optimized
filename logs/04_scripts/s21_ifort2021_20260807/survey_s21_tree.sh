#!/bin/bash
# READ-ONLY reconnaissance before copying the teammate S21 tree. Writes nothing anywhere.
N=/public/home/fujiake/nan/sprint
F=/public/home/fujiake/fjk

{
echo "############ candidate S21 trees and sizes"
for t in ROMS_CoSiNE15_s21 ROMS_CoSiNE15_s22b ROMS_CoSiNE15_s22 ROMS_CoSiNE15_s20 ROMS_CoSiNE15_s19; do
  d=$N/$t
  [ -d "$d" ] || { echo "  MISSING $t"; continue; }
  printf "  %-26s %8s  mtime=%s\n" "$t" "$(du -sh "$d" 2>/dev/null | cut -f1)" "$(stat -c %y "$d" | cut -d. -f1)"
  echo "      src-only (ROMS+Compilers+External): $(du -sh --exclude=Build --exclude=output_* --exclude='*.nc' "$d" 2>/dev/null | cut -f1)"
done

echo
echo "############ which tree is authoritative S21? binaries + md5"
for t in ROMS_CoSiNE15_s21 ROMS_CoSiNE15_s22b; do
  echo "==== $t"
  ls -lt "$N/$t"/oceanM* 2>/dev/null | head -8
  for b in "$N/$t"/oceanM "$N/$t"/oceanM.s2*.bak; do
    [ -f "$b" ] && echo "    md5=$(md5sum "$b" | cut -c1-8)  $(basename $b)"
  done
done

echo
echo "############ S21 compiler flags (Linux-ifort.mk, non-comment FFLAGS/FC lines)"
for t in ROMS_CoSiNE15_s21 ROMS_CoSiNE15_s22b; do
  mk=$N/$t/Compilers/Linux-ifort.mk
  echo "==== $t  sha256=$( [ -f "$mk" ] && sha256sum "$mk" | cut -c1-16 )"
  [ -f "$mk" ] && grep -n -e 'FFLAGS' -e '^ *FC' -e 'no-heap' -e 'march' -e 'no-fma' -e 'fp-model' "$mk" | grep -v '^[0-9]*: *#' | head -30
done

echo
echo "############ per-file flag overrides (the S8/S19/S21 stack)"
mk=$N/ROMS_CoSiNE15_s22b/Compilers/Linux-ifort.mk
grep -n 'private FFLAGS' "$mk" 2>/dev/null | head -30

echo
echo "############ is PROFILE on or off in the S21 header? (S12 turned it off)"
for t in ROMS_CoSiNE15_s21 ROMS_CoSiNE15_s22b; do
  echo "==== $t"
  grep -rn 'define PROFILE\|undef PROFILE' "$N/$t/ROMS/Include/cppdefs.h" "$N/$t"/*.h 2>/dev/null | head -4
  grep -rn 'PROFILE' "$N/$t/ROMS/Include/scs_dongsha60.h" 2>/dev/null | head -4
done

echo
echo "############ our disk quota / usage"
lfs quota -h -u fujiake /public 2>/dev/null || quota -s -u fujiake 2>/dev/null || echo "  (no quota tool)"
echo "-- our current agent_tmp usage --"
du -sh $F/agent_tmp 2>/dev/null
du -sh $F/agent_tmp/isolated/work/* 2>/dev/null | sort -h | tail -8
echo "-- filesystem free --"
df -h /public/home/fujiake 2>/dev/null | tail -2

echo
echo "############ is the teammate job still running? (do not disturb the tree)"
squeue -u fujiake 2>/dev/null
} | base64 -w0
