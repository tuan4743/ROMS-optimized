# Second analysis: profiling and expected mechanism

No new profiler or model run was launched. This pass maps the candidate to the existing full-length S32 profile.

- `step3d_t`: 16.66% of total rank CPU in the existing full-length pooled profile.
- PRE plus CORRECT: 33.74% rank CPU, but this candidate targets only one materialization inside CORRECT.
- source-level removed footprint: one full global tracer intermediate store plus later load across all active tracers and both grids.
- replacement state: one OpenMP-private `i-k` column, below about 15.1 KiB/thread under a conservative bound.

Expected mechanism: reduce global tracer-state writeback/reload and improve producer-consumer locality. This is not yet an observed DRAM reduction or wall-time gain; cache may already absorb part of the old traffic.

Preprocessor evidence shows the number of nesting flux calls and final 4-D halo calls is unchanged, while one active vertical tracer loop disappears.

Promotion requires a successful same-recipe A′/B build, matched A/A′ lineage control, then one conditional A′-B-B-A′ diagnostic. A full performance claim is not authorized from this static evidence.

