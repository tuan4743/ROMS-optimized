#include <mpi.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MSG_BYTES 134368
#define MSG_DOUBLES 16796
#define ITER 200
#define WARMUP 20

static int cmp(const void *a, const void *b) {
    double x = *(const double *)a, y = *(const double *)b;
    return x < y ? -1 : (x > y ? 1 : 0);
}

int main(int argc, char **argv) {
    MPI_Init(&argc, &argv);
    int rank, nprocs, i;
    MPI_Comm_rank(MPI_COMM_WORLD, &rank);
    MPI_Comm_size(MPI_COMM_WORLD, &nprocs);

    double *buf = malloc(MSG_BYTES);
    if (!buf) { if (!rank) fprintf(stderr, "malloc fail\n"); MPI_Abort(MPI_COMM_WORLD, 1); }
    for (i = 0; i < MSG_DOUBLES; i++) buf[i] = (double)(rank + 1);

    double *times = malloc(ITER * sizeof(double));
    if (!times) { if (!rank) fprintf(stderr, "malloc2 fail\n"); MPI_Abort(MPI_COMM_WORLD, 1); }

    for (i = 0; i < WARMUP; i++)
        MPI_Allreduce(MPI_IN_PLACE, buf, MSG_DOUBLES, MPI_DOUBLE, MPI_SUM, MPI_COMM_WORLD);

    for (i = 0; i < ITER; i++) {
        MPI_Barrier(MPI_COMM_WORLD);
        double t0 = MPI_Wtime();
        MPI_Allreduce(MPI_IN_PLACE, buf, MSG_DOUBLES, MPI_DOUBLE, MPI_SUM, MPI_COMM_WORLD);
        double t1 = MPI_Wtime();
        times[i] = t1 - t0;
    }

    if (rank == 0) {
        double *sorted = malloc(ITER * sizeof(double));
        memcpy(sorted, times, ITER * sizeof(double));
        qsort(sorted, ITER, sizeof(double), cmp);
        double med = sorted[ITER / 2];
        double mn = sorted[0], mx = sorted[ITER - 1];
        double sum = 0;
        for (i = 0; i < ITER; i++) sum += times[i];
        printf("ranks=%d bytes=%d iters=%d median_us=%.1f mean_us=%.1f min_us=%.1f max_us=%.1f\n",
               nprocs, MSG_BYTES, ITER, med * 1e6, (sum / ITER) * 1e6, mn * 1e6, mx * 1e6);
        fflush(stdout);
        free(sorted);
    }

    free(times);
    free(buf);
    MPI_Finalize();
    return 0;
}
