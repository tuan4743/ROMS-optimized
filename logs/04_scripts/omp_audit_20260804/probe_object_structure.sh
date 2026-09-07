#!/bin/bash
# Stage 89 probe 2: per-object loop skeleton, local declarations and communication sites.
# Read-only. Run as: ssh MCC 'bash -s' < probe_object_structure.sh
# The Stage-89 audit executed these same queries as inline `ssh MCC "..."` commands;
# this file is the reproducible transcription of them.
set -u
B=/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15/Build

for f in rho_eos hmixing step3d_uv rhs3d step2d; do
  echo "=================== $f.f90 ==================="

  echo "--- timer, communication and callee sites ---"
  grep -nE 'wclock_on|wclock_off|mp_exchange|mp_reduce|mp_assemble|exchange_[uvrw]' $B/$f.f90

  echo "--- local declarations (the PRIVATE candidates) ---"
  grep -nE '^ +(integer|real\(r8\)) *(::|, dimension)' $B/$f.f90

  echo "--- top-level loop / control skeleton ---"
  grep -nE '^      (DO|END DO|IF|END IF|CALL)|_LOOP' $B/$f.f90
done
