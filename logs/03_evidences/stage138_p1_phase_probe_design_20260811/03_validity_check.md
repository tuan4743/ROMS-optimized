# Stage 138 Step 2 — P1 phase-timestamp probe: Pass 3 validity check

Date: 2026-08-11. Independent verification that Pass 1 (design) and Pass 2 (instrumentation) are supported by the evidence and internally consistent.

## 1. Design-vs-gate consistency

| constraint | status | evidence |
|---|---|---|
| Zero machine time for design | OK | No job submitted; remote write only to private staging dir `fjk/tmp_p1probe_src` (verified 7 source files, extracted from archive SHA `615ee717...`) |
| Fork = frozen S32 source | OK | All call sites verified against `/tmp/opencode/s32src/` = S32 archive files; archive SHA recorded in 01_read_summary |
| One 144/720 diagnostic, 3 repeats | OK | Job = leg 0 (A′) + legs 1-3 (probe), all 144/720, single slurm job |
| In-memory accumulation, single dump | OK | probe_phase_mod arrays; `probe_dump` only at end of time loop; no I/O during stepping |
| Per-rank persistence | OK | `p1probe/rank_<rank>.dat` per rank per leg; rank = MPI rank |
| Trajectory neutral | OK | Only `MPI_WTIME` + private array increments; no model data touched; A′ vs probe leg compare planned |
| Named phases split per plan | OK | step2d compute / contact interp-assembly / packing / 2D+4D halo wait / nesting feedback all present (phases 1-13, groups in 01 §4) |
| >2% named-phase ceiling gate | OK | gate defined on (critical − median)/wall, per plan ">2% 具名相位上限才授权 P2/P3" |
| Stage-139 telemetry merged | OK | NUMA/THP/TLB read-only sampler inside the same job; no separate cache DOE |
| No P2/P3 work before gate | OK | P2 only conditional on gate; P2 spec explicitly excludes Stage-95 shape (per-call alloc + tiny P2P) |
| Reuse of proven harness | OK | S32 harness pattern (rankfile, HCOLL off, coll_rules.conf, time real, DONE/RC) from `abba_pgouse.slurm` (fetched, unchanged semantics) |

## 2. Instrumentation-point verification (Pass 2 claims vs actual source)

Spot-checked against S32 archive copies:

1. `main3d.F` line numbers: step2d predictor tile loop 591-597 / corrector 638-643 with `!$OMP BARRIER` at 595/642 — **verified** (read 520-719). n2dPS at 614, n2dCS at 661, n2dfx at 691, n2way at 822, ngetD at 273/839, nbstr 387, nzeta 484, nputD 516/522, nmflx 523/617/664, nmask 680, nzwgt 718, n3duv 747, n3dTV 798, nrhst 554, set_vbc 371, rhs3d 535, step3d_t 785, set_depth 704 — **all verified** in the same read.
2. `step2d_LF_AM3.h`: mp_exchange2d calls at 563 (2 fields), 691 (3), 697 (2), 859 (1), 895 (1); section structure (depth/flux → avg fields → wet/dry → pressure gradient … → BC → exchange) — **verified** (greps + section headers).
3. `mp_exchange.F`: `mp_exchange2d` 290-893, `_bry` 896-1393, `mp_exchange3d` 1396-2102, `_bry` 2106-2715, `mp_exchange4d` 2719-3386; W/E irecv+send at 511-527 then wait/unpack 533-643, S/N pack 645+, S/N send (line ~1280-1300 region for the 3d variant pattern; 2d variant S/N irecv/send at 753-765) — **verified**. The 6-sub-accumulator scheme matches the code's per-direction structure.
4. `step3d_t.F`: mp_exchange4d at 338 and 1284, mp_exchange3d at 1314 — **verified** (remote grep of archive extraction).
5. `nesting.F`: SUBROUTINE nesting 147; nzwgt 192-198; nmask 209-215; get_metrics/ngetD 229-241; nputD 248-259; n2way 280-321; composite branch get_composite 341-343 + put_composite 349-351 with OMP BARRIERs; get_contact2d call sites 2114-2276 (composite/put side) — **verified**.
6. Build recipe (modules, flags, biology.o fast=2, rho_eos.o -no-heap-arrays, LDFLAGS -qopenmp -ipo) — verified against `build_pgouse.sh` + 01_review_notes §4 (fetched script reviewed).
7. Rankfile pairs + KMP_HOT_TEAMS + HCOLL off + coll_rules — verified in `abba_pgouse.slurm`.

All line numbers are from the S32 archive files; a line drift after patching is expected and the patch must re-locate by anchor text (CALL sites), not bare line numbers — documented in the patch.

## 3. Logical consistency checks

1. **No double count**: main3d-level segments (1,2,3,4,5,12) partition the per-grid outer step; mp_exchange phases (6-11) are subsets of segments 1 and 5 (2D halos ⊂ step2d; 3D/4D halos ⊂ rhs3d_step3d_t; nesting contact P2P is in nesting.F `get_contact2d`, NOT mp_exchange — no overlap). `nest_*` phases contain their own P2P/assembly (not in mp_exchange) — no double count. Analysis computes pure compute = segment − exchange subsets.
2. **Per-thread accumulation semantics**: CPU-phase segments measured as per-thread sums; rank wall cycle from dedicated cycle timers — consistent with Stage-93/127 methodology (CPU≠wall correction per Stage-88).
3. **Ceiling formula sanity**: `(critical − median)/wall` ≤ perfect-rebalance ceiling (1.81-2.57%) mathematically (median ≥ min), so a >2% named-phase gate is strictly harder than the global rebalance ceiling — no false promotion path.
4. **Trajectory neutrality**: `MPI_WTIME` has no side effects on model arrays; no reordering of statements; guarded by `#ifdef PHASE_PROBE` so zero-delta A′ binary is bit-exact (probe code not compiled into A′).
5. **Probabilistic risk**: probe adds send-side timing only, not synchronization; message arrival order unchanged. Any residual risk is caught by the A′ vs probe output compare (u diagnostic), and a mismatch would STOP the stage labeled `PROBE_NEUTRALITY_FAIL` (no candidate inference).

## 4. Pass-3 verdict

Design VALID; instrumentation points verified; gates and fallbacks specified. The only remaining actions before submission are user confirmation of the single diagnostic job, queue/disk re-check, and patch application + build verification (object-compile check under identical flags). No performance claims are made from this design.
