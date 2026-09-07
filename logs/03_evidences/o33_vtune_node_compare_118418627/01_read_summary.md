# Stage 74 - Four-node VTune hotspot comparison

- Date: 2026-08-03 +0800. Read-only report extraction from retained Stage-72 VTune data; no model, source, input, output or runtime setting changed.
- Data: `vtune -report hotspots -group-by function -limit 12 -format csv` was run against each existing result directory `result.j05r2n11` through `result.j05r2n14` under `/public/home/fujiake/fjk/vtune_runs/118418627_o33_hotspots_64x2`.
- Scope: shortened/instrumented `144/720`, four nodes, 64 MPI x2 OpenMP. Values are sampled, node-local aggregate CPU seconds and are not wall-time or score-time shares.
- Initial conclusion: principal computation is balanced across nodes. Node-level `mp_exchange4d` varies, but no evidence shows that it determines global critical path; mapping/placement is not reopened.
- Output lifecycle: existing 473-MiB Stage-72 data remain retained. No deletion is applicable.
