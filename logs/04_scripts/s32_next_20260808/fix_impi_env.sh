#!/bin/bash
set -u
IMPI=/public/software/mpi/intelmpi/2021.3.0
echo '==== impi layout ===='
ls "$IMPI"
ls "$IMPI/env" 2>/dev/null
ls "$IMPI/bin" | head
ls "$IMPI/include" 2>/dev/null | head
test -f "$IMPI/include/mpif.h" && echo HAS_mpif_h
test -f "$IMPI/include/mpi.h" && echo HAS_mpi_h
# try vars
if [[ -f "$IMPI/env/vars.sh" ]]; then
  # shellcheck disable=SC1090
  source "$IMPI/env/vars.sh"
  echo "AFTER_VARS PATH_has_impi=$(echo $PATH | tr : '\n' | grep intelmpi | head -2)"
  mpiifort -show 2>&1 | head -3
fi
# 2017 style
ls /public/software/mpi/intelmpi/2017.4.239/intel64/bin/mpivars.sh 2>/dev/null
