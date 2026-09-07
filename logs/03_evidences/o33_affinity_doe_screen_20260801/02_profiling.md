# Stage 54: O33 affinity DOE topology profile

This is static placement profiling, not a performance measurement. The O33 rank report gives examples such as rank 0 bound to physical cores 0 and 1, rank 1 to 2 and 3, rank 2 to 8 and 9, then the same four-NUMA-domain pattern across all 16 ranks per node. Platform `lscpu` reports physical core groups 0-7, 8-15, 16-23, and 24-31 for the four NUMA nodes; the rankfile pair sequence assigns four ranks to each group.

The parent launch passes `--rankfile` and `--report-bindings`; Open MPI's process affinity therefore constrains the OpenMP runtime before `OMP_PROC_BIND` is applied. With exactly two allowed physical cores and exactly two threads, `close` versus `spread` can at most permute those two threads. It cannot spread work to another NUMA node, change rank-to-core locality, or alter the MPI process mapping.

`KMP_BLOCKTIME=0` affects post-parallel-region worker spin/sleep policy, but ROMS's target hot loops are inside active parallel regions and no profile identifies OpenMP idle spinning as a >=2% portion of O33. Reverting it or sweeping affinity variables would therefore be blind parameter search, already disallowed by closed compiler/runtime directions.

Profiling-pass validity: VALID as a topology/affinity screen. It neither profiles a new executable nor establishes full-input performance or official numerical accuracy.
