#!/usr/bin/env bash
set -euo pipefail

parent=/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15
screen=/public/home/fujiake/fjk/agent_tmp/isolated/audits/o33_ifort_flag_screen_20260801
candidate_base=/public/home/fujiake/fjk/agent_tmp/isolated/work/o33_avx2hot_abba_20260801
root=$candidate_base/ROMS_CoSiNE15
logdir=/public/home/fujiake/fjk/agent_tmp/logs/o33_avx2hot_abba_20260801

expected_parent_bin=5f1a137e42252c9b978ad50ab344b9d6493f5e5afeeb71ed2d83f0a4228cfcb9
expected_parent_pre=735e892c57e476a3bae392773091b2492ddf722fa6c82a2765271bc0d793d71d
expected_parent_step=d37d883a06545c7cc1738debe3d6204947c533bf5376766b144233ec26efe1da
expected_avx2_pre=4858bddeb300732cd559ceda65f4db7bc423447501c88bda644a3f2756db1cb2
expected_avx2_step=0ef76ce48131b8c6c1a17f20561b46761e162c298ff4fb500cab0204a57615bf

fail() { echo "FATAL: $*" >&2; exit 2; }
check_sha() {
  local expected=$1 path=$2 actual
  [[ -f "$path" ]] || fail "missing $path"
  actual=$(sha256sum "$path" | awk '{print $1}')
  [[ "$actual" == "$expected" ]] || fail "hash mismatch path=$path expected=$expected actual=$actual"
  printf 'HASH_OK|%s|%s\n' "$actual" "$path"
}

case "$candidate_base" in
  /public/home/fujiake/fjk/agent_tmp/isolated/work/*) ;;
  *) fail "unsafe candidate_base=$candidate_base" ;;
esac
[[ -d "$parent" ]] || fail "missing parent"
[[ ! -e "$candidate_base" ]] || fail "candidate path already exists: $candidate_base"

check_sha "$expected_parent_bin" "$parent/oceanM.O33_final"
check_sha "$expected_parent_pre" "$parent/Build/pre_step3d.o"
check_sha "$expected_parent_step" "$parent/Build/step3d_t.o"
check_sha "$expected_avx2_pre" "$screen/avx2.pre_step3d.o"
check_sha "$expected_avx2_step" "$screen/avx2.step3d_t.o"

mkdir -p "$candidate_base" "$logdir"
cp -a "$parent" "$root"
[[ -d "$root/Build" ]] || fail "candidate copy incomplete"
cp -p "$root/oceanM.O33_final" "$root/oceanM.O33_parent"
cp -p "$screen/avx2.pre_step3d.o" "$root/Build/pre_step3d.o"
cp -p "$screen/avx2.step3d_t.o" "$root/Build/step3d_t.o"

check_sha "$expected_avx2_pre" "$root/Build/pre_step3d.o"
check_sha "$expected_avx2_step" "$root/Build/step3d_t.o"

module purge
module load mathlib/netcdf/4.4.1/intel
module load mpi/hpcx/2.7.4/intel-2017.5.239
module load mathlib/hdf5/1.8.20/intel
module load compiler/intel/2017.5.239

cd "$root"
make -n > "$logdir/make_dry_run.txt" 2>&1
grep -q -- '-o oceanM' "$logdir/make_dry_run.txt" || fail "dry run does not relink oceanM"
if grep -Eq '(^|[[:space:]])[^[:space:]]*(ifort|mpif90)[[:space:]].*[.]f90([[:space:]]|$)' "$logdir/make_dry_run.txt"; then
  fail "dry run unexpectedly recompiles Fortran source"
fi

set +e
{ time make -j16; } > "$logdir/build.log" 2>&1
rc=$?
set -e
[[ $rc -eq 0 ]] || { tail -100 "$logdir/build.log"; exit "$rc"; }
[[ -x oceanM ]] || fail "missing linked oceanM"
cp -p oceanM oceanM.O33_avx2hot

if ldd oceanM.O33_avx2hot | grep -q 'not found'; then
  ldd oceanM.O33_avx2hot
  fail "unresolved runtime dependency"
fi

: > "$logdir/changed_objects.tsv"
for object in "$root"/Build/*.o; do
  name=$(basename "$object")
  [[ -f "$parent/Build/$name" ]] || continue
  parent_sha=$(sha256sum "$parent/Build/$name" | awk '{print $1}')
  candidate_sha=$(sha256sum "$object" | awk '{print $1}')
  if [[ "$parent_sha" != "$candidate_sha" ]]; then
    printf '%s\t%s\t%s\n' "$name" "$parent_sha" "$candidate_sha" >> "$logdir/changed_objects.tsv"
  fi
done
[[ $(wc -l < "$logdir/changed_objects.tsv") -eq 2 ]] || fail "unexpected changed-object count"
grep -q '^pre_step3d[.]o' "$logdir/changed_objects.tsv" || fail "pre_step3d.o not recorded"
grep -q '^step3d_t[.]o' "$logdir/changed_objects.tsv" || fail "step3d_t.o not recorded"

{
  echo "BUILD_END=$(date '+%F %T %z')"
  echo "HOST=$(hostname)"
  echo "PARENT=$parent"
  echo "ROOT=$root"
  echo 'CANDIDATE_FLAGS=-march=core-avx2 on pre_step3d.o and step3d_t.o only; baseline -fp-model precise retained'
  sha256sum oceanM.O33_parent oceanM.O33_avx2hot Build/pre_step3d.o Build/step3d_t.o \
    ROMS/Nonlinear/pre_step3d.F ROMS/Nonlinear/step3d_t.F Compilers/Linux-ifort.mk \
    ROMS/External/ocean_SCS_Dongsha60_bio15.in coll_rules.conf
  cat "$logdir/changed_objects.tsv"
  ldd oceanM.O33_avx2hot
} > "$logdir/build_metadata.txt"

sha256sum "$logdir/make_dry_run.txt" "$logdir/build.log" \
  "$logdir/changed_objects.tsv" "$logdir/build_metadata.txt" > "$logdir/SHA256SUMS"
cat "$logdir/build_metadata.txt"
echo BUILD_OK
