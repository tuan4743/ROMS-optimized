#!/bin/bash
B=/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15/Build

echo "############### step2d.f90 local declarations ###############"
awk 'NR>=1 && NR<=1285 {
  if ($0 ~ /^ *(integer|real|logical) *(\(r8\))? *(,|::)/ && $0 !~ /intent/) printf "%4d  %s\n", NR, $0
}' $B/step2d.f90

echo
echo "############### step2d.f90 structure: loops, CALLs, and nesting depth ###############"
awk 'NR>=1 && NR<=1285 {
  line=$0
  # indentation depth as a proxy for nesting
  if (line ~ /^ *DO /)        { match(line,/[^ ]/); printf "%4d  %*sLOOP  %s\n", NR, 0, "", substr(line,RSTART) }
  else if (line ~ /^ *END DO/) printf "%4d  ENDDO\n", NR
  else if (line ~ /CALL /)     { printf "%4d  CALL  %s\n", NR, line }
}' $B/step2d.f90

echo
echo "############### step3d_uv.f90 declarations ###############"
awk 'NR>=100 && NR<=781 {
  if ($0 ~ /^ *(integer|real|logical) *(\(r8\))? *(,|::)/ && $0 !~ /intent/) printf "%4d  %s\n", NR, $0
}' $B/step3d_uv.f90

echo
echo "############### step3d_uv.f90 structure ###############"
awk 'NR>=100 && NR<=781 {
  if ($0 ~ /^ *DO /)        printf "%4d  LOOP  %s\n", NR, $0
  else if ($0 ~ /^ *END DO/) printf "%4d  ENDDO\n", NR
  else if ($0 ~ /CALL /)     printf "%4d  CALL  %s\n", NR, $0
}' $B/step3d_uv.f90
