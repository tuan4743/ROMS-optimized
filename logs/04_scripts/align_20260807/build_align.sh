#!/usr/bin/env bash
set -euo pipefail

# [Stage 112] -align array64byte on 5 hot objects (ifort2021) on immutable O33 sources.
# Same Linux-ifort.mk, same flags (-heap-arrays -fp-model precise -ip -O3,
# -qopenmp on the 5 hot objects). Only the compiler version changes:
# per-object -align array64byte (2017 test was flat; 2021 untested). Trajectory may differ
# (float codegen changed) — gate is wall time + official 26/26 separately.

export LC_ALL=C LANG=C

parent=/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15
candidate_base=/public/home/fujiake/fjk/agent_tmp/isolated/work/o33_align_20260807
root=$candidate_base/ROMS_CoSiNE15
logdir=/public/home/fujiake/fjk/agent_tmp/logs/align_20260807

expected_parent_bin=5f1a137e42252c9b978ad50ab344b9d6493f5e5afeeb71ed2d83f0a4228cfcb9
expected_parent_mk=081b267b491f6ddf48cd03243a5fa466f9f277439ceb4eec5332a5355a9faced
ifort21_bin=/public/software/compiler/intel/oneapi/oneapi-2021.3.0/compiler/2021.3.0/linux/bin/intel64
ifort21_lib=/public/software/compiler/intel/oneapi/oneapi-2021.3.0/compiler/2021.3.0/linux/compiler/lib/intel64_lin

fail() { echo "FATAL: $*" >&2; exit 2; }
hash_of() { sha256sum "$1" | awk '{print $1}'; }
check_sha() {
  local expected=$1 path=$2 actual
  [[ -f "$path" ]] || fail "missing $path"
  actual=$(hash_of "$path")
  [[ "$actual" == "$expected" ]] || fail "hash mismatch path=$path expected=$expected actual=$actual"
  printf 'HASH_OK|%s|%s\n' "$actual" "$path"
}

case "$candidate_base" in
  /public/home/fujiake/fjk/agent_tmp/isolated/work/*) ;;
  *) fail "unsafe candidate_base=$candidate_base" ;;
esac
case "$logdir" in
  /public/home/fujiake/fjk/agent_tmp/logs/*) ;;
  *) fail "unsafe logdir=$logdir" ;;
esac
[[ -d "$parent/Build" ]] || fail "missing immutable parent"
[[ ! -e "$candidate_base" ]] || fail "candidate already exists: $candidate_base"

mkdir -p "$candidate_base" "$logdir"
cp -a "$parent" "$root"
[[ -d "$root/Build" ]] || fail "candidate copy incomplete"
cp -p "$root/oceanM.O33_final" "$root/oceanM.O33_parent"

diff -qr "$parent/ROMS" "$root/ROMS" > "$logdir/source_tree.diff" || true
[[ ! -s "$logdir/source_tree.diff" ]] || {
  cat "$logdir/source_tree.diff"
  fail "ROMS/ must be untouched"
}

check_sha "$expected_parent_mk" "$root/Compilers/Linux-ifort.mk"
sed -i -e 's|^$(SCRATCH_DIR)/biology\.o: private FFLAGS += -qopenmp -no-heap-arrays$|$(SCRATCH_DIR)/biology.o: private FFLAGS += -qopenmp -no-heap-arrays -align array64byte|' \
       -e 's|^$(SCRATCH_DIR)/pre_step3d\.o: private FFLAGS += -qopenmp -no-heap-arrays$|$(SCRATCH_DIR)/pre_step3d.o: private FFLAGS += -qopenmp -no-heap-arrays -align array64byte|' \
       -e 's|^$(SCRATCH_DIR)/step3d_t\.o: private FFLAGS += -qopenmp -no-heap-arrays$|$(SCRATCH_DIR)/step3d_t.o: private FFLAGS += -qopenmp -no-heap-arrays -align array64byte|' \
       -e 's|^$(SCRATCH_DIR)/t3dmix\.o: private FFLAGS += -qopenmp -no-heap-arrays$|$(SCRATCH_DIR)/t3dmix.o: private FFLAGS += -qopenmp -no-heap-arrays -align array64byte|' \
       -e 's|^$(SCRATCH_DIR)/gls_corstep\.o: private FFLAGS += -qopenmp -no-heap-arrays$|$(SCRATCH_DIR)/gls_corstep.o: private FFLAGS += -qopenmp -no-heap-arrays -align array64byte|' \
       "$root/Compilers/Linux-ifort.mk"
[[ "$(sha256sum "$root/Compilers/Linux-ifort.mk" | awk '{print $1}')" != "$expected_parent_mk" ]] || fail "mk patch had no effect"
grep -cE 'array64byte' "$root/Compilers/Linux-ifort.mk" | xargs echo "ALIGN_PATCH_LINES"
echo "MK_PATCH_OK"

if [[ -e "$root/Inputfiles" || -L "$root/Inputfiles" ]]; then
  rm -f "$root/Inputfiles"
fi
ln -s /public/home/fujiake/Inputfiles "$root/Inputfiles"
[[ "$(readlink -f "$root/Inputfiles")" == /public/home/fujiake/Inputfiles ]] \
  || fail "Inputfiles symlink wrong target"
echo "SYMLINK_OK"

module purge
module load mathlib/netcdf/4.4.1/intel
module load mpi/hpcx/2.7.4/intel-2017.5.239
export PATH=$ifort21_bin:$PATH
export LD_LIBRARY_PATH=$ifort21_lib:$LD_LIBRARY_PATH

[[ "$(command -v ifort)" == "$ifort21_bin/ifort" ]] \
  || fail "ifort not resolved to 2021.3.0: $(command -v ifort)"
ifort --version 2>/dev/null | head -1 > "$logdir/ifort_version.txt"
grep -q '2021.3.0' "$logdir/ifort_version.txt" || fail "ifort version unexpected"
cat "$logdir/ifort_version.txt"

cd "$root"
# Toolchain change: full rebuild required.
rm -f "$root"/Build/*.o "$root"/Build/*.mod
set +e
{ time make -j16; } > "$logdir/build.log" 2>&1
rc=$?
set -e
[[ $rc -eq 0 ]] || { tail -120 "$logdir/build.log"; exit "$rc"; }
[[ -x oceanM ]] || fail "missing linked oceanM"
cp -p oceanM oceanM.O33_align
[[ "$(hash_of oceanM.O33_align)" != "$expected_parent_bin" ]] || fail "candidate binary unchanged"
if ldd oceanM.O33_align | grep -q 'not found'; then
  ldd oceanM.O33_align
  fail "unresolved runtime dependency"
fi
grep -aE "cd Build.*mpif90.*-ip -O3" "$logdir/build.log" | head -2 \
  > "$logdir/ifort2021_compile_lines.txt" || true
cat "$logdir/ifort2021_compile_lines.txt"
echo "ALIGN_BUILD_OK hash=$(hash_of oceanM.O33_align)"
