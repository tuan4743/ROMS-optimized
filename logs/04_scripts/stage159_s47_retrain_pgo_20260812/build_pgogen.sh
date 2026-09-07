#!/usr/bin/env bash
set -euo pipefail
export LC_ALL=C LANG=C

parent=/public/home/fujiake/nan/sprint/ROMS_CoSiNE15_s47_quant
archive="$parent/backup_S47_src_20260810.tar.gz"
work=/public/home/fujiake/fjk/stage159_s47_retrain_pgo_20260812
root="$work/pgogen"
profile="$work/profile"
logs="$work/logs"
expected_archive=9b87a3a1a76a7138f945763c2e84290be022f9f5798b2731683ea448cba26cb9
expected_mk=b8bd3e5a887ec4bc79ce67d28ae7fc4f67bfd4fc78b7b711c6a590764db56e56
expected_parent_md5=1fc3be38a746ba1f5f5885eaf98e3bee

fail(){ echo "FATAL: $*" >&2; exit 2; }
hash_of(){ sha256sum "$1" | awk '{print $1}'; }
case "$work" in /public/home/fujiake/fjk/stage159_s47_retrain_pgo_20260812) ;; *) fail "unsafe work";; esac
[[ ! -e "$work" ]] || fail "work already exists: $work"
[[ "$(hash_of "$archive")" == "$expected_archive" ]] || fail "archive drift"
[[ "$(md5sum "$parent/oceanM.s47_SELQUANT_best_20260810.bak" | awk '{print $1}')" == "$expected_parent_md5" ]] || fail "binary drift"

mkdir -p "$root" "$profile" "$logs"
tar -xzf "$archive" -C "$root"
[[ "$(hash_of "$root/Compilers/Linux-ifort.mk")" == "$expected_mk" ]] || fail "makefile drift"

mk="$root/Compilers/Linux-ifort.mk"
old='-prof-use -prof-dir=/public/home/fujiake/nan/sprint/ROMS_CoSiNE15_s46_pgo'
new="-prof-gen -prof-dir=$profile"
[[ "$(grep -o -- "$old" "$mk" | wc -l)" -eq 2 ]] || fail "expected two prof-use occurrences"
sed -i "s|$old|$new|g" "$mk"
[[ "$(grep -o -- '-prof-gen' "$mk" | wc -l)" -eq 2 ]] || fail "prof-gen patch failed"
grep -n -E 'FFLAGS :=|LDFLAGS :=|prof-gen|prof-use|prof-dir' "$mk" > "$logs/makefile_pgo_lines.txt"

if [[ -e "$root/Inputfiles" || -L "$root/Inputfiles" ]]; then rm -f "$root/Inputfiles"; fi
ln -s /public/home/fujiake/Inputfiles "$root/Inputfiles"

module purge
module load compiler/intel/2021.3.0 mpi/hpcx/2.7.4/intel-2017.5.239 mathlib/netcdf/4.4.1/intel mathlib/hdf5/1.8.20/intel
ifort --version | head -1 | tee "$logs/ifort_version.txt"
cd "$root"
{ time /opt/rh/devtoolset-7/root/usr/bin/gmake -j16; } > "$logs/build_pgogen.log" 2>&1
[[ -x oceanM ]] || fail "missing pgogen binary"
cp -p oceanM oceanM.s47_exact_pgogen
sha256sum Compilers/Linux-ifort.mk oceanM.s47_exact_pgogen > "$logs/hashes.txt"
md5sum oceanM.s47_exact_pgogen >> "$logs/hashes.txt"
grep -aE 'prof-gen|prof-dir' "$logs/build_pgogen.log" | head -20 > "$logs/profgen_compile_lines.txt"
[[ -s "$logs/profgen_compile_lines.txt" ]] || fail "no prof-gen compile evidence"
echo STAGE159_PGOGEN_BUILD_DONE
