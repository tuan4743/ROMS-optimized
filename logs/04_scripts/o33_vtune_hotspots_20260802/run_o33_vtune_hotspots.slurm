#!/usr/bin/env bash
#SBATCH -p kshcexclu06
#SBATCH -N 4
#SBATCH -n 64
#SBATCH --ntasks-per-node=16
#SBATCH --cpus-per-task=2
#SBATCH --exclusive
#SBATCH -J fjk_O33_VTUNE_HS
#SBATCH -t 00:45:00
#SBATCH -o /public/home/fujiake/fjk/agent_tmp/logs/o33_vtune_hotspots_20260802/vtune-%j.out
#SBATCH -e /public/home/fujiake/fjk/agent_tmp/logs/o33_vtune_hotspots_20260802/vtune-%j.err

set -euo pipefail
parent=/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15
binary=$parent/oceanM
base_input=$parent/ROMS/External/ocean_SCS_Dongsha60_bio15.in
rules=$parent/coll_rules.conf
vtune=/public/home/fujiake/intel/oneapi/vtune/2026.3/bin64/vtune
script=/public/home/fujiake/fjk/agent_tmp/isolated/scripts/o33_vtune_hotspots_20260802/run_o33_vtune_hotspots.slurm
run_root=/public/home/fujiake/fjk/vtune_runs/${SLURM_JOB_ID}_o33_hotspots_64x2
result=$run_root/result
expected_binary=5f1a137e42252c9b978ad50ab344b9d6493f5e5afeeb71ed2d83f0a4228cfcb9
expected_rules=0ef5b45a357d06e27f3e5e6865010fdacf24ba0fc9ebd95aae8a5dd6dc4ce473
: "${EXPECTED_SCRIPT_SHA:?missing EXPECTED_SCRIPT_SHA}"

fail() { echo "FATAL: $*" >&2; exit 2; }
sha() { sha256sum "$1" | awk '{print $1}'; }
check_sha() { local expected=$1 path=$2 actual; [[ -f "$path" ]] || fail "missing $path"; actual=$(sha "$path"); [[ "$actual" == "$expected" ]] || fail "hash mismatch path=$path expected=$expected actual=$actual"; echo "HASH_OK|$actual|$path"; }

case "$run_root" in /public/home/fujiake/fjk/vtune_runs/*) ;; *) fail "unsafe result root=$run_root";; esac
[[ "${SLURM_NNODES:-0}" == 4 && "${SLURM_NTASKS:-0}" == 64 && "${SLURM_CPUS_PER_TASK:-0}" == 2 ]] || fail "unexpected allocation"
[[ ! -e "$run_root" ]] || fail "existing result root=$run_root"
free_kb=$(df -Pk /public/home/fujiake | awk 'NR==2 {print $4}')
[[ "$free_kb" -ge 15728640 ]] || fail "less than 15 GiB free"
mkdir -p "$run_root"/{runtime,logs,metadata,output}
exec > >(tee -a "$run_root/logs/harness.log") 2>&1
echo "HARNESS_START=$(date -Is)"
echo "JOB=$SLURM_JOB_ID NODES=$SLURM_JOB_NODELIST free_kb=$free_kb"
check_sha "$EXPECTED_SCRIPT_SHA" "$script"
check_sha "$expected_binary" "$binary"
check_sha "$expected_rules" "$rules"
[[ -x "$vtune" ]] || fail "VTune is not executable: $vtune"
"$vtune" -version | tee "$run_root/metadata/vtune_version.txt"
file "$binary" | tee "$run_root/metadata/binary_file.txt"

ln -s /public/home/fujiake/Inputfiles "$run_root/runtime/Inputfiles"
ln -s "$parent/ROMS" "$run_root/runtime/ROMS"
ln -s "$binary" "$run_root/runtime/oceanM"
/public/share/mcc2026_final/miniforge3/bin/python3 - "$base_input" "$run_root/runtime/input.in" "$run_root/output" <<'PY'
import re, sys
base_path, output_path, outdir = sys.argv[1:4]
base = open(base_path).read()
actual, n = re.subn(r'(?m)^(\s*NTIMES\s*==\s*).*$', r'\g<1>144 720!  ! VTune diagnostic', base, count=1)
assert n == 1
assert len(re.findall(r'(?m)^\s*NtileI\s*==\s*8\s+8(?:\D|$)', actual)) == 1
assert len(re.findall(r'(?m)^\s*NtileJ\s*==\s*8\s+8(?:\D|$)', actual)) == 1
actual = actual.replace('output/', outdir.rstrip('/') + '/')
open(output_path, 'w').write(actual)
PY
grep -Eq '^[[:space:]]*NTIMES[[:space:]]*==[[:space:]]*144[[:space:]]+720' "$run_root/runtime/input.in"

module purge
module load mathlib/netcdf/4.4.1/intel mpi/hpcx/2.7.4/intel-2017.5.239 mathlib/hdf5/1.8.20/intel compiler/intel/2017.5.239
ulimit -s unlimited
ulimit -l unlimited
export OMPI_MCA_coll_hcoll_enable=0 OMP_NUM_THREADS=2 OMP_PROC_BIND=close OMP_PLACES=cores OMP_STACKSIZE=256M KMP_BLOCKTIME=0

mapfile -t nodes < <(scontrol show hostnames "$SLURM_JOB_NODELIST")
pairs=(0,1 2,3 8,9 10,11 16,17 18,19 24,25 26,27 4,5 6,7 12,13 14,15 20,21 22,23 28,29 30,31)
rankfile=$run_root/metadata/rankfile
rank=0
for node in "${nodes[@]}"; do for pair in "${pairs[@]}"; do printf 'rank %d=%s slot=%s\n' "$rank" "$node" "$pair"; rank=$((rank+1)); done; done > "$rankfile"
[[ "$rank" == 64 ]] || fail "rankfile count=$rank"
{
  echo "analysis=VTune hotspots software sampling"
  echo "scope=diagnostic NTIMES 144,720; 64 MPI x2 OpenMP; 8x8/8x8"
  echo "data_limit=32 MB per collector; theoretical maximum 2048 MB"
  echo "warning=instrumented real is not a scoring time"
  sha256sum "$binary" "$rules" "$run_root/runtime/input.in" "$script"
} > "$run_root/metadata/run_metadata.txt"

cd "$run_root/runtime"
set +e
{ time mpirun -np 64 --rankfile "$rankfile" --report-bindings \
    -x OMP_NUM_THREADS -x OMP_PROC_BIND -x OMP_PLACES -x OMP_STACKSIZE -x KMP_BLOCKTIME \
    --mca coll_hcoll_enable 0 --mca coll_tuned_use_dynamic_rules 1 --mca coll_tuned_dynamic_rules_filename "$rules" \
    "$vtune" -collect hotspots -knob sampling-mode=sw -knob enable-stack-collection=false \
      -target-duration-type=short -data-limit=32 -no-summary -r "$result" -- ./oceanM input.in; } > "$run_root/logs/model_vtune.log" 2>&1
collect_rc=$?
set -e
echo "collect_rc=$collect_rc" | tee -a "$run_root/metadata/run_metadata.txt"
[[ "$collect_rc" == 0 ]] || fail "VTune/MPI collection failed rc=$collect_rc"
grep -q 'ROMS/TOMS: DONE' "$run_root/logs/model_vtune.log" || fail "missing DONE"
grep -Fq 'Grid: 01 TimeSteps: 00000001 - 00000144' "$run_root/logs/model_vtune.log" || fail "missing Grid01 final step"
grep -Fq 'Grid: 02 TimeSteps: 00000001 - 00000720' "$run_root/logs/model_vtune.log" || fail "missing Grid02 final step"
nc_count=$(find "$run_root/output" -maxdepth 1 -type f -name '*.nc' | wc -l)
[[ "$nc_count" == 0 ]] || fail "unexpected NetCDF output count=$nc_count"

set +e
"$vtune" -report summary -r "$result" -report-output "$run_root/summary.txt" > "$run_root/logs/report_summary.log" 2>&1
summary_rc=$?
"$vtune" -report hotspots -r "$result" -format csv -report-output "$run_root/hotspots.csv" > "$run_root/logs/report_hotspots.log" 2>&1
hotspots_rc=$?
set -e
echo "summary_rc=$summary_rc hotspots_rc=$hotspots_rc" | tee -a "$run_root/metadata/run_metadata.txt"
du -sh "$result" | tee "$run_root/metadata/result_size.txt"
echo "COMPLETE=$(date -Is)" >> "$run_root/metadata/run_metadata.txt"
find "$run_root" -maxdepth 2 -type f \
  -not -path "$run_root/logs/harness.log" \
  -not -path "$run_root/metadata/SHA256SUMS.final" \
  -exec sha256sum {} + > "$run_root/metadata/SHA256SUMS.final"
echo "HARNESS_DONE=$(date -Is)"
