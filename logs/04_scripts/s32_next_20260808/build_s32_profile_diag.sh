#!/usr/bin/env bash
set -euo pipefail
export LC_ALL=C LANG=C

# Diagnostic only: S32 sources with PROFILE re-enabled, same ifort 2021.3.0.
# Not a performance candidate. Purpose: hotspot map on the live parent.

src=/public/home/fujiake/fjk/agent_tmp/isolated/work/s32_ifort2022_20260808/ROMS_CoSiNE15
candidate_base=/public/home/fujiake/fjk/agent_tmp/isolated/work/s32_profile_diag_20260808
root=$candidate_base/ROMS_CoSiNE15
logdir=/public/home/fujiake/fjk/agent_tmp/logs/s32_profile_diag_20260808
ifort_bin=/public/software/compiler/intel/oneapi/oneapi-2021.3.0/compiler/2021.3.0/linux/bin/intel64
ifort_lib=/public/software/compiler/intel/oneapi/oneapi-2021.3.0/compiler/2021.3.0/linux/compiler/lib/intel64_lin

fail() { echo "FATAL: $*" >&2; exit 2; }
[[ ! -e "$candidate_base" ]] || fail "exists"
mkdir -p "$candidate_base" "$logdir"
cp -a "$src" "$root"
rm -f "$root"/oceanM "$root"/oceanM.S32_* 2>/dev/null || true
rm -rf "$root/Build"

# Flip PROFILE on
g="$root/ROMS/Include/globaldefs.h"
grep -n 'PROFILE' "$g" | head -10
# Replace the active #undef PROFILE with #define PROFILE (keep history comments)
python - "$g" <<'PY'
import sys
p=sys.argv[1]
t=open(p).read()
old='#undef PROFILE'
if old not in t:
    raise SystemExit('no #undef PROFILE')
# only first active occurrence after the O43 comment block
t2=t.replace(old, '#define PROFILE', 1)
open(p,'w').write(t2)
print('PROFILE_FLIPPED')
PY
grep -n 'PROFILE' "$g" | head -10

module purge
module load mathlib/netcdf/4.4.1/intel
module load mpi/hpcx/2.7.4/intel-2017.5.239
module load mathlib/hdf5/1.8.20/intel
export PATH=$ifort_bin:$PATH
export LD_LIBRARY_PATH=$ifort_lib:$LD_LIBRARY_PATH
ifort --version | head -1 | tee "$logdir/ifort_version.txt"

cd "$root"
[[ -L Inputfiles ]] || ln -sfn /public/home/fujiake/Inputfiles Inputfiles
set +e
{ time make clean; } > "$logdir/clean.log" 2>&1
{ time make -j16; } > "$logdir/build.log" 2>&1
rc=$?
set -e
if [[ $rc -ne 0 ]]; then tail -80 "$logdir/build.log"; fail "build rc=$rc"; fi
cp -p oceanM oceanM.S32_profile_diag
echo "PROFILE_DIAG_BUILD_OK md5=$(md5sum oceanM.S32_profile_diag | awk '{print $1}')"
sha256sum oceanM.S32_profile_diag | awk '{print substr($1,1,20)}'
