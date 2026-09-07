#!/usr/bin/env bash
set -euo pipefail
# After builds OK, submit set_avg sample ABBA and/or NOFILL full ABBA.

scripts=/public/home/fujiake/fjk/agent_tmp/isolated/scripts/s32_belowgate_20260808
stg=/public/home/fujiake/fjk/agent_tmp/staging_belowgate
cp -p "$stg"/run_s32_setavg_abba.slurm "$stg"/run_s32_nofill_abba.slurm "$scripts/"

submit_setavg=0
submit_nofill=0
[[ "${1:-}" == "setavg" || "${1:-}" == "all" ]] && submit_setavg=1
[[ "${1:-}" == "nofill" || "${1:-}" == "all" ]] && submit_nofill=1
[[ "${1:-}" == "" ]] && { echo "usage: $0 setavg|nofill|all"; exit 2; }

if [[ $submit_setavg -eq 1 ]]; then
  root=/public/home/fujiake/fjk/agent_tmp/isolated/work/s32_setavg_20260808/ROMS_CoSiNE15
  [[ -x "$root/oceanM.S32_setavg" ]] || { echo "missing setavg bin"; exit 2; }
  A=$(sha256sum "$root/oceanM.S32_parent" | awk '{print $1}')
  B=$(sha256sum "$root/oceanM.S32_setavg" | awk '{print $1}')
  S=$(sha256sum "$scripts/run_s32_setavg_abba.slurm" | awk '{print $1}')
  JOB=$(sbatch --export=ALL,EXPECTED_SCRIPT_SHA="$S",EXPECTED_A_SHA="$A",EXPECTED_B_SHA="$B" \
    "$scripts/run_s32_setavg_abba.slurm" | awk '{print $4}')
  echo "SETAVG_ABBA=$JOB A=${A:0:16} B=${B:0:16}"
  echo "$JOB" > /public/home/fujiake/fjk/agent_tmp/logs/s32_setavg_20260808/abba_jobid.txt
fi

if [[ $submit_nofill -eq 1 ]]; then
  root=/public/home/fujiake/fjk/agent_tmp/isolated/work/s32_nofill_20260808/ROMS_CoSiNE15
  [[ -x "$root/oceanM.S32_nofill" ]] || { echo "missing nofill bin"; exit 2; }
  A=$(sha256sum "$root/oceanM.S32_parent" | awk '{print $1}')
  B=$(sha256sum "$root/oceanM.S32_nofill" | awk '{print $1}')
  S=$(sha256sum "$scripts/run_s32_nofill_abba.slurm" | awk '{print $1}')
  JOB=$(sbatch --export=ALL,EXPECTED_SCRIPT_SHA="$S",EXPECTED_A_SHA="$A",EXPECTED_B_SHA="$B" \
    "$scripts/run_s32_nofill_abba.slurm" | awk '{print $4}')
  echo "NOFILL_ABBA=$JOB A=${A:0:16} B=${B:0:16}"
  echo "$JOB" > /public/home/fujiake/fjk/agent_tmp/logs/s32_nofill_20260808/abba_jobid.txt
fi
squeue -u fujiake -o '%.18i %.12P %.20j %.2t %.10M %R'
