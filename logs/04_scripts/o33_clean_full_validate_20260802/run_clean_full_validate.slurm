#!/usr/bin/env bash
#SBATCH -p kshcexclu06
#SBATCH -N 4
#SBATCH -n 64
#SBATCH --ntasks-per-node=16
#SBATCH --cpus-per-task=2
#SBATCH --exclusive
#SBATCH -J fjk_O33_CLEAN_FULL
#SBATCH -t 01:30:00
#SBATCH -o /public/home/fujiake/fjk/agent_tmp/logs/o33_clean_full_validate_20260802/full-%j.out
#SBATCH -e /public/home/fujiake/fjk/agent_tmp/logs/o33_clean_full_validate_20260802/full-%j.err

set -euo pipefail

clean=/public/home/fujiake/fjk/delivery/o33_20260802/clean_builds/118412739/ROMS_CoSiNE15
full_input=/public/home/fujiake/fjk/ROMS_CoSiNE15_codex_20260727/experiments/inputs/ocean_full_64_8x8.in
rules=$clean/coll_rules.conf
run_root=/public/home/fujiake/fjk/mcc_runs/${SLURM_JOB_ID}_o33_clean_full_validate_64x2
script=/public/home/fujiake/fjk/agent_tmp/isolated/scripts/o33_clean_full_validate_20260802/run_clean_full_validate.slurm
expected_bin=e64347f3bd44eb69c5c224684306ebeb8898e909ce81a0260c0878650bbd53bb
expected_config=081b267b491f6ddf48cd03243a5fa466f9f277439ceb4eec5332a5355a9faced
expected_input=a3e8a5dbee769ced1e097cd22d9e0424eb326b0a7b1006451fe6609dd14779a8
expected_rules=0ef5b45a357d06e27f3e5e6865010fdacf24ba0fc9ebd95aae8a5dd6dc4ce473
: "${EXPECTED_SCRIPT_SHA:?missing EXPECTED_SCRIPT_SHA}"

fail() { echo "FATAL: $*" >&2; exit 2; }
check_sha() {
  local expected=$1 path=$2 actual
  [[ -f "$path" ]] || fail "missing $path"
  actual=$(sha256sum "$path" | awk '{print $1}')
  [[ "$actual" == "$expected" ]] || fail "hash mismatch path=$path expected=$expected actual=$actual"
  echo "HASH_OK|$actual|$path"
}

case "$run_root" in /public/home/fujiake/fjk/mcc_runs/*) ;; *) fail "unsafe run root=$run_root";; esac
[[ "${SLURM_NNODES:-0}" == 4 && "${SLURM_NTASKS:-0}" == 64 && "${SLURM_CPUS_PER_TASK:-0}" == 2 ]] || fail "unexpected allocation"
[[ ! -e "$run_root" ]] || fail "existing run root=$run_root"
free_kb=$(df -Pk /public/home/fujiake | awk 'NR==2 {print $4}')
[[ "$free_kb" -ge 10485760 ]] || fail "less than 10 GiB free"
mkdir -p "$run_root"/{output,logs,validation,metadata}
ln -s /public/home/fujiake/Inputfiles "$run_root/Inputfiles"
ln -s "$clean/ROMS" "$run_root/ROMS"
ln -s "$clean/oceanM" "$run_root/oceanM"
cp "$full_input" "$run_root/metadata/ocean_SCS_Dongsha60_bio15.in"

check_sha "$EXPECTED_SCRIPT_SHA" "$script"
check_sha "$expected_bin" "$clean/oceanM"
check_sha "$expected_config" "$clean/Compilers/Linux-ifort.mk"
check_sha "$expected_input" "$full_input"
check_sha "$expected_rules" "$rules"
[[ -L "$clean/Inputfiles" && "$(readlink -f "$clean/Inputfiles")" == /public/home/fujiake/Inputfiles ]] || fail "wrong clean Inputfiles link"
grep -Eq '^[[:space:]]*NTIMES[[:space:]]*==[[:space:]]*2592[[:space:]]+12960' "$full_input" || fail "not full input"
grep -Eq '^[[:space:]]*NtileI[[:space:]]*==[[:space:]]*8[[:space:]]+8' "$full_input" || fail "not 8x8 tiles"
grep -Eq '^[[:space:]]*NtileJ[[:space:]]*==[[:space:]]*8[[:space:]]+8' "$full_input" || fail "not 8x8 tiles"

module purge
module load mathlib/netcdf/4.4.1/intel mpi/hpcx/2.7.4/intel-2017.5.239 mathlib/hdf5/1.8.20/intel compiler/intel/2017.5.239
ulimit -s unlimited
ulimit -l unlimited
export OMPI_MCA_coll_hcoll_enable=0 OMP_NUM_THREADS=2 OMP_PROC_BIND=close OMP_PLACES=cores OMP_STACKSIZE=256M KMP_BLOCKTIME=0

mapfile -t nodes < <(scontrol show hostnames "$SLURM_JOB_NODELIST")
pairs=(0,1 2,3 8,9 10,11 16,17 18,19 24,25 26,27 4,5 6,7 12,13 14,15 20,21 22,23 28,29 30,31)
rankfile=$run_root/metadata/rankfile
rank=0
for node in "${nodes[@]}"; do
  for pair in "${pairs[@]}"; do
    printf 'rank %d=%s slot=%s\n' "$rank" "$node" "$pair"
    rank=$((rank+1))
  done
done > "$rankfile"
[[ "$rank" == 64 ]] || fail "rankfile count=$rank"

{
  echo "stage=o33_clean_full_validate"
  echo "job=$SLURM_JOB_ID nodes=$SLURM_JOB_NODELIST"
  echo "free_kb=$free_kb"
  echo "ntimes=2592,12960 ntile=8x8 ranks=64 threads=2"
  sha256sum "$clean/oceanM" "$clean/Compilers/Linux-ifort.mk" "$full_input" "$rules" "$script"
} > "$run_root/metadata/run_metadata.txt"

cd "$run_root"
{ time mpirun -np 64 --rankfile "$rankfile" --report-bindings \
    -x OMP_NUM_THREADS -x OMP_PROC_BIND -x OMP_PLACES -x OMP_STACKSIZE -x KMP_BLOCKTIME \
    --mca coll_hcoll_enable 0 \
    --mca coll_tuned_use_dynamic_rules 1 \
    --mca coll_tuned_dynamic_rules_filename "$rules" \
    ./oceanM metadata/ocean_SCS_Dongsha60_bio15.in; } > logs/model.log 2>&1

grep -q 'ROMS/TOMS: DONE' logs/model.log
grep -Fq 'Grid: 01 TimeSteps: 00000001 - 00002592' logs/model.log
grep -Fq 'Grid: 02 TimeSteps: 00000001 - 00012960' logs/model.log
find output -maxdepth 1 -type f -printf '%f|%s\n' | sort > metadata/output_manifest.txt
[[ "$(find output -maxdepth 1 -type f -name '*.nc' | wc -l)" == 16 ]] || fail "expected 16 NetCDF outputs"
test -s output/SCS_avg_0001.nc
test -s output/Dongsha60_avg_0001.nc

/usr/bin/time -p \
  /public/share/mcc2026_final/miniforge3/envs/vali/bin/python \
  /public/home/fujiake/fjk/ROMS_CoSiNE15_codex_20260727/experiments/scripts/run_official_validator.py \
  --official-script /public/share/mcc2026_final/vali.py \
  --test-dir "$run_root/output" \
  > validation/vali_result.txt 2> validation/vali_time.txt
grep -q '鏈€缁堝垽瀹氾細涓ょ粍鏂囦欢鎵€鏈夊彉閲廟MSE鍧囧湪闃堝€艰寖鍥村唴锛屼紭鍖栫粨鏋滄棤寮傚父' validation/vali_result.txt
sha256sum output/SCS_avg_0001.nc output/Dongsha60_avg_0001.nc > validation/validated_output_sha256.txt
echo "validation_result=pass" >> metadata/run_metadata.txt
echo "COMPLETE $(date -Is)" >> metadata/run_metadata.txt
sha256sum metadata/output_manifest.txt metadata/rankfile validation/vali_result.txt validation/validated_output_sha256.txt > metadata/SHA256SUMS.final

