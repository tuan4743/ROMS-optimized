#!/usr/bin/env bash
#SBATCH -p kshcexclu06
#SBATCH -N 1
#SBATCH -n 16
#SBATCH -J fjk_fast2_build
#SBATCH -t 00:40:00
#SBATCH -o /public/home/fujiake/fjk/agent_tmp/logs/fast2_20260805/slurm-build-%j.out
#SBATCH -e /public/home/fujiake/fjk/agent_tmp/logs/fast2_20260805/slurm-build-%j.err

set -u -o pipefail
mkdir -p /public/home/fujiake/fjk/agent_tmp/logs/fast2_20260805
bash /public/home/fujiake/fjk/agent_tmp/isolated/scripts/fast2_20260805/build_fast2.sh
