#!/bin/bash
#SBATCH -p kshcexclu06
#SBATCH -N 1
#SBATCH -n 16
#SBATCH --exclusive
#SBATCH -J s159_setavg_build
#SBATCH -t 01:00:00
set -euo pipefail
module purge
module load compiler/intel/2021.3.0 mpi/hpcx/2.7.4/intel-2017.5.239 mathlib/netcdf/4.4.1/intel mathlib/hdf5/1.8.20/intel
ifort --version | head -1

ROOT=/public/home/fujiake/fjk/stage159_setavg_omp_20260812
mkdir -p "$ROOT"
cd "$ROOT"

tar xzf /public/home/fujiake/nan/sprint/backup_S47_FULL_SRC_20260811.tar.gz
TREE="$ROOT/ROMS_CoSiNE15_S47_FULL_SRC_20260811"
cd "$TREE"

# ---------- A' zero-delta build ----------
/opt/rh/devtoolset-7/root/usr/bin/gmake clean >/dev/null 2>&1 || true
/opt/rh/devtoolset-7/root/usr/bin/gmake -j8 > "$ROOT/build_aprime.log" 2>&1
cp -f oceanM oceanM.aprime
md5sum oceanM.aprime | tee "$ROOT/aprime.md5"

# ---------- B: set_avg OMP patch ----------
mk="$TREE/Compilers/Linux-ifort.mk"
sa="$TREE/ROMS/Nonlinear/set_avg.F"
cp -p "$sa" "$ROOT/set_avg.F.pre"
cp -p "$mk" "$ROOT/Linux-ifort.mk.pre"

/public/share/mcc2026_final/miniforge3/bin/python3 - "$sa" <<'PY'
import re, sys
path = sys.argv[1]
text = open(path).read()
if 'STAGE159 [SETAVG_OMP]' in text:
    raise SystemExit('already patched')

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
    indent + '! STAGE159 [SETAVG_OMP]: OpenMP over tracer average accumulation\n'
    + indent + '!$OMP PARALLEL DO DEFAULT(SHARED) SCHEDULE(STATIC) &\n'
    + indent + '!$OMP& PRIVATE(i,j,k,it)\n'
    + block
    + indent + '!$OMP END PARALLEL DO\n'
)
text = text[:do_start] + omp + ''.join(lines[end_idx + 1 :])
open(path, 'w').write(text)
print('SETAVG_OMP_PATCHED')
PY

if ! grep -q 'set_avg.o: private FFLAGS' "$mk"; then
  sed -i '/gls_corstep.o: private FFLAGS/a\
$(SCRATCH_DIR)/set_avg.o: private FFLAGS += -qopenmp -no-heap-arrays
' "$mk"
fi
grep -n 'set_avg.o' "$mk" | tee "$ROOT/mk_setavg_line.txt"

/opt/rh/devtoolset-7/root/usr/bin/gmake clean >/dev/null 2>&1 || true
/opt/rh/devtoolset-7/root/usr/bin/gmake -j8 > "$ROOT/build_setavgomp.log" 2>&1
cp -f oceanM oceanM.setavgomp
md5sum oceanM.setavgomp | tee "$ROOT/setavgomp.md5"

echo "APRIME_MD5=$(cat $ROOT/aprime.md5 | awk '{print $1}')"
echo "SETAVGOMP_MD5=$(cat $ROOT/setavgomp.md5 | awk '{print $1}')"
grep -c 'OMP PARALLEL' "$TREE/Build/set_avg.f90" 2>/dev/null | tee "$ROOT/setavg_omp_count.txt" || echo 0
grep -c '__kmpc_fork_call' "$TREE/Build/set_avg.o" 2>/dev/null | tee "$ROOT/setavg_omp_obj.txt" || echo 0
echo STAGE159_BUILD_DONE
