#!/bin/bash
set -euo pipefail
D=/public/home/fujiake/fjk/agent_tmp/isolated/work/s32_bcasthier_20260808/ROMS_CoSiNE15/ROMS/Utility/distribute.F

# 1) Insert scalar wrappers after mp_hier_bcast_log END
perl -i -0pe '
my $wrap = <<'"'"'EOF'"'"';

      SUBROUTINE mp_hier_bcast_real0 (A, MyError)
      USE mod_param
      implicit none
      real(r8), intent(inout) :: A
      integer, intent(out) :: MyError
      real(r8) :: Atmp(1)
      Atmp(1)=A
      CALL mp_hier_bcast_real (1, Atmp, MyError)
      A=Atmp(1)
      RETURN
      END SUBROUTINE mp_hier_bcast_real0

      SUBROUTINE mp_hier_bcast_int0 (A, MyError)
      implicit none
      integer, intent(inout) :: A
      integer, intent(out) :: MyError
      integer :: Atmp(1)
      Atmp(1)=A
      CALL mp_hier_bcast_int (1, Atmp, MyError)
      A=Atmp(1)
      RETURN
      END SUBROUTINE mp_hier_bcast_int0

      SUBROUTINE mp_hier_bcast_log0 (A, MyError)
      implicit none
      logical, intent(inout) :: A
      integer, intent(out) :: MyError
      logical :: Atmp(1)
      Atmp(1)=A
      CALL mp_hier_bcast_log (1, Atmp, MyError)
      A=Atmp(1)
      RETURN
      END SUBROUTINE mp_hier_bcast_log0
EOF
s/(      END SUBROUTINE mp_hier_bcast_log\n)/$1$wrap/ or die "wrap insert failed";
' "$D"

# 2) Fix 0d call sites
perl -i -pe '
  s/CALL mp_hier_bcast_real \(1, A, MyError\)/CALL mp_hier_bcast_real0 (A, MyError)/g;
  s/CALL mp_hier_bcast_int \(1, A, MyError\)/CALL mp_hier_bcast_int0 (A, MyError)/g;
  s/CALL mp_hier_bcast_log \(1, A, MyError\)/CALL mp_hier_bcast_log0 (A, MyError)/g;
' "$D"

echo "==== 0d wrappers ===="
grep -n 'mp_hier_bcast_.*0\|CALL mp_hier_bcast' "$D" | head -40
md5sum "$D"
