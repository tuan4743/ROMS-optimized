# Stage 138 Step 2 — P1 phase-timestamp probe: Pass 1 read and design summary

- Date: 2026-08-11. Scope: zero-machine-time design of the single conditional diagnostic (P1) authorized by Stage 138 P0 (`P0_POSITIVE_ALIGNMENT / CEILING_UNPROVEN`) and re-opened after Stage 139b PGO termination.
- No ROMS source, formula, grid, input, output, remote job, or model output was changed. All evidence read-only from local copies (S32 archive files extracted to `/tmp/opencode/s32src/` via private remote staging `/public/home/fujiake/fjk/tmp_p1probe_src/`).

## 1. Prior evidence this design must answer

1. P0 (2026-08-10): coarse-grid contact traffic 100% on 6 center tiles (ranks 35/36/37/43/44/45); fine-grid supply 100% on boundary ring (west column heaviest). Correlations: fine supply vs G2 4D-halo wait Pearson **-0.8935** (reproduces Stage-127 step2d signature -0.8834); top-8 overlap 6/8 (fine) and 6/8 (coarse 2D-halo). Static ceiling unproven: perfect-rebalance ceiling only **1.81-2.57%**; contact arithmetic alone cannot statically exceed 2%.
2. Stage-93/127: per-rank step2d work negatively correlates with later 4D-halo wait; ranks that compute longer wait less. The wall sits in halo wait; uniform compute speedups convert to MPI wait (Stage 90).
3. Stage 95: sparse get_contact2d reduced point gathering ~22.3% but wall regressed 2.29% (per-call allocation + tiny P2P). P2 must not repeat that shape.
4. Stage 139b: PGO route terminated; S32 champion (92ffbd01, 1753.876 s, 26/26) remains the formal reference. Champion source = S32 archive (`backup_S32_src_20260808.tar.gz`, SHA-256 `615ee717...`).

## 2. Probe objective and decision gate

Objective: on the specific late ranks, decompose wall into named phases and measure the **removable ceiling** of each named phase:

> `ceiling(phase) = (phase_critical_rank − phase_median_rank) / mean_cycle_wall`

Only a named phase with `ceiling > 2%` (on the specific late ranks, persistent across ≥2 of 3 legs) authorizes P2/P3 (contact or compute candidate design). Otherwise **freeze S32 and stop performance experiments** (delivery-only mode).

Rationale for the (critical − median) formulation: Stage-93/90 established that local compute savings on a critical rank convert to MPI wait — a phase whose duration on the critical rank equals the median cannot be removed by rebalancing. `phase_critical − phase_median` is the conservative rebalance-able fraction; the perfect-rebalance ceiling (1.81-2.57%) bounds this from the wall side.

## 3. Design decisions (fixed)

1. **Source fork**: S32 archive extracted into one new private tree; probe is a single new file `ROMS/Utility/probe_phase.F` plus guarded call sites (all `#ifdef PHASE_PROBE`). Zero-delta rebuild A′ from the same tree remains available for lineage control.
2. **One slurm job, 4 legs × 144/720**: leg 0 = A′ (zero-delta, same recipe) as lineage + trajectory reference; legs 1-3 = probe binary. Single job minimizes queue slots; 144/720 ≈ 3-4 min per leg (Stage 139b ABBA evidence: 106-175 s/leg), total well under `01:30:00`.
3. **In-memory accumulation, one dump at end**: per-thread accumulators (indexed by `omp_get_thread_num()`), zero locks, no I/O during stepping; per-rank files `p1probe/rank_<rank>.dat` written once after the time loop.
4. **Trajectory neutral**: probe code only calls `MPI_WTIME` and increments a private array; no model arithmetic touched. Neutrality verified by comparing A′ vs probe leg outputs (trajectory hash / diagnostic u).
5. **3 repeats per rank**: legs 1-3 repeat the same probe binary; persistence per rank per leg; attribution stability = top-8 late-rank lists and ceilings stable across ≥2 legs.
6. **Stage-139 telemetry merged into the same job** (read-only sampling; no separate cache DOE): NUMA maps, THP, TLB counters — see 02_profiling.md.
7. **Gates before submission**: queue empty of teammate jobs (currently blocked by sprint_O84×2 + zya combo PD), disk check, unique output path, source-lineage (archive SHA) verified, probe source reviewed.

## 4. Named phases (measured, non-overlapping at the main3d level)

| id | phase | site | covers |
|---|---|---|---|
| 1 | step2d_all | main3d.F wrap of both step2d tile loops (per grid) | pure step2d arithmetic + its internal 2D exchanges (split in analysis via phase 6-8) |
| 2 | nest_contact2d | main3d.F n2dPS / n2dCS calls | contact interpolation/assembly (composite branch: get_composite+put_composite→get_contact2d) |
| 3 | nest_feedback | main3d.F n2dfx + n2way sections | fine→coarse feedback / synchronization (correct_tracer, fine2coarse, fluxsum) |
| 4 | nest_boundary | main3d.F ngetD/nbstr/nzeta/nputD/nmflx + n3duv/n3dTV/nzwgt/nmask/nrhst | refined-grid supply + 3D contact + vertical weights |
| 5 | rhs3d_step3d_t | main3d.F rhs3d + step3d_t wrap (per grid) | 3D compute incl. internal 4D halos (split via 9-11) |
| 6 | halo2d_pack_issue | mp_exchange2d/2d_bry entry → after last send issue | packing + send/recv issue |
| 7 | halo2d_wait | mp_exchange2d/2d_bry mpi_wait regions | 2D halo wait |
| 8 | halo2d_unpack | mp_exchange2d/2d_bry remainder | unpack |
| 9 | halo3d4d_pack_issue | mp_exchange3d/3d_bry/4d entry → after last send issue | packing + issue |
| 10 | halo3d4d_wait | mp_exchange3d/3d_bry/4d mpi_wait regions | 4D halo wait |
| 11 | halo3d4d_unpack | mp_exchange3d/3d_bry/4d remainder | unpack |
| 12 | set_vbc_set_depth | main3d.F set_vbc + set_depth wraps | small fixed phases |
| 13 | other | analysis residual | wall − sum(1..12) |

Named analysis groups for the gate: **pure step2d compute** (1 − 6/7/8), **contact 插值装配** (2+4 contact parts), **packing** (6+9), **halo wait** (7+10), **嵌套反馈同步** (3), **3D compute** (5 − 9/10/11).

## 5. Pass-1 decision

Design is VALID and submission-ready at the documentation level; probe source patch is drafted in this directory (UNSUBMITTED_DRAFT, reviewed but not compiled). Do not submit until queue gates pass and the user confirms the single diagnostic job.
