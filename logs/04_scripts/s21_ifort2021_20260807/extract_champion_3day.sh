#!/bin/bash
R=/public/home/fujiake/fjk/mcc_runs/118746683_s21_ifort2021_3day
echo "===REAL==="
grep -aE '^real|^user|^sys' "$R/logs/model.log"
echo "===U==="
grep -a 'u ' "$R/validation/vali_result.txt" | head -6
echo "===BIN==="
B=/public/home/fujiake/fjk/agent_tmp/isolated/work/s21_ifort2021_20260807/ROMS_CoSiNE15/oceanM.S21_ifort2021
sha256sum "$B" | awk '{print substr($1,1,20)"  "$2}'
md5sum "$B"
echo "===PROFILE_G02==="
awk '/elapsed time profile, Grid: 02/,/All percentages/' "$R/logs/model.log" | head -45
echo "===QUEUE==="
squeue -u fujiake
echo "===TEAMMATE_LATEST==="
ls -dt /public/home/fujiake/nan/sprint/ROMS_CoSiNE15_s22b/TIMING_*.txt 2>/dev/null | head -5
tail -40 /public/home/fujiake/nan/sprint/README.md 2>/dev/null | iconv -f utf-8 -t utf-8 -c | head -40
