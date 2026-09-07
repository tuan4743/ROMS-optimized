#!/bin/bash
#SBATCH -p kshcexclu06
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -c 4
#SBATCH -J val_gcc_repros
#SBATCH -o /public/home/fujiake/fjk/ROMS_CoSiNE15_codex_20260727/.mcc_opt/logs/validate_gcc_repros_20260730_%j.out
#SBATCH -e /public/home/fujiake/fjk/ROMS_CoSiNE15_codex_20260727/.mcc_opt/logs/validate_gcc_repros_20260730_%j.err

set -euo pipefail

ROOT=/public/home/fujiake/fjk/ROMS_CoSiNE15_codex_20260727
OFFICIAL=/public/share/mcc2026_final/vali.py
PYTHON=/public/share/mcc2026_final/miniforge3/envs/vali/bin/python
WRAPPER=$ROOT/experiments/scripts/run_official_validator.py

test -r "$OFFICIAL"
test -x "$PYTHON"
test -r "$WRAPPER"

for RUN_DIR in \
  /public/home/fujiake/fjk/mcc_runs/118196477_original_gcc731_noomp_64_8x8_repro \
  /public/home/fujiake/fjk/mcc_runs/118196481_original_gcc731_noomp_64_8x8_repro
do
  grep -q 'ROMS/TOMS: DONE' "$RUN_DIR/logs/model.log"
  test -f "$RUN_DIR/metadata/output_manifest.txt"
  test "$(wc -l < "$RUN_DIR/metadata/output_manifest.txt")" -eq 16
  test -f "$RUN_DIR/output/SCS_avg_0001.nc"
  test -f "$RUN_DIR/output/Dongsha60_avg_0001.nc"

  mkdir -p "$RUN_DIR/validation"
  RESULT=$RUN_DIR/validation/vali_result.txt
  TIME_LOG=$RUN_DIR/validation/vali_time.txt
  METADATA=$RUN_DIR/validation/validation_metadata.txt

  {
    echo "stage=validate_gcc_reproduction_20260730"
    echo "date=$(date -Is)"
    echo "job_id=$SLURM_JOB_ID"
    echo "node=$(hostname)"
    echo "run_dir=$RUN_DIR"
    echo "output_deletion=none; validation reads retained full output"
    sha256sum "$OFFICIAL" "$WRAPPER" "$RUN_DIR/oceanM" \
      "$RUN_DIR/metadata/ocean_SCS_Dongsha60_bio15.in"
  } | tee "$METADATA"

  export PYTHONDONTWRITEBYTECODE=1
  /usr/bin/time -p "$PYTHON" "$WRAPPER" \
    --official-script "$OFFICIAL" \
    --test-dir "$RUN_DIR/output" \
    > "$RESULT" 2> "$TIME_LOG"

  cat "$RESULT"
  cat "$TIME_LOG"
  grep -q '最终判定：两组文件所有变量RMSE均在阈值范围内，优化结果无异常' "$RESULT"

  sha256sum \
    "$RUN_DIR/output/SCS_avg_0001.nc" \
    "$RUN_DIR/output/Dongsha60_avg_0001.nc" \
    > "$RUN_DIR/validation/validated_output_sha256.txt"

  echo "validation_result=pass" | tee -a "$RUN_DIR/metadata/run_metadata.txt" "$METADATA"
done
