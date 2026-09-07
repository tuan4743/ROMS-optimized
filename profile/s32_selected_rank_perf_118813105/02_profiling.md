# Stage 131 - S32 selected-rank perf: profiling

## Core counters

All deltas are `(interior-edge)/edge`; they compare ranks in the same node and logical row.

| edge | interior | task-clock | cycles | instructions | IPC edge | IPC interior | branches |
|---:|---:|---:|---:|---:|---:|---:|---:|
| 8 | 10 | +0.635% | +0.389% | -2.297% | 1.421 | 1.383 | -7.059% |
| 24 | 28 | +0.567% | +1.451% | -1.996% | 1.411 | 1.363 | -5.885% |
| 40 | 42 | +1.030% | +0.713% | -2.652% | 1.405 | 1.358 | -7.838% |
| 48 | 53 | +0.277% | +0.616% | -4.668% | 1.465 | 1.388 | -11.103% |

Mean interior-minus-edge differences are about `+0.627%` task-clock, `+0.792%` cycles and `-2.904%` instructions. Interior IPC is lower in every pair. Branch misses do not move consistently and are not used for attribution. Cache, DRAM and NUMA events remain unsupported on this Hygon PMU and are not claimed.

## Symbol sampling

The perf reports cover 95.89-96.77% of samples above the 0.25% reporting threshold. For interpretation only, reported symbols were grouped into:

- ROMS exchange/nesting: `mp_exchange*`, contact/refine/fine-to-coarse and related nesting routines;
- UCX/MPI runtime progress: UCX/UCT/Open MPI progress, PML and collective runtime symbols;
- model compute/math: other symbols in `oceanM.S32_parent`, including Intel scalar math.

Using each report's own `cpu-clock` event count, the approximate interior-minus-edge CPU-time decomposition is:

| pair | total sampled CPU | ROMS exchange/nesting | UCX/MPI runtime | model compute/math |
|---|---:|---:|---:|---:|
| 8/10 | +0.919 s | +0.925 s | -3.578 s | +4.041 s |
| 24/28 | +1.273 s | +2.475 s | -4.237 s | +2.969 s |
| 40/42 | +1.455 s | +1.525 s | -3.059 s | +2.103 s |
| 48/53 | -0.768 s | +1.591 s | -4.397 s | +1.666 s |

The fourth pair's total reverses sign between the stat pass (`+0.277%` interior task-clock) and record pass (`-0.768 CPU-s`), so differences of this size are sensitive to run/sampling noise. The category pattern is nevertheless consistent in all four pairs: interior ranks spend more sampled CPU in model compute and ROMS exchange, while edge ranks spend 3.1-4.4 CPU-s more in UCX/MPI progress. These components nearly cancel in total task-clock.

Dominant sampled symbols are stable across ranks: `pre_step3d_tile` about 14.4-15.1%, `step3d_t_tile` 12.8-13.1%, scalar `__libm_pow_e7` 6.7-7.3%, biology 5.9-6.8%, `t3dmix4_tile` 5.0-5.4%, GLS corrector 4.7-5.2%, and `step2d_tile` 4.25-4.83%. Edge ranks show more `uct_dc_mlx5_iface_progress`; interior ranks show more `mp_exchange4d` share. This reproduces the earlier node-level observation that exchange and UCX progress move oppositely.

## Attribution and optimization decision

1. **Interior computational work is real but not an exposed >=2% wall lever.** It is offset by additional edge-side communication progress, leaving only about 0.3-1.0% task-clock separation in the stat pass.
2. **Do not change nonuniform tile bounds.** The previous 1.81-2.57% perfect-rebalance ceiling was already marginal and included waiting in ROMS timers. The direct rank counters now show a smaller total-load difference and a two-sided trade-off; shifting cells can easily exchange one cost for the other.
3. **Do not reopen square-node rank mapping.** Stage 53 job `118373369` already reduced inter-node cardinal cuts from 24 to 16 but produced only `+0.7936%`, failed the both-B-faster gate, and increased the combined halo timer.
4. **Do not implement step2d OpenMP from the aggregate hotspot.** The earlier P3 evidence shows step2d is heavier on west-edge ranks, while this run shows total edge/interior load is already close. Teammate S26 also measured step2d parallelization slower.
5. **Do not reopen generic nonblocking/double-buffer/persistent MPI or UCX sweeps.** Existing source experiments and runtime sweeps are closed, and this profile does not expose a new critical-path mechanism.
6. **Do not launch a math-precision sweep from the 7% `pow` share.** `fast=2` on GLS+biology was fast but failed official Dongsha `u`; biology-only fast passed but was slower than the champion. The previously prepared `-fimf-precision=low` build produced a byte-identical binary and stopped before any run, proving that flag had no code-generation effect under the tested precise scalar path.

## Remaining bounded direction

The only justified next technical step is **zero-run compiler-report inspection** on the frozen S32 source and exact production flags:

- emit detailed vectorization/IPO reports for `pre_step3d`, `step3d_t`, `biology`, `t3dmix`, GLS and `step2d`;
- accept a candidate only if a specific hot loop has a proved removable implementation blocker (alias, alignment, temporary or dependency metadata), preserves every formula and stencil, and has a conservative full-wall ceiling above 2%;
- otherwise freeze S32 and move to delivery/reproduction rather than another parameter sweep.

The `obc_volcons` boundary-only communicator remains research-only: the full reduction pool is only about 1.68% wall-equivalent, below the current experiment gate before implementation overhead.
