#!/usr/bin/env bash
set -euo pipefail

parent=/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15
candidate_base=/public/home/fujiake/fjk/agent_tmp/isolated/work/o33_gls_pow_kkl_20260803
root=$candidate_base/ROMS_CoSiNE15
script_root=/public/home/fujiake/fjk/agent_tmp/isolated/scripts/gls_pow_kkl_20260803
logdir=/public/home/fujiake/fjk/agent_tmp/logs/gls_pow_kkl_20260803
reportdir=/public/home/fujiake/fjk/agent_tmp/isolated/audits/gls_pow_kkl_20260803

expected_parent_bin=5f1a137e42252c9b978ad50ab344b9d6493f5e5afeeb71ed2d83f0a4228cfcb9
expected_orig_source=957a39b629cd8ef7c403b4bd62e26efa55cc359989c00a18f934fafd2a1ac9c3
expected_candidate=53c3fb066cebecf368591ea4566aa7ab1c999981d00a427a5545f1bdfaafb5e7

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
check_sha "$expected_parent_bin" "$parent/oceanM.O33_final"
check_sha "$expected_orig_source" "$parent/ROMS/Nonlinear/gls_corstep.F"
check_sha "$expected_candidate" "$script_root/gls_corstep.F"

mkdir -p "$candidate_base" "$logdir" "$reportdir"
cp -a "$parent" "$root"
[[ -d "$root/Build" ]] || fail "candidate copy incomplete"
if [[ -L "$root/Inputfiles" ]]; then
  [[ "$(readlink -f "$root/Inputfiles")" == /public/home/fujiake/Inputfiles ]] || fail "wrong copied Inputfiles target"
elif [[ ! -e "$root/Inputfiles" ]]; then
  ln -s /public/home/fujiake/Inputfiles "$root/Inputfiles"
else
  fail "Inputfiles is neither expected symlink nor absent"
fi
cp -p "$root/oceanM.O33_final" "$root/oceanM.O33_parent"
cp -p "$script_root/gls_corstep.F" "$root/ROMS/Nonlinear/gls_corstep.F"
check_sha "$expected_candidate" "$root/ROMS/Nonlinear/gls_corstep.F"

diff -u "$parent/ROMS/Nonlinear/gls_corstep.F" \
        "$root/ROMS/Nonlinear/gls_corstep.F" > "$logdir/gls_corstep.patch" || true
diff -qr "$parent/ROMS" "$root/ROMS" > "$logdir/source_tree.diff" || true
grep -E '^Files |^Only in' "$logdir/source_tree.diff" > "$logdir/source_tree_files.txt" || true
[[ $(wc -l < "$logdir/source_tree_files.txt") -eq 1 ]] || fail "expected exactly one differing file"

module purge
module load mathlib/netcdf/4.4.1/intel
module load mpi/hpcx/2.7.4/intel-2017.5.239
module load mathlib/hdf5/1.8.20/intel
module load compiler/intel/2017.5.239

cd "$root"
rm -f "$root/Build/gls_corstep.o"
make -n > "$logdir/make_dry_run.txt" 2>&1
grep -q 'gls_corstep' "$logdir/make_dry_run.txt" || fail "dry run does not rebuild gls_corstep"

set +e
{ time make -j16; } > "$logdir/build.log" 2>&1
rc=$?
set -e
[[ $rc -eq 0 ]] || { tail -100 "$logdir/build.log"; exit "$rc"; }
[[ -x oceanM ]] || fail "missing linked oceanM"
cp -p oceanM oceanM.O33_gls_pow_kkl
[[ "$(hash_of oceanM.O33_gls_pow_kkl)" != "$expected_parent_bin" ]] || fail "candidate binary unchanged"
if ldd oceanM.O33_gls_pow_kkl | grep -q 'not found'; then
  ldd oceanM.O33_gls_pow_kkl
  fail "unresolved runtime dependency"
fi

check_sha "$expected_candidate" "$root/ROMS/Nonlinear/gls_corstep.F"
grep -Fq 'cff_g=gls(i,j,k,nstp)' "$root/Build/gls_corstep.f90" || fail "candidate identity absent"
grep -Fq 'cff_g_inv=1.0_r8/cff_g' "$root/Build/gls_corstep.f90" || fail "candidate inverse absent"
grep -Fq 'cff_t15=tke(i,j,k,nstp)*SQRT(tke(i,j,k,nstp))' "$root/Build/gls_corstep.f90" || fail "candidate sqrt15 absent"
grep -Fq 'BCK(i,k)=cff*(1.0_r8+dt(ng)*cff_g_inv*cmu_fac2*cff_t15+' "$root/Build/gls_corstep.f90" || fail "BCK reuse absent"
[[ $(grep -c 'gls_exp1' "$root/Build/gls_corstep.f90") -ge 6 ]] || fail "fallback pow lost"

{
  echo "BUILD_END=$(date '+%F %T %z')"
  echo "HOST=$(hostname)"
  echo "PARENT=$parent"
  echo "ROOT=$root"
  echo 'CANDIDATE=GLS K-kl pow identities: x**1=x, x**(-1)=1/x, x**1.5=x*sqrt(x) inside Lmy25 branch'
  sha256sum "$root/oceanM.O33_parent" "$root/oceanM.O33_gls_pow_kkl" \
    "$root/Build/gls_corstep.o" "$root/Build/gls_corstep.f90" \
    "$root/ROMS/Nonlinear/gls_corstep.F" \
    "$root/Compilers/Linux-ifort.mk" \
    "$root/ROMS/External/ocean_SCS_Dongsha60_bio15.in" "$root/coll_rules.conf"
  ldd "$root/oceanM.O33_gls_pow_kkl"
} > "$logdir/build_metadata.txt"

sha256sum "$logdir/make_dry_run.txt" "$logdir/build.log" \
  "$logdir/gls_corstep.patch" \
  "$logdir/source_tree.diff" "$logdir/source_tree_files.txt" \
  "$logdir/build_metadata.txt" > "$logdir/SHA256SUMS"
cat "$logdir/build_metadata.txt"
echo BUILD_OK
