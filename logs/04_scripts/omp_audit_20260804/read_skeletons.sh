#!/bin/bash
B=/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15/Build

skel () {
  f=$1; from=$2; to=$3
  echo "############################## $f ($from-$to) ##############################"
  echo "--- local declarations ---"
  awk -v a=$from -v b=$to 'NR>=a && NR<=b {
    if ($0 ~ /^ *(integer|real|logical) *(\(r8\))? *(,|::)/ && $0 !~ /intent/) printf "%4d  %s\n", NR, $0
  }' $B/$f
  echo "--- structure ---"
  awk -v a=$from -v b=$to 'NR>=a && NR<=b {
    if ($0 ~ /^ *DO /)        printf "%4d  LOOP  %s\n", NR, $0
    else if ($0 ~ /^ *END DO/) printf "%4d  ENDDO\n", NR
    else if ($0 ~ /CALL /)     printf "%4d  CALL  %s\n", NR, $0
  }' $B/$f
}

skel hmixing.f90 1 400
echo; echo
skel rhs3d.f90 100 675
