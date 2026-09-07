#!/bin/bash
# READ-ONLY probes for next axis after S32-2022 STOP.
{
echo "############ gcc modules / libstdc++ with GLIBCXX_3.4.21"
module avail gcc 2>&1 | head -40
for p in /usr/lib64/libstdc++.so.6 \
         /public/software/compiler/gnu/*/lib64/libstdc++.so.6 \
         /opt/hpc/software/compiler/gcc/*/lib64/libstdc++.so.6; do
  for f in $p; do
    [ -e "$f" ] || continue
    if strings "$f" 2>/dev/null | grep -q 'GLIBCXX_3.4.21'; then
      echo "OK_GLIBCXX21 $f"
    else
      echo "no_21 $f"
    fi
  done
done | head -20

echo
echo "############ ifort 2023 path"
ls /public/software/compiler/intel/oneapi/oneapi-2023.2.0/compiler/ 2>/dev/null
F=/public/software/compiler/intel/oneapi/oneapi-2023.2.0/compiler/2023.2.0/linux/bin/intel64/ifort
[ -x "$F" ] && "$F" --version | head -1

echo
echo "############ SUBMIT vs S32 parent: size/strings compile stamp"
S=/public/home/fujiake/nan/sprint/ROMS_CoSiNE15_s22b
cmp -l "$S/oceanM.s32_ifort2021_ipo.bak" "$S/oceanM.s32_SUBMIT_20260808.bak" 2>/dev/null | wc -l
strings "$S/oceanM.s32_SUBMIT_20260808.bak" | grep -E 'ifort|2021|ipo|core-avx2' | head -10

echo
echo "############ teammate 3day job progress"
squeue -u fujiake
} | base64 -w0
