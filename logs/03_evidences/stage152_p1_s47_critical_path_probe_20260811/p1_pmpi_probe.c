#define _GNU_SOURCE
#include <mpi.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include <unistd.h>

/*
 * Stage 152 diagnostic-only PMPI probe.
 * It records process-local durations only.  It adds no MPI calls and no
 * synchronization.  Each rank writes once immediately before MPI_Finalize.
 */

enum { OP_IRECV=1, OP_ISEND=2, OP_SEND=3, OP_WAIT=4,
       OP_WAITALL=5, OP_ALLREDUCE=6, OP_BARRIER=7 };

typedef struct {
  uint64_t seq, caller;
  double t_local, gap, mpi;
  int op, count, peer, tag;
} event_t;

static event_t *events;
static uint64_t nevents, dropped, seqno;
static uint64_t max_events = 250000;
static double last_exit;
static int rank_id = -1;
static int initialized;
static char outdir[1024] = ".";

static double mono_time(void) {
  struct timespec ts;
  clock_gettime(CLOCK_MONOTONIC, &ts);
  return (double)ts.tv_sec + 1.0e-9 * (double)ts.tv_nsec;
}

static void probe_start(void) {
  const char *p = getenv("P1_PROBE_DIR");
  const char *m = getenv("P1_MAX_EVENTS");
  if (p && *p) snprintf(outdir, sizeof(outdir), "%s", p);
  if (m && *m) {
    unsigned long long v = strtoull(m, NULL, 10);
    if (v >= 1000 && v <= 2000000) max_events = (uint64_t)v;
  }
  events = (event_t *)calloc((size_t)max_events, sizeof(event_t));
  PMPI_Comm_rank(MPI_COMM_WORLD, &rank_id);
  last_exit = mono_time();
  initialized = 1;
}

static void record_event(int op, uint64_t caller, double enter, double leave,
                         int count, int peer, int tag) {
  if (!initialized) return;
  if (events && nevents < max_events) {
    event_t *e = &events[nevents++];
    e->seq = ++seqno;
    e->caller = caller;
    e->t_local = enter;
    e->gap = enter - last_exit;
    e->mpi = leave - enter;
    e->op = op;
    e->count = count;
    e->peer = peer;
    e->tag = tag;
  } else {
    dropped++;
  }
  last_exit = leave;
}

static void probe_dump(void) {
  char path[1400], host[256] = "unknown";
  FILE *fp;
  uint64_t i;
  if (!initialized) return;
  gethostname(host, sizeof(host)-1);
  snprintf(path, sizeof(path), "%s/p1_rank_%05d.tsv", outdir, rank_id);
  fp = fopen(path, "w");
  if (!fp) return;
  fprintf(fp, "#rank=%d\thost=%s\tpid=%ld\tevents=%llu\tdropped=%llu\n",
          rank_id, host, (long)getpid(),
          (unsigned long long)nevents, (unsigned long long)dropped);
  fprintf(fp, "seq\top\tcaller\tlocal_time\tgap_s\tmpi_s\tcount\tpeer\ttag\n");
  for (i=0; i<nevents; ++i) {
    event_t *e = &events[i];
    fprintf(fp, "%llu\t%d\t0x%llx\t%.9f\t%.9f\t%.9f\t%d\t%d\t%d\n",
            (unsigned long long)e->seq, e->op,
            (unsigned long long)e->caller, e->t_local, e->gap, e->mpi,
            e->count, e->peer, e->tag);
  }
  fclose(fp);
}

#define CALLER ((uint64_t)(uintptr_t)__builtin_return_address(0))

int MPI_Init(int *argc, char ***argv) {
  int rc = PMPI_Init(argc, argv); probe_start(); return rc;
}
int MPI_Init_thread(int *argc, char ***argv, int required, int *provided) {
  int rc = PMPI_Init_thread(argc, argv, required, provided); probe_start(); return rc;
}
int MPI_Finalize(void) {
  probe_dump(); free(events); events=NULL; initialized=0; return PMPI_Finalize();
}
int MPI_Irecv(void *buf, int count, MPI_Datatype datatype, int source, int tag,
              MPI_Comm comm, MPI_Request *request) {
  double a=mono_time(); int rc=PMPI_Irecv(buf,count,datatype,source,tag,comm,request);
  double b=mono_time(); record_event(OP_IRECV,CALLER,a,b,count,source,tag); return rc;
}
int MPI_Isend(const void *buf, int count, MPI_Datatype datatype, int dest, int tag,
              MPI_Comm comm, MPI_Request *request) {
  double a=mono_time(); int rc=PMPI_Isend(buf,count,datatype,dest,tag,comm,request);
  double b=mono_time(); record_event(OP_ISEND,CALLER,a,b,count,dest,tag); return rc;
}
int MPI_Send(const void *buf, int count, MPI_Datatype datatype, int dest, int tag,
             MPI_Comm comm) {
  double a=mono_time(); int rc=PMPI_Send(buf,count,datatype,dest,tag,comm);
  double b=mono_time(); record_event(OP_SEND,CALLER,a,b,count,dest,tag); return rc;
}
int MPI_Wait(MPI_Request *request, MPI_Status *status) {
  double a=mono_time(); int rc=PMPI_Wait(request,status);
  double b=mono_time(); record_event(OP_WAIT,CALLER,a,b,1,-1,-1); return rc;
}
int MPI_Waitall(int count, MPI_Request array_of_requests[], MPI_Status array_of_statuses[]) {
  double a=mono_time(); int rc=PMPI_Waitall(count,array_of_requests,array_of_statuses);
  double b=mono_time(); record_event(OP_WAITALL,CALLER,a,b,count,-1,-1); return rc;
}
int MPI_Allreduce(const void *sendbuf, void *recvbuf, int count, MPI_Datatype datatype,
                  MPI_Op op, MPI_Comm comm) {
  double a=mono_time(); int rc=PMPI_Allreduce(sendbuf,recvbuf,count,datatype,op,comm);
  double b=mono_time(); record_event(OP_ALLREDUCE,CALLER,a,b,count,-1,-1); return rc;
}
int MPI_Barrier(MPI_Comm comm) {
  double a=mono_time(); int rc=PMPI_Barrier(comm);
  double b=mono_time(); record_event(OP_BARRIER,CALLER,a,b,0,-1,-1); return rc;
}

/*
 * Intel-built ROMS uses the mpif.h Fortran ABI.  Call the vendor's Fortran
 * PMPI layer directly so that request/status layout and MPI_IN_PLACE remain
 * completely opaque to this probe.
 */
extern void pmpi_init_(int *);
extern void pmpi_init_thread_(int *,int *,int *);
extern void pmpi_finalize_(int *);
extern void pmpi_irecv_(void *,int *,MPI_Fint *,int *,int *,MPI_Fint *,MPI_Fint *,int *);
extern void pmpi_isend_(void *,int *,MPI_Fint *,int *,int *,MPI_Fint *,MPI_Fint *,int *);
extern void pmpi_send_(void *,int *,MPI_Fint *,int *,int *,MPI_Fint *,int *);
extern void pmpi_wait_(MPI_Fint *,MPI_Fint *,int *);
extern void pmpi_waitall_(int *,MPI_Fint *,MPI_Fint *,int *);
extern void pmpi_allreduce_(void *,void *,int *,MPI_Fint *,MPI_Fint *,MPI_Fint *,int *);
extern void pmpi_barrier_(MPI_Fint *,int *);

void mpi_init_(int *ierr) { pmpi_init_(ierr); probe_start(); }
void mpi_init_thread_(int *required,int *provided,int *ierr) {
  pmpi_init_thread_(required,provided,ierr); probe_start();
}
void mpi_finalize_(int *ierr) {
  probe_dump(); free(events); events=NULL; initialized=0; pmpi_finalize_(ierr);
}
void mpi_irecv_(void *buf,int *count,MPI_Fint *dtype,int *source,int *tag,
                MPI_Fint *comm,MPI_Fint *request,int *ierr) {
  double a=mono_time(); pmpi_irecv_(buf,count,dtype,source,tag,comm,request,ierr);
  double b=mono_time(); record_event(OP_IRECV,CALLER,a,b,*count,*source,*tag);
}
void mpi_isend_(void *buf,int *count,MPI_Fint *dtype,int *dest,int *tag,
                MPI_Fint *comm,MPI_Fint *request,int *ierr) {
  double a=mono_time(); pmpi_isend_(buf,count,dtype,dest,tag,comm,request,ierr);
  double b=mono_time(); record_event(OP_ISEND,CALLER,a,b,*count,*dest,*tag);
}
void mpi_send_(void *buf,int *count,MPI_Fint *dtype,int *dest,int *tag,
               MPI_Fint *comm,int *ierr) {
  double a=mono_time(); pmpi_send_(buf,count,dtype,dest,tag,comm,ierr);
  double b=mono_time(); record_event(OP_SEND,CALLER,a,b,*count,*dest,*tag);
}
void mpi_wait_(MPI_Fint *request,MPI_Fint *status,int *ierr) {
  double a=mono_time(); pmpi_wait_(request,status,ierr);
  double b=mono_time(); record_event(OP_WAIT,CALLER,a,b,1,-1,-1);
}
void mpi_waitall_(int *count,MPI_Fint *requests,MPI_Fint *statuses,int *ierr) {
  double a=mono_time(); pmpi_waitall_(count,requests,statuses,ierr);
  double b=mono_time(); record_event(OP_WAITALL,CALLER,a,b,*count,-1,-1);
}
void mpi_allreduce_(void *sendbuf,void *recvbuf,int *count,MPI_Fint *dtype,
                    MPI_Fint *op,MPI_Fint *comm,int *ierr) {
  double a=mono_time(); pmpi_allreduce_(sendbuf,recvbuf,count,dtype,op,comm,ierr);
  double b=mono_time(); record_event(OP_ALLREDUCE,CALLER,a,b,*count,-1,-1);
}
void mpi_barrier_(MPI_Fint *comm,int *ierr) {
  double a=mono_time(); pmpi_barrier_(comm,ierr);
  double b=mono_time(); record_event(OP_BARRIER,CALLER,a,b,0,-1,-1);
}
