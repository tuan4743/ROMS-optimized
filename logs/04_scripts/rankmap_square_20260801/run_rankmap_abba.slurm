#!/usr/bin/env bash
#SBATCH -p kshcexclu06
#SBATCH -N 4
#SBATCH -n 64
#SBATCH --ntasks-per-node=16
#SBATCH --cpus-per-task=2
#SBATCH --exclusive
#SBATCH -J fjk_O33_MAP_ABBA
#SBATCH -t 00:30:00
#SBATCH -o /public/home/fujiake/fjk/agent_tmp/logs/o33_rankmap_abba_20260801/slurm-%j.out
#SBATCH -e /public/home/fujiake/fjk/agent_tmp/logs/o33_rankmap_abba_20260801/slurm-%j.err

set -u -o pipefail

parent=/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15
runtime=/public/home/fujiake/fjk/agent_tmp/isolated/work/o33_rankmap_abba_20260801/runtime
script_source=/public/home/fujiake/fjk/agent_tmp/isolated/scripts/rankmap_square_20260801/run_rankmap_abba.slurm
run_root=/public/home/fujiake/fjk/mcc_runs/${SLURM_JOB_ID}_o33_rankmap_abba_sample
log_root=/public/home/fujiake/fjk/agent_tmp/logs/o33_rankmap_abba_20260801
base_input=$parent/ROMS/External/ocean_SCS_Dongsha60_bio15.in
rules=$parent/coll_rules.conf
binary=$parent/oceanM.O33_final
validator=/public/share/mcc2026_final/vali.py
python_bin=/public/share/mcc2026_final/miniforge3/bin/python3

expected_bin=5f1a137e42252c9b978ad50ab344b9d6493f5e5afeeb71ed2d83f0a4228cfcb9
expected_input=05ceb746d36522ccdb960ab082b70401d294fd0cc8a393c25bcb9e25365e7b21
expected_rules=0ef5b45a357d06e27f3e5e6865010fdacf24ba0fc9ebd95aae8a5dd6dc4ce473
expected_mp_exchange=c66ab7bb6a855ab319a886f6ace110429b204efb26aa1aaf0785ff28a38e577a
expected_validator=97230e0b0dd4533a4000155bd691c81d243bdc45c24e6ceaeb09ffa6b1bb878a
: "${EXPECTED_SCRIPT_SHA:?missing EXPECTED_SCRIPT_SHA}"

fail() { echo "FATAL: $*" >&2; exit 2; }
check_sha() {
  local expected=$1 path=$2 actual
  [[ -f "$path" ]] || fail "missing $path"
  actual=$(sha256sum "$path" | awk '{print $1}')
  [[ "$actual" == "$expected" ]] || fail "hash mismatch path=$path expected=$expected actual=$actual"
  printf 'HASH_OK|%s|%s\n' "$actual" "$path"
}

case "$run_root" in /public/home/fujiake/fjk/mcc_runs/*) ;; *) fail "unsafe run_root" ;; esac
[[ "${SLURM_NNODES:-0}" == 4 ]] || fail "wrong node count"
[[ "${SLURM_NTASKS:-0}" == 64 ]] || fail "wrong rank count"
[[ "${SLURM_CPUS_PER_TASK:-0}" == 2 ]] || fail "wrong cpus per task"
[[ ! -e "$run_root" ]] || fail "run root exists"
mkdir -p "$run_root" "$log_root"
exec > >(tee -a "$run_root/harness.log") 2>&1

echo "HARNESS_START=$(date '+%F %T %z')"
echo "JOB=$SLURM_JOB_ID NODES=$SLURM_JOB_NODELIST NNODES=$SLURM_NNODES NTASKS=$SLURM_NTASKS CPUS_PER_TASK=$SLURM_CPUS_PER_TASK"
available_kb=$(df -Pk /public/home/fujiake | awk 'NR==2 {print $4}')
[[ "$available_kb" -ge 10485760 ]] || fail "less than 10 GiB free"
echo "DISK_AVAILABLE_KB=$available_kb"

ulimit -s unlimited || fail "stack"
ulimit -l unlimited || fail "locked memory"
check_sha "$EXPECTED_SCRIPT_SHA" "$script_source"
check_sha "$expected_bin" "$binary"
check_sha "$expected_input" "$base_input"
check_sha "$expected_rules" "$rules"
check_sha "$expected_mp_exchange" "$parent/ROMS/Utility/mp_exchange.F"
check_sha "$expected_validator" "$validator"
[[ "$(readlink -f "$runtime/ROMS")" == "$parent/ROMS" ]] || fail "runtime ROMS"
[[ "$(readlink -f "$runtime/Inputfiles")" == /public/home/fujiake/Inputfiles ]] || fail "runtime Inputfiles"

module purge
module load mathlib/netcdf/4.4.1/intel
module load mpi/hpcx/2.7.4/intel-2017.5.239
module load mathlib/hdf5/1.8.20/intel
module load compiler/intel/2017.5.239
ldd "$binary" | grep -q 'not found' && fail "unresolved dependency"

export OMPI_MCA_coll_hcoll_enable=0
export OMP_NUM_THREADS=2
export OMP_PROC_BIND=close
export OMP_PLACES=cores
export OMP_STACKSIZE=256M
export KMP_BLOCKTIME=0

mapfile -t nodes < <(scontrol show hostnames "$SLURM_JOB_NODELIST")
[[ ${#nodes[@]} -eq 4 ]] || fail "expected four hosts"
pairs=(0,1 2,3 8,9 10,11 16,17 18,19 24,25 26,27 4,5 6,7 12,13 14,15 20,21 22,23 28,29 30,31)
a_rankfile=$run_root/rankfile.stripes
b_rankfile=$run_root/rankfile.square4x4
: > "$a_rankfile"
: > "$b_rankfile"

rank=0
for node in "${nodes[@]}"; do
  for pair in "${pairs[@]}"; do
    printf 'rank %d=%s slot=%s\n' "$rank" "$node" "$pair" >> "$a_rankfile"
    rank=$((rank+1))
  done
done
[[ $rank -eq 64 ]] || fail "A rank count"

for node_index in 0 1 2 3; do
  row0=$(( (node_index / 2) * 4 ))
  col0=$(( (node_index % 2) * 4 ))
  slot_index=0
  for jj in 0 1 2 3; do
    for ii in 0 1 2 3; do
      rank=$(( (row0 + jj) * 8 + col0 + ii ))
      printf 'rank %d=%s slot=%s\n' "$rank" "${nodes[$node_index]}" "${pairs[$slot_index]}" >> "$b_rankfile"
      slot_index=$((slot_index+1))
    done
  done
  [[ $slot_index -eq 16 ]] || fail "B node rank count"
done

"$python_bin" - "$a_rankfile" "$b_rankfile" "$run_root/rank_mapping_audit.json" <<'PY'
import json, sys
def parse(path):
    m, hosts = {}, {}
    for line in open(path):
        left, slot = line.strip().split(' slot=')
        rank, host = left.removeprefix('rank ').split('=')
        hosts.setdefault(host, len(hosts))
        m[int(rank)] = hosts[host]
    assert sorted(m) == list(range(64)) and len(hosts) == 4
    assert [list(m.values()).count(n) for n in range(4)] == [16,16,16,16]
    return m
def edges(m):
    intra = inter = 0
    for j in range(8):
        for i in range(8):
            r = j*8+i
            for di,dj in ((1,0),(0,1)):
                if i+di >= 8 or j+dj >= 8: continue
                q = (j+dj)*8+i+di
                if m[r] == m[q]: intra += 1
                else: inter += 1
    return {'intra': intra, 'inter': inter, 'total': intra+inter}
a, b = parse(sys.argv[1]), parse(sys.argv[2])
result = {'A': edges(a), 'B': edges(b)}
assert result == {'A': {'intra':88,'inter':24,'total':112},
                  'B': {'intra':96,'inter':16,'total':112}}
open(sys.argv[3], 'w').write(json.dumps(result, sort_keys=True, indent=2)+'\n')
print(json.dumps(result, sort_keys=True))
PY
sha256sum "$a_rankfile" "$b_rankfile" "$run_root/rank_mapping_audit.json"

printf 'label\tvariant\treal_seconds\trc\tdone\ttrajectory_sha\tlog_sha\tnc_count\n' > "$run_root/summary.tsv"

prepare_input() {
  local input=$1 outdir=$2
  "$python_bin" - "$base_input" "$input" "$outdir" <<'PY'
import re, sys
base_path, output_path, outdir = sys.argv[1:4]
base = open(base_path).read()
assert len(re.findall(r'(?m)^\s*NTIMES\s*==\s*144\s+720(?:\D|$)', base)) == 1
assert len(re.findall(r'(?m)^\s*NtileI\s*==\s*8\s+8(?:\D|$)', base)) == 1
assert len(re.findall(r'(?m)^\s*NtileJ\s*==\s*8\s+8(?:\D|$)', base)) == 1
assert len(re.findall(r'(?m)^\s*DT\s*==\s*100\.0d0\s+20\.0d0(?:\D|$)', base)) == 1
assert len(re.findall(r'(?m)^\s*NDTFAST\s*==\s*30\s+30(?:\D|$)', base)) == 1
count = base.count('output/')
assert count == 18
text = base.replace('output/', outdir.rstrip('/') + '/')
open(output_path, 'w').write(text)
assert open(output_path).read() == text
print('INPUT_ASSERT_OK replacements=%d path=%s' % (count, output_path))
PY
}

run_one() {
  local label=$1 variant=$2 rankfile=$3 run_dir input log rc done real_raw real_sec trajectory_sha log_sha nc_count
  run_dir=$run_root/$label
  mkdir -p "$run_dir/output"
  input=$run_dir/input.in
  log=$run_dir/model.log
  prepare_input "$input" "$run_dir/output"
  echo "RUN_START|$label|$variant|$(date '+%F %T %z')|$rankfile"
  cd "$runtime"
  set +e
  {
    time mpirun -np 64 --rankfile "$rankfile" --report-bindings \
      -x OMP_NUM_THREADS -x OMP_PROC_BIND -x OMP_PLACES -x OMP_STACKSIZE -x KMP_BLOCKTIME \
      --mca coll_hcoll_enable 0 \
      --mca coll_tuned_use_dynamic_rules 1 \
      --mca coll_tuned_dynamic_rules_filename "$rules" \
      "$binary" "$input"
  } > "$log" 2>&1
  rc=$?
  set -e
  done=no
  grep -q 'ROMS/TOMS: DONE' "$log" && done=yes
  real_raw=$(grep -E '^real[[:space:]]' "$log" | tail -1 | awk '{print $2}')
  [[ -n "$real_raw" ]] || fail "$label missing real"
  real_sec=$(printf '%s\n' "$real_raw" | awk -F'[ms]' '{printf "%.3f", ($1*60)+$2}')
  grep -E '^[[:space:]]+[0-9]+[[:space:]]+0001-' "$log" > "$run_dir/trajectory.txt"
  [[ -s "$run_dir/trajectory.txt" ]] || fail "$label missing trajectory"
  trajectory_sha=$(sha256sum "$run_dir/trajectory.txt" | awk '{print $1}')
  log_sha=$(sha256sum "$log" | awk '{print $1}')
  nc_count=$(find "$run_dir/output" -maxdepth 1 -type f -name '*.nc' | wc -l)
  grep -Fq 'Grid: 01 TimeSteps: 00000001 - 00000144' "$log" || fail "$label grid01 range"
  grep -Fq 'Grid: 02 TimeSteps: 00000001 - 00000720' "$log" || fail "$label grid02 range"
  grep -Fq 'Nonlinear model elapsed time profile, Grid: 01' "$log" || fail "$label grid01 profile"
  grep -Fq 'Nonlinear model elapsed time profile, Grid: 02' "$log" || fail "$label grid02 profile"
  [[ $rc -eq 0 && "$done" == yes ]] || fail "$label rc=$rc done=$done"
  grep -E 'Nonlinear model elapsed time profile|Nonlinear model message Passage profile|Model 2D kernel|3D equations predictor step|Message Passage: (2D halo|3D halo|4D halo|data gathering|point data gathering)|All percentages are with respect' "$log" > "$run_dir/profile_extract.txt"
  printf '%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\n' "$label" "$variant" "$real_sec" "$rc" "$done" "$trajectory_sha" "$log_sha" "$nc_count" >> "$run_root/summary.tsv"
  echo "RUN_DONE|$label|$variant|real=$real_sec|trajectory=$trajectory_sha|nc=$nc_count|$(date '+%F %T %z')"
}

set -e
run_one A1 STRIPES "$a_rankfile"
run_one B1 SQUARE4X4 "$b_rankfile"
run_one B2 SQUARE4X4 "$b_rankfile"
run_one A2 STRIPES "$a_rankfile"

"$python_bin" - "$run_root/summary.tsv" "$run_root/decision.txt" <<'PY'
import csv, sys
rows=list(csv.DictReader(open(sys.argv[1]),delimiter='\t'))
assert [r['label'] for r in rows] == ['A1','B1','B2','A2']
a=[float(r['real_seconds']) for r in rows if r['variant']=='STRIPES']
b=[float(r['real_seconds']) for r in rows if r['variant']=='SQUARE4X4']
ma=sum(a)/2; mb=sum(b)/2; gain=(ma-mb)/ma*100
both=max(b)<min(a)
trajectory=len({r['trajectory_sha'] for r in rows})==1
if gain>=3 and both and trajectory: verdict='REVIEW_FOR_FULL'
elif gain<2 or not trajectory: verdict='STOP_BRANCH'
else: verdict='REVIEW_PROFILE'
lines=[f'mean_A_seconds={ma:.3f}',f'mean_B_seconds={mb:.3f}',
       f'gain_percent={gain:.4f}',f'both_B_faster={both}',
       f'trajectory_consistent={trajectory}',f'verdict={verdict}']
open(sys.argv[2],'w').write('\n'.join(lines)+'\n')
print('\n'.join(lines))
PY
sha256sum "$run_root/summary.tsv" "$run_root/decision.txt" "$run_root/harness.log" \
  "$a_rankfile" "$b_rankfile" "$run_root/rank_mapping_audit.json" > "$run_root/SHA256SUMS"
echo "HARNESS_DONE=$(date '+%F %T %z')"
echo "OUTPUT_RETAINED=$run_root"
