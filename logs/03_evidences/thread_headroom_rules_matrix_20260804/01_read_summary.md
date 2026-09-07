# Rule-by-rule optimization-space review and thread headroom (2026-08-04)

## 01 Read summary

### Scope of this pass

A new PLAN pass requested by the user, deliberately independent of the Stage-87 `get_contact2d`
candidate. The task was to re-read the organizer's nine permitted optimization items and check the
immutable O33 tree and the scored run `118405320` against each of them, looking for space that is
still open. Read-only on SSH alias `MCC`: no source, build, job, input or output was created or
modified, and no teammate path was touched.

### Principal finding: the profile percentages were being read in the wrong unit

`ROMS/Utility/timers.F` calls `my_wtime` for every region timer. `ROMS/Utility/mp_routines.F`
selects the timing primitive with `#if defined _OPENMP` -> `omp_get_wtime`, `#elif CRAYX1` ->
`system_clock`, `#else` -> `cpu_time`. The build does **not** define `_OPENMP` globally: `makefile`
line 98 leaves `USE_OpenMP ?=` empty, and line 343 hard-errors with
`You cannot activate USE_MPI and USE_OpenMP at the same time!`. The already-preprocessed
`Build/mp_routines.f90` confirms the surviving branch is literally

```fortran
      CALL cpu_time (wtime(1))
      my_wtime=wtime(1)
```

So every number in the ROMS profile is **process CPU time**, summing both threads of a rank, and the
`178516.604 s` denominator is a rank-CPU aggregate. It is not wall time. A percentage in that table
therefore cannot be compared directly against the `2136.310 s` shell `real` that scores the run.

The correction factor is measured, not assumed:

- ROMS per-rank total = `178516.604 / 64 = 2789.322 s`; shell `real = 2136.310 s`; ratio `1.305676`.
- Independent cross-check from the same log's shell timing on the launch node (16 ranks x 32 cores):
  `user 710m38.955s + sys 32m52.130s = 44611.085 s` against `32 x 2136.310 = 68361.92 s`.

Both give the same answer to within `0.03` percentage points.

### Consequence: about one third of the allocated CPU is idle

| quantity | value |
|---|---|
| allocated | 128 cores x `2136.310 s` = `273447.68` core-s |
| consumed (ROMS `cpu_time` aggregate) | `178516.604` core-s |
| **utilisation** | **`65.28 %`** |
| independent check (launch node, `user+sys`) | `65.26 %` |
| **unused** | **`34.72 %` = `94931` core-s** |

The cause is structural, not a tuning accident. `ocean_SCS_Dongsha60_bio15.in` sets `NtileI=8`,
`NtileJ=8` and the log prints `tiling: 008x008` for both grids, so each of the 64 MPI ranks owns
exactly one tile and ROMS's native tile-level OpenMP loop `DO tile=first_tile,last_tile` has a single
iteration. The second thread can only receive work from the `[O25]` selective-OpenMP design, which
`Compilers/Linux-ifort.mk` lines 64-68 applies to exactly five objects:

```
$(SCRATCH_DIR)/biology.o     : private FFLAGS += -qopenmp -no-heap-arrays
$(SCRATCH_DIR)/pre_step3d.o  : private FFLAGS += -qopenmp -no-heap-arrays
$(SCRATCH_DIR)/step3d_t.o    : private FFLAGS += -qopenmp -no-heap-arrays
$(SCRATCH_DIR)/t3dmix.o      : private FFLAGS += -qopenmp -no-heap-arrays
$(SCRATCH_DIR)/gls_corstep.o : private FFLAGS += -qopenmp -no-heap-arrays
```

A tree-wide directive census agrees: outside the unbuilt 4DVAR drivers, the only files carrying a
real `!$OMP PARALLEL DO` worksharing construct are `bio_UMAINE15.h`, `gls_corstep.F`, `pre_step3d.F`,
`step3d_t.F` and `t3dmix4_s.h`. Everything else in the time-stepping path runs on one thread.

Solving `W1 + W2 = 2136.310` and `W1 + 2*W2 = 2789.322` gives `W2 = 653.012 s` of two-thread wall
time and `W1 = 1483.298 s` of single-thread wall time. **For 69.4 % of the scored wall clock, one of
the two cores owned by every rank is idle.**

### Why this is a genuinely new direction, not a reopened closure

`plan.md` lists "broad OpenMP" among closed branches. Re-reading the underlying records, that closure
refers to global `USE_OpenMP` (architecturally impossible here: ROMS rejects MPI+OpenMP together) and
to Stage-75 P3, which was specifically *"separated OpenMP producer/exchange/consumer regions"* — an
OpenMP region-restructuring idea around halo exchange, judged at
`analysis/o33_pow_openmp_static_review_20260803/`. Neither closure tested *extending the existing,
already-working `[O25]` per-object selective-OpenMP pattern to additional compute objects*. That
extension has never been built or measured.

### Rule-by-rule matrix

| # | permitted item | already taken | closed by evidence | still open |
|---|---|---|---|---|
| 1 | loops / OpenMP | `[O25]` selective OpenMP on 5 objects; K-outer tracer reorder | global `USE_OpenMP` (architectural); `O46 nowait`; Stage-75 P3 region separation | **extend `[O25]` pattern to the single-threaded compute objects** |
| 2 | floating-point order | clarified allowed 2026-08-03 | — | enables OpenMP reductions, subject to full RMSE validation |
| 3 | MPI implementation | `[O2]`,`[O9]` hierarchical Bcast, `[O10]` sparse owner map, collective rules, mapping | HCOLL, UCX, Allgatherv, persistent, Sendrecv, async halo, 128 pure MPI, Ntile scans, recursive doubling | intra-node shared-memory halo (`MPI_Win_allocate_shared`); HPC-X version (v2.7.4 in use, v2.11.0 present) |
| 4 | remove work with no consumer | `[O4]` (5 sites) | PROFILE disabling | no quantified target found this pass |
| 5 | two-way nesting comms | `[O10]` on `get_contact3d` | 3-D Allreduce batching | `get_contact2d`/`get_persisted2d` (Stage-87 candidate, `2.66 %` wall) |
| 6 | memory / layout | `[O2]` RESHAPE removal, stack/heap split, alignment | `pmnreuse`, `vdiff_invdz` scratch reuse | nothing above gate found this pass |
| 7 | compiler | `-fp-model precise`, per-object `-no-heap-arrays` | AVX2, alignment, prefetch/unroll, streaming stores, vec-threshold, IPO/LTO/PGO | platform ships only `intel-compiler-2017.5.239`; no second Intel version |
| 8 | I/O | — | I/O branch closed | `1.91 %` wall in master-collect writes; below the 2 % gate alone |
| 9 | compliance framework | — | — | not an optimization axis |

### Ranked candidates by wall-clock upside

Converting every single-threaded timer to wall share (CPU seconds / 64 ranks / `2136.310 s`):

1. **Extend `[O25]` OpenMP to single-threaded compute objects** — pool `30.54 %` of wall
   (`652.35 s`/rank across `step2d`, `rhs3d`, `step3d_uv`, `t3dmix4_geo`, `rho_eos`, `prsgrd`,
   `omega`, coupling, stress tensor, tidal forcing). Clears the gate even under pessimistic
   speed-up assumptions.
2. **Intra-node shared-memory halo exchange** — halo pool `24.79 %` of wall. `mp_exchange.F` uses
   only `mpi_isend`/`mpi_irecv`; the shared-memory communicator created at `distribute.F` 5236 is
   used solely for the `[O9]` hierarchical broadcast. Large upside, large rewrite.
3. **`get_contact2d`/`get_persisted2d` sparsification** — `2.66 %` of wall (Stage-87 candidate).
4. HPC-X `v2.11.0` versus the in-use `v2.7.4` — cheap to test, no source change, unknown mechanism.

### Initial conclusion

The largest legal and unexplored space is item 1, not item 3 or 5. The scored configuration leaves
`34.7 %` of its allocated CPU unused because only five objects were ever compiled with `-qopenmp`,
and the mechanism to add more is already proven inside this exact build. Detailed quantification is
in `02_profiling.md`; independent re-derivation and the limits on these claims are in
`03_validity_check.md`.

### Explicit limitations

- Every number here is a static re-reading of one existing run. No experiment was run, and no
  speed-up has been measured.
- The wall-share conversion assumes a timer is either purely single-threaded or covered by the five
  OpenMP objects. Mixed regions (notably GLS, where `gls_prestep` has no directives) are averaged.
- Timer regions nest: the two grids' elapsed subtotals plus message subtotals sum to `112.02 %`, so
  communication time and compute time must not be added together.
