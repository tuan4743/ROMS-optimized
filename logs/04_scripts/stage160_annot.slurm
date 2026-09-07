#!/bin/bash
#SBATCH -p kshcexclu06
#SBATCH -N 1
#SBATCH -n 1
#SBATCH --exclusive
#SBATCH -J s160_perf_annot
#SBATCH -t 00:30:00
set -euo pipefail
ROOT=/public/home/fujiake/fjk/stage160_perf_s47_20260813
cd "$ROOT"

perf report --stdio --symbol-filter=pre_step3d_mod_mp_pre_step3d_tile_ > report_pre_step3d.txt 2>&1 || true
perf annotate --stdio -s pre_step3d_mod_mp_pre_step3d_tile_ > annot_pre_step3d.txt 2>&1 || true
perf report --stdio > report_full.txt 2>&1 || true
wc -l report_pre_step3d.txt annot_pre_step3d.txt report_full.txt
echo "--- report_pre_step3d head ---"
head -40 report_pre_step3d.txt
echo STAGE160_ANNOT_DONE
