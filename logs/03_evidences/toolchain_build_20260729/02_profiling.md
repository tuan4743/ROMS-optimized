# Pass 2 - Build profiling

- Date: 2026-07-29
- Job: `118169519`
- Build command: serial dependency-safe `make -j1`, isolated `SCRATCH_DIR`, `COMPILERS`, and `BINDIR`.
- Wall time: `2:47.26`.
- User CPU time: `140.09 s`; system CPU time: `11.84 s`; reported CPU utilization: `90%`.
- Maximum resident set: `737584 KiB`.
- Build-log lines: `848`.
- Compiler flags observed: `-march=znver1 -mtune=znver1 -O3 -funroll-loops`.
- OpenMP token scan (`-fopenmp`, `-D_OPENMP`, `-lgomp`): empty.
- Dynamic linkage confirms GCC NetCDF/HDF5, HPC-X 2.7.4 GCC MPI, and `libgfortran.so.4`.

Profiling conclusion: build isolation worked as designed and did not introduce hotspot OpenMP. Compilation time is preparation evidence only, not a model-performance result.
