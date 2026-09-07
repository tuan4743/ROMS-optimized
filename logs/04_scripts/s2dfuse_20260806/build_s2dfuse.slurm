#!/usr/bin/env bash
#SBATCH -p kshcexclu06
#SBATCH -N 1
#SBATCH -n 16
#SBATCH -J fjk_s2dfuse_build
#SBATCH -t 00:40:00
#SBATCH -o /public/home/fujiake/fjk/agent_tmp/logs/s2dfuse_20260806/slurm-build-%j.out
#SBATCH -e /public/home/fujiake/fjk/agent_tmp/logs/s2dfuse_20260806/slurm-build-%j.err

set -u -o pipefail
mkdir -p /public/home/fujiake/fjk/agent_tmp/logs/s2dfuse_20260806
bash /public/home/fujiake/fjk/agent_tmp/isolated/scripts/s2dfuse_20260806/build_s2dfuse.sh
