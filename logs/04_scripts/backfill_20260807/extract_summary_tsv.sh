#!/bin/bash
# Read-only: emit one clean TSV row per full run for log backfill.
# Columns: run  real_wall_s  cpu_total_s  rmse_vars  validation_result  complete_ts  exe_sha12  build_src
M=/public/home/fujiake/fjk/mcc_runs

printf "run\treal_s\tcpu_total\trmse_vars\tvalidation\tcomplete\texe_sha12\tbuild_src\n"

for d in "$M"/*_full_64x2/; do
  b=$(basename "$d")
  id=${b%%_*}
  case "$id" in ''|*[!0-9]*) continue ;; esac
  if [ "$id" -ne 118405320 ] && [ "$id" -le 118541006 ]; then continue; fi

  ml="$d/logs/model.log"
  rm_=$(printf '%s' "$(grep -a -m1 '^real' "$ml" 2>/dev/null | awk '{print $2}')")
  # convert 35m36.310s -> seconds
  secs=$(printf '%s' "$rm_" | awk -F'[ms]' '{ if (NF>=2 && $1 ~ /^[0-9]+$/) printf "%.3f", $1*60+$2; else print "NA" }')
  cput=$(grep -a -A1 'All percentages are with respect to total time' "$ml" 2>/dev/null | head -1 | awk '{print $NF}')

  vr="$d/validation/vali_result.txt"
  nv=$(grep -a -c 'RMSE' "$vr" 2>/dev/null)
  md="$d/metadata/run_metadata.txt"
  vres=$(grep -a -m1 '^validation_result=' "$md" 2>/dev/null | cut -d= -f2)
  comp=$(grep -a -m1 '^COMPLETE' "$md" 2>/dev/null | awk '{print $2}')
  exe=$(grep -a -m1 'oceanM' "$md" 2>/dev/null | awk '{print substr($1,1,12)}')
  src=$(grep -a -m1 'oceanM' "$md" 2>/dev/null | awk '{print $2}')

  printf "%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\n" \
    "$b" "${secs:-NA}" "${cput:-NA}" "${nv:-0}" "${vres:-NONE}" "${comp:-NONE}" "${exe:-NA}" "${src:-NA}"
done

echo
echo "### stage / build metadata per full run"
for d in "$M"/*_full_64x2/; do
  b=$(basename "$d")
  id=${b%%_*}
  case "$id" in ''|*[!0-9]*) continue ;; esac
  if [ "$id" -ne 118405320 ] && [ "$id" -le 118541006 ]; then continue; fi
  echo "---- $b"
  grep -a -e '^stage=' -e '^job=' -e '^ntimes=' -e '^validation_result=' -e '^COMPLETE' -e '^notes' "$d/metadata/run_metadata.txt" 2>/dev/null | sed 's/^/  /'
done
