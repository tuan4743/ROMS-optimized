#!/bin/bash
set -u
# Diagnose ImpI wrapper substitution + 2017 fallback
export I_MPI_ROOT=/public/software/mpi/intelmpi/2021.3.0
export PATH=$I_MPI_ROOT/bin:$PATH
export LD_LIBRARY_PATH=$I_MPI_ROOT/lib/release:$I_MPI_ROOT/lib:${LD_LIBRARY_PATH:-}
echo '==== with I_MPI_ROOT only ===='
mpiifort -show 2>&1 | head -2

# source vars without set -u
set +u
source "$I_MPI_ROOT/env/vars.sh" 2>/dev/null || source "$I_MPI_ROOT/vars.sh" 2>/dev/null || true
set -u
echo '==== after vars.sh ===='
echo "I_MPI_ROOT=$I_MPI_ROOT"
mpiifort -show 2>&1 | head -2

echo '==== 2017 mpivars ===='
set +u
source /public/software/mpi/intelmpi/2017.4.239/intel64/bin/mpivars.sh
set -u
which mpiifort
mpiifort -show 2>&1 | head -2
export I_MPI_F90=/public/software/compiler/intel/oneapi/oneapi-2021.3.0/compiler/2021.3.0/linux/bin/intel64/ifort
export PATH=/public/software/compiler/intel/oneapi/oneapi-2021.3.0/compiler/2021.3.0/linux/bin/intel64:$PATH
mpiifort -show 2>&1 | head -2
# compile trivial
cat >/tmp/t_mpi.f90 <<'F'
program t
  include 'mpif.h'
  integer :: ierr
  call MPI_Init(ierr)
  call MPI_Finalize(ierr)
end
F
mpiifort -o /tmp/t_mpi /tmp/t_mpi.f90 2>&1 | tail -20
echo rc=$?
ldd /tmp/t_mpi 2>/dev/null | grep mpi | head
