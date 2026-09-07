#include <mpi.h>
#include <omp.h>
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

static volatile double probe_sink = 0.0;

static void fail_if(int condition, const char *message, MPI_Comm comm)
{
  if (condition) {
    int rank = -1;
    MPI_Comm_rank(comm, &rank);
    fprintf(stderr, "FATAL rank=%d: %s\n", rank, message);
    MPI_Abort(comm, 2);
  }
}

static void compute_kernel(double *work, size_t n, int repetitions)
{
  int repetition;
  for (repetition = 0; repetition < repetitions; ++repetition) {
#pragma omp parallel for schedule(static)
    for (size_t i = 0; i < n; ++i) {
      work[i] = 1.0 / (work[i] + 1.0e-12);
    }
  }

  double checksum = 0.0;
#pragma omp parallel for reduction(+:checksum) schedule(static)
  for (size_t i = 0; i < n; ++i) {
    checksum += work[i];
  }
  probe_sink += checksum * 1.0e-300;
}

static void exchange_once(MPI_Comm cart, const int neighbors[4],
                          double *sendbuf, double *recvbuf, int count)
{
  MPI_Request requests[8];
  int request_count = 0;
  for (int direction = 0; direction < 4; ++direction) {
    MPI_Irecv(recvbuf + (size_t)direction * (size_t)count, count,
              MPI_DOUBLE, neighbors[direction], 100 + direction / 2,
              cart, &requests[request_count++]);
  }
  for (int direction = 0; direction < 4; ++direction) {
    MPI_Isend(sendbuf + (size_t)direction * (size_t)count, count,
              MPI_DOUBLE, neighbors[direction], 100 + direction / 2,
              cart, &requests[request_count++]);
  }
  MPI_Waitall(request_count, requests, MPI_STATUSES_IGNORE);
}

static double reduce_max_seconds(double local_seconds, MPI_Comm comm)
{
  double maximum = 0.0;
  MPI_Allreduce(&local_seconds, &maximum, 1, MPI_DOUBLE, MPI_MAX, comm);
  return maximum;
}

static void run_case(MPI_Comm cart, const int neighbors[4], const char *label,
                     size_t message_bytes, size_t work_elements,
                     int repetitions, int iterations,
                     double *sendbuf, double *recvbuf, double *work,
                     int rank)
{
  const int count = (int)(message_bytes / sizeof(double));
  const int warmups = 12;
  double start, comm_seconds, compute_seconds, overlap_seconds;

  for (int i = 0; i < warmups; ++i) {
    exchange_once(cart, neighbors, sendbuf, recvbuf, count);
  }
  MPI_Barrier(cart);
  start = MPI_Wtime();
  for (int i = 0; i < iterations; ++i) {
    exchange_once(cart, neighbors, sendbuf, recvbuf, count);
  }
  comm_seconds = reduce_max_seconds(MPI_Wtime() - start, cart);

  for (int i = 0; i < warmups; ++i) {
    compute_kernel(work, work_elements, repetitions);
  }
  MPI_Barrier(cart);
  start = MPI_Wtime();
  for (int i = 0; i < iterations; ++i) {
    compute_kernel(work, work_elements, repetitions);
  }
  compute_seconds = reduce_max_seconds(MPI_Wtime() - start, cart);

  for (int i = 0; i < warmups; ++i) {
    MPI_Request requests[8];
    int request_count = 0;
    for (int direction = 0; direction < 4; ++direction) {
      MPI_Irecv(recvbuf + (size_t)direction * (size_t)count, count,
                MPI_DOUBLE, neighbors[direction], 100 + direction / 2,
                cart, &requests[request_count++]);
    }
    for (int direction = 0; direction < 4; ++direction) {
      MPI_Isend(sendbuf + (size_t)direction * (size_t)count, count,
                MPI_DOUBLE, neighbors[direction], 100 + direction / 2,
                cart, &requests[request_count++]);
    }
    compute_kernel(work, work_elements, repetitions);
    MPI_Waitall(request_count, requests, MPI_STATUSES_IGNORE);
  }
  MPI_Barrier(cart);
  start = MPI_Wtime();
  for (int i = 0; i < iterations; ++i) {
    MPI_Request requests[8];
    int request_count = 0;
    for (int direction = 0; direction < 4; ++direction) {
      MPI_Irecv(recvbuf + (size_t)direction * (size_t)count, count,
                MPI_DOUBLE, neighbors[direction], 100 + direction / 2,
                cart, &requests[request_count++]);
    }
    for (int direction = 0; direction < 4; ++direction) {
      MPI_Isend(sendbuf + (size_t)direction * (size_t)count, count,
                MPI_DOUBLE, neighbors[direction], 100 + direction / 2,
                cart, &requests[request_count++]);
    }
    compute_kernel(work, work_elements, repetitions);
    MPI_Waitall(request_count, requests, MPI_STATUSES_IGNORE);
  }
  overlap_seconds = reduce_max_seconds(MPI_Wtime() - start, cart);

  if (rank == 0) {
    const double comm_ms = 1000.0 * comm_seconds / iterations;
    const double compute_ms = 1000.0 * compute_seconds / iterations;
    const double overlap_ms = 1000.0 * overlap_seconds / iterations;
    const double saved_ms = comm_ms + compute_ms - overlap_ms;
    const double denominator = fmin(comm_ms, compute_ms);
    const double efficiency = denominator > 0.0 ? saved_ms / denominator : 0.0;
    const double serial_to_overlap = overlap_ms > 0.0 ?
                                     (comm_ms + compute_ms) / overlap_ms : 0.0;
    printf("%s\t%zu\t%zu\t%d\t%d\t%.6f\t%.6f\t%.6f\t%.6f\t%.6f\t%.6f\n",
           label, message_bytes, work_elements, repetitions, iterations,
           comm_ms, compute_ms, overlap_ms, saved_ms, efficiency,
           serial_to_overlap);
    fflush(stdout);
  }
}

int main(int argc, char **argv)
{
  int provided = 0;
  MPI_Init_thread(&argc, &argv, MPI_THREAD_FUNNELED, &provided);
  fail_if(provided < MPI_THREAD_FUNNELED, "MPI thread level is insufficient",
          MPI_COMM_WORLD);

  int world_rank = -1, world_size = 0;
  MPI_Comm_rank(MPI_COMM_WORLD, &world_rank);
  MPI_Comm_size(MPI_COMM_WORLD, &world_size);
  fail_if(world_size != 64, "probe requires exactly 64 MPI ranks",
          MPI_COMM_WORLD);

  int dimensions[2] = {8, 8};
  int periods[2] = {0, 0};
  MPI_Comm cart = MPI_COMM_NULL;
  MPI_Cart_create(MPI_COMM_WORLD, 2, dimensions, periods, 0, &cart);
  fail_if(cart == MPI_COMM_NULL, "MPI_Cart_create failed", MPI_COMM_WORLD);

  int neighbors[4];
  MPI_Cart_shift(cart, 1, 1, &neighbors[0], &neighbors[1]);
  MPI_Cart_shift(cart, 0, 1, &neighbors[2], &neighbors[3]);

  const size_t maximum_message_bytes = 704U * 1024U;
  const int maximum_count = (int)(maximum_message_bytes / sizeof(double));
  const size_t maximum_work_elements = 75000U;
  double *sendbuf = (double *)malloc(4U * (size_t)maximum_count * sizeof(double));
  double *recvbuf = (double *)malloc(4U * (size_t)maximum_count * sizeof(double));
  double *work = (double *)malloc(maximum_work_elements * sizeof(double));
  fail_if(sendbuf == NULL || recvbuf == NULL || work == NULL,
          "buffer allocation failed", cart);

  for (size_t i = 0; i < 4U * (size_t)maximum_count; ++i) {
    sendbuf[i] = (double)world_rank + (double)(i % 97U) * 1.0e-6;
    recvbuf[i] = 0.0;
  }
  for (size_t i = 0; i < maximum_work_elements; ++i) {
    work[i] = 1.0 + (double)(i % 101U) * 1.0e-5;
  }

  if (world_rank == 0) {
    printf("label\tmessage_bytes\twork_elements\trepetitions\titerations\tcomm_ms\tcompute_ms\toverlap_ms\tsaved_ms\toverlap_efficiency\tserial_to_overlap\n");
  }

  const int repetitions[] = {1, 2, 4, 8};
  const int iteration_count = 96;
  for (size_t r = 0; r < sizeof(repetitions) / sizeof(repetitions[0]); ++r) {
    run_case(cart, neighbors, "grid02_like", 512U * 1024U, 40000U,
             repetitions[r], iteration_count, sendbuf, recvbuf, work,
             world_rank);
    run_case(cart, neighbors, "grid01_like", 704U * 1024U, 75000U,
             repetitions[r], iteration_count, sendbuf, recvbuf, work,
             world_rank);
  }

  if (world_rank == 0) {
    fprintf(stderr, "PROBE_SINK=%.17g\n", probe_sink);
  }
  free(work);
  free(recvbuf);
  free(sendbuf);
  MPI_Comm_free(&cart);
  MPI_Finalize();
  return 0;
}
