#!/usr/bin/env bash
set -euo pipefail

parent=/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15
out=/public/home/fujiake/fjk/agent_tmp/isolated/audits/o33_ifort_optrpt_20260801

expected_pre_f90=e6b99adffc14988208a0a81c2a47b9a2b13b14474ecdc5baafc57c6ee9cdaf25
expected_step_f90=2d5466f0f1d3da088777d4590a38eaad7d31e427e84081555b8eecb1b7903d93
expected_pre_obj=735e892c57e476a3bae392773091b2492ddf722fa6c82a2765271bc0d793d71d
expected_step_obj=d37d883a06545c7cc1738debe3d6204947c533bf5376766b144233ec26efe1da

module purge
module load mathlib/netcdf/4.4.1/intel
module load mpi/hpcx/2.7.4/intel-2017.5.239
module load mathlib/hdf5/1.8.20/intel
module load compiler/intel/2017.5.239

test "$(sha256sum "$parent/Build/pre_step3d.f90" | awk '{print $1}')" = "$expected_pre_f90"
test "$(sha256sum "$parent/Build/step3d_t.f90" | awk '{print $1}')" = "$expected_step_f90"
test "$(sha256sum "$parent/Build/pre_step3d.o" | awk '{print $1}')" = "$expected_pre_obj"
test "$(sha256sum "$parent/Build/step3d_t.o" | awk '{print $1}')" = "$expected_step_obj"

mkdir -p "$out"
cd "$out"

{
  date -Is
  hostname
  command -v mpif90
  mpif90 --version | head -4
  echo "parent=$parent"
  echo "out=$out"
  echo 'common_flags=-c -heap-arrays -fp-model precise -ip -O3 -qopenmp -no-heap-arrays -qopt-report=5 -qopt-report-phase=vec,loop,openmp'
  sha256sum "$parent/Build/pre_step3d.f90" "$parent/Build/step3d_t.f90" \
            "$parent/Build/pre_step3d.o" "$parent/Build/step3d_t.o"
} > metadata.txt

common_flags=(
  -c -heap-arrays -fp-model precise -ip -O3 -qopenmp -no-heap-arrays
  -qopt-report=5 -qopt-report-phase=vec,loop,openmp
  -I"$parent/Build"
)

/usr/bin/time -p mpif90 "${common_flags[@]}" \
  -qopt-report-file="$out/pre_step3d.optrpt" \
  "$parent/Build/pre_step3d.f90" -o "$out/pre_step3d.report.o" \
  > pre_step3d.compile.stdout 2> pre_step3d.compile.stderr

/usr/bin/time -p mpif90 "${common_flags[@]}" \
  -qopt-report-file="$out/step3d_t.optrpt" \
  "$parent/Build/step3d_t.f90" -o "$out/step3d_t.report.o" \
  > step3d_t.compile.stdout 2> step3d_t.compile.stderr

sha256sum metadata.txt *.optrpt *.report.o *.compile.stdout *.compile.stderr > SHA256SUMS
wc -l *.optrpt > REPORT_LINES
ls -l metadata.txt *.optrpt *.report.o *.compile.stdout *.compile.stderr SHA256SUMS REPORT_LINES

