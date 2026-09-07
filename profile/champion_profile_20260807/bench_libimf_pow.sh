#!/bin/bash
# Mechanism check for candidate [C1]: is the 2017 libimf pow slower than the 2021 one,
# for the exponents GLS actually uses? Fortran + -shared-intel so that libimf is
# dynamically resolved exactly like oceanM. Single-threaded, seconds, login node.
# Writes only under agent_tmp.
set -u
W=/public/home/fujiake/fjk/agent_tmp/isolated/work/libimf_bench_20260807
L21=/public/software/compiler/intel/oneapi/oneapi-2021.3.0/compiler/2021.3.0/linux/compiler/lib/intel64_lin
B21=/public/software/compiler/intel/oneapi/oneapi-2021.3.0/compiler/2021.3.0/linux/bin/intel64
rm -rf "$W"; mkdir -p "$W" || exit 1; cd "$W" || exit 1

cat > bench.f90 <<'EOF'
      program bench
      implicit none
      integer, parameter :: r8 = selected_real_kind(12,300)
      integer, parameter :: n = 20000000
      real(r8) :: x, s, e
      integer  :: i, k
      real(r8) :: t0, t1
      real(r8), dimension(5) :: exps
      exps = (/ 1.0_r8, -1.0_r8, 1.5_r8, 0.5_r8, 2.5_r8 /)
      do k = 1, 5
        e = exps(k)
        s = 0.0_r8
        x = 1.0000001_r8
        call cpu_time(t0)
        do i = 1, n
          s = s + x**e
          x = x + 1.0e-9_r8
        end do
        call cpu_time(t1)
        write(*,'(A,F6.2,A,F9.4,A,ES12.5)') ' exp=', e, '  time=', t1-t0, ' s  sink=', s
      end do
      end program bench
EOF

module purge 2>/dev/null
module load compiler/intel/2017.5.239 2>/dev/null
command -v ifort >/dev/null || { echo "FATAL: no ifort"; exit 2; }
echo "=== compiler used to BUILD the benchmark (2017, same as O33) ==="
ifort --version | head -1
ifort -O3 -ip -fp-model precise -shared-intel -o bench bench.f90 2>&1 | tail -10
[ -x ./bench ] || { echo "FATAL: build failed"; exit 2; }

echo
echo "=== resolution check ==="
echo "-- A: 2017 module only (current production runtime) --"
ldd ./bench | grep -i -e libimf -e libsvml -e 'libm\.'
echo "-- B: 2021 compiler libs prepended --"
LD_LIBRARY_PATH=$L21:${LD_LIBRARY_PATH:-} ldd ./bench | grep -i -e libimf -e libsvml -e 'libm\.'

if ! ldd ./bench | grep -qi libimf; then
  echo "WARN: libimf still not dynamic; retrying with explicit -limf"
  ifort -O3 -ip -fp-model precise -shared-intel -o bench bench.f90 -limf 2>&1 | tail -5
  ldd ./bench | grep -i -e libimf -e 'libm\.'
fi

run3() {
  local tag=$1; shift
  echo "--- $tag ---"
  for r in 1 2 3; do
    echo "  rep$r:"
    env "$@" ./bench | sed 's/^/    /'
  done
}
echo
run3 "A_2017_libimf" LD_LIBRARY_PATH="${LD_LIBRARY_PATH:-}"
echo
run3 "B_2021_libimf" LD_LIBRARY_PATH="$L21:${LD_LIBRARY_PATH:-}"

echo
echo "WORKDIR=$W (retained)"
