# 02_profiling — ceiling model for Intel MPI vs residual ledger

## Mechanism claim (teammate / literature)

Intel MPI often beats untuned Open MPI on **Bcast/Allreduce** when collectives dominate (AWS ParallelCluster reports; Intel adjust knobs). Halo P2P is more locality/message-size bound (POLCOMS CUG paper).

## Why that claim fails the S32 ≥2% gate

1. **Wall critical path is late-rank compute, not collective latency.** Stage 93: center-block / west-column arrival skew ≈3.7% warm wall. Teammate S22/S23: overlap and nonblocking **increased** or failed to move wall because sync wait is arrival-driven.
2. **PROFILE message CPU ≠ fabric work.** Busy-poll wait is booked into halo timers. Speeding the library only helps the true transfer slice. Conservatively take ≤25% of G02 halo bucket (15.8%) as fabric-reducible → ≤4.0% of PROFILE CPU, and only a fraction of that sits on the late-rank critical path → **projected wall ≪2%**, likely noise.
3. **Direct counter-examples on this codebase/platform:**
   - BcastHier on region 44 (5.34% PROFILE) → **−0.09% wall**
   - coll_rules Allreduce algorithm swap → neutral (teammate S32 audit)
   - HPC-X minor version swap → 0.031%
4. Literature that favors Intel MPI assumes collective-bound apps; it does **not** claim MPI swaps fix wet/dry or nesting load imbalance (the POLCOMS paper’s answer is wet-point decomposition — ROMS equal-tile tiling already closed by Stage 94 arithmetic).

## Residual ≥2% ledger after this pass

| direction | status |
|---|---|
| Classic ifort micro / ifx | CLOSED (119/120; ifx −11%) |
| Flags: prefetch/unroll/inline/align/ipo | CLOSED (teammate S25–S30; ipo already in S32) |
| BcastHier / scatter O9 extend | BcastHier STOP; scatter2d alone ≤1.72% PROFILE |
| Halo overlap / nonblocking / sparse 2D contact | CLOSED |
| OpenMP extend / step2d OMP / tiling / mapping | CLOSED |
| Fast=2 outside biology | CLOSED (vali or slower) |
| **Intel MPI stack swap** | **FAILS ≥2% gate (this note)** — optional below-gate diagnostic only with explicit user override |
| Wet-point / land-skip load rebalance | Open as **research only**; needs land-fraction×skew model + u-risk argument before any build; not authorized here |

## Honest state

No legal, conservative ≥2% experiment is currently authorized on the S32 parent. Performance work continues as research until a new mechanism clears the gate or the user lowers/overrides the gate for a named diagnostic.
