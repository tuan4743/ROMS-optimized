#!/bin/bash
# Read-only: (a) validation status of the two full runs missing validation_result,
#            (b) compiler/flag deltas across candidate build trees vs immutable O33.
# Creates nothing on the remote side.
M=/public/home/fujiake/fjk/mcc_runs
W=/public/home/fujiake/fjk/agent_tmp/isolated/work
IMP=/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801

echo "############ A. validation status of fast2_2021 and gcc731 full runs"
for b in 118716467_o33_fast2_2021_full_64x2 118663696_o33_gcc731_full_64x2; do
  echo "==== $b"
  echo "  -- validation dir --"
  ls -la "$M/$b/validation" 2>/dev/null | sed 's/^/    /'
  echo "  -- full run_metadata.txt --"
  cat "$M/$b/metadata/run_metadata.txt" 2>/dev/null | sed 's/^/    /'
  echo "  -- vali_result.txt last 8 lines (raw bytes -> iconv) --"
  tail -8 "$M/$b/validation/vali_result.txt" 2>/dev/null | iconv -f utf-8 -t utf-8 -c | sed 's/^/    /'
  echo "  -- RMSE line count / any exceed marker --"
  echo "    rmse_lines=$(grep -a -c 'RMSE' "$M/$b/validation/vali_result.txt" 2>/dev/null)"
  echo "  -- vali_time.txt --"
  cat "$M/$b/validation/vali_time.txt" 2>/dev/null | sed 's/^/    /'
  echo "  -- slurm/harness tail --"
  find "$M/$b" -maxdepth 2 -name 'harness.log' -o -maxdepth 2 -name '*.out' 2>/dev/null | head -3 | while read f; do
    echo "    [[$f]]"; tail -12 "$f" | sed 's/^/      /'
  done
done

echo
echo "############ B. compiler and flag deltas"
echo "==== immutable O33 Linux-ifort.mk (FFLAGS lines)"
grep -n -e 'FFLAGS' -e 'FC :=' -e 'FC =' -e 'MY_CPP' "$IMP/ROMS_CoSiNE15/Compilers/Linux-ifort.mk" 2>/dev/null | head -25 | sed 's/^/  /'

for t in o33_ifort2021_20260805 o33_fast2_2021_20260806 o33_biofast_2021_20260806 o33_ifort2022_20260807 o33_ifort2023_20260807 o33_ifx_20260807 o33_align_20260807; do
  mk="$W/$t/ROMS_CoSiNE15/Compilers/Linux-ifort.mk"
  echo "==== $t"
  if [ -f "$mk" ]; then
    echo "  sha256=$(sha256sum "$mk" | cut -c1-16)"
    diff <(grep -e 'FFLAGS' -e '^ *FC' "$IMP/ROMS_CoSiNE15/Compilers/Linux-ifort.mk" 2>/dev/null) \
         <(grep -e 'FFLAGS' -e '^ *FC' "$mk" 2>/dev/null) | sed 's/^/    /' | head -30
  else
    echo "  no Linux-ifort.mk; listing Compilers dir"
    ls "$W/$t/ROMS_CoSiNE15/Compilers/" 2>/dev/null | head -6 | sed 's/^/    /'
  fi
  echo "  -- build_env / notes files --"
  find "$W/$t" -maxdepth 2 -name 'build*.sh' -o -maxdepth 2 -name '*.env' -o -maxdepth 2 -name 'NOTES*' -o -maxdepth 2 -name 'build*.log' 2>/dev/null | head -5 | sed 's/^/    /'
done

echo
echo "############ C. module/toolchain used in the winning runs"
for b in 118662236_o33_ifort2021_full_64x2 118714595_o33_hpcx211_full_64x2 118716467_o33_fast2_2021_full_64x2; do
  echo "==== $b"
  find "$M/$b" -maxdepth 2 -name '*.slurm' -o -maxdepth 2 -name 'harness.log' 2>/dev/null | head -2 | while read f; do
    echo "  [[$f]]"; grep -a -e 'module' -e 'mpirun' -e 'I_MPI' -e 'HPCX' -e 'source ' "$f" 2>/dev/null | head -12 | sed 's/^/    /'
  done
done
