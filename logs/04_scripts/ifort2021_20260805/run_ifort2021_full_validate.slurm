#!/usr/bin/env bash
#SBATCH -p kshcexclu06
#SBATCH -N 4
#SBATCH -n 64
#SBATCH --ntasks-per-node=16
#SBATCH --cpus-per-task=2
#SBATCH --exclusive
#SBATCH -J fjk_O33_IFORT2021_FULL
#SBATCH -t 01:30:00
#SBATCH -o /public/home/fujiake/fjk/agent_tmp/logs/ifort2021_20260805/full-%j.out
#SBATCH -e /public/home/fujiake/fjk/agent_tmp/logs/ifort2021_20260805/full-%j.err

set -euo pipefail
parent=/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15
bin_root=/public/home/fujiake/fjk/agent_tmp/isolated/work/o33_ifort2021_20260805/ROMS_CoSiNE15
full_input=/public/home/fujiake/fjk/ROMS_CoSiNE15_codex_20260727/experiments/inputs/ocean_full_64_8x8.in
rules=$parent/coll_rules.conf
run_root=/public/home/fujiake/fjk/mcc_runs/${SLURM_JOB_ID}_o33_ifort2021_full_64x2
script=/public/home/fujiake/fjk/agent_tmp/isolated/scripts/ifort2021_20260805/run_ifort2021_full_validate.slurm
expected_bin=7cd466279e822e4b807e9c0920000f9cb97e1f407538329f3c54b91e01dd9ff4
expected_input=a3e8a5dbee769ced1e097cd22d9e0424eb326b0a7b1006451fe6609dd14779a8
expected_rules=0ef5b45a357d06e27f3e5e6865010fdacf24ba0fc9ebd95aae8a5dd6dc4ce473
: "${EXPECTED_SCRIPT_SHA:?missing EXPECTED_SCRIPT_SHA}"

fail() { echo "FATAL: $*" >&2; exit 2; }
check_sha() { local expected=$1 path=$2 actual; actual=$(sha256sum "$path" | awk '{print $1}'); [[ "$actual" == "$expected" ]] || fail "hash mismatch: $path"; }
case "$run_root" in /public/home/fujiake/fjk/mcc_runs/*) ;; *) fail "unsafe run root";; esac
[[ "${SLURM_NNODES:-0}" == 4 && "${SLURM_NTASKS:-0}" == 64 && "${SLURM_CPUS_PER_TASK:-0}" == 2 ]] || fail "unexpected allocation"
[[ ! -e "$run_root" ]] || fail "existing run root"
free_kb=$(df -Pk /public/home/fujiake | awk 'NR==2 {print $4}')
[[ "$free_kb" -ge 10485760 ]] || fail "less than 10 GiB free"
mkdir -p "$run_root"/{output,logs,validation,metadata}
ln -s /public/home/fujiake/Inputfiles "$run_root/Inputfiles"
ln -s "$bin_root/ROMS" "$run_root/ROMS"
ln -s "$bin_root/oceanM.O33_ifort2021" "$run_root/oceanM"
cp "$full_input" "$run_root/metadata/ocean_SCS_Dongsha60_bio15.in"

check_sha "$EXPECTED_SCRIPT_SHA" "$script"
check_sha "$expected_bin" "$bin_root/oceanM.O33_ifort2021"
check_sha "$expected_input" "$full_input"
check_sha "$expected_rules" "$rules"
grep -Eq '^[[:space:]]*NTIMES[[:space:]]*==[[:space:]]*2592[[:space:]]+12960' "$full_input" || fail "not full input"
grep -Eq '^[[:space:]]*NtileI[[:space:]]*==[[:space:]]*8[[:space:]]+8' "$full_input" || fail "not 8x8 tiles"
grep -Eq '^[[:space:]]*NtileJ[[:space:]]*==[[:space:]]*8[[:space:]]+8' "$full_input" || fail "not 8x8 tiles"

module purge
module load mathlib/netcdf/4.4.1/intel mpi/hpcx/2.7.4/intel-2017.5.239 mathlib/hdf5/1.8.20/intel compiler/intel/2017.5.239
ulimit -s unlimited
ulimit -l unlimited
export OMPI_MCA_coll_hcoll_enable=0 OMP_NUM_THREADS=2 OMP_PROC_BIND=close OMP_PLACES=cores OMP_STACKSIZE=256M KMP_BLOCKTIME=0
export KMP_HOT_TEAMS=1 KMP_HOT_TEAMS_MAX_PARALLEL=2
mapfile -t nodes < <(scontrol show hostnames "$SLURM_JOB_NODELIST")
pairs=(0,1 2,3 8,9 10,11 16,17 18,19 24,25 26,27 4,5 6,7 12,13 14,15 20,21 22,23 28,29 30,31)
rankfile=$run_root/metadata/rankfile
rank=0; for node in "${nodes[@]}"; do for pair in "${pairs[@]}"; do printf 'rank %d=%s slot=%s\n' "$rank" "$node" "$pair"; rank=$((rank+1)); done; done > "$rankfile"
[[ "$rank" == 64 ]] || fail "rankfile count"
{
  echo "stage=o33_ifort2021_full_reproduce"; echo "job=$SLURM_JOB_ID nodes=$SLURM_JOB_NODELIST"; echo "free_kb=$free_kb"; echo "ntimes=2592,12960 ntile=8x8 ranks=64 threads=2"; echo "compiler=ifort2021 kmp_hot_teams=1 kmp_hot_teams_max_parallel=2";
  sha256sum "$parent/oceanM" "$full_input" "$rules" "$script";
} > "$run_root/metadata/run_metadata.txt"

cd "$run_root"
{ time mpirun -np 64 --rankfile "$rankfile" --report-bindings -x OMP_NUM_THREADS -x OMP_PROC_BIND -x OMP_PLACES -x OMP_STACKSIZE -x KMP_BLOCKTIME -x KMP_HOT_TEAMS -x KMP_HOT_TEAMS_MAX_PARALLEL --mca coll_hcoll_enable 0 --mca coll_tuned_use_dynamic_rules 1 --mca coll_tuned_dynamic_rules_filename "$rules" ./oceanM metadata/ocean_SCS_Dongsha60_bio15.in; } > logs/model.log 2>&1
grep -q 'ROMS/TOMS: DONE' logs/model.log
grep -Fq 'Grid: 01 TimeSteps: 00000001 - 00002592' logs/model.log
grep -Fq 'Grid: 02 TimeSteps: 00000001 - 00012960' logs/model.log
find output -maxdepth 1 -type f -printf '%f|%s\n' | sort > metadata/output_manifest.txt
test -s output/SCS_avg_0001.nc
test -s output/Dongsha60_avg_0001.nc

/usr/bin/time -p /public/share/mcc2026_final/miniforge3/envs/vali/bin/python /public/home/fujiake/fjk/ROMS_CoSiNE15_codex_20260727/experiments/scripts/run_official_validator.py --official-script /public/share/mcc2026_final/vali.py --test-dir "$run_root/output" > validation/vali_result.txt 2> validation/vali_time.txt
grep -q '最终判定：两组文件所有变量RMSE均在阈值范围内，优化结果无异常' validation/vali_result.txt
sha256sum output/SCS_avg_0001.nc output/Dongsha60_avg_0001.nc > validation/validated_output_sha256.txt
echo "validation_result=pass" >> metadata/run_metadata.txt
echo "COMPLETE $(date -Is)" >> metadata/run_metadata.txt
