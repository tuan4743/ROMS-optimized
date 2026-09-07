# Mandatory PLAN quantitative profiling

## Closed research routes

- China NEMO scalar/SIMD/compiler/bandwidth modernization is directionally relevant, but O33 has already screened ifort reports, AVX2 hot objects, prefetch/unroll/streaming/vector thresholds, loop order, GLS/biology CSE and one exact `pre_step3d` reuse candidate. The literature does not justify a blind flag sweep without a new hotspot.
- swPOM/swNEMO's largest gains depend on Sunway CPE/DMA/cache or mixed precision. The final is CPU-only on x86, and mixed precision is numerically/rule sensitive; these are not applicable candidates.
- Official ROMS GATHERV/SCATTERV targets serial-I/O scatter/gather. Current O33 PMPI profiling saw no Allgather/Allgatherv in the diagnostic hot path, prior aggregate candidates are closed, and output I/O is below 2%; no port is selected.
- NEMO communication removal confirms the value of deleting calls, but O33's current collective and exact `step2d` site routes have already failed quantitative gates. Generic asynchronous MPI is also closed by the measured `0.37321%` halo-overlap ceiling.

## Selected P0: mapping only

For an 8x8 nonperiodic tile grid there are 112 undirected cardinal neighbor edges. Because O33 assigns rank `j*8+i`:

| Mapping | Tile shape per node | intra-node edges | inter-node edges |
|---|---:|---:|---:|
| Current contiguous ranks | 8x2 stripes | 88 | 24 |
| Candidate rank permutation | four 4x4 blocks | 96 | 16 |

The candidate reduces inter-node neighbor pairs by `8/24=33.3333%` on both grids without altering logical MPI ranks or tiles.

Validated full O33's combined 2-D+4-D halo timer share is `15.7796%`. A 2% whole-run improvement requires a `2/15.7796=12.6746%` reduction of this halo pool. If halo time scaled with inter-node edge count, the deliberately favorable whole-run ceiling would be `15.7796%*33.3333%=5.25987%`. The candidate can clear 2% only if at least `38.0238%` of the halo timer is inter-node-sensitive and responds proportionally.

This is an authorization ceiling, not a performance prediction. Local packing, intra-node exchange, synchronization, nesting collectives and compute are unchanged, so the real gain may be zero or negative.

## Minimal experiment

Use one allocation and one immutable O33 binary:

1. A1 current two-row stripe rankfile.
2. B1 four 4x4 node-block rankfile.
3. B2 same four-block rankfile.
4. A2 current stripe rankfile.

Keep four nodes, 64 MPI x2 OpenMP, 8x8/8x8, exact core pairs, HCOLL off, collective rules and diagnostic `144/720`. Require four DONE runs, two profiles each and one trajectory hash. Reject below 2%; require at least 3%, both B faster, halo-timer support and trajectory consistency before considering a full run.

Pass 2 status: **VALID quantitative plan; no speedup claim**.

