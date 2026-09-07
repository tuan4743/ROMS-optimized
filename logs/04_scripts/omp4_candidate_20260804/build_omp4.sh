#!/usr/bin/env bash
set -euo pipefail

parent=/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15
candidate_base=/public/home/fujiake/fjk/agent_tmp/isolated/work/o33_omp4_20260804
root=$candidate_base/ROMS_CoSiNE15
script_root=/public/home/fujiake/fjk/agent_tmp/isolated/scripts/omp4_20260804
logdir=/public/home/fujiake/fjk/agent_tmp/logs/omp4_20260804

expected_parent_bin=5f1a137e42252c9b978ad50ab344b9d6493f5e5afeeb71ed2d83f0a4228cfcb9

expected_parent_rho=1fd979c2fae7329672a8fd79cd3e1be882f53db14b6bfd5f06b3904ac7d37241
expected_parent_hmix=5332c4c6653625234f07d43f00f02f401074a33e18c0dab44fdab7499b9ad523
expected_parent_suv=c91c3b12cccfbbc1b4c08416e98279db6b2d2a36b0b6ba6843f98baa90d184fc
expected_parent_rhs=936b7b15b642e1cd2e297b879dc7d194f5a3f560ec76a5251b4fe0ab4eb237ac
expected_parent_mk=081b267b491f6ddf48cd03243a5fa466f9f277439ceb4eec5332a5355a9faced

expected_cand_rho=36141b21c0bcb88e518fa5f29004d31af476890896cdbad385d63d374103b206
expected_cand_hmix=6a78c15b569739ea928fd7bef7724bd353496d79313d0c6f030a2ffffecaec72
expected_cand_suv=4e16f09fdde222a30ce07e6c97a1332895a8f9a93764ac3f8be2d0990210753a
expected_cand_rhs=c43b5df9defe90c4f9745cadb9ef4d80d3b6f01b42bbab100f346b915c372b29
expected_cand_mk=5d93f046127c539f483f5b8ee14e7e9d1b0593b48c67d3334b96ae490448b32f

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

check_sha "$expected_parent_bin"  "$parent/oceanM.O33_final"
check_sha "$expected_parent_rho"  "$parent/ROMS/Nonlinear/rho_eos.F"
check_sha "$expected_parent_hmix" "$parent/ROMS/Nonlinear/hmixing.F"
check_sha "$expected_parent_suv"  "$parent/ROMS/Nonlinear/step3d_uv.F"
check_sha "$expected_parent_rhs"  "$parent/ROMS/Nonlinear/rhs3d.F"
check_sha "$expected_parent_mk"   "$parent/Compilers/Linux-ifort.mk"

check_sha "$expected_cand_rho"  "$script_root/rho_eos.F"
check_sha "$expected_cand_hmix" "$script_root/hmixing.F"
check_sha "$expected_cand_suv"  "$script_root/step3d_uv.F"
check_sha "$expected_cand_rhs"  "$script_root/rhs3d.F"
check_sha "$expected_cand_mk"   "$script_root/Linux-ifort.mk"

mkdir -p "$candidate_base" "$logdir"
cp -a "$parent" "$root"
[[ -d "$root/Build" ]] || fail "candidate copy incomplete"
cp -p "$root/oceanM.O33_final" "$root/oceanM.O33_parent"

cp -p "$script_root/rho_eos.F"     "$root/ROMS/Nonlinear/rho_eos.F"
cp -p "$script_root/hmixing.F"     "$root/ROMS/Nonlinear/hmixing.F"
cp -p "$script_root/step3d_uv.F"   "$root/ROMS/Nonlinear/step3d_uv.F"
cp -p "$script_root/rhs3d.F"       "$root/ROMS/Nonlinear/rhs3d.F"
cp -p "$script_root/Linux-ifort.mk" "$root/Compilers/Linux-ifort.mk"

check_sha "$expected_cand_rho"  "$root/ROMS/Nonlinear/rho_eos.F"
check_sha "$expected_cand_hmix" "$root/ROMS/Nonlinear/hmixing.F"
check_sha "$expected_cand_suv"  "$root/ROMS/Nonlinear/step3d_uv.F"
check_sha "$expected_cand_rhs"  "$root/ROMS/Nonlinear/rhs3d.F"
check_sha "$expected_cand_mk"   "$root/Compilers/Linux-ifort.mk"

for f in rho_eos hmixing step3d_uv rhs3d; do
  diff -u "$parent/ROMS/Nonlinear/$f.F" "$root/ROMS/Nonlinear/$f.F" > "$logdir/$f.patch" || true
done
diff -u "$parent/Compilers/Linux-ifort.mk" "$root/Compilers/Linux-ifort.mk" > "$logdir/Linux-ifort.patch" || true

# Exactly five files may differ: four Nonlinear sources plus the compiler fragment.
diff -qr "$parent/ROMS" "$root/ROMS" > "$logdir/source_tree.diff" || true
grep -E '^Files |^Only in' "$logdir/source_tree.diff" > "$logdir/source_tree_files.txt" || true
[[ $(wc -l < "$logdir/source_tree_files.txt") -eq 4 ]] || {
  cat "$logdir/source_tree_files.txt"
  fail "expected exactly four differing ROMS/ files"
}
diff -qr "$parent/Compilers" "$root/Compilers" > "$logdir/compilers_tree.diff" || true
[[ $(grep -cE '^Files |^Only in' "$logdir/compilers_tree.diff") -eq 1 ]] || {
  cat "$logdir/compilers_tree.diff"
  fail "expected exactly one differing Compilers/ file"
}

# The added directives must be the only source change: every candidate line that is
# not present in the parent has to be an OpenMP sentinel or its marker comment.
for f in rho_eos hmixing step3d_uv rhs3d; do
  added=$(grep -E '^\+' "$logdir/$f.patch" | grep -v '^+++' || true)
  nonomp=$(printf '%s\n' "$added" | grep -vE '^\+!\$OMP|^\+! \[O34\]' || true)
  [[ -z "$nonomp" ]] || { printf '%s\n' "$nonomp"; fail "$f.F has a non-directive addition"; }
  removed=$(grep -E '^-' "$logdir/$f.patch" | grep -v '^---' || true)
  [[ -z "$removed" ]] || { printf '%s\n' "$removed"; fail "$f.F removes lines"; }
done

module purge
module load mathlib/netcdf/4.4.1/intel
module load mpi/hpcx/2.7.4/intel-2017.5.239
module load mathlib/hdf5/1.8.20/intel
module load compiler/intel/2017.5.239

cd "$root"
rm -f "$root"/Build/{rho_eos,hmixing,step3d_uv,rhs3d}.o
make -n > "$logdir/make_dry_run.txt" 2>&1
for f in rho_eos hmixing step3d_uv rhs3d; do
  grep -q "$f" "$logdir/make_dry_run.txt" || fail "dry run does not rebuild $f"
done

set +e
{ time make -j16; } > "$logdir/build.log" 2>&1
rc=$?
set -e
[[ $rc -eq 0 ]] || { tail -120 "$logdir/build.log"; exit "$rc"; }
[[ -x oceanM ]] || fail "missing linked oceanM"
cp -p oceanM oceanM.O33_omp4
[[ "$(hash_of oceanM.O33_omp4)" != "$expected_parent_bin" ]] || fail "candidate binary unchanged"
if ldd oceanM.O33_omp4 | grep -q 'not found'; then
  ldd oceanM.O33_omp4
  fail "unresolved runtime dependency"
fi

# The six directives must survive C-preprocessing into the generated Fortran.
declare -A want=( [rho_eos]=1 [hmixing]=1 [step3d_uv]=2 [rhs3d]=2 )
for f in "${!want[@]}"; do
  n=$(grep -c '^!\$OMP PARALLEL DO' "$root/Build/$f.f90" || true)
  [[ "$n" -eq "${want[$f]}" ]] || fail "$f.f90 has $n PARALLEL DO directives, expected ${want[$f]}"
  echo "OMP_DIRECTIVES_OK|$f|$n"
done

# ...and the objects must actually link against the OpenMP runtime.
for f in rho_eos hmixing step3d_uv rhs3d; do
  nm "$root/Build/$f.o" | grep -q '__kmpc_fork_call' || fail "$f.o has no __kmpc_fork_call"
  echo "KMPC_OK|$f"
done

{
  echo "BUILD_END=$(date '+%F %T %z')"
  echo "HOST=$(hostname)"
  echo "PARENT=$parent"
  echo "ROOT=$root"
  echo 'CANDIDATE=[O34] selective OpenMP on rho_eos, hmixing, step3d_uv, rhs3d (6 directives, 4 makefile lines)'
  sha256sum "$root/oceanM.O33_parent" "$root/oceanM.O33_omp4" \
    "$root"/Build/{rho_eos,hmixing,step3d_uv,rhs3d}.o \
    "$root"/Build/{rho_eos,hmixing,step3d_uv,rhs3d}.f90 \
    "$root"/ROMS/Nonlinear/{rho_eos,hmixing,step3d_uv,rhs3d}.F \
    "$root/Compilers/Linux-ifort.mk" \
    "$root/ROMS/External/ocean_SCS_Dongsha60_bio15.in" "$root/coll_rules.conf"
  ldd "$root/oceanM.O33_omp4"
} > "$logdir/build_metadata.txt"

sha256sum "$logdir"/*.txt "$logdir"/*.patch "$logdir"/*.diff "$logdir/build.log" \
  > "$logdir/SHA256SUMS"
cat "$logdir/build_metadata.txt"
echo BUILD_OK
