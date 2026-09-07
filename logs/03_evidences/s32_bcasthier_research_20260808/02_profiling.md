# 02_profiling — why BcastHier and why not the others

## S32 PROFILE shape (job 118769550)

Fine-grid compute still dominates locally (predictor 11.95%, tracers 11.68%, GLS 9.32%, step2d 8.11%, biology 6.03%), but Stage 90 stands: speeding non-critical compute reappears as MPI wait. Message Passage remains ~19% on G02; **G01 data broadcast alone is 4.0% of the global timer base**.

## Closed / below-gate (do not retry)

| direction | evidence |
|---|---|
| Classic ifort 2022/2024 on S32 | +0.90% / +1.24%, `both_B_faster=False` |
| ifx LLVM | −11.4% (O33 base) |
| prefetch / unroll / inline / align | teammate S25–S30 + our align −0.78% |
| 4D overlap / nonblocking | S22/S23 STOP |
| step3d_t / GLS / pre_step fast=2 | vali u over or slower |
| OpenMP extend / step2d OpenMP | Stage 90 / teammate S26 |
| get_contact2d sparse | Stage 95 −2.29% |
| scratch / pmnreuse | Stage 51/85 |
| G01/G02 unequal ranks | teammate: theoretical gain ~0 |
| equal-tile retile | Stage 94 arithmetic |
| Intel MPI stack swap | untested but wait is arrival-skew dominated → weak ≥2% argument |
| A4 register tiling on step3d_t | never measured; Stage 90 kills share×speedup wall claim |
| pack more halo fields in step2d | 3+2 under nesting already near API max; low frequency |

## Hot-path audit

- `mp_exchange4d` for tracers already packs `1..NT` in one 4D call (`Nfields=1` over full tracer axis) — not a packing win.
- `mp_scatter3d` has O9; **`mp_scatter2d` and all `mp_bcast*` do not**.
- Region 44 string map: `mod_strings.F` “(44) Message Passage: data broadcast”.

## Mechanism hypothesis

On 4 nodes × 16 ranks, flat `MPI_Bcast` over 64 ranks pays cross-node latency on every `mp_bcast*` (226 call sites in tree; many per forcing/I/O/nesting path). O9’s two-level tree (4 leaders, then intra-node shared) is already vali-proven on this cluster for scatter. Applying the same tree to broadcast cuts region 44 without changing numerics.

## Ceiling

- Observed broadcast share: **5.34%** of PROFILE CPU (G01+G02).
- Conservative 40% reduction of that bucket → **2.14%** whole-run.
- If warm-run broadcast is mostly tiny scalars and two-phase overhead dominates, sample may miss 2% → STOP_BRANCH (acceptable).

## Research sources

- ROMS MPI notes: combining messages / reducing small Bcasts matter at scale.
- Existing in-tree O9 / feng E046 hierarchical scatter (vali-passed).
- Teammate closed matrix does **not** list hierarchical `mp_bcast*`.
