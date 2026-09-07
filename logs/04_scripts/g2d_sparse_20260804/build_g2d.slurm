#!/usr/bin/env bash
#SBATCH -p kshcexclu06
#SBATCH -N 1
#SBATCH -n 16
#SBATCH -J fjk_g2d_build
#SBATCH -t 00:40:00
#SBATCH -o /public/home/fujiake/fjk/agent_tmp/logs/g2d_20260804/slurm-build-%j.out
#SBATCH -e /public/home/fujiake/fjk/agent_tmp/logs/g2d_20260804/slurm-build-%j.err

set -u -o pipefail
mkdir -p /public/home/fujiake/fjk/agent_tmp/logs/g2d_20260804
bash /public/home/fujiake/fjk/agent_tmp/isolated/scripts/g2d_20260804/build_g2d.sh
