#!/bin/bash
#SBATCH -p kshcexclu06
#SBATCH -N 1
#SBATCH -n 16
#SBATCH --exclusive
#SBATCH -J s159_setavg_build2
#SBATCH -t 01:00:00
set -euo pipefail
module purge
module load compiler/intel/2021.3.0 mpi/hpcx/2.7.4/intel-2017.5.239 mathlib/netcdf/4.4.1/intel mathlib/hdf5/1.8.20/intel
ifort --version | head -1

ROOT=/public/home/fujiake/fjk/stage159_setavg_omp_20260812
TREE="$ROOT/ROMS_CoSiNE15_S47_FULL_SRC_20260811"
cd "$TREE"

# ---------- restore pristine set_avg.F ----------
cp -p "$ROOT/set_avg.F.pre" "$TREE/ROMS/Nonlinear/set_avg.F"

mk="$TREE/Compilers/Linux-ifort.mk"
cp -p "$ROOT/Linux-ifort.mk.pre" "$mk"
# re-apply set_avg.o private line
if ! grep -q 'set_avg.o: private FFLAGS' "$mk"; then
  sed -i '/gls_corstep.o: private FFLAGS/a\
$(SCRATCH_DIR)/set_avg.o: private FFLAGS += -qopenmp -no-heap-arrays
' "$mk"
fi
grep -n 'set_avg.o' "$mk" | tee "$ROOT/mk_setavg_line_v2.txt"

# ---------- v2 patch: accumulate-section tracer it-loop ----------
sa="$TREE/ROMS/Nonlinear/set_avg.F"
/public/share/mcc2026_final/miniforge3/bin/python3 - "$sa" <<'PY'
import re, sys
path = sys.argv[1]
text = open(path).read()
if 'STAGE159 [SETAVG_OMP]' in text:
    raise SystemExit('already patched')

# anchor: the ACCUMULATE tracer loop only (avgt = avgt + ...), not the init assignment
pat = re.compile(
    r'(^[ \t]*)DO it=1,NT\(ng\)\s*\n'
    r'(?:.*\n){0,8}?'
    r'[ \t]*AVERAGE\(ng\)%avgt\(i,j,k,it\)=AVERAGE\(ng\)%avgt\(i,j,k,it\)\+',
    re.M,
)
m = pat.search(text)
if not m:
    raise SystemExit('accumulate avgt it-loop not found')
indent = m.group(1)
do_start = m.start()
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
    indent + '! STAGE159 [SETAVG_OMP]: OpenMP over tracer average accumulation (accumulate section)\n'
    + indent + '!$OMP PARALLEL DO DEFAULT(SHARED) SCHEDULE(STATIC) &\n'
    + indent + '!$OMP& PRIVATE(i,j,k,it)\n'
    + block
    + indent + '!$OMP END PARALLEL DO\n'
)
text = text[:do_start] + omp + ''.join(lines[end_idx + 1 :])
open(path, 'w').write(text)
print('SETAVG_OMP_V2_PATCHED')
PY

# verify only ONE patch site and it is in the accumulate section
/opt/rh/devtoolset-7/root/usr/bin/gmake clean >/dev/null 2>&1 || true
/opt/rh/devtoolset-7/root/usr/bin/gmake -j8 > "$ROOT/build_setavgomp_v2.log" 2>&1
cp -f oceanM oceanM.setavgomp_v2
md5sum oceanM.setavgomp_v2 | tee "$ROOT/setavgomp_v2.md5"

echo "--- patch site check in Build/set_avg.f90 ---"
grep -n 'SETAVG_OMP\|OMP PARALLEL\|OMP END' Build/set_avg.f90 | head -8
echo "--- section check ---"
awk 'NR>=860 && NR<=885 && (/avgt/||/OMP/||/STAGE159/)' Build/set_avg.f90 | head -10
echo "--- compile line ---"
grep -n 'mpif90 -c.*set_avg' "$ROOT/build_setavgomp_v2.log" | head -2
echo STAGE159_BUILD_V2_DONE
