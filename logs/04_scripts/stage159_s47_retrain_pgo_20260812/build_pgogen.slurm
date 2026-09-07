#!/usr/bin/env bash
#SBATCH -p kshcexclu06
#SBATCH -N 1
#SBATCH -n 16
#SBATCH -J fjk_S159_GEN
#SBATCH -t 00:45:00
#SBATCH -o /public/home/fujiake/fjk/stage159_pgogen-%j.out
#SBATCH -e /public/home/fujiake/fjk/stage159_pgogen-%j.err
set -euo pipefail
bash /public/home/fujiake/fjk/stage159_s47_retrain_pgo_scripts/build_pgogen.sh
