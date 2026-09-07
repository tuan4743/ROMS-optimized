#!/bin/bash
#SBATCH -p kshcexclu06
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -c 8
#SBATCH --exclusive
#SBATCH -J s163_build_svml
#SBATCH -t 00:30:00

set -euo pipefail

PARENT=/public/home/fujiake/nan/new
STAGE=/public/home/fujiake/fjk/stage163_gls_svml_20260813
SRC=${STAGE}/src_gls_svml

expected_gls=390bb0c7fbb87e2431cbd2f4112312294ad81363192c1ef955d067a682737334
expected_mk=27134c5b92b33571b17e1ffadc180f4889ecdfe552fa90f05ed220e840ab5620
expected_pgo=49c69e4186549c7ecca445dd6cb562746efcaabb579e94e070dce988a0b9d379

test "$(sha256sum "${PARENT}/ROMS/Nonlinear/gls_corstep.F" | awk '{print $1}')" = "${expected_gls}"
test "$(sha256sum "${PARENT}/Compilers/Linux-ifort.mk" | awk '{print $1}')" = "${expected_mk}"
test "$(sha256sum "${PARENT}/pgo/pgopti.dpi" | awk '{print $1}')" = "${expected_pgo}"

if test -e "${STAGE}"; then
  echo "REFUSE_EXISTING_STAGE=${STAGE}"
  exit 80
fi

mkdir -p "${STAGE}"
rsync -a \
  --exclude='Build/' \
  --exclude='output*/' \
  --exclude='log_*.txt' \
  --exclude='TIMING_*.txt' \
  --exclude='vali_*.log' \
  --exclude='slurm-*.out' \
  --exclude='.oceanM.swp' \
  --exclude='oceanM' \
  "${PARENT}/" "${SRC}/"

sed -i "s|/public/home/fujiake/nan/new/pgo|${SRC}/pgo|g" "${SRC}/Compilers/Linux-ifort.mk"
sed -i 's|-fp-model source$|-fp-model source -fimf-use-svml=true:pow|' "${SRC}/Compilers/Linux-ifort.mk"

grep -n 'gls_corstep.o' "${SRC}/Compilers/Linux-ifort.mk" | tee "${STAGE}/candidate_flag.txt"
sha256sum \
  "${SRC}/ROMS/Nonlinear/gls_corstep.F" \
  "${SRC}/Compilers/Linux-ifort.mk" \
  "${SRC}/pgo/pgopti.dpi" > "${STAGE}/source_hashes.txt"

module purge
module load compiler/intel/2021.3.0 mpi/hpcx/2.7.4/intel-2017.5.239 \
            mathlib/netcdf/4.4.1/intel mathlib/hdf5/1.8.20/intel

cd "${SRC}"
/opt/rh/devtoolset-7/root/usr/bin/gmake -j8 > "${STAGE}/build.log" 2>&1
cp -p oceanM oceanM.gls_svml

compile_hits=$(grep -c -E 'mpif90 -c .*fimf-use-svml=true:pow.*gls_corstep\.f90' "${STAGE}/build.log" || true)
all_compile_hits=$(grep -c -E 'mpif90 -c .*fimf-use-svml=true:pow' "${STAGE}/build.log" || true)
test "${compile_hits}" -eq 1
test "${all_compile_hits}" -eq 1

{
  echo "BUILD_OK=1"
  echo "compile_hits=${compile_hits}"
  echo "all_compile_hits=${all_compile_hits}"
  echo "parent_gls_sha=$(sha256sum "${PARENT}/Build/gls_corstep.o" | awk '{print $1}')"
  echo "candidate_gls_sha=$(sha256sum Build/gls_corstep.o | awk '{print $1}')"
  echo "parent_gls_size=$(stat -c %s "${PARENT}/Build/gls_corstep.o")"
  echo "candidate_gls_size=$(stat -c %s Build/gls_corstep.o)"
  echo "candidate_bin_sha=$(sha256sum oceanM.gls_svml | awk '{print $1}')"
  echo "candidate_bin_md5=$(md5sum oceanM.gls_svml | awk '{print $1}')"
  echo "candidate_bin_size=$(stat -c %s oceanM.gls_svml)"
  echo "candidate_svml_undef_count=$(nm -u Build/gls_corstep.o | grep -ci svml || true)"
  echo "candidate_pow_undef_count=$(nm -u Build/gls_corstep.o | grep -ci pow || true)"
} | tee "${STAGE}/static_gate.txt"

nm -u Build/gls_corstep.o > "${STAGE}/candidate_gls_nm_undef.txt"
objdump -dr Build/gls_corstep.o > "${STAGE}/candidate_gls_objdump.txt"
grep -E 'gls_corstep\.f90|remark #15300|remark #260|vectorized|SVML' "${STAGE}/build.log" > "${STAGE}/build_key_lines.txt" || true

echo "STAGE163_BUILD_DONE=${STAGE}"
