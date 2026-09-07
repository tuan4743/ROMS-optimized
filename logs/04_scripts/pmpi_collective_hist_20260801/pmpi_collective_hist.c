#define _POSIX_C_SOURCE 200809L

#include <mpi.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

enum collective_id {
  COLL_ALLREDUCE = 0,
  COLL_ALLGATHER = 1,
  COLL_ALLGATHERV = 2,
  COLL_BCAST = 3
};

static const char *const collective_names[] = {
    "MPI_Allreduce", "MPI_Allgather", "MPI_Allgatherv", "MPI_Bcast"};

#define HISTOGRAM_SLOTS 4096
struct histogram_entry {
  int used;
  int collective;
  int communicator_size;
  int datatype_size;
  MPI_Fint operation;
  unsigned long long message_bytes;
  unsigned long long calls;
  double seconds;
};

static struct histogram_entry histogram[HISTOGRAM_SLOTS];
static int world_rank = -1;
static double init_time = 0.0;

static double monotonic_seconds(void)
{
  struct timespec timestamp;
  clock_gettime(CLOCK_MONOTONIC, &timestamp);
  return (double)timestamp.tv_sec + 1.0e-9 * (double)timestamp.tv_nsec;
}

static int datatype_size(MPI_Fint datatype)
{
  int size = 0;
  MPI_Datatype converted = PMPI_Type_f2c(datatype);
  if (converted == MPI_DATATYPE_NULL ||
      PMPI_Type_size(converted, &size) != MPI_SUCCESS || size < 0) {
    return 0;
  }
  return size;
}

static int communicator_size(MPI_Fint communicator)
{
  int size = 0;
  MPI_Comm converted = PMPI_Comm_f2c(communicator);
  if (converted == MPI_COMM_NULL ||
      PMPI_Comm_size(converted, &size) != MPI_SUCCESS || size < 0) {
    return 0;
  }
  return size;
}

static void record_collective(int collective, int comm_size, int type_size,
                              MPI_Fint operation,
                              unsigned long long message_bytes,
                              double elapsed_seconds)
{
  uint64_t key = (uint64_t)message_bytes;
  key ^= (uint64_t)(unsigned int)comm_size * 0x9e3779b185ebca87ULL;
  key ^= (uint64_t)(unsigned int)type_size * 0xc2b2ae3d27d4eb4fULL;
  key ^= (uint64_t)(unsigned int)collective * 0x165667b19e3779f9ULL;
  key ^= (uint64_t)(unsigned int)operation * 0x85ebca77c2b2ae63ULL;
  unsigned int slot = (unsigned int)(key % HISTOGRAM_SLOTS);

  for (unsigned int probe = 0; probe < HISTOGRAM_SLOTS; ++probe) {
    struct histogram_entry *entry = &histogram[(slot + probe) % HISTOGRAM_SLOTS];
    if (!entry->used ||
        (entry->collective == collective &&
         entry->communicator_size == comm_size &&
         entry->datatype_size == type_size &&
         entry->operation == operation &&
         entry->message_bytes == message_bytes)) {
      entry->used = 1;
      entry->collective = collective;
      entry->communicator_size = comm_size;
      entry->datatype_size = type_size;
      entry->operation = operation;
      entry->message_bytes = message_bytes;
      entry->calls += 1ULL;
      entry->seconds += elapsed_seconds;
      return;
    }
  }
}

static void dump_histogram(void)
{
  const char *output_directory = getenv("MCC_PMPI_HIST_OUTDIR");
  char path[4096];
  if (output_directory == NULL || output_directory[0] == '\0' ||
      world_rank < 0) {
    return;
  }
  snprintf(path, sizeof(path), "%s/rank.%05d.hist.tsv", output_directory,
           world_rank);
  FILE *output = fopen(path, "w");
  if (output == NULL) {
    return;
  }
  fprintf(output, "rank\t%d\nelapsed\t%.9f\n", world_rank,
          monotonic_seconds() - init_time);
  fprintf(output, "collective\tcomm_size\tmessage_bytes\tdatatype_size\toperation\tcalls\tseconds\n");
  for (int i = 0; i < HISTOGRAM_SLOTS; ++i) {
    const struct histogram_entry *entry = &histogram[i];
    if (entry->used) {
      fprintf(output, "%s\t%d\t%llu\t%d\t%d\t%llu\t%.9f\n",
              collective_names[entry->collective], entry->communicator_size,
              entry->message_bytes, entry->datatype_size,
              (int)entry->operation, entry->calls, entry->seconds);
    }
  }
  fclose(output);
}

extern void pmpi_init_(MPI_Fint *ierr);
extern void pmpi_finalize_(MPI_Fint *ierr);
extern void pmpi_allreduce_(void *sendbuf, void *recvbuf, MPI_Fint *count,
                            MPI_Fint *datatype, MPI_Fint *op,
                            MPI_Fint *comm, MPI_Fint *ierr);
extern void pmpi_allgather_(void *sendbuf, MPI_Fint *sendcount,
                            MPI_Fint *sendtype, void *recvbuf,
                            MPI_Fint *recvcount, MPI_Fint *recvtype,
                            MPI_Fint *comm, MPI_Fint *ierr);
extern void pmpi_allgatherv_(void *sendbuf, MPI_Fint *sendcount,
                             MPI_Fint *sendtype, void *recvbuf,
                             MPI_Fint *recvcounts, MPI_Fint *displacements,
                             MPI_Fint *recvtype, MPI_Fint *comm,
                             MPI_Fint *ierr);
extern void pmpi_bcast_(void *buffer, MPI_Fint *count, MPI_Fint *datatype,
                        MPI_Fint *root, MPI_Fint *comm, MPI_Fint *ierr);

void mpi_init_(MPI_Fint *ierr)
{
  pmpi_init_(ierr);
  init_time = monotonic_seconds();
  PMPI_Comm_rank(MPI_COMM_WORLD, &world_rank);
}

void mpi_allreduce_(void *sendbuf, void *recvbuf, MPI_Fint *count,
                    MPI_Fint *datatype, MPI_Fint *op, MPI_Fint *comm,
                    MPI_Fint *ierr)
{
  const int type_size = datatype_size(*datatype);
  const int comm_size = communicator_size(*comm);
  const unsigned long long bytes = *count > 0 && type_size > 0 ?
      (unsigned long long)(*count) * (unsigned long long)type_size : 0ULL;
  const double start = monotonic_seconds();
  pmpi_allreduce_(sendbuf, recvbuf, count, datatype, op, comm, ierr);
  record_collective(COLL_ALLREDUCE, comm_size, type_size, *op, bytes,
                    monotonic_seconds() - start);
}

void mpi_allgather_(void *sendbuf, MPI_Fint *sendcount, MPI_Fint *sendtype,
                    void *recvbuf, MPI_Fint *recvcount, MPI_Fint *recvtype,
                    MPI_Fint *comm, MPI_Fint *ierr)
{
  const int type_size = datatype_size(*recvtype);
  const int comm_size = communicator_size(*comm);
  const unsigned long long bytes = *recvcount > 0 && type_size > 0 &&
      comm_size > 0 ? (unsigned long long)(*recvcount) *
      (unsigned long long)type_size * (unsigned long long)comm_size : 0ULL;
  const double start = monotonic_seconds();
  pmpi_allgather_(sendbuf, sendcount, sendtype, recvbuf, recvcount, recvtype,
                  comm, ierr);
  record_collective(COLL_ALLGATHER, comm_size, type_size, (MPI_Fint)-1,
                    bytes, monotonic_seconds() - start);
}

void mpi_allgatherv_(void *sendbuf, MPI_Fint *sendcount, MPI_Fint *sendtype,
                     void *recvbuf, MPI_Fint *recvcounts,
                     MPI_Fint *displacements, MPI_Fint *recvtype,
                     MPI_Fint *comm, MPI_Fint *ierr)
{
  const int type_size = datatype_size(*recvtype);
  const int comm_size = communicator_size(*comm);
  unsigned long long elements = 0ULL;
  for (int rank = 0; rank < comm_size; ++rank) {
    if (recvcounts[rank] > 0) {
      elements += (unsigned long long)recvcounts[rank];
    }
  }
  const unsigned long long bytes = elements * (unsigned long long)type_size;
  const double start = monotonic_seconds();
  pmpi_allgatherv_(sendbuf, sendcount, sendtype, recvbuf, recvcounts,
                   displacements, recvtype, comm, ierr);
  record_collective(COLL_ALLGATHERV, comm_size, type_size, (MPI_Fint)-1,
                    bytes, monotonic_seconds() - start);
}

void mpi_bcast_(void *buffer, MPI_Fint *count, MPI_Fint *datatype,
                MPI_Fint *root, MPI_Fint *comm, MPI_Fint *ierr)
{
  const int type_size = datatype_size(*datatype);
  const int comm_size = communicator_size(*comm);
  const unsigned long long bytes = *count > 0 && type_size > 0 ?
      (unsigned long long)(*count) * (unsigned long long)type_size : 0ULL;
  const double start = monotonic_seconds();
  pmpi_bcast_(buffer, count, datatype, root, comm, ierr);
  record_collective(COLL_BCAST, comm_size, type_size, (MPI_Fint)-1, bytes,
                    monotonic_seconds() - start);
}

void mpi_finalize_(MPI_Fint *ierr)
{
  dump_histogram();
  pmpi_finalize_(ierr);
}
