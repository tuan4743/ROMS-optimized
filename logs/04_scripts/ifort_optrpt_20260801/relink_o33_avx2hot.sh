#!/usr/bin/env bash
set -euo pipefail

parent=/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15
root=/public/home/fujiake/fjk/agent_tmp/isolated/work/o33_avx2hot_abba_20260801/ROMS_CoSiNE15
logdir=/public/home/fujiake/fjk/agent_tmp/logs/o33_avx2hot_abba_20260801

expected_parent_bin=5f1a137e42252c9b978ad50ab344b9d6493f5e5afeeb71ed2d83f0a4228cfcb9
expected_parent_archive=abb3964ecb06898752ad89b17a66da1cf1887d9356820b3970f3ffff44b2314d
expected_avx2_pre=4858bddeb300732cd559ceda65f4db7bc423447501c88bda644a3f2756db1cb2
expected_avx2_step=0ef76ce48131b8c6c1a17f20561b46761e162c298ff4fb500cab0204a57615bf

fail() { echo "FATAL: $*" >&2; exit 2; }
hash_of() { sha256sum "$1" | awk '{print $1}'; }
check_sha() {
  local expected=$1 path=$2 actual
  [[ -f "$path" ]] || fail "missing $path"
  actual=$(hash_of "$path")
  [[ "$actual" == "$expected" ]] || fail "hash mismatch path=$path expected=$expected actual=$actual"
}

case "$root" in
  /public/home/fujiake/fjk/agent_tmp/isolated/work/o33_avx2hot_abba_20260801/ROMS_CoSiNE15) ;;
  *) fail "unsafe root=$root" ;;
esac
[[ -d "$root/Build" && -d "$parent/Build" ]] || fail "missing tree"
mkdir -p "$logdir"

check_sha "$expected_parent_bin" "$root/oceanM"
check_sha "$expected_parent_bin" "$root/oceanM.O33_parent"
check_sha "$expected_parent_archive" "$root/Build/libNLM.a"
check_sha "$expected_avx2_pre" "$root/Build/pre_step3d.o"
check_sha "$expected_avx2_step" "$root/Build/step3d_t.o"

cd "$root"
ar t Build/libNLM.a > "$logdir/libNLM.members.before.txt"
cp -p Build/libNLM.a Build/libNLM.O33_parent.a

# Replace exactly two existing archive members. No Fortran compilation occurs.
ar r Build/libNLM.a Build/pre_step3d.o Build/step3d_t.o > "$logdir/ar_replace.log" 2>&1
ranlib Build/libNLM.a
ar t Build/libNLM.a > "$logdir/libNLM.members.after.txt"
cmp "$logdir/libNLM.members.before.txt" "$logdir/libNLM.members.after.txt" || fail "archive member list changed"
[[ "$(ar p Build/libNLM.a pre_step3d.o | sha256sum | awk '{print $1}')" == "$expected_avx2_pre" ]] || fail "archive pre member mismatch"
[[ "$(ar p Build/libNLM.a step3d_t.o | sha256sum | awk '{print $1}')" == "$expected_avx2_step" ]] || fail "archive step member mismatch"

module purge
module load mathlib/netcdf/4.4.1/intel
module load mpi/hpcx/2.7.4/intel-2017.5.239
module load mathlib/hdf5/1.8.20/intel
module load compiler/intel/2017.5.239

set +e
{
  time mpif90 -heap-arrays -fp-model precise -ip -O3 -qopenmp \
    Build/roms_import.o Build/propagator.o Build/master.o Build/roms_export.o \
    Build/ocean_coupler.o Build/esmf_roms.o Build/ocean_control.o \
    -o oceanM Build/libUTIL.a Build/libNLM.a Build/libNLM_bio.a \
    Build/libNLM_sed.a Build/libANA.a Build/libUTIL.a Build/libMODS.a \
    -L/public/software/mathlib/netcdf/4.4.1/intel/lib -lnetcdf -lnetcdff
} > "$logdir/relink.log" 2>&1
rc=$?
set -e
[[ $rc -eq 0 ]] || { tail -100 "$logdir/relink.log"; exit "$rc"; }
[[ -x oceanM ]] || fail "link did not create oceanM"
cp -p oceanM oceanM.O33_avx2hot

if ldd oceanM.O33_avx2hot | grep -q 'not found'; then
  ldd oceanM.O33_avx2hot
  fail "unresolved runtime dependency"
fi

printf '%s\t%s\t%s\n%s\t%s\t%s\n' \
  pre_step3d.o 735e892c57e476a3bae392773091b2492ddf722fa6c82a2765271bc0d793d71d "$expected_avx2_pre" \
  step3d_t.o d37d883a06545c7cc1738debe3d6204947c533bf5376766b144233ec26efe1da "$expected_avx2_step" \
  > "$logdir/changed_objects.tsv"

{
  echo "RELINK_END=$(date '+%F %T %z')"
  echo "HOST=$(hostname)"
  echo "PARENT=$parent"
  echo "ROOT=$root"
  echo 'CANDIDATE_FLAGS=-march=core-avx2 on pre_step3d.o and step3d_t.o only; baseline -fp-model precise retained'
  sha256sum oceanM.O33_parent oceanM.O33_avx2hot Build/libNLM.O33_parent.a Build/libNLM.a \
    Build/pre_step3d.o Build/step3d_t.o ROMS/Nonlinear/pre_step3d.F \
    ROMS/Nonlinear/step3d_t.F Compilers/Linux-ifort.mk \
    ROMS/External/ocean_SCS_Dongsha60_bio15.in coll_rules.conf
  cat "$logdir/changed_objects.tsv"
  ldd oceanM.O33_avx2hot
} > "$logdir/build_metadata.txt"

sha256sum "$logdir/make_dry_run.txt" "$logdir/libNLM.members.before.txt" \
  "$logdir/libNLM.members.after.txt" "$logdir/ar_replace.log" \
  "$logdir/relink.log" "$logdir/changed_objects.tsv" \
  "$logdir/build_metadata.txt" > "$logdir/SHA256SUMS"
cat "$logdir/build_metadata.txt"
echo BUILD_OK
