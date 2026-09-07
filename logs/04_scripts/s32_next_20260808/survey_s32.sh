#!/bin/bash
# READ-ONLY: locate S32 tree, flags, remaining open axes, current queue.
N=/public/home/fujiake/nan/sprint
{
echo "############ S32 / related trees"
ls -dt "$N"/ROMS_CoSiNE15_s* "$N"/ROMS_CoSiNE15_i* 2>/dev/null | head -20
echo
for t in ROMS_CoSiNE15_s22b ROMS_CoSiNE15_s21 ROMS_CoSiNE15_s25; do
  [ -d "$N/$t" ] || continue
  echo "==== $t"
  ls -lt "$N/$t"/oceanM* 2>/dev/null | head -12
done
echo
echo "############ S32 binary / mk"
find "$N" -maxdepth 2 -name 'oceanM.s32*' 2>/dev/null
find "$N" -maxdepth 2 -name 'backup_S32*' 2>/dev/null
echo
echo "############ current FFLAGS on s22b (likely S32 working tree)"
mk="$N/ROMS_CoSiNE15_s22b/Compilers/Linux-ifort.mk"
if [ -f "$mk" ]; then
  echo "sha16=$(sha256sum "$mk" | cut -c1-16)"
  grep -nE 'FFLAGS|private FFLAGS|^ *FC' "$mk" | grep -v '^[0-9]*: *#' | head -35
fi
echo
echo "############ S32 3day timing files"
for f in "$N/ROMS_CoSiNE15_s22b"/TIMING_sprint_3day_118755216.txt \
         "$N/ROMS_CoSiNE15_s22b"/TIMING_sprint_3day_*.txt; do
  [ -f "$f" ] || continue
  printf "%s  %s\n" "$(basename "$f")" "$(tr '\n' ' ' < "$f")"
done | head -8
echo
echo "############ queue / free nodes"
squeue -u fujiake | head
sinfo -p kshcexclu06 | head -4
echo
echo "############ our disk"
df -h /public/home/fujiake | tail -1
du -sh /public/home/fujiake/fjk/agent_tmp/isolated/work/* 2>/dev/null | sort -h | tail -10
} | base64 -w0
