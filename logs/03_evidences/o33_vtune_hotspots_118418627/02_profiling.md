# Stage 72 - VTune hotspots collection: profiling

## Scope and validity boundary

- VTune 2026.3.0 `hotspots` software sampling, stack collection disabled, data cap 32 MiB/rank. The raw result totals 473 MiB.
- It preserves O33 binary/input semantics but has profiler overhead; its `real 3m51.559s` cannot be compared with uninstrumented diagnostic or full-run times.
- The automation did not merge per-node results. The requested aggregate path `.../result` does not exist. Use `vtune -report ... -r .../result.j05r2nXX` for node-local reports.

## Readable node-local evidence

`vtune -report hotspots -group-by function -limit 20 -format csv -r result.j05r2n11` succeeds. Its leading CPU-time functions (rank-aggregated for that node, not a global wall-time share) are:

| Function | CPU time (s) |
|---|---:|
| `pre_step3d_tile` | 382.828 |
| `step3d_t_tile` | 250.130 |
| `__libm_pow_e7` | 182.439 |
| `step2d_tile` | 169.378 |
| `mp_exchange4d` | 134.373 |
| `biology_tile` | 120.590 |
| `gls_corstep_tile` | 116.705 |
| `t3dmix4_tile` | 116.225 |
| `uct_dc_mlx5_iface_progress` | 104.760 |
| `uct_rc_mlx5_iface_poll_rx_cq` | 74.238 |
| `PMPI_Wait` | 49.848 |

## Interpretation

The data independently supports the existing source-profile hotspot order: 3-D preparation/tracer work, fast barotropic work, 4-D halo exchange, biology/GLS/mixing, and UCX/MPI progress are material. It does not establish a new optimization direction or quantify a global benefit because this is one shortened, instrumented, node-local report with no merged global attribution.

No source, input, physical scheme, grid, MPI layout or output setting changed. The job's nonzero Slurm exit is a report-path harness defect, not model or collector failure.
