#define _GNU_SOURCE
#include <mpi.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <unistd.h>

enum { OP_IRECV=1, OP_ISEND=2, OP_SEND=3, OP_WAIT=4,
       OP_WAITALL=5, OP_ALLREDUCE=6, OP_BARRIER=7, NSLOT=8192 };

typedef struct {
  uint64_t caller, calls[3];
  double gap_sum[3], gap_max[3], mpi_sum[3], mpi_max[3];
  int op, count, tag, peer_class, used;
} cohort_t;

static cohort_t table[NSLOT];
static uint64_t nevents, overflow;
static double last_exit, start_time, block_seconds=60.0;
static int rank_id=-1, initialized;
static char outdir[1024]=".";

static double now(void){ struct timespec t; clock_gettime(CLOCK_MONOTONIC,&t);
  return (double)t.tv_sec+1.0e-9*(double)t.tv_nsec; }
static uint64_t mix(uint64_t x){ x^=x>>33; x*=0xff51afd7ed558ccdULL;
  x^=x>>33; x*=0xc4ceb9fe1a85ec53ULL; return x^(x>>33); }
static int peer_class(int p){ if(p<0)return -1; return p-rank_id; }
static int block_of(double t){ int b=(int)((t-start_time)/block_seconds);
  return b<0?0:(b>2?2:b); }

static void start_probe(void){ const char *p=getenv("P1_PROBE_DIR");
  const char *b=getenv("P1_BLOCK_SECONDS");
  if(p&&*p)snprintf(outdir,sizeof(outdir),"%s",p);
  if(b&&*b){ double v=atof(b); if(v>0.1)block_seconds=v; }
  PMPI_Comm_rank(MPI_COMM_WORLD,&rank_id); start_time=last_exit=now(); initialized=1; }

static void add(int op,uint64_t caller,double a,double z,int count,int peer,int tag){
  uint64_t h; int k,b,pc=peer_class(peer); cohort_t *c=NULL;
  if(!initialized)return; b=block_of(a); nevents++;
  h=mix(caller ^ ((uint64_t)(uint32_t)op<<56) ^
        ((uint64_t)(uint32_t)count<<17) ^ ((uint64_t)(uint32_t)tag<<3) ^
        (uint64_t)(uint32_t)pc);
  for(k=0;k<NSLOT;k++){ cohort_t *q=&table[(h+(uint64_t)k)&(NSLOT-1)];
    if(!q->used){ q->used=1;q->caller=caller;q->op=op;q->count=count;
      q->tag=tag;q->peer_class=pc;c=q;break; }
    if(q->caller==caller&&q->op==op&&q->count==count&&q->tag==tag&&
       q->peer_class==pc){c=q;break;}
  }
  if(!c){overflow++;last_exit=z;return;}
  { double gap=a-last_exit, mt=z-a; c->calls[b]++;c->gap_sum[b]+=gap;
    c->mpi_sum[b]+=mt;if(gap>c->gap_max[b])c->gap_max[b]=gap;
    if(mt>c->mpi_max[b])c->mpi_max[b]=mt; }
  last_exit=z;
}

static void dump_probe(void){ char path[1400],host[256]="unknown";FILE *f;int i;
  gethostname(host,sizeof(host)-1);snprintf(path,sizeof(path),
    "%s/p1_rank_%05d.tsv",outdir,rank_id);f=fopen(path,"w");if(!f)return;
  fprintf(f,"#rank=%d\thost=%s\tpid=%ld\tevents=%llu\toverflow=%llu\tblock_seconds=%.6f\n",
    rank_id,host,(long)getpid(),(unsigned long long)nevents,
    (unsigned long long)overflow,block_seconds);
  fprintf(f,"op\tcaller\tcount\ttag\tpeer_class\tb0_calls\tb0_gap_sum\tb0_gap_max\tb0_mpi_sum\tb0_mpi_max\tb1_calls\tb1_gap_sum\tb1_gap_max\tb1_mpi_sum\tb1_mpi_max\tb2_calls\tb2_gap_sum\tb2_gap_max\tb2_mpi_sum\tb2_mpi_max\n");
  for(i=0;i<NSLOT;i++)if(table[i].used){cohort_t*c=&table[i];int b;
    fprintf(f,"%d\t0x%llx\t%d\t%d\t%d",c->op,(unsigned long long)c->caller,
      c->count,c->tag,c->peer_class);for(b=0;b<3;b++)fprintf(f,
      "\t%llu\t%.9f\t%.9f\t%.9f\t%.9f",(unsigned long long)c->calls[b],
      c->gap_sum[b],c->gap_max[b],c->mpi_sum[b],c->mpi_max[b]);fputc('\n',f);}
  fclose(f);
}
#define CALLER ((uint64_t)(uintptr_t)__builtin_return_address(0))

extern void pmpi_init_(int*),pmpi_init_thread_(int*,int*,int*),pmpi_finalize_(int*);
extern void pmpi_irecv_(void*,int*,MPI_Fint*,int*,int*,MPI_Fint*,MPI_Fint*,int*);
extern void pmpi_isend_(void*,int*,MPI_Fint*,int*,int*,MPI_Fint*,MPI_Fint*,int*);
extern void pmpi_send_(void*,int*,MPI_Fint*,int*,int*,MPI_Fint*,int*);
extern void pmpi_wait_(MPI_Fint*,MPI_Fint*,int*),pmpi_waitall_(int*,MPI_Fint*,MPI_Fint*,int*);
extern void pmpi_allreduce_(void*,void*,int*,MPI_Fint*,MPI_Fint*,MPI_Fint*,int*);
extern void pmpi_barrier_(MPI_Fint*,int*);

void mpi_init_(int*i){pmpi_init_(i);start_probe();}
void mpi_init_thread_(int*r,int*p,int*i){pmpi_init_thread_(r,p,i);start_probe();}
void mpi_finalize_(int*i){dump_probe();initialized=0;pmpi_finalize_(i);}
#define WRAP_BEGIN double a=now()
#define WRAP_END(OP,C,P,T) do{double z=now();add(OP,CALLER,a,z,C,P,T);}while(0)
void mpi_irecv_(void*b,int*c,MPI_Fint*d,int*s,int*t,MPI_Fint*m,MPI_Fint*q,int*i){WRAP_BEGIN;pmpi_irecv_(b,c,d,s,t,m,q,i);WRAP_END(OP_IRECV,*c,*s,*t);}
void mpi_isend_(void*b,int*c,MPI_Fint*d,int*s,int*t,MPI_Fint*m,MPI_Fint*q,int*i){WRAP_BEGIN;pmpi_isend_(b,c,d,s,t,m,q,i);WRAP_END(OP_ISEND,*c,*s,*t);}
void mpi_send_(void*b,int*c,MPI_Fint*d,int*s,int*t,MPI_Fint*m,int*i){WRAP_BEGIN;pmpi_send_(b,c,d,s,t,m,i);WRAP_END(OP_SEND,*c,*s,*t);}
void mpi_wait_(MPI_Fint*q,MPI_Fint*s,int*i){WRAP_BEGIN;pmpi_wait_(q,s,i);WRAP_END(OP_WAIT,1,-1,-1);}
void mpi_waitall_(int*c,MPI_Fint*q,MPI_Fint*s,int*i){WRAP_BEGIN;pmpi_waitall_(c,q,s,i);WRAP_END(OP_WAITALL,*c,-1,-1);}
void mpi_allreduce_(void*a0,void*b,int*c,MPI_Fint*d,MPI_Fint*o,MPI_Fint*m,int*i){WRAP_BEGIN;pmpi_allreduce_(a0,b,c,d,o,m,i);WRAP_END(OP_ALLREDUCE,*c,-1,-1);}
void mpi_barrier_(MPI_Fint*m,int*i){WRAP_BEGIN;pmpi_barrier_(m,i);WRAP_END(OP_BARRIER,0,-1,-1);}
