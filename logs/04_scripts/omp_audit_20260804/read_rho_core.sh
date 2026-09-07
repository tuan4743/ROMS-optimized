#!/bin/bash
B=/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15/Build

echo "=== rho_eos.f90 core loop 218-300 (does C(0:9) get written inside?) ==="
sed -n '218,300p' $B/rho_eos.f90
