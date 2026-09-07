#!/usr/bin/env bash
#SBATCH -p kshcexclu06
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -c 32
#SBATCH --exclusive
#SBATCH -J fjk_R3_BUILD
#SBATCH -t 00:30:00
#SBATCH -o /public/home/fujiake/fjk/agent_tmp/logs/r3_20260806/build-%j.out
#SBATCH -e /public/home/fujiake/fjk/agent_tmp/logs/r3_20260806/build-%j.err

set -euo pipefail
exec bash /public/home/fujiake/fjk/agent_tmp/isolated/scripts/r3_20260806/build_r3.sh
