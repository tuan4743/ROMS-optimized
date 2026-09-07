#!/usr/bin/env bash
set -euo pipefail
export LC_ALL=C LANG=C

parent=/public/home/fujiake/nan/sprint/ROMS_CoSiNE15_s47_quant
archive="$parent/backup_S47_src_20260810.tar.gz"
work=/public/home/fujiake/fjk/stage161_selective_fma_20260812_r2
aprime="$work/aprime"
candidate="$work/candidate"
logs="$work/logs"
asm="$work/asm"
ifort21_bin=/public/software/compiler/intel/oneapi/oneapi-2021.3.0/compiler/2021.3.0/linux/bin/intel64
ifort21_lib=/public/software/compiler/intel/oneapi/oneapi-2021.3.0/compiler/2021.3.0/linux/compiler/lib/intel64_lin
expected_archive=9b87a3a1a76a7138f945763c2e84290be022f9f5798b2731683ea448cba26cb9
expected_mk=b8bd3e5a887ec4bc79ce67d28ae7fc4f67bfd4fc78b7b711c6a590764db56e56
expected_parent_md5=1fc3be38a746ba1f5f5885eaf98e3bee

fail() { echo "FATAL: $*" >&2; exit 2; }
hash_of() { sha256sum "$1" | awk '{print $1}'; }
[[ "$work" == /public/home/fujiake/fjk/stage161_selective_fma_20260812_r2 ]] || fail "unsafe work path"
[[ ! -e "$work" ]] || fail "work path already exists: $work"
[[ "$(hash_of "$archive")" == "$expected_archive" ]] || fail "archive hash drift"
[[ "$(md5sum "$parent/oceanM.s47_SELQUANT_best_20260810.bak" | awk '{print $1}')" == "$expected_parent_md5" ]] || fail "parent binary drift"

mkdir -p "$aprime" "$candidate" "$logs" "$asm"
tar -xzf "$archive" -C "$aprime"
tar -xzf "$archive" -C "$candidate"
for root in "$aprime" "$candidate"; do
  [[ "$(hash_of "$root/Compilers/Linux-ifort.mk")" == "$expected_mk" ]] || fail "makefile lineage drift"
  rm -f "$root/Inputfiles"
  ln -s /public/home/fujiake/Inputfiles "$root/Inputfiles"
done

# Last option wins: override the global -no-fma only for the three measured YMM-heavy kernels.
mk="$candidate/Compilers/Linux-ifort.mk"
sed -i \
  -e 's|^$(SCRATCH_DIR)/pre_step3d\.o: private FFLAGS += -qopenmp -no-heap-arrays$|& -fma|' \
  -e 's|^$(SCRATCH_DIR)/step3d_t\.o: private FFLAGS += -qopenmp -no-heap-arrays$|& -fma|' \
  -e 's|^$(SCRATCH_DIR)/t3dmix\.o: private FFLAGS += -qopenmp -no-heap-arrays$|& -fma|' \
  "$mk"
[[ "$(grep -c -- ' -fma$' "$mk")" -eq 3 ]] || fail "candidate -fma patch count != 3"
diff -u "$aprime/Compilers/Linux-ifort.mk" "$mk" > "$logs/makefile.diff" || true
[[ "$(grep -c '^+' "$logs/makefile.diff")" -eq 4 ]] || fail "unexpected makefile diff"

module purge
module load mathlib/netcdf/4.4.1/intel mpi/hpcx/2.7.4/intel-2017.5.239
export PATH="$ifort21_bin:$PATH"
export LD_LIBRARY_PATH="$ifort21_lib:$LD_LIBRARY_PATH"
[[ "$(command -v ifort)" == "$ifort21_bin/ifort" ]] || fail "wrong ifort"
ifort --version | sed -n '1p' > "$logs/ifort_version.txt"

build_one() {
  local root=$1 label=$2
  cd "$root"
  { time make -j16; } > "$logs/build_${label}.log" 2>&1
  [[ -x oceanM ]] || fail "missing oceanM: $label"
  cp -p oceanM "oceanM.s47_${label}"
  sha256sum Compilers/Linux-ifort.mk "oceanM.s47_${label}" > "$logs/hashes_${label}.txt"
  md5sum "oceanM.s47_${label}" >> "$logs/hashes_${label}.txt"
  grep -aE 'pre_step3d\.f90|step3d_t\.f90|t3dmix\.f90' "$logs/build_${label}.log" > "$logs/hot_compile_${label}.txt" || true
}
build_one "$aprime" aprime
build_one "$candidate" candidate

symbols=(
  pre_step3d_mod_mp_pre_step3d_tile_
  step3d_t_mod_mp_step3d_t_tile_
  t3dmix_mod_mp_t3dmix4_tile_
)
for label in aprime candidate; do
  root="$work/$label"
  bin="$root/oceanM.s47_${label}"
  nm -S --size-sort "$bin" > "$logs/nm_${label}.txt"
  objdump -d "$bin" > "$asm/${label}.full.asm"
  for sym in "${symbols[@]}"; do
    awk -v marker="<$sym>:" '
      index($0, marker) {seen=1}
      seen {print}
      seen && NF==0 {exit}
    ' "$asm/${label}.full.asm" > "$asm/${label}.${sym}.asm"
    [[ -s "$asm/${label}.${sym}.asm" ]] || fail "missing asm for $label $sym"
  done
done

printf 'label,symbol,instructions,fma,vmulpd,vaddpd,vsubpd,ymm,xmm,calls,bytes\n' > "$logs/asm_counts.csv"
for label in aprime candidate; do
  for sym in "${symbols[@]}"; do
    f="$asm/${label}.${sym}.asm"
    inst=$(grep -cE '^\s*[0-9a-f]+:' "$f" || true)
    fma=$(grep -cE '\bv(fmadd|fmsub|fnmadd|fnmsub)' "$f" || true)
    mul=$(grep -cE '\bvmulpd\b' "$f" || true)
    add=$(grep -cE '\bvaddpd\b' "$f" || true)
    sub=$(grep -cE '\bvsubpd\b' "$f" || true)
    ymm=$(grep -cE '%ymm[0-9]+' "$f" || true)
    xmm=$(grep -cE '%xmm[0-9]+' "$f" || true)
    calls=$(grep -cE '\bcallq?\b' "$f" || true)
    bytes=$(stat -c %s "$f")
    printf '%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s\n' "$label" "$sym" "$inst" "$fma" "$mul" "$add" "$sub" "$ymm" "$xmm" "$calls" "$bytes" >> "$logs/asm_counts.csv"
  done
done

stat -c '%n|%s' \
  "$aprime/oceanM.s47_aprime" "$candidate/oceanM.s47_candidate" \
  "$aprime/Build/pre_step3d.o" "$candidate/Build/pre_step3d.o" \
  "$aprime/Build/step3d_t.o" "$candidate/Build/step3d_t.o" \
  "$aprime/Build/t3dmix.o" "$candidate/Build/t3dmix.o" > "$logs/sizes.txt"
rm -f "$asm/aprime.full.asm" "$asm/candidate.full.asm"
echo STAGE161_SELECTIVE_FMA_BUILD_GATE_DONE
