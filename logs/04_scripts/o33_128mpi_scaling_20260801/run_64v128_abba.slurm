#!/usr/bin/env bash
# Stage 55: legal internal-tile scaling only; immutable O33 source/binary/input physics.
# A = 64 MPI ranks x 2 OpenMP threads with 8x8 tiles; B = 128 MPI ranks x 1 thread with 16x8 tiles.
# The physical grids are unchanged.  This diagnostic uses the organizer-permitted 144/720 steps.
#SBATCH -p kshcexclu06
#SBATCH -N 4
#SBATCH -n 128
#SBATCH --ntasks-per-node=32
#SBATCH --cpus-per-task=1
#SBATCH --exclusive
#SBATCH -J fjk_O33_128MPI
#SBATCH -t 00:35:00
#SBATCH -o /public/home/fujiake/fjk/agent_tmp/logs/o33_128mpi_scaling_20260801/slurm-%j.out
#SBATCH -e /public/home/fujiake/fjk/agent_tmp/logs/o33_128mpi_scaling_20260801/slurm-%j.err

set -eu -o pipefail

parent=/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15
runtime=/public/home/fujiake/fjk/agent_tmp/isolated/work/o33_128mpi_scaling_20260801/runtime
script_source=/public/home/fujiake/fjk/agent_tmp/isolated/scripts/o33_128mpi_scaling_20260801/run_64v128_abba.slurm
run_root=/public/home/fujiake/fjk/mcc_runs/${SLURM_JOB_ID}_o33_64v128mpi_sample
log_root=/public/home/fujiake/fjk/agent_tmp/logs/o33_128mpi_scaling_20260801
base_input=$parent/ROMS/External/ocean_SCS_Dongsha60_bio15.in
binary=$parent/oceanM.O33_final
rules=$parent/coll_rules.conf

expected_bin=5f1a137e42252c9b978ad50ab344b9d6493f5e5afeeb71ed2d83f0a4228cfcb9
expected_input=05ceb746d36522ccdb960ab082b70401d294fd0cc8a393c25bcb9e25365e7b21
expected_rules=0ef5b45a357d06e27f3e5e6865010fdacf24ba0fc9ebd95aae8a5dd6dc4ce473
: "${EXPECTED_SCRIPT_SHA:?missing EXPECTED_SCRIPT_SHA}"

fail(){ echo "FATAL: $*" >&2; exit 2; }
check_sha(){ local expected=$1 path=$2 actual; actual=$(sha256sum "$path" | awk '{print $1}'); [[ "$actual" == "$expected" ]] || fail "hash mismatch $path"; printf 'HASH_OK|%s|%s\n' "$actual" "$path"; }
case "$run_root" in /public/home/fujiake/fjk/mcc_runs/*) ;; *) fail unsafe_run_root;; esac
[[ ${SLURM_NNODES:-0} == 4 && ${SLURM_NTASKS:-0} == 128 && ${SLURM_CPUS_PER_TASK:-0} == 1 ]] || fail allocation
[[ ! -e "$run_root" ]] || fail existing_run_root
mkdir -p "$run_root" "$log_root"
exec > >(tee -a "$run_root/harness.log") 2>&1
echo "HARNESS_START=$(date '+%F %T %z')"
echo "JOB=$SLURM_JOB_ID NODES=$SLURM_JOB_NODELIST NNODES=$SLURM_NNODES NTASKS=$SLURM_NTASKS CPUS_PER_TASK=$SLURM_CPUS_PER_TASK"
check_sha "$EXPECTED_SCRIPT_SHA" "$script_source"
check_sha "$expected_bin" "$binary"
check_sha "$expected_input" "$base_input"
check_sha "$expected_rules" "$rules"
[[ $(readlink -f "$runtime/ROMS") == "$parent/ROMS" ]] || fail runtime_roms
[[ $(readlink -f "$runtime/Inputfiles") == /public/home/fujiake/Inputfiles ]] || fail runtime_inputs

module purge
module load mathlib/netcdf/4.4.1/intel
module load mpi/hpcx/2.7.4/intel-2017.5.239
module load mathlib/hdf5/1.8.20/intel
module load compiler/intel/2017.5.239
ldd "$binary" | grep -q 'not found' && fail unresolved_dependency
export OMPI_MCA_coll_hcoll_enable=0
export OMP_PROC_BIND=close OMP_PLACES=cores OMP_STACKSIZE=256M KMP_BLOCKTIME=0

mapfile -t nodes < <(scontrol show hostnames "$SLURM_JOB_NODELIST")
[[ ${#nodes[@]} == 4 ]] || fail host_count
pair_slots=(0,1 2,3 8,9 10,11 16,17 18,19 24,25 26,27 4,5 6,7 12,13 14,15 20,21 22,23 28,29 30,31)
flat_slots=(0 1 2 3 8 9 10 11 16 17 18 19 24 25 26 27 4 5 6 7 12 13 14 15 20 21 22 23 28 29 30 31)
a_rankfile=$run_root/rankfile.64x2
b_rankfile=$run_root/rankfile.128x1
: > "$a_rankfile"; r=0
for node in "${nodes[@]}"; do for slot in "${pair_slots[@]}"; do printf 'rank %d=%s slot=%s\n' "$r" "$node" "$slot" >> "$a_rankfile"; r=$((r+1)); done; done
[[ $r == 64 ]] || fail a_ranks
: > "$b_rankfile"
for n in 0 1 2 3; do
  row0=$(( (n / 2) * 4 )); col0=$(( (n % 2) * 8 )); si=0
  for j in 0 1 2 3; do for i in 0 1 2 3 4 5 6 7; do r=$(( (row0+j)*16+col0+i )); printf 'rank %d=%s slot=%s\n' "$r" "${nodes[$n]}" "${flat_slots[$si]}" >> "$b_rankfile"; si=$((si+1)); done; done
  [[ $si == 32 ]] || fail b_ranks
done
python - "$a_rankfile" "$b_rankfile" <<'PY'
import sys
for p,n in zip(sys.argv[1:], (64,128)):
    ranks=[]
    for x in open(p): ranks.append(int(x.split('=')[0].split()[1]))
    assert sorted(ranks)==list(range(n))
print('RANKFILES_OK')
PY
sha256sum "$a_rankfile" "$b_rankfile"
printf 'label\tvariant\treal_seconds\trc\tdone\ttrajectory_sha\tlog_sha\tnc_count\n' > "$run_root/summary.tsv"

prepare_input(){
  local tile_i=$1 input=$2 outdir=$3
  python - "$base_input" "$input" "$outdir" "$tile_i" <<'PY'
import re,sys
base,out,outdir,ti=sys.argv[1:]
s=open(base).read()
assert len(re.findall(r'(?m)^\s*NTIMES\s*==\s*144\s+720(?:\D|$)',s))==1
assert len(re.findall(r'(?m)^\s*NtileI\s*==\s*8\s+8(?:\D|$)',s))==1
assert len(re.findall(r'(?m)^\s*NtileJ\s*==\s*8\s+8(?:\D|$)',s))==1
assert s.count('output/')==18
s=re.sub(r'(?m)^(\s*NtileI\s*==\s*)8\s+8',r'\g<1>'+ti+' '+ti,s)
s=s.replace('output/',outdir.rstrip('/')+'/')
open(out,'w').write(s)
assert open(out).read() == s
PY
}
run_one(){
  local label=$1 variant=$2 np=$3 threads=$4 tile_i=$5 rankfile=$6 dir input log rc done real_raw real_sec tsha lsha nc
  dir=$run_root/$label; mkdir -p "$dir/output"; input=$dir/input.in; log=$dir/model.log
  prepare_input "$tile_i" "$input" "$dir/output"
  echo "RUN_START|$label|$variant|$(date '+%F %T %z')"
  cd "$runtime"; export OMP_NUM_THREADS=$threads
  set +e
  { time mpirun -np "$np" --rankfile "$rankfile" --report-bindings -x OMP_NUM_THREADS -x OMP_PROC_BIND -x OMP_PLACES -x OMP_STACKSIZE -x KMP_BLOCKTIME --mca coll_hcoll_enable 0 --mca coll_tuned_use_dynamic_rules 1 --mca coll_tuned_dynamic_rules_filename "$rules" "$binary" "$input"; } > "$log" 2>&1
  rc=$?; set -e
  done=no; grep -q 'ROMS/TOMS: DONE' "$log" && done=yes
  real_raw=$(grep -E '^real[[:space:]]' "$log" | tail -1 | awk '{print $2}'); [[ -n "$real_raw" ]] || fail "$label real"
  real_sec=$(printf '%s\n' "$real_raw" | awk -F'[ms]' '{printf "%.3f",($1*60)+$2}')
  grep -E '^[[:space:]]+[0-9]+[[:space:]]+0001-' "$log" > "$dir/trajectory.txt" || true
  tsha=$(sha256sum "$dir/trajectory.txt" | awk '{print $1}'); lsha=$(sha256sum "$log" | awk '{print $1}')
  nc=$(find "$dir/output" -maxdepth 1 -type f -name '*.nc' | wc -l)
  grep -Fq 'Grid: 01 TimeSteps: 00000001 - 00000144' "$log" || fail "$label grid01"
  grep -Fq 'Grid: 02 TimeSteps: 00000001 - 00000720' "$log" || fail "$label grid02"
  [[ $rc == 0 && $done == yes ]] || fail "$label completion"
  grep -E 'Nonlinear model elapsed time profile|Message Passage: (2D halo|4D halo)|All percentages are with respect' "$log" > "$dir/profile_extract.txt"
  printf '%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\n' "$label" "$variant" "$real_sec" "$rc" "$done" "$tsha" "$lsha" "$nc" >> "$run_root/summary.tsv"
  echo "RUN_DONE|$label|$variant|real=$real_sec|trajectory=$tsha|nc=$nc"
}
run_one A1 MPI64_OMP2 64 2 8 "$a_rankfile"
run_one B1 MPI128_OMP1 128 1 16 "$b_rankfile"
run_one B2 MPI128_OMP1 128 1 16 "$b_rankfile"
run_one A2 MPI64_OMP2 64 2 8 "$a_rankfile"
python - "$run_root/summary.tsv" "$run_root/decision.txt" <<'PY'
import csv,sys
r=list(csv.DictReader(open(sys.argv[1]),delimiter='\t')); assert [x['label'] for x in r]==['A1','B1','B2','A2']
a=[float(x['real_seconds']) for x in r if x['variant']=='MPI64_OMP2']; b=[float(x['real_seconds']) for x in r if x['variant']=='MPI128_OMP1']; ma=sum(a)/2;mb=sum(b)/2;g=(ma-mb)/ma*100
open(sys.argv[2],'w').write(f'mean_A_seconds={ma:.3f}\nmean_B_seconds={mb:.3f}\ngain_percent={g:.4f}\nboth_B_faster={max(b)<min(a)}\ntrajectory_consistent={len({x["trajectory_sha"] for x in r})==1}\nverdict='+('REVIEW_FOR_DAY_VALIDATION' if g>=3 and max(b)<min(a) else 'STOP_BRANCH' if g<2 else 'REVIEW_PROFILE')+'\n')
PY
sha256sum "$run_root/summary.tsv" "$run_root/decision.txt" "$run_root/harness.log" "$a_rankfile" "$b_rankfile" > "$run_root/SHA256SUMS"
echo "HARNESS_DONE=$(date '+%F %T %z')"
echo "OUTPUT_RETAINED=$run_root"
