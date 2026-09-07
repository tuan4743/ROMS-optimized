# Pass 2 - Collective profiling and gate analysis

## Measurement boundary

The PMPI library wraps the legacy Fortran symbols for `MPI_Allreduce`, `MPI_Allgather`, `MPI_Allgatherv`, and `MPI_Bcast`, calls the matching PMPI routine exactly once, and records elapsed time after the call returns. Results are aggregated over exactly ranks 0-63 by collective, communicator size, message bytes, datatype size, and reduction operation. The instrumented shell wall time is deliberately excluded from performance comparisons.

## Observed distribution

| Collective / communicator | Mean seconds per rank | Buckets | Share of mean rank lifetime |
|---|---:|---:|---:|
| MPI_Bcast / 16 ranks | 5.019533 | 9 | 3.975% |
| MPI_Bcast / 64 ranks | 4.613584 | 37 | 3.655% |
| MPI_Bcast / 4 ranks | 0.187106 | 9 | 0.148% |
| MPI_Allreduce / 64 ranks | 5.396863 | 32 | 4.275% |
| Total | 15.217087 | 87 | 12.053999% |

No Allgather/Allgatherv bucket was observed, so the current Allgather rule cannot be optimized from this run and contributes no measured residual share here.

The largest scalable-looking calls are world collectives: 720 calls at 134,368 bytes and 2,448 calls at 626,416 bytes for Allreduce, plus 672 4-byte, 1,200 12-byte, and 427 8-byte Bcasts. In contrast, communicator-16 Bcasts of roughly 14-33 MiB occur only 1-17 times per rank and account for most of the shortened-run fixed/startup component.

## Whole-program gate

- Direct diagnostic requirement: a 2% whole-program gain would require reducing all timed collectives by `2 / 12.053999 = 16.5920%`.
- The predeclared provisional assumption of a 15% weighted algorithm improvement gives only `12.053999% x 15% = 1.80810%` end-to-end, below the 2% gate.
- Even the deliberately optimistic bound in which every measured collective second scales by the full NTIMES factor of 18 gives `15.217087 x 18 / 2142.793 = 12.782736%` of O33's validated full wall time. A 15% collective reduction then gives only `1.91741%` end-to-end.
- A more realistic sensitivity split treats buckets with at most 20 calls and messages above 1 MiB as fixed-like initialization. Those buckets are `5.275249 s`; using all calls-at-most-20 as the conservative fixed-like group gives `5.325400 s`, leaving `9.891687 s` scalable-looking. Scaling only that component by 18 projects `183.375761 s`, `8.557792%` of full O33, and only `1.28367%` whole-program gain at 15% improvement. This split is a heuristic, not a measured full-run histogram.

The ROMS timer extract independently shows substantial communication, but it groups halo, scattering, gathering, broadcast, and reduction activity and cannot be equated to tunable `coll_tuned` collective time. Direct PMPI timing is the correct denominator for this runtime-rule axis.

## Decision

`STOP_AT_PROVISIONAL_SCREEN`.

Do not launch a collective algorithm sweep or a ROMS A-B-B-A candidate from this profile. The measured share misses the declared 13.33% screen, the 15% weighted-improvement assumption misses 2% even under the all-calls-scale upper normalization, and the large Bcast contribution is partly startup-only. Current O33 rules remain unchanged.

This is the first below-gate direction after the latest mandatory PLAN reset. It is a profile-supported rejection before candidate construction, not a candidate runtime regression.
