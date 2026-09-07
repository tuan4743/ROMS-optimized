#!/bin/bash
# Locate the real PROFILE block header/format in model.log.
L=/public/home/fujiake/fjk/mcc_runs/118714595_o33_hpcx211_full_64x2/logs/model.log
echo "=== line numbers of the percentage anchor ==="
grep -a -n 'All percentages are with respect to total time' "$L"
echo
echo "=== 30 lines BEFORE the first anchor ==="
n=$(grep -a -n -m1 'All percentages are with respect to total time' "$L" | cut -d: -f1)
sed -n "$((n-30)),$((n+40))p" "$L"
echo
echo "=== any 'profile' / 'Profile' lines ==="
grep -a -n -i 'profile' "$L" | head -10
