# Pass 2 - Ranked next-step profiling plan

Status: **VALID quantitative plan; no speedup claim**.

## Why other open-looking branches stay closed

- Async halo: measured clean-window gain `0.066%`, optimistic ceiling `0.373%`.
- Output I/O: O33 full profile writing totals `0.9610% + 0.5275% = 1.4885%`; even eliminating it is below 2%, and output settings are frozen.
- Ntile/rank count: O8/O16/O28, E062 and O36 reject remaining 64-rank orientations, 128 pure MPI and 32x4.
- OpenMP runtime: O29 establishes `KMP_BLOCKTIME=0`; broad OpenMP and nowait/fusion are negative.
- Source CSE/compiler flags: GLS, biology, AVX2, prefetch/unroll, streaming stores, vector threshold and alignment screens are closed.

## Selected P0: current-O33 collective message histogram

Instrument only `MPI_Allreduce`, `MPI_Allgather`, `MPI_Allgatherv`, and `MPI_Bcast` through a private PMPI preload library. Record per rank/communicator size/operation/datatype/message-byte bucket:

- call count;
- total bytes;
- cumulative time;
- minimum/maximum time;
- communicator size.

Run the exact O33 parent once at diagnostic `144/720`, four nodes, 64 MPI x 2 OpenMP, 8x8/8x8, unchanged current rules. The run is profiling-only: wrapper overhead invalidates wall-time comparison, no NetCDF is expected, and no accuracy claim is made.

## Conditional P1: bounded collective algorithm DOE

Only for message sizes that dominate the P0 histogram:

1. benchmark Allreduce algorithms 0-6 and Allgather 0-6 on the exact four-node/rankfile topology;
2. retain current rules as control and use repeated runs;
3. generate at most one alternate legacy decision file;
4. reject if the weighted collective-time reduction is not at least 15%, or if the measured collective share is below `2% / 15% = 13.33%` of whole-program time;
5. only if `collective_share * weighted_reduction >= 2%` submit one O33 A-B-B-A at `144/720` with old/new rules.

This turns a finite parameter axis into a causal sequence: application histogram -> only observed sizes -> weighted model -> one candidate. It avoids the invalid O15a pattern of forcing recursive doubling for every size.

## Ranked fallback after P0

1. Collective histogram/threshold DOE: highest priority and proven prior leverage.
2. Topology-aware rank permutation: static edge-cut audit only; current contiguous two-row-per-node placement is already favorable, so no run without a new contact-graph imbalance.
3. LICOM-style recomputation/communication removal: source-risky and time-expensive; consider only if P0 proves collectives dominant but runtime algorithms are already optimal.
4. Compiler/data-movement changes: no remaining profile-supported candidate above 2%; do not reopen now.
