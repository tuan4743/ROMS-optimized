#!/usr/bin/env bash
set -euo pipefail

export LC_ALL=C LANG=C

parent=/public/home/fujiake/nan/sprint/ROMS_CoSiNE15_s47_quant
archive="$parent/backup_S47_src_20260810.tar.gz"
work=/public/home/fujiake/fjk/stage158_multiversion_20260812_r3
aprime="$work/aprime"
candidate="$work/candidate"
logs="$work/logs"
ifort21_bin=/public/software/compiler/intel/oneapi/oneapi-2021.3.0/compiler/2021.3.0/linux/bin/intel64
ifort21_lib=/public/software/compiler/intel/oneapi/oneapi-2021.3.0/compiler/2021.3.0/linux/compiler/lib/intel64_lin
expected_archive=9b87a3a1a76a7138f945763c2e84290be022f9f5798b2731683ea448cba26cb9
expected_mk=b8bd3e5a887ec4bc79ce67d28ae7fc4f67bfd4fc78b7b711c6a590764db56e56
expected_parent_md5=1fc3be38a746ba1f5f5885eaf98e3bee

fail() { echo "FATAL: $*" >&2; exit 2; }
hash_of() { sha256sum "$1" | awk '{print $1}'; }

case "$work" in
  /public/home/fujiake/fjk/stage158_multiversion_20260812_r3) ;;
  *) fail "unsafe work path: $work" ;;
esac
[[ ! -e "$work" ]] || fail "work path already exists: $work"
[[ -f "$archive" ]] || fail "missing source archive"
[[ "$(hash_of "$archive")" == "$expected_archive" ]] || fail "archive hash drift"
[[ "$(md5sum "$parent/oceanM.s47_SELQUANT_best_20260810.bak" | awk '{print $1}')" == "$expected_parent_md5" ]] || fail "frozen parent binary drift"

mkdir -p "$aprime" "$candidate" "$logs"
tar -xzf "$archive" -C "$aprime"
tar -xzf "$archive" -C "$candidate"

for root in "$aprime" "$candidate"; do
  [[ "$(hash_of "$root/Compilers/Linux-ifort.mk")" == "$expected_mk" ]] || fail "makefile lineage drift: $root"
  if [[ -e "$root/Inputfiles" || -L "$root/Inputfiles" ]]; then
    rm -f "$root/Inputfiles"
  fi
  ln -s /public/home/fujiake/Inputfiles "$root/Inputfiles"
  [[ "$(readlink -f "$root/Inputfiles")" == /public/home/fujiake/Inputfiles ]] || fail "bad Inputfiles link: $root"
done

# Preflight the candidate flag with the exact compiler before touching the model build.
cat > "$work/flag_probe.f90" <<'EOF'
subroutine flag_probe(a,b,n)
  integer :: n,i
  real*8 :: a(n),b(n)
  do i=1,n
    a(i)=b(i)+1.0d0
  enddo
end
EOF

module purge
module load mathlib/netcdf/4.4.1/intel
module load mpi/hpcx/2.7.4/intel-2017.5.239
export PATH="$ifort21_bin:$PATH"
export LD_LIBRARY_PATH="$ifort21_lib:$LD_LIBRARY_PATH"
[[ "$(command -v ifort)" == "$ifort21_bin/ifort" ]] || fail "wrong ifort: $(command -v ifort)"
ifort --version | head -1 | tee "$logs/ifort_version.txt"
ifort -c -O3 -qopt-multi-version-aggressive "$work/flag_probe.f90" -o "$work/flag_probe.o" > "$logs/flag_probe.log" 2>&1

patch_mk() {
  local root=$1 label=$2 extra=$3 mk="$1/Compilers/Linux-ifort.mk"
  local common="-qopt-report=5 -qopt-report-phase=loop,vec"
  sed -i \
    -e "s|^\$(SCRATCH_DIR)/pre_step3d\.o: private FFLAGS += -qopenmp -no-heap-arrays$|& ${common} -qopt-report-file=stage158.${label}.optrpt ${extra}|" \
    -e "s|^\$(SCRATCH_DIR)/step3d_t\.o: private FFLAGS += -qopenmp -no-heap-arrays$|& ${common} -qopt-report-file=stage158.${label}.optrpt ${extra}|" \
    -e "s|^\$(SCRATCH_DIR)/t3dmix\.o: private FFLAGS += -qopenmp -no-heap-arrays$|& ${common} -qopt-report-file=stage158.${label}.optrpt ${extra}|" \
    -e "s|^\$(SCRATCH_DIR)/gls_corstep\.o: private FFLAGS += -qopenmp -no-heap-arrays -fp-model source$|& ${common} -qopt-report-file=stage158.${label}.optrpt ${extra}|" \
    -e "s|^\$(SCRATCH_DIR)/step2d\.o: private FFLAGS += -no-heap-arrays -march=core-avx2 -no-fma$|& ${common} -qopt-report-file=stage158.${label}.optrpt ${extra}|" \
    "$mk"
  [[ "$(grep -c -- '-qopt-report-file=' "$mk")" -eq 5 ]] || fail "report flag patch count != 5: $root"
  if [[ -n "$extra" ]]; then
    [[ "$(grep -c -- '-qopt-multi-version-aggressive' "$mk")" -eq 5 ]] || fail "candidate flag patch count != 5"
  fi
}

patch_mk "$aprime" aprime ""
patch_mk "$candidate" candidate "-qopt-multi-version-aggressive"

build_one() {
  local root=$1 label=$2
  cd "$root"
  { time make -j16; } > "$logs/build_${label}.log" 2>&1
  [[ -x oceanM ]] || fail "missing oceanM: $label"
  cp -p oceanM "oceanM.s47_${label}"
  sha256sum Compilers/Linux-ifort.mk "oceanM.s47_${label}" > "$logs/hashes_${label}.txt"
  md5sum "oceanM.s47_${label}" >> "$logs/hashes_${label}.txt"
  grep -aE 'pre_step3d\.f90|step3d_t\.f90|t3dmix\.f90|gls_corstep\.f90|step2d\.f90' "$logs/build_${label}.log" > "$logs/hot_compile_${label}.txt" || true
}

build_one "$aprime" aprime
build_one "$candidate" candidate

for root in "$aprime" "$candidate"; do
  find "$root/Build" -maxdepth 1 -name '*.optrpt' -type f -print -exec sha256sum {} \; >> "$logs/report_manifest.txt"
done

stat -c '%n|%s' \
  "$aprime/Build/pre_step3d.o" "$candidate/Build/pre_step3d.o" \
  "$aprime/Build/step3d_t.o" "$candidate/Build/step3d_t.o" \
  "$aprime/Build/t3dmix.o" "$candidate/Build/t3dmix.o" \
  "$aprime/Build/gls_corstep.o" "$candidate/Build/gls_corstep.o" \
  "$aprime/Build/step2d.o" "$candidate/Build/step2d.o" \
  > "$logs/object_sizes.txt"

echo "STAGE158_BUILD_REPORT_GATE_DONE"
