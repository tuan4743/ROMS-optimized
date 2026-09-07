#include <mpi.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define WARMUP 20
#define ITER 200

static int cmp(const void *a, const void *b) {
    double x = *(const double *)a, y = *(const double *)b;
    return x < y ? -1 : (x > y ? 1 : 0);
}

int main(int argc, char **argv) {
    MPI_Init(&argc, &argv);
    int rank, nprocs;
    MPI_Comm_rank(MPI_COMM_WORLD, &rank);
    MPI_Comm_size(MPI_COMM_WORLD, &nprocs);

    int sizes[2];
    int nsizes;
    if (argc >= 3) {
        sizes[0] = atoi(argv[1]);
        sizes[1] = atoi(argv[2]);
        nsizes = 2;
    } else {
        sizes[0] = 16796;   /* 134,368 B */
        sizes[1] = 78302;   /* 626,416 B */
        nsizes = 2;
    }

    for (int s = 0; s < nsizes; s++) {
        int n = sizes[s];
        double *buf = malloc(n * sizeof(double));
        if (!buf) { if (!rank) fprintf(stderr, "malloc fail\n"); MPI_Abort(MPI_COMM_WORLD, 1); }
        for (int i = 0; i < n; i++) buf[i] = (double)(rank + 1);

        double *times = malloc(ITER * sizeof(double));

        for (int i = 0; i < WARMUP; i++)
            MPI_Allreduce(MPI_IN_PLACE, buf, n, MPI_DOUBLE, MPI_SUM, MPI_COMM_WORLD);

        for (int i = 0; i < ITER; i++) {
            MPI_Barrier(MPI_COMM_WORLD);
            double t0 = MPI_Wtime();
            MPI_Allreduce(MPI_IN_PLACE, buf, n, MPI_DOUBLE, MPI_SUM, MPI_COMM_WORLD);
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
            for (int i = 0; i < ITER; i++) sum += times[i];
            printf("ranks=%d bytes=%d iters=%d median_us=%.1f mean_us=%.1f min_us=%.1f max_us=%.1f\n",
                   nprocs, (int)(n * sizeof(double)), ITER, med * 1e6, (sum / ITER) * 1e6, mn * 1e6, mx * 1e6);
            fflush(stdout);
            free(sorted);
        }
        free(times);
        free(buf);
    }
    MPI_Finalize();
    return 0;
}
