#!/bin/bash
set -u
LOG=/public/home/fujiake/fjk/mcc_runs/118769550_s32_profile_diag_sample/model.log
echo '==== G01 block (first PROFILE) ===='
sed -n '2780,2835p' "$LOG"
echo '==== G02 block ===='
sed -n '2845,2875p' "$LOG"
echo '==== teammate bio all_land notes ===='
rg -n 'all_land|land.?skip|MASKING|early.return' /public/home/fujiake/zya/.mcc_opt/docs/*.md 2>/dev/null | head -30
rg -n 'all_land|land_skip' /public/home/fujiake/fjk -g '*.md' 2>/dev/null | head -20
