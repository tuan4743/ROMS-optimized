#include "cppdefs.h"
!=======================================================================
!  probe_phase.F  --  UNSUBMITTED_DRAFT (2026-08-11)
!
!  Stage 138 P1 diagnostic probe. Compiled ONLY with -DPHASE_PROBE
!  (or PHASE_PROBE defined in cppdefs.h). Trajectory neutral: the module
!  touches no model array; it only reads MPI_WTIME and accumulates
!  private per-thread counters. Dumps one file per MPI rank after the
!  time loop. Design: analysis/stage138_p1_phase_probe_design_20260811/
!=======================================================================
#ifdef PHASE_PROBE

      MODULE probe_phase_mod
!
      USE mod_kinds
      USE mod_parallel
      USE omp_lib
!
      implicit none
!
      PUBLIC
!
!  Number of named phases (see design doc 01_read_summary.md §4).
!  1=step2d_all 2=nest_contact2d 3=nest_feedback 4=nest_boundary
!  5=rhs3d_step3d_t 6=halo2d_pack_issue 7=halo2d_wait 8=halo2d_unpack
!  9=halo3d4d_pack_issue 10=halo3d4d_wait 11=halo3d4d_unpack
!  12=set_vbc_set_depth 13=step2d_inner_compute (optional split)
!
      integer, parameter :: NP1PHASE = 13
!
      integer, save :: p1_nth = 1
      real(r8), save, allocatable :: p1_acc (:,:)   ! (p1_nth,NP1PHASE)
      real(r8), save, allocatable :: p1_cnt (:,:)   ! (p1_nth,NP1PHASE)
      real(r8), save              :: p1_t0  (NP1PHASE)
!
!  Per-thread cycle-wall statistics; reduced per rank at dump.
!
      real(r8), save, allocatable :: p1_cyc_sum (:)
      real(r8), save, allocatable :: p1_cyc_max (:)
      real(r8), save, allocatable :: p1_cyc_sq  (:)
      integer,  save, allocatable :: p1_cyc_n   (:)
      real(r8), save, allocatable :: p1_cyc0    (:)
!
      CONTAINS
!
      SUBROUTINE probe_init
        integer :: i, t
        logical :: done
        done=.FALSE.
!$OMP CRITICAL (P1_INIT)
        IF (.not.ALLOCATED(p1_acc)) THEN
          p1_nth = omp_get_max_threads()
        ALLOCATE (p1_acc(p1_nth,NP1PHASE), p1_cnt(p1_nth,NP1PHASE))
        DO i=1,NP1PHASE
          DO t=1,p1_nth
            p1_acc(t,i)=0.0_r8
            p1_cnt(t,i)=0.0_r8
          END DO
          p1_t0(i)=0.0_r8
        END DO
        ALLOCATE (p1_cyc_sum(p1_nth), p1_cyc_max(p1_nth),                &
     &            p1_cyc_sq(p1_nth), p1_cyc_n(p1_nth),                   &
     &            p1_cyc0(p1_nth))
        DO t=1,p1_nth
          p1_cyc_sum(t)=0.0_r8
          p1_cyc_max(t)=0.0_r8
          p1_cyc_sq(t) =0.0_r8
          p1_cyc_n(t)  =0
          p1_cyc0(t)   =0.0_r8
        END DO
          done=.TRUE.
        END IF
!$OMP END CRITICAL (P1_INIT)
        IF (.not.done) RETURN
        !  re-fetch thread count after allocation by master thread
        p1_nth = omp_get_max_threads()
      END SUBROUTINE probe_init
!
      SUBROUTINE probe_enter (iphase)
        integer, intent(in) :: iphase
        p1_t0(iphase)=MPI_WTIME()
      END SUBROUTINE probe_enter
!
      SUBROUTINE probe_exit (iphase)
        integer, intent(in) :: iphase
        integer :: t
!
!  Every call site is inside an OpenMP parallel region; on serial
!  sections thread 0 is used. MPI_WTIME is thread-safe.
!
        t=omp_get_thread_num()+1
        p1_acc(t,iphase)=p1_acc(t,iphase)+(MPI_WTIME()-p1_t0(iphase))
        p1_cnt(t,iphase)=p1_cnt(t,iphase)+1.0_r8
      END SUBROUTINE probe_exit
!
      SUBROUTINE probe_cycle_start
        p1_cyc0(omp_get_thread_num()+1)=MPI_WTIME()
      END SUBROUTINE probe_cycle_start
!
      SUBROUTINE probe_cycle_end
        integer :: t
        real(r8) :: d
        t=omp_get_thread_num()+1
        d=MPI_WTIME()-p1_cyc0(t)
        p1_cyc_sum(t)=p1_cyc_sum(t)+d
        p1_cyc_sq(t) =p1_cyc_sq(t) +d*d
        p1_cyc_max(t)=MAX(p1_cyc_max(t),d)
        p1_cyc_n(t)  =p1_cyc_n(t) +1
      END SUBROUTINE probe_cycle_end
!
      SUBROUTINE probe_dump (ng)
        integer, intent(in) :: ng
        integer :: i, t, u
        real(r8) :: s, sd
        real(r8) :: cyc_sum, cyc_max, mean_cyc, cyc_n
        character (len=64) :: fname
!
!  Per-rank file. Called once per rank after the time loop, before
!  MPI_Finalize. No collective; each rank writes its own file in the
!  p1probe directory (created by the run script before launch).
!
        CALL get_environment_variable ('P1_TAG', p1_tag)
        WRITE (fname,'(a,a,a,i4.4,a)') 'p1probe/', TRIM(p1_tag),        &
     &                                '_rank_', MyRank, '.dat'
        OPEN (NEWUNIT=u, FILE=TRIM(fname), FORM='formatted',             &
     &        STATUS='unknown', IOSTAT=i)
        IF (i.eq.0) THEN
          cyc_sum=0.0_r8
          cyc_max=0.0_r8
          cyc_n  =0.0_r8
          DO t=1,p1_nth
            cyc_sum=cyc_sum+p1_cyc_sum(t)
            cyc_max=MAX(cyc_max,p1_cyc_max(t))
            cyc_n  =cyc_n  +REAL(p1_cyc_n(t),r8)
          END DO
          mean_cyc=0.0_r8
          IF (cyc_n.gt.0.0_r8) mean_cyc=cyc_sum/cyc_n
          WRITE (u,100) MyRank, ng, INT(cyc_n), cyc_sum, cyc_max, mean_cyc
 100      FORMAT ('rank ',i4,' ng ',i3,' ncyc ',i6,1x,                   &
     &            'sum ',f16.6,' max ',f16.6,' mean ',f16.6)
          DO i=1,NP1PHASE
            s =0.0_r8
            sd=0.0_r8
            DO t=1,p1_nth
              s =s +p1_acc(t,i)
              sd=sd+p1_cnt(t,i)
            END DO
            IF (s.gt.0.0_r8) THEN
              WRITE (u,101) i, p1_name(i), s, INT(sd)
 101          FORMAT (i3,1x,a22,1x,f16.6,1x,i10)
            END IF
          END DO
          CLOSE (u)
        END IF
      END SUBROUTINE probe_dump
!
      END MODULE probe_phase_mod
#endif
