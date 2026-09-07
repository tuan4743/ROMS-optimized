#!/bin/bash
# Stage 89 probe 3: enumerate assignment targets inside each candidate parallel region,
# so that a write to a neighbouring index of the parallel axis would be visible.
# Read-only. Run as: ssh MCC 'bash -s' < probe_race_targets.sh
# The Stage-89 audit executed these same queries as inline `ssh MCC "..."` commands;
# this file is the reproducible transcription of them.
set -u
B=/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15/Build

targets () {   # file, first line, last line
  sed -n "$2,$3p" $B/$1 \
    | grep -oE '^ +[A-Za-z_]+\([^=]*\)=' \
    | tr -d ' ' | sort -u
}

echo "=== rho_eos DO j 223-344 ==="
targets rho_eos.f90 223 344

echo "=== hmixing DO k 243-369 ==="
targets hmixing.f90 243 369

echo "=== step3d_uv region A, DO j 234-461 ==="
targets step3d_uv.f90 234 461
echo "=== step3d_uv region B, DO j 513-737 ==="
targets step3d_uv.f90 513 737

echo "=== rhs3d K_LOOP 264-543 ==="
targets rhs3d.f90 264 543
echo "=== rhs3d J_LOOP 545-672 ==="
targets rhs3d.f90 545 672
