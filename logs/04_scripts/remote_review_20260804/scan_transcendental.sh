#!/bin/bash
# Read-only scan of immutable O33 preprocessed sources for transcendental-function density.
# Creates no files on the remote side.
R=/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15/Build

echo "=== transcendental density in preprocessed hot files ==="
printf "%-22s %8s %8s %8s %8s %8s\n" FILE POW EXP SQRT LOG TANH
for f in gls_corstep.f90 biology.f90 pre_step3d.f90 step3d_t.f90 step2d.f90 \
         t3dmix4_s.f90 t3dmix.f90 rho_eos.f90 lmd_vmix.f90 bulk_flux.f90 \
         gls_prestep.f90 step3d_uv.f90 nesting.f90 ana_vmix.f90; do
  if [ -f "$R/$f" ]; then
    p=$(grep -c '\*\*' "$R/$f")
    e=$(grep -oi 'EXP *(' "$R/$f" | wc -l)
    s=$(grep -oi 'SQRT *(' "$R/$f" | wc -l)
    l=$(grep -oi '[^A-Z_]LOG *(' "$R/$f" | wc -l)
    t=$(grep -oi 'TANH *(' "$R/$f" | wc -l)
    printf "%-22s %8s %8s %8s %8s %8s\n" "$f" "$p" "$e" "$s" "$l" "$t"
  fi
done

echo
echo "=== biology.f90 exp/pow call sites (line numbers) ==="
grep -n -i -e 'EXP *(' -e '\*\*' "$R/biology.f90" | head -60
