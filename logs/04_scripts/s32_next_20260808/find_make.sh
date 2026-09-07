#!/bin/bash
set -euo pipefail
echo "which make: $(which make 2>&1 || true)"
echo "type make: $(type make 2>&1 || true)"
ls -la /usr/bin/make /bin/make 2>&1 || true
# how teammate builds
head -40 /public/home/fujiake/nan/sprint/scripts/sub_final_3day.sh 2>/dev/null || true
# prior successful build env from log
head -30 /public/home/fujiake/fjk/agent_tmp/logs/s32_profile_diag_20260808/build_j4.log 2>/dev/null || true
head -5 /public/home/fujiake/fjk/agent_tmp/logs/s32_ifort2022_20260808/build.log 2>/dev/null || true
# find working make
for m in /usr/bin/make /bin/make /opt/*/bin/make /public/software/*/bin/make; do
  [ -x "$m" ] || continue
  echo "try $m"; "$m" --version 2>&1 | head -1 || true
done
module purge
module load compiler/intel/2017.5.239 2>&1 | head -3
which make; make --version 2>&1 | head -1 || true
# check if make needs special glibc
file /usr/bin/make 2>&1 || true
ldd /usr/bin/make 2>&1 | head -5 || true
