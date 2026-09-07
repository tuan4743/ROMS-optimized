#!/usr/bin/env bash
#SBATCH -p kshcexclu06
#SBATCH -N 1
#SBATCH -n 1
#SBATCH --cpus-per-task=16
#SBATCH -J fjk_O33_OMP4_BUILD
#SBATCH -t 00:30:00
#SBATCH -o /public/home/fujiake/fjk/agent_tmp/logs/omp4_20260804/build-%j.out
#SBATCH -e /public/home/fujiake/fjk/agent_tmp/logs/omp4_20260804/build-%j.err

set -u -o pipefail
script=/public/home/fujiake/fjk/agent_tmp/isolated/scripts/omp4_20260804/build_omp4.sh
: "${EXPECTED_BUILD_SHA:?missing EXPECTED_BUILD_SHA}"
actual=$(sha256sum "$script" | awk '{print $1}')
[[ "$actual" == "$EXPECTED_BUILD_SHA" ]] || {
  echo "FATAL: build script hash mismatch expected=$EXPECTED_BUILD_SHA actual=$actual" >&2
  exit 2
}
echo "BUILD_JOB=$SLURM_JOB_ID HOST=$(hostname) START=$(date '+%F %T %z')"
ulimit -s unlimited
bash "$script"
