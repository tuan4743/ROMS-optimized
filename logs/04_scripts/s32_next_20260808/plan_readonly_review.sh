#!/usr/bin/env bash
# Stage-130 plan pass: READ-ONLY review. No build, no job, no writes outside stdout.
set -uo pipefail
PR=/public/home/fujiake/fjk/mcc_runs/118784141_s32_profile_full_belowgate
echo '===== profile_g01 ====='
cat "$PR/profile_g01.txt" 2>/dev/null
echo '===== profile_g02 ====='
cat "$PR/profile_g02.txt" 2>/dev/null
echo '===== message_g01 ====='
cat "$PR/message_g01.txt" 2>/dev/null
echo '===== message_g02 ====='
cat "$PR/message_g02.txt" 2>/dev/null
echo '===== nofill build: sample compile lines ====='
BL=/public/home/fujiake/fjk/agent_tmp/logs/s32_nofill_20260808/build.log
grep -m2 -E 'ifort.*-c ' "$BL" 2>/dev/null | cut -c1-400
echo '===== nofill build: flag census ====='
grep -oE -- '-march=[a-z0-9-]+|-no-fma|-ipo|-xHost|-axCORE[A-Z0-9-]*|-fp-model [a-z0-9=]+|-O[0-9]' "$BL" 2>/dev/null | sort | uniq -c
echo '===== setavg build: flag census ====='
BL2=/public/home/fujiake/fjk/agent_tmp/logs/s32_setavg_20260808/build.log
grep -oE -- '-march=[a-z0-9-]+|-no-fma|-ipo|-xHost|-axCORE[A-Z0-9-]*|-fp-model [a-z0-9=]+|-O[0-9]' "$BL2" 2>/dev/null | sort | uniq -c
echo '===== live makefile FFLAGS block ====='
grep -nE 'FFLAGS|march|ipo|fma|no-fma' /public/home/fujiake/nan/sprint/ROMS_CoSiNE15/Compilers/Linux-ifort.mk 2>/dev/null | head -40
echo '===== live tree drift: newest files last 4 days ====='
find /public/home/fujiake/nan/sprint/ROMS_CoSiNE15 -maxdepth 3 \( -name '*.F' -o -name '*.h' -o -name '*.mk' -o -name 'oceanM*' -o -name 'makefile' \) -mtime -4 -printf '%T+ %p\n' 2>/dev/null | sort -r | head -30
echo '===== live tree oceanM binaries ====='
ls -la /public/home/fujiake/nan/sprint/ROMS_CoSiNE15/oceanM* 2>/dev/null
echo '===== our frozen parent copy ====='
ls -la /public/home/fujiake/fjk/agent_tmp/isolated/work/s32_nofill_20260808/ROMS_CoSiNE15/oceanM.S32_parent 2>/dev/null
echo '===== rebuild binaries sizes ====='
ls -la /public/home/fujiake/fjk/agent_tmp/isolated/work/s32_nofill_20260808/ROMS_CoSiNE15/oceanM.S32_nofill /public/home/fujiake/fjk/agent_tmp/isolated/work/s32_setavg_20260808/ROMS_CoSiNE15/oceanM.S32_setavg 2>/dev/null
echo '===== parent provenance: where did S32 parent come from ====='
cat /public/home/fujiake/fjk/agent_tmp/logs/s32_nofill_20260808/parent.txt 2>/dev/null
echo '===== squeue (read-only sanity) ====='
squeue -u fujiake -o '%.18i %.12P %.22j %.2t %.10M %R'
