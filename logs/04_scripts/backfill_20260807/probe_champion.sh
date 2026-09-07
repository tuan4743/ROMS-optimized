#!/bin/bash
# Read-only: exact toolchain of the ifort2021 champion build, and the ifort2022 full-run anomaly.
S=/public/home/fujiake/fjk/agent_tmp/isolated/scripts
M=/public/home/fujiake/fjk/mcc_runs
W=/public/home/fujiake/fjk/agent_tmp/isolated/work

echo "############ build_ifort2021.sh full text"
cat "$S/ifort2021_20260805/build_ifort2021.sh" 2>/dev/null

echo
echo "############ ifort2022 / ifort2023 / ifx compiler module lines"
for t in ifort2022 ifort2023 ifx; do
  echo "==== build_$t.sh (module/compiler lines)"
  grep -n -e 'module' -e 'oneapi' -e 'setvars' -e 'onepai' -e 'ifx' -e 'compilervars' -e 'FC' "$S/${t}_20260807/build_$t.sh" 2>/dev/null | head -20
done

echo
echo "############ ifort2022 full run anomaly: nodes, model.log header, per-timer totals"
d=$M/118730406_o33_ifort2022_full_64x2
grep -a -m1 'real' "$d/logs/model.log"
grep -a -e 'Node #' -e 'MPI  nodes' "$d/logs/model.log" 2>/dev/null | head -4
echo "-- run_metadata --"
cat "$d/metadata/run_metadata.txt" 2>/dev/null
echo "-- slurm out tail --"
tail -20 /public/home/fujiake/fjk/agent_tmp/logs/ifort2022_20260807/slurm-118730406.out 2>/dev/null

echo
echo "############ champion binary hashes now on disk"
for f in "$W/o33_ifort2021_20260805/ROMS_CoSiNE15/oceanM.O33_ifort2021" \
         "$W/o33_ifort2021_20260805/ROMS_CoSiNE15/oceanM.O33_parent" \
         /public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15/oceanM; do
  if [ -f "$f" ]; then echo "  $(sha256sum "$f" | cut -c1-16)  $f"; else echo "  MISSING  $f"; fi
done

echo
echo "############ does a delivery archive exist for the ifort2021 champion?"
ls -la /public/home/fujiake/fjk/delivery/ 2>/dev/null
