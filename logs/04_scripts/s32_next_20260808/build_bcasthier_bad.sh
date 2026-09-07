#!/bin/bash
# Build S32 + hierarchical mp_bcast* (O9 pattern) candidate.
set -euo pipefail
WORK=/public/home/fujiake/fjk/agent_tmp/isolated/work/s32_bcasthier_20260808
SCRIPTS=/public/home/fujiake/fjk/agent_tmp/isolated/scripts/s32_bcasthier_20260808
SRC_TGZ=/public/home/fujiake/nan/sprint/backup_S32_src_20260808.tar.gz
MASTER_SRC=/public/home/fujiake/nan/sprint/ROMS_CoSiNE15_s22b
S32_BIN_PARENT=/public/home/fujiake/nan/sprint/ROMS_CoSiNE15_s22b/oceanM.s32_ifort2021_ipo.bak

rm -rf "$WORK" "$SCRIPTS"
mkdir -p "$WORK" "$SCRIPTS"
cd "$WORK"
tar -xzf "$SRC_TGZ"
# backup is flat ROMS tree pieces; expect ROMS_CoSiNE15 or flat
if [ -d ROMS_CoSiNE15 ]; then
  TREE=$WORK/ROMS_CoSiNE15
elif [ -d ROMS ]; then
  mkdir -p ROMS_CoSiNE15
  # move contents
  for x in *; do
    [ "$x" = ROMS_CoSiNE15 ] && continue
    mv "$x" ROMS_CoSiNE15/
  done
  TREE=$WORK/ROMS_CoSiNE15
else
  echo "Unexpected tarball layout:"; ls -la; exit 1
fi
# Master often missing from S32 backup
if [ ! -d "$TREE/Master" ]; then
  cp -a "$MASTER_SRC/Master" "$TREE/"
fi
# ensure makefile / compilers present
if [ ! -f "$TREE/Compilers/Linux-ifort.mk" ]; then
  cp -a "$MASTER_SRC/Compilers/Linux-ifort.mk" "$TREE/Compilers/"
fi

D=$TREE/ROMS/Utility/distribute.F
cp -a "$D" "$D.pre_bcasthier"
# Record md5 before
md5sum "$D" | tee "$WORK/distribute_before.md5"

# Python-free patch via perl: inject helper after CONTAINS and replace
# mpi_bcast in mp_bcast* routines only (before mp_boundary).
perl -i -0pe '
  # Insert module-level note is hard; instead inject helper right after "CONTAINS\n!"
  my $helper = <<'"'"'HELPER'"'"';

! ===== [S32-BcastHier] hierarchical Bcast helper (O9 pattern → mp_bcast*) =====
      SUBROUTINE mp_hier_bcast_impl (Npts, Dtype, Buf)
!
!  In-place hierarchical MPI_Bcast for contiguous buffer Buf(1:Npts).
!  Root is MyMaster. Falls back to flat OCN_COMM_WORLD Bcast on failure
!  or if MyMaster≠0 (same contract as O9 mp_scatter3d).
!
      USE mod_parallel
      USE mod_iounits
      implicit none
      integer, intent(in) :: Npts, Dtype
      ! Buf is passed as a 1-element array reference of matching MPI type;
      ! callers pass the first element / whole assumed-size array.
      integer :: Buf(*)
      integer :: MyError, Lstr, Serror
      integer :: HierColor, HierLocalRank
      integer, save :: HierSharedComm=MPI_COMM_NULL
      integer, save :: HierLeaderComm=MPI_COMM_NULL
      character (len=MPI_MAX_ERROR_STRING) :: string

      MyError=MPI_SUCCESS
      IF (MyMaster.eq.0) THEN
        IF (HierSharedComm.eq.MPI_COMM_NULL) THEN
          CALL mpi_comm_split_type (OCN_COMM_WORLD,                    &
     &                              MPI_COMM_TYPE_SHARED, MyRank,       &
     &                              MPI_INFO_NULL,                     &
     &                              HierSharedComm, MyError)
          IF (MyError.eq.MPI_SUCCESS) THEN
            CALL mpi_comm_rank (HierSharedComm, HierLocalRank,         &
     &                          MyError)
          END IF
          IF (MyError.eq.MPI_SUCCESS) THEN
            IF (HierLocalRank.eq.0) THEN
              HierColor=0
            ELSE
              HierColor=MPI_UNDEFINED
            END IF
            CALL mpi_comm_split (OCN_COMM_WORLD, HierColor, MyRank,   &
     &                           HierLeaderComm, MyError)
          END IF
        ELSE
          CALL mpi_comm_rank (HierSharedComm, HierLocalRank,           &
     &                        MyError)
        END IF
        IF (MyError.eq.MPI_SUCCESS) THEN
          IF (HierLocalRank.eq.0) THEN
            CALL mpi_bcast (Buf, Npts, Dtype, 0,                       &
     &                      HierLeaderComm, MyError)
          END IF
        END IF
        IF (MyError.eq.MPI_SUCCESS) THEN
          CALL mpi_bcast (Buf, Npts, Dtype, 0, HierSharedComm,         &
     &                    MyError)
        END IF
      END IF
      IF ((MyMaster.ne.0).or.(MyError.ne.MPI_SUCCESS)) THEN
        MyError=MPI_SUCCESS
        CALL mpi_bcast (Buf, Npts, Dtype, MyMaster, OCN_COMM_WORLD,    &
     &                  MyError)
      END IF
      IF (MyError.ne.MPI_SUCCESS) THEN
        CALL mpi_error_string (MyError, string, Lstr, Serror)
        Lstr=LEN_TRIM(string)
        WRITE (stdout,90) '"'"'MPI_BCAST'"'"', MyRank, MyError, string(1:Lstr)
 90     FORMAT (/,' MP_HIER_BCAST - error during ',a,' call, Node = ',  &
     &          i3.3,' Error = ',i3,/,15x,a)
        exit_flag=2
      END IF
      RETURN
      END SUBROUTINE mp_hier_bcast_impl
! ===== end S32-BcastHier helper =====
HELPER

  s/(      CONTAINS\n!)/$1$helper/ or die "CONTAINS insert failed";
' "$D"

echo "Helper insert done (may need fix - integer Buf vs real)"
# The integer Buf(*) approach is WRONG for real/logical. Abort this approach.
echo "ABORT: redesign helper" >&2
exit 2
