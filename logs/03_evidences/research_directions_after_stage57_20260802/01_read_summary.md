# Stage 58: literature-guided direction screen

## Retained direction: static temporary/stride/alias audit

Chinese NEMO modernization work identifies pointer-heavy code, deep loop nests, memory bandwidth and SIMD blockers as practical ocean-model optimization targets. Intel Fortran guidance documents that strided array sections can cause compiler-generated pack/unpack temporaries and that unit-stride vector paths are faster. These are relevant to O33 only if an exact unexamined hotspot has concrete report/source evidence.

The next authorized task is therefore **zero-run only**: inspect O33 `gls_corstep`, `t3dmix4_s`, and biology hotspot call boundaries for non-contiguous actual arguments, array syntax temporaries, pointer aliasing, and compiler messages that prove missed unit-stride/vector paths. Quantify direct invocation counts and conservative whole-run ceiling before any edit/build/job.

## Rejected directions

- 64-rank tile-aspect sweep: O33 grids are 359x326 and 235x245. With 64 ranks, 8x8 yields tile dimensions about 44.9x40.8 and 29.4x30.6. 16x4 or 4x16 increases perimeter for both grids; do not spend a run.
- Mixed precision/many-core DMA: literature is platform-specific and changes arithmetic precision; it is incompatible with the contest's frozen calculation/accuracy requirements.
- Generic `MPI_GATHERV`/`MPI_SCATTERV`: upstream ROMS contains such support, but O33 PMPI found no Allgather/Allgatherv calls in the active run and the historical aggregate route is closed.
- Generic halo removal/async or more ranks: direct O33 profiling and Stage 55 already close these routes.

Read-summary validity: VALID research screening; no job/output exists.
