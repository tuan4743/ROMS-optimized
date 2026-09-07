#!/bin/bash
# READ-ONLY research: Intel MPI availability + teammate RT_impi state + wait-budget math
set -u
echo "==== intelmpi modules ===="
ls /public/software/mpi/intelmpi/
for v in 2017.4.239 2021.3.0; do
  echo "-- $v"
  ls /public/software/mpi/intelmpi/$v/intel64/bin/mpirun 2>/dev/null || ls /public/software/mpi/intelmpi/$v/*/bin/mpirun 2>/dev/null || true
  ls /public/software/mpi/intelmpi/$v/intel64/bin/mpiifort 2>/dev/null || true
done

echo "==== teammate RT_impi artifacts ===="
find /public/home/fujiake/nan -name '*impi*' 2>/dev/null | head -30
grep -nE 'RT_impi|intelmpi|mpiifort|Intel MPI' /public/home/fujiake/nan/sprint/README.md | head -20

echo "==== existing oceanM linked against which MPI ===="
S32=/public/home/fujiake/nan/sprint/ROMS_CoSiNE15_s22b/oceanM.s32_ifort2021_ipo.bak
ldd "$S32" 2>/dev/null | grep -iE 'mpi|ucx|openmpi|hpcx' | head -20

echo "==== S32 PROFILE message shares (from retained sample) ===="
P=/public/home/fujiake/fjk/mcc_runs/118769550_s32_profile_diag_sample
grep -E 'Message Passage|All percentages' "$P/profile_g01.txt" "$P/profile_g02.txt" 2>/dev/null

echo "==== our prior MPI / HCOLL / mapping closures (local notes not needed) ===="
# check if any fjk impi binary already exists
find /public/home/fujiake/fjk -name '*impi*' 2>/dev/null | head -20

echo "==== how many nodes / fabric ===="
# from last ABBA harness
grep -E 'NODES=|HCOLL|hpcx|ucx' /public/home/fujiake/fjk/mcc_runs/118775392_s32_bcasthier_abba_sample/harness.log 2>/dev/null | head -15
