#!/usr/bin/env bash
set -euo pipefail
export LC_ALL=C LANG=C

# Rebuild NOFILL after removing fast=2 guard. Tree may contain teammate biology fast=2;
# single-variable change remains only NOFILL in mod_netcdf.F.

src=/public/home/fujiake/nan/sprint/ROMS_CoSiNE15
s32_parent_bin=/public/home/fujiake/fjk/agent_tmp/isolated/work/s32_bcasthier_20260808/ROMS_CoSiNE15/oceanM.S32_parent
candidate_base=/public/home/fujiake/fjk/agent_tmp/isolated/work/s32_nofill_20260808
root=$candidate_base/ROMS_CoSiNE15
logdir=/public/home/fujiake/fjk/agent_tmp/logs/s32_nofill_20260808
ifort_bin=/public/software/compiler/intel/oneapi/oneapi-2021.3.0/compiler/2021.3.0/linux/bin/intel64
ifort_lib=/public/software/compiler/intel/oneapi/oneapi-2021.3.0/compiler/2021.3.0/linux/compiler/lib/intel64_lin

fail() { echo "FATAL: $*" >&2; exit 2; }
rm -rf "$candidate_base"
mkdir -p "$candidate_base" "$logdir"
cp -a "$src" "$root"
rm -f "$root"/oceanM "$root"/oceanM.S32_* 2>/dev/null || true
rm -rf "$root/Build"
cp -p "$s32_parent_bin" "$root/oceanM.S32_parent"
echo "PARENT_SHA=$(sha256sum "$root/oceanM.S32_parent" | awk '{print $1}')" | tee "$logdir/parent.txt"
# Note makefile biology flags for attribution
grep -n 'biology.o: private FFLAGS' "$root/Compilers/Linux-ifort.mk" | tee "$logdir/biology_flags.txt" || true

g="$root/ROMS/Include/globaldefs.h"
if grep -q '^#define PROFILE' "$g"; then
  sed -i '0,/^#define PROFILE/{s/^#define PROFILE/#undef PROFILE/}' "$g"
fi
grep -n 'PROFILE' "$g" | head -8 | tee "$logdir/profile_state.txt"

mod="$root/ROMS/Modules/mod_netcdf.F"
cp -p "$mod" "$logdir/mod_netcdf.F.pre"
/public/share/mcc2026_final/miniforge3/bin/python3 - "$mod" <<'PY'
import sys
path=sys.argv[1]
text=open(path).read()
needle = """      IF (OutThread) THEN
        status=nf90_create(TRIM(ncname), my_cmode, ncid)
        IF (status.ne.nf90_noerr) THEN
          WRITE (stdout,10) TRIM(ncname), TRIM(SourceFile)
          exit_flag=3
          ioerror=status
        END IF
      END IF
"""
repl = """      IF (OutThread) THEN
        status=nf90_create(TRIM(ncname), my_cmode, ncid)
        IF (status.ne.nf90_noerr) THEN
          WRITE (stdout,10) TRIM(ncname), TRIM(SourceFile)
          exit_flag=3
          ioerror=status
        ELSE
! BELOW_GATE [NOFILL]: disable NetCDF classic prefill (full overwrite on write)
          status=nf90_set_fill(ncid, NF90_NOFILL, old_fillmode)
          IF (status.ne.nf90_noerr) THEN
            WRITE (stdout,10) TRIM(ncname), TRIM(SourceFile)
            exit_flag=3
            ioerror=status
          END IF
        END IF
      END IF
"""
if needle not in text: raise SystemExit('needle missing')
if 'NF90_NOFILL' in text: raise SystemExit('already patched')
text = text.replace(needle, repl, 1)
idx = text.find('SUBROUTINE netcdf_create')
pre, post = text[:idx], text[idx:]
old = '      integer :: my_cmode, status\n'
new = '      integer :: my_cmode, status, old_fillmode\n'
if old not in post: raise SystemExit('decl missing')
post = post.replace(old, new, 1)
open(path,'w').write(pre+post)
print('NOFILL_PATCHED')
PY
grep -nE 'nf90_set_fill|NF90_NOFILL|old_fillmode' "$mod" | tee "$logdir/nofill_patch.txt"

# Ensure coll_rules present
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
cp -p oceanM oceanM.S32_nofill
sha256sum oceanM.S32_parent oceanM.S32_nofill | tee "$logdir/binaries.sha256"
md5sum oceanM.S32_parent oceanM.S32_nofill | tee "$logdir/binaries.md5"
echo "NOFILL_BUILD_OK"
