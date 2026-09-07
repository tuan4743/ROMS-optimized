# Stage 138 Step 2 — P1 phase-timestamp probe: Pass 2 profiling/instrumentation design

Date: 2026-08-11. This pass specifies the exact instrumentation points (verified against S32 archive sources at `/tmp/opencode/s32src/`), the probe module interface, job layout, merged telemetry, and the analysis plan. Zero machine time was spent.

## 1. Build recipe (fixed, from Stage 139b reproduction scripts)

- Modules: `compiler/intel/2021.3.0`, `mpi/hpcx/2.7.4/intel-2017.5.239`, `mathlib/netcdf/4.4.1/intel`, `mathlib/hdf5/1.8.20/intel`; build with `/opt/rh/devtoolset-7/root/usr/bin/gmake -j8`.
- Global FFLAGS: `-no-heap-arrays -fp-model precise -march=core-avx2 -no-fma -ipo` + `-ip -O3` (makefile append); per-object exceptions already in the S32 recipe (biology.o fast=2, gls source family, rho_eos.o `-no-heap-arrays`); LDFLAGS `-qopenmp -ipo`.
- Run: 64 MPI × 2 OMP, 4 nodes exclusive, rankfile pairs `(0,1 2,3 8,9 10,11 16,17 18,19 24,25 26,27 4,5 6,7 12,13 14,15 20,21 22,23 28,29 30,31)`, `OMP_NUM_THREADS=2`, `OMP_PROC_BIND=close`, `OMP_PLACES=cores`, `OMP_STACKSIZE=1G`, `KMP_BLOCKTIME=0`, `KMP_HOT_TEAMS=1`, `KMP_HOT_TEAMS_MAX_PARALLEL=2`, HCOLL off, `coll_rules.conf` (S32 harness: `abba_pgouse.slurm` pattern).

## 2. Probe module: `ROMS/Utility/probe_phase.F` (new file, UNSUBMITTED_DRAFT)

```
#ifdef PHASE_PROBE
MODULE probe_phase_mod
  integer, parameter :: NP1PHASE = 13
  integer, save      :: p1_nth                     ! omp_get_max_threads() at init
  real(r8), save, allocatable :: p1_acc(:,:)       ! (p1_nth, NP1PHASE) per-thread sums
  real(r8), save, allocatable :: p1_cnt(:,:)       ! (p1_nth, NP1PHASE) call counts
  real(r8), save              :: p1_t0(NP1PHASE)   ! active-start per phase (only 1 active at a time per thread)
  integer , save              :: p1_cycle(2)       ! cycle wall accumulator (mean, max) per rank
  real(r8), save              :: p1_cyc0, p1_cyc_n
CONTAINS
  SUBROUTINE probe_init()                 ! alloc, zero
  SUBROUTINE probe_enter(iphase)          ! p1_t0(iphase)=MPI_WTIME()  (uses my_wtime equivalent)
  SUBROUTINE probe_exit(iphase)           ! acc(t,iphase)+=t0−MPI_WTIME(); cnt++
  SUBROUTINE probe_cycle_start()          ! p1_cyc0=MPI_WTIME()
  SUBROUTINE probe_cycle_end()            ! d=MPI_WTIME()−p1_cyc0; accumulate mean/max
  SUBROUTINE probe_dump(ng)               ! write p1probe/rank_<rank>.dat: header + 13 rows
  END MODULE probe_phase_mod
#endif
```

- Timing source: reuse the existing `my_wtime` (timers.F) or `MPI_WTIME` directly; both are read-only.
- Thread safety: arrays indexed by `omp_get_thread_num()`; no `!$OMP CRITICAL` inside stepping. Ranks are MPI-distinct; no MPI calls inside stepping beyond `MPI_WTIME` (serialized-safe, lock-free).
- Dump format (per rank, one row per phase): `rank, leg, phase_id, phase_name, total_s, n_calls, pct_of_cycle_wall`. Plus cycle stats row (n_cycles, mean, max, p50/p90 optional).
- The module compiles under the same FFLAGS; `-ipo` handles the new module (build verified at submission time via one object-compile step; do NOT run `-ipo` across changed call sites blindly — verify `probe_phase.o` builds and links in the same `gmake`).

## 3. Instrumentation call sites (verified exact positions in S32 archive)

### main3d.F (all guarded `#ifdef PHASE_PROBE`, `probe_enter/probe_exit` symmetric pairs)

| phase | site (line in S32 archive main3d.F) | wrap |
|---|---|---|
| 5 rhs3d_step3d_t | 531-543 (rhs3d tile loop) | enter before `DO ig` loop at 532, exit after `!$OMP BARRIER` at 542 — per grid `ig`; also wrap 783-790 (step3d_t) |
| 1 step2d_all | 591-597 (predictor) and 638-643 (corrector) | enter before tile loop, exit after `!$OMP BARRIER` — per grid, per iif iteration |
| 2 nest_contact2d | 613-615 (n2dPS) and 659-662 (n2dCS) | enter before `IF (ANY(CompositeGrid...))`, exit after the `CALL nesting` — per grid |
| 3 nest_feedback | 688-693 (n2dfx) and 811-838 (n2way) | wrap each `DO ig` block |
| 4 nest_boundary | 273 (ngetD), 387 (nbstr), 484 (nzeta), 516 (nputD), 522-524 (nputD+nmflx), 680-681 (nmask), 718-720 (nzwgt), 747 (n3duv), 798 (n3dTV), 554 (nrhst), 839 (ngetD end-of-step) | enter/exit around each `CALL nesting` |
| 12 set_vbc_set_depth | 371 (set_vbc), 703-707 (set_depth tile loop) | wrap |

Cycle wall: `probe_cycle_start()` at the top of the outer `iic` time loop body (before set_vbc, ~line 360 area) and `probe_cycle_end()` at the end of the loop body (after last nesting ngetD, ~line 839-845). Per-grid cycle: coarse + fine run in the same outer loop; keep one rank-level cycle wall (both grids overlap via OMP/MPI across ranks — rank-level wall is what the late-rank analysis uses).

### step2d_LF_AM3.h (phase 1 internals; exchange split via mp_exchange phases)

No direct edit needed inside step2d: `step2d_all` − (halo2d phases measured inside mp_exchange2d during step2d) = pure step2d compute, computed in analysis. Optionally guard `probe_enter(step2d_inner)` around lines 907-2458 (pressure gradient → BC) for a direct compute-only measurement — recommended, one extra pair of calls per fast step: cheap and removes the subtraction ambiguity. Marked OPTIONAL in the patch.

### mp_exchange.F (phases 6-11; three routines × two splits)

For each of `mp_exchange2d` (290-893), `mp_exchange2d_bry` (896-1393), `mp_exchange3d` (1396-2102), `mp_exchange3d_bry` (2106-2715), `mp_exchange4d` (2719-3386):

- `probe_enter(pack_issue)` at routine entry (after argument setup, before first pack loop).
- `probe_exit(pack_issue)` + `probe_enter(wait)` immediately after the last `mpi_send` issue of the **second** (S/N) direction (mp_exchange2d: after line ~1290-1300 region equivalent; exact line per routine: after the S/N `mpi_send` block).
- `probe_exit(wait)` + `probe_enter(unpack)` immediately before the second direction's `mpi_wait`... — NOTE: the code structure is W/E: irecv+send → wait+unpack → S/N: irecv+send → wait+unpack. Therefore the clean split is:
  - `pack_issue` = entry → after first (W/E) `mpi_send` issue **plus** second (S/N) pack+issue work — i.e. keep `pack_issue` running across the W/E wait? No. Simplest robust split (per direction pairs, summed):
    - t1 = entry → after W/E send issue
    - t2 = W/E wait + unpack
    - t3 = S/N pack → S/N send issue
    - t4 = S/N wait + unpack
    - `pack_issue = t1 + t3`, `wait = W/E mpi_wait + S/N mpi_wait`, `unpack = W/E unpack + S/N unpack`
  - Implementation: one accumulator per sub-phase (6 sub-counters per routine), mapped into the 3 named phases at `probe_exit`. Each routine gets 6 probe pairs: (entry, after WE-send), (before WE-wait, after WE-unpack), (before SN-send, after SN-send), (before SN-wait, after SN-unpack). Because `mpi_send` is blocking, `t1` includes the send call itself (issue+progress); acceptable — named phase semantics documented as "pack+issue+send-progress".
- Count: `cnt` per phase.

### nesting.F (phase 2 internals; get_contact2d owner-map & P2P)

Optional finer split (recommended, cheap): in the composite branch (341-352), wrap the `get_composite` tile loop and the `put_composite` tile loop separately (`nest_get` / `nest_put`); in the RefinedGrid branch wrap `get_refine` (238-240) and `put_refine` (250-258). This directly measures 供给 (donor extraction) vs 装配 (interp+assembly), the two halves of "contact 插值装配". Mapping into named phases: `nest_contact2d_get` (2a), `nest_contact2d_put` (2b), `nest_supply` (4a) — analysis can then attribute get vs put imbalance on late ranks.

## 4. Job layout (one submission, `p1_probe.slurm`)

```
Leg 0: A′ binary (zero-delta rebuild, md5 recorded) 144/720  → lineage + trajectory reference
Leg 1: probe binary 144/720  (telemetry sampler ON)
Leg 2: probe binary 144/720  (telemetry sampler ON)
Leg 3: probe binary 144/720  (telemetry sampler ON)
```
- All legs use the S32 harness pattern (rankfile, HCOLL off, coll_rules.conf, `time` real, DONE check, RC capture).
- Trajectory neutrality check: compare `u`/diagnostic output (or one NetCDF field hash via the same post-processing used in Stage 139b) between leg 0 and leg 1.
- Output dirs unique: `output_p1_<jobid>_<leg>`; probe files under `p1probe_<jobid>/`.
- Wall budget: 4 legs × ~4 min + startup ≈ 25-30 min; `-t 01:30:00` retains margin.

## 5. Merged Stage-139 read-only telemetry (same job, no separate DOE)

Sampler script runs on the compute node(s) as background process during legs 1-3:
- `numactl --hardware` (once), `numastat` (once), `lscpu` (once).
- At 3 time points per leg: `pgrep -f oceanM` → for rank-0 pid: `/proc/<pid>/numa_maps` (page distribution per node), `/proc/<pid>/smaps` (AnonHugePages = THP usage), `/proc/<pid>/status` (VMPeak/RSS).
- `/sys/kernel/mm/transparent_hugepage/enabled` + `defrag` (read-only).
- `perf stat -p <pid> -e dTLB-load-misses,dTLB-store-misses,iTLB-load-misses` across one leg — only if `perf` and `perf_event_paranoid` permit on the compute nodes; otherwise skip silently (platform boundary per profiling_closure_20260803).
- All sampler outputs land in the job's private log dir; nothing written to `/public/share`.

## 6. Analysis plan (post-job, three-pass mandatory)

1. Parse per-rank dump files → per-rank per-phase tables per leg (sum over threads for CPU-phase attribution; max over threads for wall-like segments — documented choice: segments measured per-thread sum to avoid double count; wall cycle from `probe_cycle_*`).
2. Per leg: critical rank = argmax(cycle wall mean); late ranks = top-8 by cycle wall (compare with Stage-93/127 top-8 and P0 contact-owner ranks 35/36/37/43/44/45 + west column fine ranks).
3. Named-phase ceilings: `(phase_critical − phase_median)/mean_cycle_wall` for each named group; report per leg; require persistence across ≥2 legs.
4. Correlations: per-rank named-phase vs cycle wall (Pearson), and halo4d_wait vs step2d_compute (replicate −0.88 signature).
5. Gate: named phase ceiling > 2% on the specific late ranks → P2/P3 candidate design (contact: batch preallocated multi-field 2D contact exchange — never per-call alloc/tiny P2P per Stage 95; compute: late-rank-specific step2d loop mechanism). Else → **freeze S32, stop performance experiments**.
6. Output lifecycle: probe outputs are new diagnostic artifacts; retain (no deletion; only the temporary staging dir `tmp_p1probe_src` on remote is cleaned after local copies verified — that is a private staging dir, not a model output).

## 7. Risk notes

- Probe overhead: 2-6 `MPI_WTIME` pairs per fast step per rank ≈ <0.1% wall; no arithmetic change → trajectory bit-identical in expectation; verified by leg-0 vs leg-1 compare.
- `-ipo` with new module: verify at build time; if `-ipo` objects conflict, probe_phase.o may need a separate compile unit — fallback documented (compile probe_phase.F without `-ipo` is NOT acceptable as a hidden flag delta; use identical flags and drop global `-ipo` only if a build error forces it, recorded as `HARNESS_LINEAGE_NOTE`).
- OMP placement: probe must not alter thread binding; call sites are inside existing parallel regions only.
- Queue: do not submit while teammate jobs occupy the account quota (`QOSMaxCpuPerUserLimit` currently holds zya's job PD); re-check `squeue` before submission.
