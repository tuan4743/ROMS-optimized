#!/bin/bash
# READ-ONLY: our validated 2021 build recipe + the teammate S21 build/run recipe,
# so the new candidate changes exactly one variable (the compiler).
{
echo "############ OUR validated 2021 build script (O33 champion provenance)"
cat /public/home/fujiake/fjk/agent_tmp/isolated/scripts/ifort2021_20260805/build_ifort2021.sh 2>/dev/null

echo
echo "############ teammate S21 make.sh"
cat /public/home/fujiake/nan/sprint/ROMS_CoSiNE15_s21/make.sh 2>/dev/null

echo
echo "############ teammate s22b sub.sh (run harness we must mirror)"
cat /public/home/fujiake/nan/sprint/ROMS_CoSiNE15_s22b/sub.sh 2>/dev/null

echo
echo "############ i21 make.sh (how they built with 2021) "
cat /public/home/fujiake/nan/sprint/ROMS_CoSiNE15_i21c/make.sh 2>/dev/null
} | base64 -w0
