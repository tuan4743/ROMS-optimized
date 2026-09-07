#!/usr/bin/env bash
set -euo pipefail

# [Stage 110] Candidate R2: biology-ONLY -fp-model fast=2 -no-prec-div -fp-speculation=fast
# on biology.o ONLY (gls_corstep stays precise), ifort 2021.3.0
# champion toolchain. Single causal axis: these two compile lines only.
# NOTE: -fimf-precision=low was proven a NO-OP under -fp-model precise
# (byte-identical objects+binary, fimf build 118714423) -> axis pivoted to fast=2.
# Float semantics change -> gate = wall-time ABBA + full official 26/26.

export LC_ALL=C LANG=C

parent=/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15
candidate_base=/public/home/fujiake/fjk/agent_tmp/isolated/work/o33_biofast_2021_20260806
root=$candidate_base/ROMS_CoSiNE15
logdir=/public/home/fujiake/fjk/agent_tmp/logs/biofast_2021_20260806

expected_parent_mk=081b267b491f6ddf48cd03243a5fa466f9f277439ceb4eec5332a5355a9faced
champion_bin=7cd466279e822e4b807e9c0920000f9cb97e1f407538329f3c54b91e01dd9ff4
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

diff -qr "$parent/ROMS" "$root/ROMS" > "$logdir/source_tree.diff" || true
[[ ! -s "$logdir/source_tree.diff" ]] || {
  cat "$logdir/source_tree.diff"
  fail "ROMS/ must be untouched"
}

check_sha "$expected_parent_mk" "$root/Compilers/Linux-ifort.mk"
sed -i -e 's|^$(SCRATCH_DIR)/biology\.o: private FFLAGS += -qopenmp -no-heap-arrays$|$(SCRATCH_DIR)/biology.o: private FFLAGS += -qopenmp -no-heap-arrays -fp-model fast=2 -no-prec-div -fp-speculation=fast|' \
       "$root/Compilers/Linux-ifort.mk"
[[ "$(hash_of "$root/Compilers/Linux-ifort.mk")" != "$expected_parent_mk" ]] || fail "mk patch had no effect"
grep -nE '^\$\(SCRATCH_DIR\)/(biology|gls_corstep)\.o: private FFLAGS' "$root/Compilers/Linux-ifort.mk"
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
rm -f "$root"/Build/*.o "$root"/Build/*.mod
set +e
{ time make -j16; } > "$logdir/build.log" 2>&1
rc=$?
set -e
[[ $rc -eq 0 ]] || { tail -120 "$logdir/build.log"; exit "$rc"; }
[[ -x oceanM ]] || fail "missing linked oceanM"
cp -p oceanM oceanM.O33_biofast_2021
[[ "$(hash_of oceanM.O33_biofast_2021)" != "$champion_bin" ]] || fail "candidate binary unchanged"
if ldd oceanM.O33_biofast_2021 | grep -q 'not found'; then
  ldd oceanM.O33_biofast_2021
  fail "unresolved runtime dependency"
fi
grep -aE "cd Build.*mpif90.*(biology\.f90|gls_corstep\.f90)" "$logdir/build.log" | head -2 \
  > "$logdir/fast2_compile_lines.txt" || true
cat "$logdir/fast2_compile_lines.txt"
echo "BIOFAST_2021_BUILD_OK hash=$(hash_of oceanM.O33_biofast_2021)"
