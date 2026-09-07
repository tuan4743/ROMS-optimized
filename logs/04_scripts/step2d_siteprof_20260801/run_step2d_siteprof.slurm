#!/usr/bin/env bash
#SBATCH -p kshcexclu06
#SBATCH -N 4
#SBATCH -n 64
#SBATCH --ntasks-per-node=16
#SBATCH --cpus-per-task=2
#SBATCH --exclusive
#SBATCH -J fjk_O33_s2dprof
#SBATCH -t 00:10:00

set -euo pipefail

script_root=/public/home/fujiake/fjk/agent_tmp/isolated/scripts/step2d_siteprof_20260801
variant=/public/home/fujiake/fjk/agent_tmp/isolated/work/o33_step2d_siteprof_20260801/ROMS_CoSiNE15
parent=/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15
audit_root=/public/home/fujiake/fjk/agent_tmp/isolated/audits/o33_step2d_siteprof_${SLURM_JOB_ID}
binary=$variant/oceanM.O33_step2d_siteprof
source_file=$variant/ROMS/Nonlinear/step2d_LF_AM3.h
base_input=$parent/ROMS/External/ocean_SCS_Dongsha60_bio15.in
rules=$parent/coll_rules.conf
analysis_file=$script_root/analyze_step2d_siteprof.py
script_file=$script_root/run_step2d_siteprof.slurm
python_bin=/public/share/mcc2026_final/miniforge3/bin/python
: "${EXPECTED_BINARY_SHA:?missing EXPECTED_BINARY_SHA}"
: "${EXPECTED_SOURCE_SHA:?missing EXPECTED_SOURCE_SHA}"
: "${EXPECTED_ANALYSIS_SHA:?missing EXPECTED_ANALYSIS_SHA}"
: "${EXPECTED_SCRIPT_SHA:?missing EXPECTED_SCRIPT_SHA}"

fail() { printf 'FATAL: %s\n' "$*" >&2; exit 2; }
check_sha() {
  local expected=$1 path=$2 actual
  [[ -f "$path" ]] || fail "missing $path"
  actual=$(sha256sum "$path" | awk '{print $1}')
  [[ "$actual" == "$expected" ]] || fail "hash mismatch path=$path expected=$expected actual=$actual"
  printf 'HASH_OK|%s|%s\n' "$actual" "$path"
}

case "$audit_root" in
  /public/home/fujiake/fjk/agent_tmp/isolated/audits/o33_step2d_siteprof_*) ;;
  *) fail "unsafe audit root $audit_root" ;;
esac
[[ "${SLURM_NNODES:-0}" == 4 ]] || fail "expected four nodes"
[[ "${SLURM_NTASKS:-0}" == 64 ]] || fail "expected 64 tasks"
[[ "${SLURM_CPUS_PER_TASK:-0}" == 2 ]] || fail "expected two CPUs/task"
[[ ! -e "$audit_root" ]] || fail "audit root exists"
mkdir -p "$audit_root/site" "$audit_root/work/output"
exec > >(tee "$audit_root/harness.log") 2>&1

printf 'HARNESS_START=%s\n' "$(date '+%F %T %z')"
printf 'JOB=%s NODES=%s NNODES=%s NTASKS=%s CPUS_PER_TASK=%s\n' \
  "$SLURM_JOB_ID" "$SLURM_JOB_NODELIST" "$SLURM_NNODES" \
  "$SLURM_NTASKS" "$SLURM_CPUS_PER_TASK"
available_kb=$(df -Pk /public/home/fujiake | awk 'NR==2 {print $4}')
[[ "$available_kb" -ge 10485760 ]] || fail "less than 10 GiB free"
printf 'DISK_AVAILABLE_KB=%s\n' "$available_kb"

check_sha "$EXPECTED_BINARY_SHA" "$binary"
check_sha "$EXPECTED_SOURCE_SHA" "$source_file"
check_sha "$EXPECTED_ANALYSIS_SHA" "$analysis_file"
check_sha "$EXPECTED_SCRIPT_SHA" "$script_file"
check_sha 05ceb746d36522ccdb960ab082b70401d294fd0cc8a393c25bcb9e25365e7b21 "$base_input"
check_sha 0ef5b45a357d06e27f3e5e6865010fdacf24ba0fc9ebd95aae8a5dd6dc4ce473 "$rules"
[[ -x "$python_bin" ]] || fail "missing Python"

module purge
module load compiler/intel/2017.5.239
module load mpi/hpcx/2.7.4/intel-2017.5.239
module load mathlib/netcdf/4.4.1/intel
module load mathlib/hdf5/1.8.20/intel

ln -s /public/home/fujiake/Inputfiles "$audit_root/work/Inputfiles"
ln -s "$parent/ROMS" "$audit_root/work/ROMS"
input=$audit_root/work/input.in
"$python_bin" - "$base_input" "$input" "$audit_root/work/output" <<'PY'
import re, sys
source, destination, output = sys.argv[1:]
text = open(source).read()
assert len(re.findall(r'(?m)^\s*NTIMES\s*==\s*144\s+720(?:\D|$)', text)) == 1
assert len(re.findall(r'(?m)^\s*NtileI\s*==\s*8\s+8(?:\D|$)', text)) == 1
assert len(re.findall(r'(?m)^\s*NtileJ\s*==\s*8\s+8(?:\D|$)', text)) == 1
count = text.count('output/')
assert count > 0
updated = text.replace('output/', output.rstrip('/') + '/')
open(destination, 'w').write(updated)
print('INPUT_OK replacements=%d' % count)
PY
sha256sum "$input" | tee "$audit_root/input.sha256"

mapfile -t nodes < <(scontrol show hostnames "$SLURM_JOB_NODELIST")
[[ ${#nodes[@]} -eq 4 ]] || fail "expected four hostnames"
pairs=(0,1 2,3 8,9 10,11 16,17 18,19 24,25 26,27 4,5 6,7 12,13 14,15 20,21 22,23 28,29 30,31)
rankfile=$audit_root/rankfile
: > "$rankfile"
rank=0
for node in "${nodes[@]}"; do
  for pair in "${pairs[@]}"; do
    printf 'rank %d=%s slot=%s\n' "$rank" "$node" "$pair" >> "$rankfile"
    rank=$((rank+1))
  done
done
[[ $rank -eq 64 ]] || fail "rankfile has $rank ranks"

export OMP_NUM_THREADS=2
export OMP_PROC_BIND=close
export OMP_PLACES=cores
export OMP_STACKSIZE=256M
export KMP_BLOCKTIME=0
export OMPI_MCA_coll_hcoll_enable=0
export MCC_STEP2D_SITE_OUTDIR=$audit_root/site

model_log=$audit_root/model.log
cd "$audit_root/work"
set +e
{
  time mpirun -np 64 --rankfile "$rankfile" --report-bindings \
    -x OMP_NUM_THREADS -x OMP_PROC_BIND -x OMP_PLACES -x OMP_STACKSIZE \
    -x KMP_BLOCKTIME -x MCC_STEP2D_SITE_OUTDIR \
    --mca coll_hcoll_enable 0 \
    --mca coll_tuned_use_dynamic_rules 1 \
    --mca coll_tuned_dynamic_rules_filename "$rules" \
    "$binary" "$input"
} > "$model_log" 2>&1
model_rc=$?
set -e
[[ $model_rc -eq 0 ]] || fail "model rc=$model_rc"
grep -q 'ROMS/TOMS: DONE' "$model_log" || fail "missing ROMS DONE"
grep -q 'Nonlinear model elapsed time profile, Grid: 01' "$model_log" || fail "missing Grid01 profile"
grep -q 'Nonlinear model elapsed time profile, Grid: 02' "$model_log" || fail "missing Grid02 profile"
site_count=$(find "$audit_root/site" -maxdepth 1 -type f -name 'rank.*.grid.*.tsv' | wc -l)
[[ $site_count -eq 128 ]] || fail "site file count=$site_count"
nc_count=$(find "$audit_root/work/output" -maxdepth 1 -type f -name '*.nc' | wc -l)
printf 'MODEL_RC=%s SITE_FILES=%s NC_FILES=%s\n' "$model_rc" "$site_count" "$nc_count"

"$python_bin" "$analysis_file" "$audit_root/site" "$audit_root/site_summary.txt"
grep -E '^real[[:space:]]' "$model_log" | tail -1 > "$audit_root/timing.txt"
grep -E 'Nonlinear model elapsed time profile|Message Passage: 2D halo|Model 2D kernel|ROMS/TOMS: DONE|MCC_STEP2D_SITE' "$model_log" > "$audit_root/profile_extract.txt"
sha256sum "$analysis_file" "$script_file" "$binary" "$source_file" \
  "$audit_root/rankfile" "$audit_root/site_summary.txt" "$model_log" \
  > "$audit_root/manifest.sha256"
cat "$audit_root/site_summary.txt"
printf 'AUDIT_ROOT=%s\n' "$audit_root"
printf 'HARNESS_DONE=%s\n' "$(date '+%F %T %z')"
