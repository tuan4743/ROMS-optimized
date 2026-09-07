#!/usr/bin/env bash
#SBATCH -p kshcexclu06
#SBATCH -N 1
#SBATCH -n 1
#SBATCH --cpus-per-task=16
#SBATCH -J fjk_O33_F2C_BUILD
#SBATCH -t 00:15:00
#SBATCH -o /public/home/fujiake/fjk/agent_tmp/logs/o33_f2c_vtype_20260802/build-%j.out
#SBATCH -e /public/home/fujiake/fjk/agent_tmp/logs/o33_f2c_vtype_20260802/build-%j.err

set -euo pipefail

parent=/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15
root=/public/home/fujiake/fjk/agent_tmp/isolated/work/o33_f2c_vtype_r1_20260802/ROMS_CoSiNE15
script_root=/public/home/fujiake/fjk/agent_tmp/isolated/scripts/o33_f2c_vtype_20260802
patch_file=$script_root/o33_f2c_vtype.patch
log_root=/public/home/fujiake/fjk/agent_tmp/logs/o33_f2c_vtype_20260802

expected_parent_binary=5f1a137e42252c9b978ad50ab344b9d6493f5e5afeeb71ed2d83f0a4228cfcb9
expected_parent_source=9d8434c7c7291309d4dd281b4c8531dff7ee988bfc038590301484516b53795c
: "${EXPECTED_BUILD_SCRIPT_SHA:?missing EXPECTED_BUILD_SCRIPT_SHA}"
: "${EXPECTED_PATCH_SHA:?missing EXPECTED_PATCH_SHA}"

fail() { echo "FATAL: $*" >&2; exit 2; }
check_sha() {
  local expected=$1 path=$2 actual
  [[ -f "$path" ]] || fail "missing $path"
  actual=$(sha256sum "$path" | awk '{print $1}')
  [[ "$actual" == "$expected" ]] || fail "hash mismatch path=$path expected=$expected actual=$actual"
  printf 'HASH_OK|%s|%s\n' "$actual" "$path"
}

case "$root" in /public/home/fujiake/fjk/agent_tmp/isolated/work/*) ;; *) fail "unsafe root=$root";; esac
[[ -d "$parent" ]] || fail "missing parent=$parent"
[[ ! -e "$root" ]] || fail "candidate root already exists=$root"
mkdir -p "$log_root" "$(dirname "$root")"
exec > >(tee -a "$log_root/build_${SLURM_JOB_ID}.log") 2>&1

echo "BUILD_START=$(date '+%F %T %z')"
echo "JOB=$SLURM_JOB_ID NODELIST=$SLURM_JOB_NODELIST CPUS=${SLURM_CPUS_PER_TASK:-unset}"
check_sha "$EXPECTED_BUILD_SCRIPT_SHA" "$script_root/build_f2c_vtype.slurm"
check_sha "$EXPECTED_PATCH_SHA" "$patch_file"
check_sha "$expected_parent_binary" "$parent/oceanM"
check_sha "$expected_parent_source" "$parent/ROMS/Nonlinear/nesting.F"

cp -a "$parent" "$root"
if [[ -L "$root/Inputfiles" ]]; then
  [[ "$(readlink -f "$root/Inputfiles")" == /public/home/fujiake/Inputfiles ]] || fail "wrong copied Inputfiles target"
elif [[ ! -e "$root/Inputfiles" ]]; then
  ln -s /public/home/fujiake/Inputfiles "$root/Inputfiles"
else
  fail "Inputfiles is neither expected symlink nor absent"
fi

command -v patch >/dev/null || fail "patch is required for patch application"
patch --dry-run --batch -p1 -d "$root" -i "$patch_file"
patch --batch --forward -p1 -d "$root" -i "$patch_file"
candidate_source=$(sha256sum "$root/ROMS/Nonlinear/nesting.F" | awk '{print $1}')
[[ $(grep -c 'IF (vtype.eq.r2dvar) THEN' "$root/ROMS/Nonlinear/nesting.F") -eq 3 ]] || fail "unexpected r2d guard count"
[[ $(grep -c 'IF (vtype.eq.r3dvar) THEN' "$root/ROMS/Nonlinear/nesting.F") -eq 3 ]] || fail "unexpected r3d guard count"
diff -u "$parent/ROMS/Nonlinear/nesting.F" "$root/ROMS/Nonlinear/nesting.F" > "$root/f2c_vtype_source.diff" || true
[[ -s "$root/f2c_vtype_source.diff" ]] || fail "empty source diff"

module purge
module load mathlib/netcdf/4.4.1/intel mpi/hpcx/2.7.4/intel-2017.5.239 mathlib/hdf5/1.8.20/intel compiler/intel/2017.5.239
cd "$root"
make -n > "$log_root/make_dry_run_${SLURM_JOB_ID}.txt" 2>&1
grep -q 'nesting' "$log_root/make_dry_run_${SLURM_JOB_ID}.txt" || fail "dry run does not rebuild nesting"
grep -q -- '-o oceanM' "$log_root/make_dry_run_${SLURM_JOB_ID}.txt" || fail "dry run does not relink oceanM"
{ time make -j16; }
[[ -x oceanM ]] || fail "missing oceanM"
cp -p oceanM oceanM.O33_f2c_vtype
if ldd oceanM.O33_f2c_vtype | grep -q 'not found'; then
  ldd oceanM.O33_f2c_vtype
  fail "unresolved runtime dependency"
fi

{
  echo "BUILD_OK=$(date '+%F %T %z')"
  echo "PARENT=$parent"
  echo "ROOT=$root"
  echo "PARENT_SOURCE_SHA=$expected_parent_source"
  echo "CANDIDATE_SOURCE_SHA=$candidate_source"
  sha256sum "$root/oceanM.O33_f2c_vtype" "$root/ROMS/Nonlinear/nesting.F" "$root/f2c_vtype_source.diff" "$root/coll_rules.conf" "$root/ROMS/External/ocean_SCS_Dongsha60_bio15.in" "$root/Compilers/Linux-ifort.mk"
} | tee "$root/build_metadata.txt"
