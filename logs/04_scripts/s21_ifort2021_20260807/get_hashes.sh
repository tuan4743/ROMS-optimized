#!/bin/bash
R=/public/home/fujiake/fjk/agent_tmp/isolated/work/s21_ifort2021_20260807/ROMS_CoSiNE15
sha256sum "$R/ROMS/External/ocean_SCS_Dongsha60_bio15.in" "$R/coll_rules.conf" \
          "$R/oceanM.S21_parent" "$R/oceanM.S21_ifort2021"
echo "--- tile / ntimes settings ---"
grep -nE '^ *(NtileI|NtileJ|NTIMES)' "$R/ROMS/External/ocean_SCS_Dongsha60_bio15.in" | head -6
echo "--- our O33 rules for comparison ---"
sha256sum /public/home/fujiake/fjk/agent_tmp/isolated/work/o33_g2d_r3_20260804/ROMS_CoSiNE15/coll_rules.conf 2>/dev/null
