#!/usr/bin/env bash
# Deploy setup + build job for S32 ImpI below-gate diagnostic.
set -euo pipefail
export LC_ALL=C LANG=C

local_ex=/public/home/fujiake/fjk/agent_tmp/isolated/scripts/s32_impi_20260808
logdir=/public/home/fujiake/fjk/agent_tmp/logs/s32_impi_20260808
mkdir -p "$local_ex" "$logdir"

# Expect scripts already copied here by the submitter.
for f in setup_s32_impi.sh build_s32_impi.slurm run_s32_impi_abba.slurm; do
  [[ -f "$local_ex/$f" ]] || { echo "missing $local_ex/$f"; exit 2; }
  # strip CR if any
  sed -i 's/\r$//' "$local_ex/$f"
done
chmod +x "$local_ex/setup_s32_impi.sh"

bash "$local_ex/setup_s32_impi.sh" | tee "$logdir/setup_run.txt"

# verify impi lib layout
impi=/public/software/mpi/intelmpi/2021.3.0
ls "$impi/bin/mpiifort" "$impi/bin/mpirun"
ls "$impi/lib/release" 2>/dev/null | head -5 || ls "$impi/lib" | head -10

job=$(sbatch --parsable "$local_ex/build_s32_impi.slurm")
echo "BUILD_JOB=$job" | tee "$logdir/build_job.txt"
squeue -j "$job" | tee -a "$logdir/build_job.txt"
