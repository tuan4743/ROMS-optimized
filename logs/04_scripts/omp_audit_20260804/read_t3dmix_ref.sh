#!/bin/bash
B=/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15/Build

echo "=== t3dmix.f90 declarations + parallel region: lines 90-260 (REFERENCE PATTERN) ==="
sed -n '90,260p' $B/t3dmix.f90
