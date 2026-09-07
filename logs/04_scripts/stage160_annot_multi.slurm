#!/bin/bash
#SBATCH -p kshcexclu06
#SBATCH -N 1
#SBATCH -n 1
#SBATCH --exclusive
#SBATCH -J s160_annot_multi
#SBATCH -t 00:30:00
set -euo pipefail
ROOT=/public/home/fujiake/fjk/stage160_perf_s47_20260813
cd "$ROOT"
for f in step3d_t_mod_mp_step3d_t_tile_ gls_corstep_mod_mp_gls_corstep_tile_ biology_mod_mp_biology_tile_ step2d_mod_mp_step2d_tile_ t3dmix_mod_mp_t3dmix4_tile_ nesting_mod_mp_put_refine3d_ nesting_mod_mp_get_contact3d_ mp_exchange_mod_mp_mp_exchange4d_; do
  perf annotate --stdio -i perf_flat.data -s "$f" > "annot_${f}.txt" 2>&1 || true
  wc -l "annot_${f}.txt" | awk '{print $2, $1}'
done
echo "--- top instructions per function ---"
for f in step3d_t_mod_mp_step3d_t_tile_ gls_corstep_mod_mp_gls_corstep_tile_ biology_mod_mp_biology_tile_ step2d_mod_mp_step2d_tile_ t3dmix_mod_mp_t3dmix4_tile_; do
  echo "== $f =="
  grep -E '^\s+[0-9]+\.[0-9]+' "annot_${f}.txt" | sort -k2 -rn | head -3 | awk '{$1=$1; print}'
done
echo STAGE160_ANNOT_MULTI_DONE
