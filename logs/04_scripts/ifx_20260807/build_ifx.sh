#!/usr/bin/env bash
set -euo pipefail

# [Stage 111] compiler axis 3: Intel ifx 2023.2.0 (LLVM oneAPI Fortran)
# on immutable O33 sources. New mk Linux-ifx.mk = Linux-ifort.mk minus the
# unsupported '-ip'; mpif90 hardcodes 'ifort', so a shim bin/ifort->ifx
# precedes PATH. Same per-object -qopenmp pattern; float semantics may
# differ -> gate = wall-time ABBA + full official 26/26.

export LC_ALL=C LANG=C

parent=/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15
candidate_base=/public/home/fujiake/fjk/agent_tmp/isolated/work/o33_ifx_20260807
root=$candidate_base/ROMS_CoSiNE15
logdir=/public/home/fujiake/fjk/agent_tmp/logs/ifx_20260807

expected_parent_mk=081b267b491f6ddf48cd03243a5fa466f9f277439ceb4eec5332a5355a9faced
champion_bin=7cd466279e822e4b807e9c0920000f9cb97e1f407538329f3c54b91e01dd9ff4
ifx_bin=/public/software/compiler/intel/oneapi/oneapi-2023.2.0/compiler/2023.2.0/linux/bin
ifx_lib=/public/software/compiler/intel/oneapi/oneapi-2023.2.0/compiler/2023.2.0/linux/compiler/lib/intel64_lin

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
sed 's| -ip | |g' "$root/Compilers/Linux-ifort.mk" > "$root/Compilers/Linux-ifx.mk"
[[ "$(hash_of "$root/Compilers/Linux-ifx.mk")" != "$expected_parent_mk" ]] || fail "ifx mk identical to parent (patch failed)"
grep -nE "FFLAGS.*-O3|biology\.o: private" "$root/Compilers/Linux-ifx.mk" | head -4
echo "IFX_MK_OK"

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
export PATH=$ifx_bin:$PATH
export LD_LIBRARY_PATH=/public/software/compiler/gcc-11.2.0/lib64:$ifx_lib:$LD_LIBRARY_PATH

[[ "$(command -v ifx)" == "$ifx_bin/ifx" ]] \
  || fail "ifx not resolved to 2023.2.0: $(command -v ifx)"
ifx --version 2>/dev/null | head -1 > "$logdir/ifx_version.txt"
grep -q '2023.2.0' "$logdir/ifx_version.txt" || fail "ifx version unexpected"
cat "$logdir/ifx_version.txt"

shimbin=$candidate_base/shimbin
mkdir -p "$shimbin"
ln -sf "$ifx_bin/ifx" "$shimbin/ifort"
export PATH=$shimbin:$PATH
[[ "$(command -v ifort)" == "$shimbin/ifort" ]] || fail "ifort shim not resolved"
echo "SHIM_OK ifort->$(readlink -f "$shimbin/ifort")"

cd "$root"
rm -f "$root"/Build/*.o "$root"/Build/*.mod
set +e
{ time make FORT=ifx -j16; } > "$logdir/build.log" 2>&1
rc=$?
set -e
[[ $rc -eq 0 ]] || { tail -120 "$logdir/build.log"; exit "$rc"; }
[[ -x oceanM ]] || fail "missing linked oceanM"
cp -p oceanM oceanM.O33_ifx
[[ "$(hash_of oceanM.O33_ifx)" != "$champion_bin" ]] || fail "candidate binary unchanged"
if ldd oceanM.O33_ifx | grep -q 'not found'; then
  ldd oceanM.O33_ifx
  fail "unresolved runtime dependency"
fi
grep -aE "cd Build.*mpif90.*(biology\.f90|gls_corstep\.f90)" "$logdir/build.log" | head -2 \
  > "$logdir/ifx_compile_lines.txt" || true
cat "$logdir/ifx_compile_lines.txt"
echo "IFX_BUILD_OK hash=$(hash_of oceanM.O33_ifx)"
