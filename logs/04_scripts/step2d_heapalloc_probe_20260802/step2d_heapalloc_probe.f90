program step2d_heapalloc_probe
  implicit none
  integer, parameter :: r8=selected_real_kind(12,300)
  integer, parameter :: ni=52, nj=48, reps=100000
  integer :: rep, rate, tick0, tick1
  real(r8) :: checksum, seconds

  checksum=0.0_r8
  call system_clock(tick0,rate)
  do rep=1,reps
    call tile_like_step2d(ni,nj,checksum)
  end do
  call system_clock(tick1)
  seconds=real(tick1-tick0,r8)/real(rate,r8)
  write (*,'(A,I0)') 'REPS=',reps
  write (*,'(A,F12.6)') 'SECONDS=',seconds
  write (*,'(A,ES24.16)') 'CHECKSUM=',checksum

contains

  subroutine tile_like_step2d(ni,nj,checksum)
    integer, intent(in) :: ni,nj
    real(r8), intent(inout) :: checksum
    real(r8) :: a1(ni,nj),a2(ni,nj),a3(ni,nj),a4(ni,nj),a5(ni,nj)
    real(r8) :: a6(ni,nj),a7(ni,nj),a8(ni,nj),a9(ni,nj),a10(ni,nj)
    real(r8) :: a11(ni,nj),a12(ni,nj),a13(ni,nj),a14(ni,nj),a15(ni,nj)
    real(r8) :: a16(ni,nj),a17(ni,nj),a18(ni,nj),a19(ni,nj),a20(ni,nj),a21(ni,nj)

    a1=1.0_r8; a2=a1+1.0_r8; a3=a2+1.0_r8; a4=a3+1.0_r8
    a5=a4+1.0_r8; a6=a5+1.0_r8; a7=a6+1.0_r8; a8=a7+1.0_r8
    a9=a8+1.0_r8; a10=a9+1.0_r8; a11=a10+1.0_r8; a12=a11+1.0_r8
    a13=a12+1.0_r8; a14=a13+1.0_r8; a15=a14+1.0_r8; a16=a15+1.0_r8
    a17=a16+1.0_r8; a18=a17+1.0_r8; a19=a18+1.0_r8; a20=a19+1.0_r8
    a21=a20+1.0_r8
    checksum=checksum+a21(1,1)
  end subroutine tile_like_step2d
end program step2d_heapalloc_probe
