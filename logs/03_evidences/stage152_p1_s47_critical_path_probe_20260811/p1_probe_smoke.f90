program p1_probe_smoke
  implicit none
  include 'mpif.h'
  integer :: ierr, rank, nprocs, peer, req, status(MPI_STATUS_SIZE)
  integer :: value, total
  call MPI_Init(ierr)
  call MPI_Comm_rank(MPI_COMM_WORLD, rank, ierr)
  call MPI_Comm_size(MPI_COMM_WORLD, nprocs, ierr)
  peer = 1-rank
  value = rank
  call MPI_Irecv(total, 1, MPI_INTEGER, peer, 11, MPI_COMM_WORLD, req, ierr)
  call MPI_Send(value, 1, MPI_INTEGER, peer, 11, MPI_COMM_WORLD, ierr)
  call MPI_Wait(req, status, ierr)
  call MPI_Allreduce(MPI_IN_PLACE, value, 1, MPI_INTEGER, MPI_SUM, MPI_COMM_WORLD, ierr)
  call MPI_Finalize(ierr)
end program p1_probe_smoke
