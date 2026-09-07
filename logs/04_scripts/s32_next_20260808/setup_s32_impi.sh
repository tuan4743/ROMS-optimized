#!/usr/bin/env bash
# Stage 126 BELOW-GATE: set up clean S32 tree for Intel MPI rebuild.
# User explicitly authorized below-gate ImpI diagnostic 2026-08-08.
set -euo pipefail
export LC_ALL=C LANG=C

src=/public/home/fujiake/fjk/agent_tmp/isolated/work/s32_ifort2022_20260808/ROMS_CoSiNE15
base=/public/home/fujiake/fjk/agent_tmp/isolated/work/s32_impi_20260808
root=$base/ROMS_CoSiNE15
logdir=/public/home/fujiake/fjk/agent_tmp/logs/s32_impi_20260808
s32_parent=/public/home/fujiake/nan/sprint/ROMS_CoSiNE15_s22b/oceanM.s32_ifort2021_ipo.bak
expected_parent_md5=92ffbd0184e82f84d47896d8eaa0712b
expected_mk_16=38824c70b2e15fef

fail() { echo "FATAL: $*" >&2; exit 2; }

[[ -d "$src/ROMS" ]] || fail "missing src $src"
[[ ! -e "$base" ]] || fail "exists $base"
mkdir -p "$base" "$logdir"
cp -a "$src" "$root"
rm -f "$root"/oceanM "$root"/oceanM.S32_* 2>/dev/null || true
rm -rf "$root/Build"

# Ensure PROFILE off (performance binary)
if grep -q '^#define PROFILE' "$root/ROMS/Include/globaldefs.h"; then
  sed -i '0,/^#define PROFILE/{s/^#define PROFILE/#undef PROFILE/}' "$root/ROMS/Include/globaldefs.h"
fi
grep -n 'PROFILE' "$root/ROMS/Include/globaldefs.h" | head -8 | tee "$logdir/profile_state.txt"
grep -q 'S32-BcastHier' "$root/ROMS/Utility/distribute.F" && fail "tree has BcastHier patch"

mk_16=$(sha256sum "$root/Compilers/Linux-ifort.mk" | cut -c1-16)
[[ "$mk_16" == "$expected_mk_16" ]] || fail "mk hash $mk_16 != $expected_mk_16"
echo "MK_OK $mk_16" | tee "$logdir/setup.txt"

cp -p "$s32_parent" "$root/oceanM.S32_parent"
pmd5=$(md5sum "$root/oceanM.S32_parent" | awk '{print $1}')
[[ "$pmd5" == "$expected_parent_md5" ]] || fail "parent md5 $pmd5"
echo "PARENT_MD5_OK $pmd5" | tee -a "$logdir/setup.txt"

ln -sfn /public/home/fujiake/Inputfiles "$root/Inputfiles"
[[ -f "$root/coll_rules.conf" ]] || fail "missing coll_rules"
[[ -f "$root/ROMS/External/ocean_SCS_Dongsha60_bio15.in" ]] || fail "missing ocean.in"

# mpif90 -> mpiifort wrapper (keeps Linux-ifort.mk byte-identical)
wrap=$base/mpi_wrappers
mkdir -p "$wrap"
cat > "$wrap/mpif90" <<'EOF'
#!/usr/bin/env bash
# BELOW_GATE: route ROMS mpif90 to Intel MPI mpiifort
exec /public/software/mpi/intelmpi/2021.3.0/bin/mpiifort "$@"
EOF
chmod +x "$wrap/mpif90"
# also cover mpifort if asked
ln -sfn mpif90 "$wrap/mpifort"

echo "SETUP_OK root=$root" | tee -a "$logdir/setup.txt"
