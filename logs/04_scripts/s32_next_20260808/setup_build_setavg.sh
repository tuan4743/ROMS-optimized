#!/usr/bin/env bash
set -euo pipefail
export LC_ALL=C LANG=C

# Rebuild set_avg OMP: wrap ONLY the tracer it-loop (largest independent 3D nest).

src=/public/home/fujiake/nan/sprint/ROMS_CoSiNE15
s32_parent_bin=/public/home/fujiake/fjk/agent_tmp/isolated/work/s32_bcasthier_20260808/ROMS_CoSiNE15/oceanM.S32_parent
candidate_base=/public/home/fujiake/fjk/agent_tmp/isolated/work/s32_setavg_20260808
root=$candidate_base/ROMS_CoSiNE15
logdir=/public/home/fujiake/fjk/agent_tmp/logs/s32_setavg_20260808
ifort_bin=/public/software/compiler/intel/oneapi/oneapi-2021.3.0/compiler/2021.3.0/linux/bin/intel64
ifort_lib=/public/software/compiler/intel/oneapi/oneapi-2021.3.0/compiler/2021.3.0/linux/compiler/lib/intel64_lin

fail() { echo "FATAL: $*" >&2; exit 2; }
rm -rf "$candidate_base"
mkdir -p "$candidate_base" "$logdir"
cp -a "$src" "$root"
rm -f "$root"/oceanM "$root"/oceanM.S32_* 2>/dev/null || true
rm -rf "$root/Build"
cp -p "$s32_parent_bin" "$root/oceanM.S32_parent"
grep -n 'biology.o: private FFLAGS' "$root/Compilers/Linux-ifort.mk" | tee "$logdir/biology_flags.txt" || true

g="$root/ROMS/Include/globaldefs.h"
if grep -q '^#define PROFILE' "$g"; then
  sed -i '0,/^#define PROFILE/{s/^#define PROFILE/#undef PROFILE/}' "$g"
fi

sa="$root/ROMS/Nonlinear/set_avg.F"
cp -p "$sa" "$logdir/set_avg.F.pre"
/public/share/mcc2026_final/miniforge3/bin/python3 - "$sa" <<'PY'
import re, sys
path = sys.argv[1]
text = open(path).read()
if 'BELOW_GATE [SETAVG_OMP]' in text:
    raise SystemExit('already patched')

# Anchor: first DO it=1,NT(ng) that assigns AVERAGE(ng)%avgt
pat = re.compile(
    r'(^[ \t]*)DO it=1,NT\(ng\)\s*\n'
    r'(?:.*\n){0,8}?'
    r'[ \t]*DO k=1,N\(ng\)\s*\n'
    r'(?:.*\n){0,6}?'
    r'[ \t]*AVERAGE\(ng\)%avgt',
    re.M,
)
m = pat.search(text)
if not m:
    raise SystemExit('avgt it-loop not found')
indent = m.group(1)
do_start = m.start()
# walk from DO it line
rest = text[do_start:]
lines = rest.splitlines(True)
depth = 0
end_idx = None
for i, ln in enumerate(lines):
    if re.match(r'[ \t]*DO\b', ln):
        depth += 1
    elif re.match(r'[ \t]*END DO\b', ln) or re.match(r'[ \t]*ENDDO\b', ln):
        depth -= 1
        if depth == 0:
            end_idx = i
            break
if end_idx is None:
    raise SystemExit('no matching END DO for it-loop')
block = ''.join(lines[: end_idx + 1])
omp = (
    indent + '! BELOW_GATE [SETAVG_OMP]: OpenMP over tracer average accumulation\n'
    + indent + '!$OMP PARALLEL DO DEFAULT(SHARED) SCHEDULE(STATIC) &\n'
    + indent + '!$OMP& PRIVATE(i,j,k,it)\n'
    + block
    + indent + '!$OMP END PARALLEL DO\n'
)
text = text[:do_start] + omp + ''.join(lines[end_idx + 1 :])
open(path, 'w').write(text)
print('SETAVG_OMP_PATCHED')
print('markers', text.count('BELOW_GATE [SETAVG_OMP]'))
PY
grep -n 'BELOW_GATE \[SETAVG_OMP\]\|!\$OMP' "$sa" | head -20 | tee "$logdir/setavg_omp_patch.txt"

mk="$root/Compilers/Linux-ifort.mk"
cp -p "$mk" "$logdir/Linux-ifort.mk.pre"
if ! grep -q 'set_avg.o: private FFLAGS' "$mk"; then
  if grep -q 'gls_corstep.o: private FFLAGS' "$mk"; then
    sed -i '/gls_corstep.o: private FFLAGS/a\
$(SCRATCH_DIR)/set_avg.o: private FFLAGS += -qopenmp -no-heap-arrays
' "$mk"
  else
    sed -i '/t3dmix.o: private FFLAGS/a\
$(SCRATCH_DIR)/set_avg.o: private FFLAGS += -qopenmp -no-heap-arrays
' "$mk"
  fi
fi
grep -n 'set_avg.o\|qopenmp' "$mk" | head -20 | tee "$logdir/makefile_omp.txt"

if [[ ! -f "$root/coll_rules.conf" ]]; then
  cp -p /public/home/fujiake/fjk/agent_tmp/isolated/work/s32_bcasthier_20260808/ROMS_CoSiNE15/coll_rules.conf "$root/coll_rules.conf"
fi

module purge
module load mathlib/netcdf/4.4.1/intel mpi/hpcx/2.7.4/intel-2017.5.239 mathlib/hdf5/1.8.20/intel
export PATH=$ifort_bin:$PATH
export LD_LIBRARY_PATH=$ifort_lib:${LD_LIBRARY_PATH:-}
ifort --version | head -1 | tee "$logdir/ifort_version.txt"
cd "$root"
[[ -L Inputfiles ]] || ln -sfn /public/home/fujiake/Inputfiles Inputfiles
set +e
{ time make clean; } > "$logdir/clean.log" 2>&1
{ time make -j16; } > "$logdir/build.log" 2>&1
rc=$?
set -e
if [[ $rc -ne 0 ]]; then tail -120 "$logdir/build.log"; fail "build rc=$rc"; fi
nm Build/set_avg.o 2>/dev/null | grep -c '__kmpc_fork_call' | tee "$logdir/omp_fork_count.txt" || echo 0 > "$logdir/omp_fork_count.txt"
grep -n 'OMP PARALLEL' Build/set_avg.f90 2>/dev/null | head -10 | tee -a "$logdir/setavg_omp_patch.txt" || true
cp -p oceanM oceanM.S32_setavg
sha256sum oceanM.S32_parent oceanM.S32_setavg | tee "$logdir/binaries.sha256"
md5sum oceanM.S32_parent oceanM.S32_setavg | tee "$logdir/binaries.md5"
echo "SETAVG_BUILD_OK"
