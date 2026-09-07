#!/usr/bin/env bash
set -euo pipefail

parent=/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15
out=/public/home/fujiake/fjk/agent_tmp/isolated/audits/o33_ifort_flag_screen_20260801

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
  lscpu
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

printf 'candidate\tflags\tsource\trc\tobject_sha256\tobject_bytes\treport_sha256\treport_lines\n' > manifest.tsv

compile_one() {
  local candidate=$1
  local source=$2
  shift 2
  local extra_flags=("$@")
  local source_path="$parent/Build/${source}.f90"
  local object_path="$out/${candidate}.${source}.o"
  local report_path="$out/${candidate}.${source}.optrpt"
  local stdout_path="$out/${candidate}.${source}.stdout"
  local stderr_path="$out/${candidate}.${source}.stderr"
  local flag_text
  local rc
  local compile_flags=("${common_flags[@]}")

  if [[ ${#extra_flags[@]} -eq 0 ]]; then
    flag_text="(baseline)"
  else
    flag_text="${extra_flags[*]}"
    compile_flags+=("${extra_flags[@]}")
  fi
  set +e
  /usr/bin/time -p mpif90 "${compile_flags[@]}" \
    -qopt-report-file="$report_path" "$source_path" -o "$object_path" \
    >"$stdout_path" 2>"$stderr_path"
  rc=$?
  set -e

  if [[ $rc -eq 0 ]]; then
    printf '%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\n' \
      "$candidate" "$flag_text" "$source" "$rc" \
      "$(sha256sum "$object_path" | awk '{print $1}')" \
      "$(stat -c %s "$object_path")" \
      "$(sha256sum "$report_path" | awk '{print $1}')" \
      "$(wc -l < "$report_path")" >> manifest.tsv
  else
    printf '%s\t%s\t%s\t%s\tNA\tNA\tNA\tNA\n' \
      "$candidate" "$flag_text" "$source" "$rc" >> manifest.tsv
  fi
}

run_candidate() {
  local candidate=$1
  shift
  compile_one "$candidate" pre_step3d "$@"
  compile_one "$candidate" step3d_t "$@"
}

# Deliberately bounded screen. Prefetch/unroll and generic OpenMP variants are
# excluded because prior controlled experiments closed those directions.
run_candidate baseline
run_candidate align64 -align array64byte
run_candidate vec0 -vec-threshold0
run_candidate stream_never -qopt-streaming-stores=never
run_candidate stream_always -qopt-streaming-stores=always
run_candidate avx2 -march=core-avx2
run_candidate avx2_align -march=core-avx2 -align array64byte

sha256sum metadata.txt manifest.tsv *.o *.optrpt *.stdout *.stderr > SHA256SUMS
cat manifest.tsv
