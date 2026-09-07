#!/usr/bin/env bash
#SBATCH -p kshcexclu06
#SBATCH -N 1
#SBATCH -n 1
#SBATCH --cpus-per-task=1
#SBATCH -J fjk_step2d_heapprobe
#SBATCH -t 00:10:00
#SBATCH -o /public/home/fujiake/fjk/agent_tmp/logs/step2d_heapalloc_probe_20260802/probe-%j.out
#SBATCH -e /public/home/fujiake/fjk/agent_tmp/logs/step2d_heapalloc_probe_20260802/probe-%j.err

set -euo pipefail
script_root=/public/home/fujiake/fjk/agent_tmp/isolated/scripts/step2d_heapalloc_probe_20260802
audit_root=/public/home/fujiake/fjk/agent_tmp/isolated/audits/step2d_heapalloc_probe_${SLURM_JOB_ID}
: "${EXPECTED_SCRIPT_SHA:?missing EXPECTED_SCRIPT_SHA}"
: "${EXPECTED_SOURCE_SHA:?missing EXPECTED_SOURCE_SHA}"
mkdir -p "$audit_root" /public/home/fujiake/fjk/agent_tmp/logs/step2d_heapalloc_probe_20260802
cd "$audit_root"
sha256sum "$script_root/run_probe.slurm" "$script_root/step2d_heapalloc_probe.f90" | tee hashes.txt
grep -Fq "$EXPECTED_SCRIPT_SHA  $script_root/run_probe.slurm" hashes.txt
grep -Fq "$EXPECTED_SOURCE_SHA  $script_root/step2d_heapalloc_probe.f90" hashes.txt
module purge
module load compiler/intel/2017.5.239
ifort -O3 -ip -fp-model precise -heap-arrays "$script_root/step2d_heapalloc_probe.f90" -o heap.exe
ifort -O3 -ip -fp-model precise -no-heap-arrays "$script_root/step2d_heapalloc_probe.f90" -o stack.exe
printf '%s\n' '--- heap ---' | tee result.txt
{ time ./heap.exe; } 2>&1 | tee -a result.txt
printf '%s\n' '--- stack ---' | tee -a result.txt
{ time ./stack.exe; } 2>&1 | tee -a result.txt
nm -A heap.exe stack.exe | grep -Ei 'for_allocate|for_deallocate' | tee symbols.txt || true
sha256sum hashes.txt result.txt symbols.txt > SHA256SUMS
