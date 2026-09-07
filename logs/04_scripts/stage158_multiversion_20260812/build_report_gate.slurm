#!/usr/bin/env bash
#SBATCH -p kshcexclu06
#SBATCH -N 1
#SBATCH -n 16
#SBATCH -J fjk_S158_MV_BUILD
#SBATCH -t 01:00:00
#SBATCH -o /public/home/fujiake/fjk/stage158_multiversion_build-%j.out
#SBATCH -e /public/home/fujiake/fjk/stage158_multiversion_build-%j.err

set -euo pipefail
bash /public/home/fujiake/fjk/stage158_multiversion_scripts/build_report_gate.sh
