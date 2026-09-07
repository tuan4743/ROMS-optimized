#!/usr/bin/env bash
#SBATCH -p kshcexclu06
#SBATCH -N 1
#SBATCH -n 1
#SBATCH --cpus-per-task=16
#SBATCH -J fjk_O33_S2DHEAP_BUILD
#SBATCH -t 00:15:00
#SBATCH -o /public/home/fujiake/fjk/agent_tmp/logs/o33_step2d_noheap_20260802/build-%j.out
#SBATCH -e /public/home/fujiake/fjk/agent_tmp/logs/o33_step2d_noheap_20260802/build-%j.err

set -euo pipefail

parent=/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15
root=/public/home/fujiake/fjk/agent_tmp/isolated/work/o33_step2d_noheap_20260802/ROMS_CoSiNE15
script_root=/public/home/fujiake/fjk/agent_tmp/isolated/scripts/o33_step2d_noheap_20260802
patch_file=$script_root/o33_step2d_noheap.patch
log_root=/public/home/fujiake/fjk/agent_tmp/logs/o33_step2d_noheap_20260802

expected_parent_binary=5f1a137e42252c9b978ad50ab344b9d6493f5e5afeeb71ed2d83f0a4228cfcb9
expected_parent_config=081b267b491f6ddf48cd03243a5fa466f9f277439ceb4eec5332a5355a9faced
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
check_sha "$expected_parent_config" "$parent/Compilers/Linux-ifort.mk"

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
candidate_config=$(sha256sum "$root/Compilers/Linux-ifort.mk" | awk '{print $1}')
[[ $(grep -c '^\$(SCRATCH_DIR)/step2d.o: private FFLAGS += -no-heap-arrays$' "$root/Compilers/Linux-ifort.mk") -eq 1 ]] || fail "unexpected step2d override count"
diff -u "$parent/Compilers/Linux-ifort.mk" "$root/Compilers/Linux-ifort.mk" > "$root/step2d_noheap_config.diff" || true
[[ -s "$root/step2d_noheap_config.diff" ]] || fail "empty compiler-config diff"

module purge
module load mathlib/netcdf/4.4.1/intel mpi/hpcx/2.7.4/intel-2017.5.239 mathlib/hdf5/1.8.20/intel compiler/intel/2017.5.239
cd "$root"
rm -f Build/step2d.o
make -n > "$log_root/make_dry_run_${SLURM_JOB_ID}.txt" 2>&1
grep -q 'step2d' "$log_root/make_dry_run_${SLURM_JOB_ID}.txt" || fail "dry run does not rebuild step2d"
grep -q -- '-o oceanM' "$log_root/make_dry_run_${SLURM_JOB_ID}.txt" || fail "dry run does not relink oceanM"
{ time make -j16; }
[[ -x oceanM ]] || fail "missing oceanM"
cp -p oceanM oceanM.O33_step2d_noheap
if ldd oceanM.O33_step2d_noheap | grep -q 'not found'; then
  ldd oceanM.O33_step2d_noheap
  fail "unresolved runtime dependency"
fi

{
  echo "BUILD_OK=$(date '+%F %T %z')"
  echo "PARENT=$parent"
  echo "ROOT=$root"
  echo "PARENT_CONFIG_SHA=$expected_parent_config"
  echo "CANDIDATE_CONFIG_SHA=$candidate_config"
  sha256sum "$root/oceanM.O33_step2d_noheap" "$root/Compilers/Linux-ifort.mk" "$root/step2d_noheap_config.diff" "$root/Build/step2d.o" "$root/coll_rules.conf" "$root/ROMS/External/ocean_SCS_Dongsha60_bio15.in"
} | tee "$root/build_metadata.txt"
