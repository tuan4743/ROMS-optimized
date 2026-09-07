# 02_profiling — Stage 125 orthogonal ceiling models

## A. `mp_scatter2d` hierarchical Bcast

S32 PROFILE (`118769550`): data scattering G01 1.4358% + G02 0.2862% = **1.722%** of timer base.  
`mp_scatter3d` already has O9; `mp_scatter2d` still flat `mpi_bcast` (audit of S32 `distribute.F`).  
Even deleting the entire scattering bucket misses the 2% gate. BcastHier (region 44, 5.34%) already proved PROFILE→wall non-conversion on warm samples. **STOP before build.**

## B. Intra-node shared-memory halo (`MPI_Win_allocate_shared`)

### Why it looked open

Stage-88 matrix ranked it #2: O33-era halo wall share ~24.8%; `mp_exchange.F` (~7132 lines, 60 isend/irecv sites) uses only point-to-point; only `[O9]` uses `MPI_COMM_TYPE_SHARED`.

### Why it fails the S32 ≥2% critical-path gate

1. **Topology:** 8×8 tiles on 4 nodes as 2×2 blocks of 4×4 ⇒ ~86% of E/W+N/S neighbor pairs are intra-node. On-node traffic dominates halo edges.
2. **UCX already provides SHM:** HPC-X/UCX default PML uses posix/sysv/cma/xpmem for intra-node (NVIDIA HPC-X docs; Open MPI UCX notes). A hand-rolled `MPI_Win` path races the MPI stack, not a cold transport.
3. **Skew composition (Stage 93 P1 G2 4D):** mean 11.61, **min 7.21**, max 13.31 CPU-s. Payload floor ≈ min; wait ≈ mean−min ≈ 4.4. Shared-mem can only trim a fraction of the ~7.2 payload, and only after UCX already optimized on-node copies.
4. **Stage 90:** wall is set by late arrivals (compute/nesting load), not by early ranks’ transfer cost. Speeding on-node copies for waiters does not move the straggler.

Conservative wall ceiling: **≪2%** (likely noise). **NO_BUILD.**

## C. Rank/thread layout already measured negative

| experiment | result | source |
|---|---|---|
| O36: 32 MPI × 4 OMP, Ntile 4×8 | **0.894×** (145.8 vs 130.4 s); G02 compute/r up 100.7→156.9 | nan mainline O36 |
| 128 pure MPI | Stage 55 regression | OPTIMIZATION_LOG |
| Ntile 16×4 | −12% | nan sprint / S15 |
| Unequal G01/G02 cores | teammate: wait-tax limited; perfect overlap ≤ flat; vali risk on reduction order; stub `REFACTOR_unequal_allocation_feasibility.md` is **0 bytes** | nan sprint 2026-08-06 |

HiPC 2024 “balanced coarse/nested distribution” motivates unequal ranks in general ROMS, but does not overturn the teammate feasibility close on this exact two-way nesting + 64-rank product constraint without a communicator redesign.

## D. Literature vs already-closed nesting path

MyROMS forum (Hernandez): two-way nesting global gather is the classic bottleneck; fix is contact-local averaging. This tree already carries `[O10]` owner-packed `get_contact3d` / fine2coarse; `[O34b]` sparse `get_contact2d` **measured −2.29%**. Remaining gather-shaped timers (point gathering 1.73% combined) cannot clear 2% alone.

## E. The only ≥2%-scale residue: Stage-93 structural skew

| quantity | value |
|---|---|
| Warm TOTAL spread | ≈3.7% diagnostic wall |
| Full-run ceiling if skew removed | ≈3–4% |
| West-column 4D partial | ≈2–3% |
| Land/wet explanation | **falsified** Stage 124 (Dongsha all-wet, deep) |
| Tiling redistrib | **closed** Stage 94 (8×8 minimum perimeter) |
| Cause (compute vs nesting boundary supply) | **UNPROVEN** — `[P2]` deferred since Stage 93 |

Without a proven removable cause, the 2–3% figure is a **skew budget**, not a candidate mechanism.

## Decision table

| ID | mechanism | ≥2% critical-path? | authorize |
|---|---|---|---|
| S32-Scatter2dHier | O9→scatter2d | no | NO |
| S32-ShmHalo | Win shared halo | no (UCX+skew) | NO |
| S32-32x4 | fewer ranks | no (measured) | NO |
| S32-UnequalGrids | split communicators | unproven / high risk | NO |
| S32-P2-Attr | timestamp attribution | diagnostic only | design-only if user wants |
| — | any other labeled-open | — | **none found** |
