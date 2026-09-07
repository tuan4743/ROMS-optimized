#!/usr/bin/env bash
set -euo pipefail
export LC_ALL=C LANG=C
R=/public/home/fujiake/fjk/agent_tmp/isolated/work/s32_profile_diag_20260808/ROMS_CoSiNE15
L=/public/home/fujiake/fjk/agent_tmp/logs/s32_profile_diag_20260808
g=$R/ROMS/Include/globaldefs.h

python - "$g" <<'PY'
import sys
p = sys.argv[1]
text = open(p).read()
# restore mangled comment if needed
text = text.replace('Tried #define PROFILE', 'Tried #undef PROFILE')
# flip only the standalone directive line
lines = text.splitlines(True)
out = []
flipped = False
for line in lines:
    if (not flipped) and line.strip() == '#undef PROFILE':
        out.append('#define PROFILE\n')
        flipped = True
    else:
        out.append(line)
if not flipped:
    raise SystemExit('no standalone #undef PROFILE found')
open(p, 'w').write(''.join(out))
print('FLIP_OK')
PY

echo "---- after flip ----"
sed -n '50,60p' "$g"

ifort_bin=/public/software/compiler/intel/oneapi/oneapi-2021.3.0/compiler/2021.3.0/linux/bin/intel64
ifort_lib=/public/software/compiler/intel/oneapi/oneapi-2021.3.0/compiler/2021.3.0/linux/compiler/lib/intel64_lin
module purge
module load mathlib/netcdf/4.4.1/intel mpi/hpcx/2.7.4/intel-2017.5.239 mathlib/hdf5/1.8.20/intel
export PATH=$ifort_bin:$PATH
export LD_LIBRARY_PATH=$ifort_lib:$LD_LIBRARY_PATH
cd "$R"
{ time make clean; } > "$L/clean3.log" 2>&1
{ time make -j16; } > "$L/build.log" 2>&1
rc=$?
if [ $rc -ne 0 ]; then tail -60 "$L/build.log"; exit $rc; fi
cp -p oceanM oceanM.S32_profile_diag
if strings oceanM.S32_profile_diag | grep -q 'Time profiling activated'; then
  echo PROFILE_STRING_OK
else
  echo PROFILE_STRING_MISSING
fi
md5sum oceanM.S32_profile_diag
sha256sum oceanM.S32_profile_diag
