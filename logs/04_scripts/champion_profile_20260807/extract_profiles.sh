#!/bin/bash
# Read-only: dump the full PROFILE blocks of the O33 baseline and the ifort2021 champion
# so the hotspot distribution can be re-derived on the new reference binary.
M=/public/home/fujiake/fjk/mcc_runs

dump() {
  local tag=$1 log=$2
  echo "########## $tag"
  echo "--- shell timing ---"
  grep -a -e '^real' -e '^user' -e '^sys' "$log"
  echo "--- aggregate ---"
  grep -a 'All percentages are with respect to total time' "$log"
  echo "--- profile block ---"
  # ROMS prints: "Nonlinear model elapsed CPU time profile, Grid: NN" then rows, then Total.
  awk '/elapsed CPU time profile/,/^ *Total:/' "$log"
  echo "--- elapsed CPU totals ---"
  grep -a -A6 'Elapsed CPU time (seconds)' "$log"
  echo
}

dump "BASELINE_O33_118405320" "$M/118405320_o33_full_reproduce_64x2/logs/model.log"
dump "CHAMPION_IFORT2021_118714595" "$M/118714595_o33_hpcx211_full_64x2/logs/model.log"
dump "TWIN_IFORT2021_HPCX274_118662236" "$M/118662236_o33_ifort2021_full_64x2/logs/model.log"
