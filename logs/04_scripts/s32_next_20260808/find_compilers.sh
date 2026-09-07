#!/bin/bash
# READ-ONLY: find ifort 2022/2023 binaries; teammate post-S32 plans; S32 src tarball.
{
echo "############ ifort binaries on disk"
find /public/software/compiler/intel -name ifort -type f 2>/dev/null | head -20
ls /public/software/compiler/intel/oneapi/ 2>/dev/null | head -20
ls /public/software/compiler/intel/onepai/ 2>/dev/null | head -20
echo
echo "############ how our earlier ifort2022 build resolved the compiler"
head -40 /public/home/fujiake/fjk/agent_tmp/isolated/scripts/ifort2022_20260807/build_ifort2022.sh 2>/dev/null
echo
echo "############ S32 source tarball"
ls -lh /public/home/fujiake/nan/sprint/backup_S32_src_20260808.tar.gz
tar -tzf /public/home/fujiake/nan/sprint/backup_S32_src_20260808.tar.gz 2>/dev/null | head -25
echo
echo "############ teammate README last 60 lines (base64 later); English keywords"
tail -60 /public/home/fujiake/nan/sprint/README.md | grep -aE 'S3[2-9]|下一|open|PGO|2022|2023|ifx|待|目标|30min|杠杆' | head -30
echo
echo "############ does S32 have PROFILE defined?"
grep -rn 'PROFILE' /public/home/fujiake/nan/sprint/ROMS_CoSiNE15_s22b/ROMS/Include/*.h 2>/dev/null | head -10
} | base64 -w0
