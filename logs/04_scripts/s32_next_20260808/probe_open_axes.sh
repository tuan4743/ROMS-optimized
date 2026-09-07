#!/bin/bash
# READ-ONLY: is -g in the S32 production compile path? What compiler versions remain?
N=/public/home/fujiake/nan/sprint
mk="$N/ROMS_CoSiNE15_s22b/Compilers/Linux-ifort.mk"
{
echo "############ Linux-ifort.mk around FFLAGS branches (lines 110-160)"
sed -n '110,175p' "$mk"
echo
echo "############ actual compile lines from a recent S32 build log if any"
find "$N/ROMS_CoSiNE15_s22b" -maxdepth 2 -name 'build*.log' -o -name 'make*.log' 2>/dev/null | head -5
# strings from the binary: was it built with -g?
echo "############ does oceanM.s32 contain debug sections?"
B="$N/ROMS_CoSiNE15_s22b/oceanM.s32_ifort2021_ipo.bak"
readelf -S "$B" 2>/dev/null | grep -E 'debug|\.symtab' | head -10
echo "size=$(stat -c%s "$B")"
echo
echo "############ ifort versions available"
ls /public/software/compiler/intel/ 2>/dev/null | head -20
module avail compiler/intel 2>&1 | tr ' ' '\n' | grep -i intel | head -20
echo
echo "############ teammate open items / next from README tail (ASCII-safe)"
# extract English/numeric dense lines from end of README
tail -80 "$N/README.md" | grep -aE 'S3[0-9]|ifort|ipo|PGO|open|下一|待|3day|1day|u=|real' | head -40
} | base64 -w0
