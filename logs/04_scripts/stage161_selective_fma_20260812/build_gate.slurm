#!/usr/bin/env bash
#SBATCH -p kshcexclu06
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -c 16
#SBATCH --exclusive
#SBATCH -J fjk_S161_FMA
#SBATCH -t 00:30:00
#SBATCH -o /public/home/fujiake/fjk/stage161_fma-%j.out
#SBATCH -e /public/home/fujiake/fjk/stage161_fma-%j.err
set -euo pipefail
bash /public/home/fujiake/fjk/stage161_selective_fma_scripts/build_gate.sh
