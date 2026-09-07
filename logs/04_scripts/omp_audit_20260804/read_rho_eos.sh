#!/bin/bash
B=/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15/Build

echo "=== rho_eos.f90 : local declarations (105-175) ==="
sed -n '105,175p' $B/rho_eos.f90

echo
echo "=== rho_eos.f90 : loop / CALL / write skeleton (whole tile routine) ==="
awk 'NR>=105 && NR<=385 {
  line=$0
  if (line ~ /^ *DO /            ) printf "%4d  LOOP   %s\n", NR, line
  else if (line ~ /^ *END DO/    ) printf "%4d  ENDDO\n", NR
  else if (line ~ /CALL /        ) printf "%4d  CALL   %s\n", NR, line
  else if (line ~ /^ *IF \(/     ) printf "%4d  IF     %s\n", NR, line
  else if (line ~ /^ *! *---/    ) next
  else if (line ~ /^! *[A-Z]/    ) printf "%4d  CMT    %s\n", NR, line
}' $B/rho_eos.f90
