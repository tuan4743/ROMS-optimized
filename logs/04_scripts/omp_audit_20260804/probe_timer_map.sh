#!/bin/bash
# Stage 89 probe 1: rebuild the timer -> routine map from the CPP-resolved sources.
# Read-only. Run as: ssh MCC 'bash -s' < probe_timer_map.sh
# The Stage-89 audit executed these same queries as inline `ssh MCC "..."` commands;
# this file is the reproducible transcription of them.
set -u
B=/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15/Build
S=/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15

echo "=== every wclock_on region actually compiled ==="
grep -n 'wclock_on' $B/*.f90

echo
echo "=== which objects carry OpenMP worksharing after CPP ==="
grep -ln 'OMP PARALLEL' $B/*.f90

echo
echo "=== mixing CPP branch: is t3dmix4_geo compiled at all? ==="
grep -n -e 'MIX_GEO_TS' -e 'MIX_S_TS' -e 'TS_U3ADV_SPLIT' $S/ROMS/Include/bye24bio15.h
wc -l $B/t3dmix.f90
grep -c -e 'dZdx' -e 'dZde' $B/t3dmix.f90

echo
echo "=== per-object -qopenmp assignment in the makefile fragment ==="
grep -n -e 'qopenmp' -e 'no-heap-arrays' -e 'heap-arrays' $S/ROMS/Compilers/Linux-ifort.mk
