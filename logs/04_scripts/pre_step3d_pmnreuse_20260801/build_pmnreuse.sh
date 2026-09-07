#!/usr/bin/env bash
set -euo pipefail

parent=/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15
candidate_base=/public/home/fujiake/fjk/agent_tmp/isolated/work/o33_pmnreuse_abba_20260801
root=$candidate_base/ROMS_CoSiNE15
script_root=/public/home/fujiake/fjk/agent_tmp/isolated/scripts/pre_step3d_pmnreuse_20260801
candidate_source=$script_root/pre_step3d.F
logdir=/public/home/fujiake/fjk/agent_tmp/logs/o33_pmnreuse_abba_20260801
reportdir=/public/home/fujiake/fjk/agent_tmp/isolated/audits/o33_pmnreuse_build_report_20260801

expected_parent_bin=5f1a137e42252c9b978ad50ab344b9d6493f5e5afeeb71ed2d83f0a4228cfcb9
expected_parent_source=de54caa236e6c54e6c733d505043e68da968c87a8b572810b3fd40fa2598721b
expected_candidate_source=93472d108061604d3f5e764301190b81b909c12f41792931a9059fcfb7e15dfd

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
check_sha "$expected_parent_source" "$parent/ROMS/Nonlinear/pre_step3d.F"
check_sha "$expected_candidate_source" "$candidate_source"

mkdir -p "$candidate_base" "$logdir" "$reportdir"
cp -a "$parent" "$root"
[[ -d "$root/Build" ]] || fail "candidate copy incomplete"
cp -p "$root/oceanM.O33_final" "$root/oceanM.O33_parent"
cp -p "$candidate_source" "$root/ROMS/Nonlinear/pre_step3d.F"
check_sha "$expected_candidate_source" "$root/ROMS/Nonlinear/pre_step3d.F"

diff -u "$parent/ROMS/Nonlinear/pre_step3d.F" \
        "$root/ROMS/Nonlinear/pre_step3d.F" > "$logdir/pre_step3d.patch" || true
[[ $(grep -c '^+' "$logdir/pre_step3d.patch") -eq 8 ]] || fail "unexpected added-line count"
[[ $(grep -c '^-' "$logdir/pre_step3d.patch") -eq 4 ]] || fail "unexpected removed-line count"
diff -qr "$parent/ROMS" "$root/ROMS" > "$logdir/source_tree.diff" || true
[[ $(wc -l < "$logdir/source_tree.diff") -eq 1 ]] || fail "more than one source file differs"
grep -Fq 'ROMS/Nonlinear/pre_step3d.F' "$logdir/source_tree.diff" || fail "unexpected source diff"

module purge
module load mathlib/netcdf/4.4.1/intel
module load mpi/hpcx/2.7.4/intel-2017.5.239
module load mathlib/hdf5/1.8.20/intel
module load compiler/intel/2017.5.239

cd "$root"
# The path is a newly created, validated private clone. Remove only the stale
# copied object so make must rebuild the edited source.
rm -f "$root/Build/pre_step3d.o"
make -n > "$logdir/make_dry_run.txt" 2>&1
grep -q 'pre_step3d' "$logdir/make_dry_run.txt" || fail "dry run does not rebuild pre_step3d"

set +e
{ time make -j16; } > "$logdir/build.log" 2>&1
rc=$?
set -e
[[ $rc -eq 0 ]] || { tail -100 "$logdir/build.log"; exit "$rc"; }
[[ -x oceanM ]] || fail "missing linked oceanM"
cp -p oceanM oceanM.O33_pmnreuse
[[ "$(hash_of oceanM.O33_pmnreuse)" != "$expected_parent_bin" ]] || fail "candidate binary unchanged"
if ldd oceanM.O33_pmnreuse | grep -q 'not found'; then
  ldd oceanM.O33_pmnreuse
  fail "unresolved runtime dependency"
fi

check_sha "$expected_candidate_source" "$root/ROMS/Nonlinear/pre_step3d.F"
grep -Fq 'pmn_dt(i)*(FC(i,k)-FC(i,k-1))' "$root/Build/pre_step3d.f90" || fail "candidate expression absent from preprocessed source"

cd "$reportdir"
common_flags=(
  -c -heap-arrays -fp-model precise -ip -O3 -qopenmp -no-heap-arrays
  -qopt-report=5 -qopt-report-phase=vec,loop,openmp
  -I"$root/Build"
)
/usr/bin/time -p mpif90 "${common_flags[@]}" \
  -qopt-report-file="$reportdir/pre_step3d.optrpt" \
  "$root/Build/pre_step3d.f90" -o "$reportdir/pre_step3d.report.o" \
  > "$reportdir/compile.stdout" 2> "$reportdir/compile.stderr"

expr_line=$(grep -nF 'pmn_dt(i)*(FC(i,k)-FC(i,k-1))' "$root/Build/pre_step3d.f90" | cut -d: -f1)
loop_line=$(awk -v end="$expr_line" 'NR<=end && /DO i=Istr,Iend/ {last=NR} END {print last}' "$root/Build/pre_step3d.f90")
[[ -n "$expr_line" && -n "$loop_line" ]] || fail "cannot locate candidate loop"
grep -A30 -F "pre_step3d.f90(${loop_line}," "$reportdir/pre_step3d.optrpt" \
  > "$reportdir/target_loop_report.txt" || true
grep -qi 'LOOP WAS VECTORIZED' "$reportdir/target_loop_report.txt" || fail "candidate target loop not proven vectorized"

{
  echo "BUILD_END=$(date '+%F %T %z')"
  echo "HOST=$(hostname)"
  echo "PARENT=$parent"
  echo "ROOT=$root"
  echo "EXPR_LINE=$expr_line LOOP_LINE=$loop_line"
  echo 'CANDIDATE=one private r8 pmn_dt vector in pre_step3d vertical tracer update'
  sha256sum "$root/oceanM.O33_parent" "$root/oceanM.O33_pmnreuse" \
    "$root/Build/pre_step3d.o" "$root/Build/pre_step3d.f90" \
    "$root/ROMS/Nonlinear/pre_step3d.F" "$root/Compilers/Linux-ifort.mk" \
    "$root/ROMS/External/ocean_SCS_Dongsha60_bio15.in" "$root/coll_rules.conf" \
    "$reportdir/pre_step3d.optrpt" "$reportdir/pre_step3d.report.o"
  ldd "$root/oceanM.O33_pmnreuse"
} > "$logdir/build_metadata.txt"

sha256sum "$logdir/make_dry_run.txt" "$logdir/build.log" \
  "$logdir/pre_step3d.patch" "$logdir/source_tree.diff" \
  "$logdir/build_metadata.txt" "$reportdir/pre_step3d.optrpt" \
  "$reportdir/target_loop_report.txt" > "$logdir/SHA256SUMS"
cat "$logdir/build_metadata.txt"
echo BUILD_OK
