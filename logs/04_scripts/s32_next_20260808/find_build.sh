#!/bin/bash
set -euo pipefail
# Locate prior S32 build recipe and prepare build for bcasthier
ls /public/home/fujiake/fjk/agent_tmp/isolated/scripts/s32_ifort2022_20260808/
ls /public/home/fujiake/fjk/agent_tmp/isolated/work/s32_ifort2022_20260808/ | head
# show build script if any
find /public/home/fujiake/fjk/agent_tmp/isolated -name '*s32*build*' 2>/dev/null | head
find /public/home/fujiake/fjk/agent_tmp/isolated/scripts -name '*build*' 2>/dev/null | head
# check s32 profile diag build log
ls /public/home/fujiake/fjk/agent_tmp/isolated/work/s32_profile_diag_20260808/ | head
grep -n 'ifort\|make\|module\|Build' /public/home/fujiake/fjk/agent_tmp/isolated/work/s32_ifort2022_20260808/*.sh 2>/dev/null | head
ls /public/home/fujiake/fjk/agent_tmp/isolated/work/s32_ifort2022_20260808/*.sh 2>/dev/null
ls /public/home/fujiake/fjk/agent_tmp/isolated/scripts/s32_ifort2022_20260808/
