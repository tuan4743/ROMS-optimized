#!/usr/bin/env bash
set -euo pipefail

parent=/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15
candidate_base=/public/home/fujiake/fjk/agent_tmp/isolated/work/o33_vdiff_invdz_20260803
root=$candidate_base/ROMS_CoSiNE15
script_root=/public/home/fujiake/fjk/agent_tmp/isolated/scripts/vdiff_invdz_20260803
logdir=/public/home/fujiake/fjk/agent_tmp/logs/vdiff_invdz_20260803
reportdir=/public/home/fujiake/fjk/agent_tmp/isolated/audits/vdiff_invdz_20260803

expected_parent_bin=5f1a137e42252c9b978ad50ab344b9d6493f5e5afeeb71ed2d83f0a4228cfcb9
expected_pre_source=de54caa236e6c54e6c733d505043e68da968c87a8b572810b3fd40fa2598721b
expected_t_source=450c98928488310a7b0312596a1411312fecf7439396667857ace71271e5b62e
expected_candidate_pre=71626b5f278410f863aad7515052df107e3d64cea6bc251bf2040c2a24a62270
expected_candidate_t=11a0c4a1fb2378a723b475d50b7a52aa89f34114a626c542a238e95622070e60

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
check_sha "$expected_pre_source" "$parent/ROMS/Nonlinear/pre_step3d.F"
check_sha "$expected_t_source" "$parent/ROMS/Nonlinear/step3d_t.F"
check_sha "$expected_candidate_pre" "$script_root/pre_step3d.F"
check_sha "$expected_candidate_t" "$script_root/step3d_t.F"

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
cp -p "$script_root/pre_step3d.F" "$root/ROMS/Nonlinear/pre_step3d.F"
cp -p "$script_root/step3d_t.F" "$root/ROMS/Nonlinear/step3d_t.F"
check_sha "$expected_candidate_pre" "$root/ROMS/Nonlinear/pre_step3d.F"
check_sha "$expected_candidate_t" "$root/ROMS/Nonlinear/step3d_t.F"

diff -u "$parent/ROMS/Nonlinear/pre_step3d.F" \
        "$root/ROMS/Nonlinear/pre_step3d.F" > "$logdir/pre_step3d.patch" || true
diff -u "$parent/ROMS/Nonlinear/step3d_t.F" \
        "$root/ROMS/Nonlinear/step3d_t.F" > "$logdir/step3d_t.patch" || true
diff -qr "$parent/ROMS" "$root/ROMS" > "$logdir/source_tree.diff" || true
grep -E '^Files |^Only in' "$logdir/source_tree.diff" > "$logdir/source_tree_files.txt" || true
[[ $(wc -l < "$logdir/source_tree_files.txt") -eq 2 ]] || fail "expected exactly two differing files"

module purge
module load mathlib/netcdf/4.4.1/intel
module load mpi/hpcx/2.7.4/intel-2017.5.239
module load mathlib/hdf5/1.8.20/intel
module load compiler/intel/2017.5.239

cd "$root"
rm -f "$root/Build/pre_step3d.o" "$root/Build/step3d_t.o"
make -n > "$logdir/make_dry_run.txt" 2>&1
grep -q 'pre_step3d' "$logdir/make_dry_run.txt" || fail "dry run does not rebuild pre_step3d"
grep -q 'step3d_t' "$logdir/make_dry_run.txt" || fail "dry run does not rebuild step3d_t"

set +e
{ time make -j16; } > "$logdir/build.log" 2>&1
rc=$?
set -e
[[ $rc -eq 0 ]] || { tail -100 "$logdir/build.log"; exit "$rc"; }
[[ -x oceanM ]] || fail "missing linked oceanM"
cp -p oceanM oceanM.O33_vdiff_invdz
[[ "$(hash_of oceanM.O33_vdiff_invdz)" != "$expected_parent_bin" ]] || fail "candidate binary unchanged"
if ldd oceanM.O33_vdiff_invdz | grep -q 'not found'; then
  ldd oceanM.O33_vdiff_invdz
  fail "unresolved runtime dependency"
fi

check_sha "$expected_candidate_pre" "$root/ROMS/Nonlinear/pre_step3d.F"
check_sha "$expected_candidate_t" "$root/ROMS/Nonlinear/step3d_t.F"
grep -Fq 'DC(i,k)=1.0_r8/(z_r(i,j,k+1)-z_r(i,j,k))' "$root/Build/pre_step3d.f90" || fail "candidate pre_step3d expression absent"
grep -Fq 'invdz(i,k)=1.0_r8/(z_r(i,j,k+1)-z_r(i,j,k))' "$root/Build/step3d_t.f90" || fail "candidate step3d_t expression absent"
grep -Fq 'FC(i,k)=cff3*DC(i,k)*Akt' "$root/Build/pre_step3d.f90" || fail "pre_step3d reuse absent"
grep -Fq 'FC(i,k)=cff*invdz(i,k)*Akt' "$root/Build/step3d_t.f90" || fail "step3d_t reuse absent"

{
  echo "BUILD_END=$(date '+%F %T %z')"
  echo "HOST=$(hostname)"
  echo "PARENT=$parent"
  echo "ROOT=$root"
  echo 'CANDIDATE=hoist 1/(z_r(k+1)-z_r(k)) out of itrc loop in pre_step3d.F and step3d_t.F'
  sha256sum "$root/oceanM.O33_parent" "$root/oceanM.O33_vdiff_invdz" \
    "$root/Build/pre_step3d.o" "$root/Build/step3d_t.o" \
    "$root/Build/pre_step3d.f90" "$root/Build/step3d_t.f90" \
    "$root/ROMS/Nonlinear/pre_step3d.F" "$root/ROMS/Nonlinear/step3d_t.F" \
    "$root/Compilers/Linux-ifort.mk" \
    "$root/ROMS/External/ocean_SCS_Dongsha60_bio15.in" "$root/coll_rules.conf"
  ldd "$root/oceanM.O33_vdiff_invdz"
} > "$logdir/build_metadata.txt"

sha256sum "$logdir/make_dry_run.txt" "$logdir/build.log" \
  "$logdir/pre_step3d.patch" "$logdir/step3d_t.patch" \
  "$logdir/source_tree.diff" "$logdir/source_tree_files.txt" \
  "$logdir/build_metadata.txt" > "$logdir/SHA256SUMS"
cat "$logdir/build_metadata.txt"
echo BUILD_OK
