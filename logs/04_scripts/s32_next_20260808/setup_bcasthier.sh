#!/bin/bash
# [S32-BcastHier] setup tree, patch distribute.F (mp_bcastf/i/l only).
set -euo pipefail
WORK=/public/home/fujiake/fjk/agent_tmp/isolated/work/s32_bcasthier_20260808
SCRIPTS=/public/home/fujiake/fjk/agent_tmp/isolated/scripts/s32_bcasthier_20260808
SRC_TGZ=/public/home/fujiake/nan/sprint/backup_S32_src_20260808.tar.gz
MASTER_SRC=/public/home/fujiake/nan/sprint/ROMS_CoSiNE15_s22b

rm -rf "$WORK" "$SCRIPTS"
mkdir -p "$WORK" "$SCRIPTS"
cd "$WORK"
tar -xzf "$SRC_TGZ"
if [ -d ROMS_CoSiNE15 ]; then
  TREE=$WORK/ROMS_CoSiNE15
elif [ -d ROMS ]; then
  mkdir ROMS_CoSiNE15
  shopt -s dotglob nullglob
  for x in *; do
    [ "$x" = ROMS_CoSiNE15 ] && continue
    mv "$x" ROMS_CoSiNE15/
  done
  TREE=$WORK/ROMS_CoSiNE15
else
  echo "bad tar layout"; ls -la; exit 1
fi
[ -d "$TREE/Master" ] || cp -a "$MASTER_SRC/Master" "$TREE/"
[ -f "$TREE/Compilers/Linux-ifort.mk" ] || cp -a "$MASTER_SRC/Compilers/Linux-ifort.mk" "$TREE/Compilers/"
for need in makefile Build.sh; do
  [ -e "$TREE/$need" ] || cp -a "$MASTER_SRC/$need" "$TREE/" 2>/dev/null || true
done

D=$TREE/ROMS/Utility/distribute.F
cp -a "$D" "$D.pre_bcasthier"
md5sum "$D" > "$WORK/distribute_before.md5"

HELPER=$WORK/mp_hier_helper.inc
# shellcheck disable=SC2016
cat > "$HELPER" << 'EOF'

! ===== [S32-BcastHier] hierarchical Bcast helpers (O9 pattern) =====
      SUBROUTINE mp_hier_bcast_real (Npts, A, MyError)
      USE mod_parallel
      USE mod_iounits
      USE mod_scalars
      implicit none
      integer, intent(in) :: Npts
      integer, intent(out) :: MyError
      real(r8), intent(inout) :: A(*)
      integer :: HierColor, HierLocalRank, Lstr, Serror
      integer, save :: HierSharedComm=MPI_COMM_NULL
      integer, save :: HierLeaderComm=MPI_COMM_NULL
      character (len=MPI_MAX_ERROR_STRING) :: string
      MyError=MPI_SUCCESS
      IF (MyMaster.eq.0) THEN
        IF (HierSharedComm.eq.MPI_COMM_NULL) THEN
          CALL mpi_comm_split_type (OCN_COMM_WORLD,                    &
     &                              MPI_COMM_TYPE_SHARED, MyRank,       &
     &                              MPI_INFO_NULL, HierSharedComm,      &
     &                              MyError)
          IF (MyError.eq.MPI_SUCCESS) THEN
            CALL mpi_comm_rank (HierSharedComm, HierLocalRank, MyError)
          END IF
          IF (MyError.eq.MPI_SUCCESS) THEN
            IF (HierLocalRank.eq.0) THEN
              HierColor=0
            ELSE
              HierColor=MPI_UNDEFINED
            END IF
            CALL mpi_comm_split (OCN_COMM_WORLD, HierColor, MyRank,     &
     &                           HierLeaderComm, MyError)
          END IF
        ELSE
          CALL mpi_comm_rank (HierSharedComm, HierLocalRank, MyError)
        END IF
        IF (MyError.eq.MPI_SUCCESS) THEN
          IF (HierLocalRank.eq.0) THEN
            CALL mpi_bcast (A, Npts, MP_FLOAT, 0, HierLeaderComm,       &
     &                      MyError)
          END IF
        END IF
        IF (MyError.eq.MPI_SUCCESS) THEN
          CALL mpi_bcast (A, Npts, MP_FLOAT, 0, HierSharedComm, MyError)
        END IF
      END IF
      IF ((MyMaster.ne.0).or.(MyError.ne.MPI_SUCCESS)) THEN
        MyError=MPI_SUCCESS
        CALL mpi_bcast (A, Npts, MP_FLOAT, MyMaster, OCN_COMM_WORLD,    &
     &                  MyError)
      END IF
      IF (MyError.ne.MPI_SUCCESS) THEN
        CALL mpi_error_string (MyError, string, Lstr, Serror)
        Lstr=LEN_TRIM(string)
        WRITE (stdout,91) 'MPI_BCAST', MyRank, MyError, string(1:Lstr)
 91     FORMAT (/,' MP_HIER_BCAST_REAL - error during ',a,              &
     &          ', Node = ',i3.3,' Error = ',i3,/,15x,a)
        exit_flag=2
      END IF
      RETURN
      END SUBROUTINE mp_hier_bcast_real

      SUBROUTINE mp_hier_bcast_int (Npts, A, MyError)
      USE mod_parallel
      USE mod_iounits
      USE mod_scalars
      implicit none
      integer, intent(in) :: Npts
      integer, intent(out) :: MyError
      integer, intent(inout) :: A(*)
      integer :: HierColor, HierLocalRank, Lstr, Serror
      integer, save :: HierSharedComm=MPI_COMM_NULL
      integer, save :: HierLeaderComm=MPI_COMM_NULL
      character (len=MPI_MAX_ERROR_STRING) :: string
      MyError=MPI_SUCCESS
      IF (MyMaster.eq.0) THEN
        IF (HierSharedComm.eq.MPI_COMM_NULL) THEN
          CALL mpi_comm_split_type (OCN_COMM_WORLD,                    &
     &                              MPI_COMM_TYPE_SHARED, MyRank,       &
     &                              MPI_INFO_NULL, HierSharedComm,      &
     &                              MyError)
          IF (MyError.eq.MPI_SUCCESS) THEN
            CALL mpi_comm_rank (HierSharedComm, HierLocalRank, MyError)
          END IF
          IF (MyError.eq.MPI_SUCCESS) THEN
            IF (HierLocalRank.eq.0) THEN
              HierColor=0
            ELSE
              HierColor=MPI_UNDEFINED
            END IF
            CALL mpi_comm_split (OCN_COMM_WORLD, HierColor, MyRank,     &
     &                           HierLeaderComm, MyError)
          END IF
        ELSE
          CALL mpi_comm_rank (HierSharedComm, HierLocalRank, MyError)
        END IF
        IF (MyError.eq.MPI_SUCCESS) THEN
          IF (HierLocalRank.eq.0) THEN
            CALL mpi_bcast (A, Npts, MPI_INTEGER, 0, HierLeaderComm,    &
     &                      MyError)
          END IF
        END IF
        IF (MyError.eq.MPI_SUCCESS) THEN
          CALL mpi_bcast (A, Npts, MPI_INTEGER, 0, HierSharedComm,      &
     &                    MyError)
        END IF
      END IF
      IF ((MyMaster.ne.0).or.(MyError.ne.MPI_SUCCESS)) THEN
        MyError=MPI_SUCCESS
        CALL mpi_bcast (A, Npts, MPI_INTEGER, MyMaster, OCN_COMM_WORLD, &
     &                  MyError)
      END IF
      IF (MyError.ne.MPI_SUCCESS) THEN
        CALL mpi_error_string (MyError, string, Lstr, Serror)
        Lstr=LEN_TRIM(string)
        WRITE (stdout,92) 'MPI_BCAST', MyRank, MyError, string(1:Lstr)
 92     FORMAT (/,' MP_HIER_BCAST_INT - error during ',a,               &
     &          ', Node = ',i3.3,' Error = ',i3,/,15x,a)
        exit_flag=2
      END IF
      RETURN
      END SUBROUTINE mp_hier_bcast_int

      SUBROUTINE mp_hier_bcast_log (Npts, A, MyError)
      USE mod_parallel
      USE mod_iounits
      USE mod_scalars
      implicit none
      integer, intent(in) :: Npts
      integer, intent(out) :: MyError
      logical, intent(inout) :: A(*)
      integer :: HierColor, HierLocalRank, Lstr, Serror
      integer, save :: HierSharedComm=MPI_COMM_NULL
      integer, save :: HierLeaderComm=MPI_COMM_NULL
      character (len=MPI_MAX_ERROR_STRING) :: string
      MyError=MPI_SUCCESS
      IF (MyMaster.eq.0) THEN
        IF (HierSharedComm.eq.MPI_COMM_NULL) THEN
          CALL mpi_comm_split_type (OCN_COMM_WORLD,                    &
     &                              MPI_COMM_TYPE_SHARED, MyRank,       &
     &                              MPI_INFO_NULL, HierSharedComm,      &
     &                              MyError)
          IF (MyError.eq.MPI_SUCCESS) THEN
            CALL mpi_comm_rank (HierSharedComm, HierLocalRank, MyError)
          END IF
          IF (MyError.eq.MPI_SUCCESS) THEN
            IF (HierLocalRank.eq.0) THEN
              HierColor=0
            ELSE
              HierColor=MPI_UNDEFINED
            END IF
            CALL mpi_comm_split (OCN_COMM_WORLD, HierColor, MyRank,     &
     &                           HierLeaderComm, MyError)
          END IF
        ELSE
          CALL mpi_comm_rank (HierSharedComm, HierLocalRank, MyError)
        END IF
        IF (MyError.eq.MPI_SUCCESS) THEN
          IF (HierLocalRank.eq.0) THEN
            CALL mpi_bcast (A, Npts, MPI_LOGICAL, 0, HierLeaderComm,    &
     &                      MyError)
          END IF
        END IF
        IF (MyError.eq.MPI_SUCCESS) THEN
          CALL mpi_bcast (A, Npts, MPI_LOGICAL, 0, HierSharedComm,      &
     &                    MyError)
        END IF
      END IF
      IF ((MyMaster.ne.0).or.(MyError.ne.MPI_SUCCESS)) THEN
        MyError=MPI_SUCCESS
        CALL mpi_bcast (A, Npts, MPI_LOGICAL, MyMaster, OCN_COMM_WORLD, &
     &                  MyError)
      END IF
      IF (MyError.ne.MPI_SUCCESS) THEN
        CALL mpi_error_string (MyError, string, Lstr, Serror)
        Lstr=LEN_TRIM(string)
        WRITE (stdout,93) 'MPI_BCAST', MyRank, MyError, string(1:Lstr)
 93     FORMAT (/,' MP_HIER_BCAST_LOG - error during ',a,               &
     &          ', Node = ',i3.3,' Error = ',i3,/,15x,a)
        exit_flag=2
      END IF
      RETURN
      END SUBROUTINE mp_hier_bcast_log
! ===== end S32-BcastHier helpers =====
EOF

perl -e '
  my ($d,$h)=@ARGV;
  open H,"<",$h or die $!; local $/; my $helper=<H>; close H;
  open F,"<",$d or die $!; my $t=<F>; close F;
  $t =~ s/(      CONTAINS\n)/$1$helper/ or die "insert failed";
  my ($head,$rest) = $t =~ /^(.*?END SUBROUTINE mp_barrier\n)(.*)$/s;
  die "split failed" unless defined $rest;
  # Zone: from first mp_bcastf_0d through end of mp_bcastl_2d (leave mp_bcasts* flat)
  my ($pre, $zone, $tail);
  if ($rest =~ /^(.*?)(      SUBROUTINE mp_bcastf_0d\n.*?END SUBROUTINE mp_bcastl_2d\n)(.*)$/s) {
    ($pre,$zone,$tail)=($1,$2,$3);
  } else { die "bcast zone failed"; }
  my $n=0;
  $n += ($zone =~ s/CALL mpi_bcast \(A, 1, MP_FLOAT, MyMaster, OCN_COMM_WORLD, MyError\)/CALL mp_hier_bcast_real (1, A, MyError)/g);
  $n += ($zone =~ s/CALL mpi_bcast \(A, Npts, MP_FLOAT, MyMaster, OCN_COMM_WORLD,\s*&\n\s*&                MyError\)/CALL mp_hier_bcast_real (Npts, A, MyError)/g);
  $n += ($zone =~ s/CALL mpi_bcast \(A, 1, MPI_INTEGER, MyMaster, OCN_COMM_WORLD,\s*&\n\s*&                MyError\)/CALL mp_hier_bcast_int (1, A, MyError)/g);
  $n += ($zone =~ s/CALL mpi_bcast \(A, Npts, MPI_INTEGER, MyMaster, OCN_COMM_WORLD,\s*&\n\s*&                MyError\)/CALL mp_hier_bcast_int (Npts, A, MyError)/g);
  $n += ($zone =~ s/CALL mpi_bcast \(A, 1, MPI_LOGICAL, MyMaster, OCN_COMM_WORLD,\s*&\n\s*&                MyError\)/CALL mp_hier_bcast_log (1, A, MyError)/g);
  $n += ($zone =~ s/CALL mpi_bcast \(A, Npts, MPI_LOGICAL, MyMaster, OCN_COMM_WORLD,\s*&\n\s*&                MyError\)/CALL mp_hier_bcast_log (Npts, A, MyError)/g);
  print STDERR "replacements=$n\n";
  die "too few replacements: $n (want 11)" if $n < 11;
  if ($zone =~ /CALL mpi_bcast/) {
    print STDERR "leftover mpi_bcast:\n";
    while ($zone =~ /^(.*CALL mpi_bcast.*)$/mg) { print STDERR "$1\n"; }
    die "leftover";
  }
  open O,">",$d or die $!; print O $head,$pre,$zone,$tail; close O;
  print STDERR "patch ok\n";
' "$D" "$HELPER"

md5sum "$D" | tee "$WORK/distribute_after.md5"
echo "==== verify hooks ===="
grep -c 'mp_hier_bcast_real' "$D"
grep -c 'mp_hier_bcast_int' "$D"
grep -c 'mp_hier_bcast_log' "$D"
grep -n 'CALL mp_hier_bcast\|CALL mpi_bcast' "$D" | head -40
echo "TREE=$TREE"
