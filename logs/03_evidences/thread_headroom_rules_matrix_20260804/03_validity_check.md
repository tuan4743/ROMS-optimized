# Rule-by-rule optimization-space review and thread headroom (2026-08-04)

## 03 Validity check

This pass re-derives the claims of passes 1 and 2 from the raw artifacts, tests the assumptions that
could overturn them, and records what must not be overstated.

### What is established beyond reasonable doubt

**The timing unit.** The preprocessed `Build/mp_routines.f90` — the file the compiler actually saw —
contains `CALL cpu_time (wtime(1))` with no surviving `#ifdef`. `makefile` line 98 leaves
`USE_OpenMP` empty and line 343 forbids combining it with MPI, so `-D_OPENMP` was never added to
`CPPFLAGS` (it appears only under the `ifdef USE_OpenMP` branch at `Linux-ifort.mk` line 89). The
profile is process CPU time. This is a direct source reading, not an inference.

**The utilisation figure.** Two independent measurements of the same run:

| method | value |
|---|---:|
| ROMS `cpu_time` aggregate `178516.604` / (128 x `2136.310`) | `65.283 %` |
| launch-node `user+sys` `44611.085` / (32 x `2136.310`) | `65.257 %` |

The second uses only the shell `time` output and the node core count; it shares no code path with
the ROMS timers. Agreement to `0.026` percentage points makes `~65.3 %` utilisation and `~34.7 %`
idle CPU a measured property of the scored run, independent of every modelling assumption below.

**The cause.** `NtileI=8`/`NtileJ=8` with 64 ranks gives one tile per rank, so ROMS's native
tile-parallel loop cannot use a second thread, and only five objects carry `-qopenmp`
(`Linux-ifort.mk` 64-68), confirmed by a whole-tree directive census showing worksharing constructs
in exactly `bio_UMAINE15.h`, `gls_corstep.F`, `pre_step3d.F`, `step3d_t.F`, `t3dmix4_s.h`.

### Correction that pass 2 must not skip: nested timers inflate the compute pool

The two grids' elapsed subtotals (`23.5918 % + 64.2866 % = 87.878 %`) plus the message subtotals
(`6.5870 % + 17.5566 % = 24.144 %`) sum to `112.022 %` of a `100 %` denominator. Since region 0
covers the whole run and untimed code can only be non-negative, **at least `12.022` percentage
points of message time are nested inside compute timers** — that is `49.8 %` of all message time.

This matters directly for the item-1 candidate: `step2d` contains six `mp_exchange2d` call sites, so
part of its `13.787 %` is MPI time that no OpenMP directive can remove. Applying the tree-wide
overlap ratio (`12.022 / 87.878 = 13.68 %`) to the single-threaded compute pool as a uniform
deduction:

| grouping | raw wall-s/rank | after overlap deduction | wall share |
|---|---:|---:|---:|
| 3-D compute only | `267.786` | `231.14` | `10.82 %` |
| all single-threaded compute incl. `step2d` | `652.352` | `563.13` | `26.36 %` |

Revised upside:

| grouping | @1.651 | @1.40 | @1.30 | @1.25 | @1.20 |
|---|---:|---:|---:|---:|---:|
| 3-D compute only | `4.27 %` | `3.09 %` | `2.50 %` | `2.16 %` | **`1.80 %`** |
| all incl. `step2d` | `10.39 %` | `7.53 %` | `6.08 %` | `5.27 %` | `4.39 %` |

**The honest statement is therefore narrower than pass 2's table implies:** the 3-D-only grouping
clears the 2 % gate only if the achieved speed-up is at least about `1.25`, not at any speed-up. The
full grouping including `step2d` stays above `4 %` even at `1.20`. Pass 2's numbers are valid as an
upper bound on the pool; this deduction is the figure to plan against.

### Assumptions tested

**Does the `W1`/`W2` split depend on threads not spinning?** Yes. It assumes a parallel region costs
exactly `2x` its wall time in CPU. If the idle thread spun at barriers, CPU would exceed `2*W2` and
`W2` would be overstated. Stage O29 established `KMP_BLOCKTIME=0` for this configuration, which makes
the assumption reasonable, but it was not re-verified in this run's environment. Note that the
`65.3 %` utilisation figure and the `34.7 %` idle share do **not** depend on this split at all — they
are ratios of directly measured totals. Only the `69.4 %`-of-wall single-thread figure does.

**Could `cpu_time` under-count rather than over-count?** For compute timers, no: computation is CPU
busy. For communication timers the risk runs the other way — if MPI waits block instead of polling,
their CPU time is below their wall time and pass 2 *under*-states the halo pool. That error direction
is conservative for the item-1 ranking, and it is a reason not to treat the `24.79 %` halo wall
share as precise.

**Is `1.651` transferable to new objects?** No, and it should not be presented as such. It is the
measured average over the five objects that were selected precisely because they were the hottest,
most regular loop nests in the model. New objects are smaller and more fragmented. `1.651` is the
optimistic end of the range; the `1.25` break-even above is the number that decides the direction.

**Is `step2d` really the same kind of target?** No. It is 2-D only — no `N=34` level dimension and no
`NT=17` tracer dimension — so each loop carries roughly `34x` less work than the existing OpenMP
loops, against `653184` invocations (`ndtfast=30, nfast=42`, `model.log` 1736/1784). Fork/join at
roughly six regions per call costs about `0.37 %` of wall, which is affordable, but memory-bandwidth
limits on small 2-D arrays could hold the speed-up well below `1.25`. `step2d` carries most of the
upside and most of the uncertainty; it should not be in the first candidate.

### Is this direction actually open?

The closure records were re-read rather than trusted by keyword:

- `plan.md` line 51/160/206/229 list "broad OpenMP" as closed. The supporting records
  (`OPTIMIZATION_LOG.md` line 264, line 366) show this refers to global `USE_OpenMP` / hybrid
  MPI+OpenMP as a configuration toggle, which `makefile` line 343 rejects outright. It is an
  architectural impossibility, not a measured performance rejection.
- Stage-75 P3 (`progress.md` line 87) closed *"separated OpenMP producer/exchange/consumer regions"*,
  a restructuring of regions around halo exchange, at
  `analysis/o33_pow_openmp_static_review_20260803/`.
- `O46 nowait` was a directive-clause change on already-parallel objects and failed.

None of these tested compiling an additional object with `-qopenmp` and adding a `!$OMP PARALLEL DO`
to its existing loop nests. The direction is open. Equally, no prior negative result predicts it will
work — the absence of a closure is not evidence of a gain.

### Compliance assessment

- **Item 1** explicitly permits loop transformations and OpenMP, and item 2's 2026-08-03
  clarification removed the bitwise-identity requirement.
- Parallelising an outer `j`, `k` or `itrc` loop over grid-point-independent work does **not** change
  floating-point execution order: each point's arithmetic sequence is unchanged, only the thread that
  executes it differs. Where a routine performs a genuine cross-point reduction (`obc_flux_tile`
  volume conservation in `step2d`, global integrals), that section must remain serial. If that
  discipline holds, the candidate is a strong bitwise-identity expectation, not merely an
  RMSE-tolerance argument.
- Physical formulae, coefficients, stencils, grids, time step, output configuration, ecology and
  two-way nesting are all untouched by a directive addition, so items 5 and 9 are unaffected.

### Implementation risks that must be resolved before any build

1. **Stack.** All five existing OpenMP objects also carry `-no-heap-arrays` (`Linux-ifort.mk` 62-68,
   noted there as "feng E059") so that `PRIVATE` automatic arrays land on the stack. Any new object
   needs the same treatment plus a thread stack size check; the global default remains
   `-heap-arrays` for validation safety.
2. **MPI inside parallel regions.** The binary is not built for `MPI_THREAD_MULTIPLE`. Every
   `mp_exchange*`, `exchange_*_tile`, `mp_reduce` and `mp_assemble` call must stay outside any
   parallel region. In `step2d` this forces region boundaries at lines 563, 691, 697, 859, 895, 2473.
3. **Correct `PRIVATE` clauses.** The `t3dmix4_s.h` precedent shows the pattern includes every loop
   index and every scratch array (`FX`, `FE`, `LapT`). An omitted variable is a silent race, and a
   race would most likely surface as a validation failure rather than a crash.
4. **Reduction sites.** `obc_volcons_mod` usage in `step2d` and the global-integral timers must be
   audited individually.

### Limits on what may be claimed

- Nothing here is a measured speed-up. All upside figures are static projections from one run's
  timer table and must not be reported as results.
- `65.3 %` CPU utilisation is measured; the `34.7 %` idle share is arithmetic from it. Neither
  implies that the idle capacity is recoverable — only that it exists.
- The `2.16 %`-at-`1.25` and `4.39 %`-at-`1.20` figures are projections carrying the uniform-overlap
  approximation, which is itself a tree-wide average applied to a subset. A per-routine
  decomposition of nested message time was not performed and would change these numbers.
- No claim is made that this direction outranks the Stage-87 `get_contact2d` candidate on risk, only
  on pool size. `get_contact2d` has a bitwise-equivalence argument and a bounded edit; the OpenMP
  extension has a larger pool and a larger edit surface.

### Verdict

Passes 1 and 2 are valid, with the nested-timer deduction in this pass applied as a mandatory
correction to pass 2's upside table. The calibration finding (profile percentages are rank-CPU
shares, not wall shares, factor `1.305676`) is independently confirmed and should be propagated to
the handoff references, because prior stages compared timer percentages against a 2 % whole-run gate
without it.
