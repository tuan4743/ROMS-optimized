#!/usr/bin/env bash
set -euo pipefail

WORK=/public/home/fujiake/fjk/agent_tmp/isolated/work/o33_norecvzero_abba_20260801
ROOT=$WORK/ROMS_CoSiNE15
SCRIPT=$WORK/run_abba_sample.slurm
FAILED_RUN=/public/home/fujiake/fjk/mcc_runs/118364863_o33_nrz_abba_sample
PYFILE=$FAILED_RUN/preflight_prepare_input.py
INPUT=$FAILED_RUN/preflight_input.in
OUTDIR=$FAILED_RUN/preflight_output

mkdir -p "$OUTDIR"
awk '
  /^prepare_input\(\)/ { in_function=1 }
  in_function && /<<.PY./ { emit=1; next }
  emit && /^PY$/ { exit }
  emit { print }
' "$SCRIPT" > "$PYFILE"
[[ -s "$PYFILE" ]]
python "$PYFILE" "$ROOT/ROMS/External/ocean_SCS_Dongsha60_bio15.in" "$INPUT" "$OUTDIR"
grep -Eq '^[[:space:]]*NTIMES[[:space:]]*==[[:space:]]*144[[:space:]]+720' "$INPUT"
grep -Eq '^[[:space:]]*NtileI[[:space:]]*==[[:space:]]*8[[:space:]]+8' "$INPUT"
grep -Eq '^[[:space:]]*NtileJ[[:space:]]*==[[:space:]]*8[[:space:]]+8' "$INPUT"
grep -Fq "$OUTDIR/SCS_avg.nc" "$INPUT"
sha256sum "$PYFILE" "$INPUT"
echo PREFLIGHT_INPUT_OK
