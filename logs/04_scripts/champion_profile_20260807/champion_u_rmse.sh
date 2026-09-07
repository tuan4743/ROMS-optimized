#!/bin/bash
# Read-only: exact per-variable RMSE of the ifort2021 champion vs the O33 baseline.
# Decides whether the 2021 compiler perturbs the trajectory at all on a clean base.
M=/public/home/fujiake/fjk/mcc_runs
{
for b in 118405320_o33_full_reproduce_64x2 118662236_o33_ifort2021_full_64x2 118714595_o33_hpcx211_full_64x2; do
  echo "======== $b"
  v="$M/$b/validation/vali_result.txt"
  [ -f "$v" ] || { echo "  no vali_result.txt"; continue; }
  cat "$v"
  echo
done
} | base64 -w0
