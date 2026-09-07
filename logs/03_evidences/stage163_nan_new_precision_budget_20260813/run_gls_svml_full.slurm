#!/bin/bash
#SBATCH -p kshcexclu06
#SBATCH -N 4
#SBATCH -n 64
#SBATCH --exclusive
#SBATCH --exclude=j04r2n[00-03],j01r2n[00-03],i17r1n[00-03],i17r2n[00-03],j05r2n[00-19]
#SBATCH -J s163_svml_full
#SBATCH -t 01:30:00

set -euo pipefail
ulimit -s unlimited
ulimit -l unlimited

STAGE=/public/home/fujiake/fjk/stage163_gls_svml_20260813
SRC=${STAGE}/src_gls_svml
BIN=${SRC}/oceanM.gls_svml
test -x "${BIN}"
test -s "${STAGE}/static_gate.txt"
grep -q '^BUILD_OK=1$' "${STAGE}/static_gate.txt"

module purge
module load mathlib/netcdf/4.4.1/intel mpi/hpcx/2.7.4/intel-2017.5.239 \
            mathlib/hdf5/1.8.20/intel compiler/intel/2017.5.239

export OMPI_MCA_coll_hcoll_enable=0
export OMP_NUM_THREADS=2
export OMP_PROC_BIND=close
export OMP_PLACES=cores
export OMP_STACKSIZE=1G
export KMP_BLOCKTIME=0
export KMP_HOT_TEAMS=1
export KMP_HOT_TEAMS_MAX_PARALLEL=2

cd "${SRC}"
RANKFILE=${STAGE}/rankfile.${SLURM_JOB_ID}
NODES=($(scontrol show hostnames "${SLURM_JOB_NODELIST}"))
PAIRS=(0,1 2,3 8,9 10,11 16,17 18,19 24,25 26,27 4,5 6,7 12,13 14,15 20,21 22,23 28,29 30,31)
rank=0
for node in "${NODES[@]}"; do
  for pair in "${PAIRS[@]}"; do
    echo "rank ${rank}=${node} slot=${pair}" >> "${RANKFILE}"
    rank=$((rank+1))
  done
done

OUTDIR=${STAGE}/output_full_${SLURM_JOB_ID}
IN_BASE=ROMS/External/ocean_SCS_Dongsha60_bio15.in
IN_JOB=${STAGE}/ocean_SCS_Dongsha60_bio15_full_${SLURM_JOB_ID}.in
cp -f "${IN_BASE}" "${IN_JOB}"
python - "${IN_JOB}" "${OUTDIR}" <<'PY'
import sys
p, outdir = sys.argv[1], sys.argv[2]
t = open(p).read()
t = t.replace('output/', outdir.rstrip('/') + '/')
open(p, 'w').write(t)
print('OUTDIR=', outdir)
PY
mkdir -p "${OUTDIR}"

LOG=${STAGE}/model_full_${SLURM_JOB_ID}.log
TIMING=${STAGE}/TIMING_full_${SLURM_JOB_ID}.txt
{
  echo "job=${SLURM_JOB_ID}"
  echo "nodes=${SLURM_JOB_NODELIST}"
  echo "bin_sha=$(sha256sum "${BIN}" | awk '{print $1}')"
  echo "bin_md5=$(md5sum "${BIN}" | awk '{print $1}')"
  echo "input_sha=$(sha256sum "${IN_JOB}" | awk '{print $1}')"
} | tee "${STAGE}/run_manifest_${SLURM_JOB_ID}.txt"

set +e
{ time mpirun -np 64 --rankfile "${RANKFILE}" --report-bindings \
  -x OMP_NUM_THREADS -x OMP_PROC_BIND -x OMP_PLACES -x OMP_STACKSIZE -x KMP_BLOCKTIME \
  --mca coll_hcoll_enable 0 \
  --mca coll_tuned_use_dynamic_rules 1 \
  --mca coll_tuned_dynamic_rules_filename ./coll_rules.conf \
  "${BIN}" "${IN_JOB}" > "${LOG}" 2>&1 ; } 2> "${TIMING}"
RC=$?
set -e

echo "MODEL_RC=${RC}" | tee "${STAGE}/model_rc_${SLURM_JOB_ID}.txt"
cat "${TIMING}"
grep -E 'DONE|Blows|ERROR' "${LOG}" | head -20 || true

if test "${RC}" -eq 0; then
  PY=/public/share/mcc2026_final/miniforge3/envs/vali/bin/python
  VALI=${STAGE}/vali_full_${SLURM_JOB_ID}.py
  cp -f vali.py "${VALI}"
  sed -i "s|dir_test = .*|dir_test = '${OUTDIR}/'|" "${VALI}"
  "${PY}" "${VALI}" 2>&1 | tee "${STAGE}/vali_full_${SLURM_JOB_ID}.log"
fi

rm -f "${RANKFILE}"
echo "STAGE163_FULL_DONE=${STAGE}"
exit "${RC}"
