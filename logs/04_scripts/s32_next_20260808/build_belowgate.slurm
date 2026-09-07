#!/usr/bin/env bash
#SBATCH -p kshcexclu06
#SBATCH -N 1
#SBATCH -n 16
#SBATCH --ntasks-per-node=16
#SBATCH --cpus-per-task=1
#SBATCH -J fjk_S32_BG_BUILD
#SBATCH -t 00:45:00
#SBATCH -o /public/home/fujiake/fjk/agent_tmp/logs/s32_belowgate_build/slurm-%j.out
#SBATCH -e /public/home/fujiake/fjk/agent_tmp/logs/s32_belowgate_build/slurm-%j.err

set -euo pipefail
echo "BUILD_HARNESS_START=$(date '+%F %T %z') JOB=$SLURM_JOB_ID WHICH=${WHICH:?}"
case "$WHICH" in
  nofill) bash /public/home/fujiake/fjk/agent_tmp/staging_belowgate/setup_build_nofill.sh ;;
  setavg) bash /public/home/fujiake/fjk/agent_tmp/staging_belowgate/setup_build_setavg.sh ;;
  *) echo "bad WHICH=$WHICH"; exit 2 ;;
esac
echo "BUILD_HARNESS_DONE=$(date '+%F %T %z')"
