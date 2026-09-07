# Static OpenMP audit of the single-threaded compute objects (2026-08-04)

## 03 Validity check

### Claims verified

**Timer 28 is `hmixing`, not `t3dmix4_geo`.** Confirmed from three independent facts:
`bye24bio15.h` defines `TS_U3ADV_SPLIT` (33), hence `MIX_GEO_TS` (63-65), **and** `MIX_S_TS` (66),
but `t3dmix.F` 45-48 tests `#if defined MIX_S_TS` before `#elif defined MIX_GEO_TS`, so the `_geo`
include never fires; `Build/t3dmix.f90` contains only `t3dmix4_tile` with no `dZdx`/`dZde`
geopotential terms; and `Build/hmixing.f90` line 86 calls `wclock_on (ng, iNLM, 28)`. The profile
label is inherited from the generic timer table and does not describe this build.

Pass 1's conclusion stands, but its stated mechanism was wrong on one point and is corrected here:
`MIX_GEO_TS` is defined in this build. It simply loses the `#if`/`#elif` race. The distinction
matters because `TS_U3ADV_SPLIT` being defined is also what activates the `hmixing` block that owns
the timer - `ROMS/Nonlinear/hmixing.F` 382 guards it with `# if defined TS_U3ADV_SPLIT`, while the
Smagorinsky block at 249-380 is inactive.

**`rhs3d` contains no MPI inside its timer.** Verified by grep over `Build/rhs3d.f90`: the only
matches for `wclock_on|wclock_off|mp_exchange|exchange_*` are lines 91 and 119, the timer calls
themselves. The `uv3dmix2` call sits in the driver at line 125, outside `rhs3d_tile`.

### Correction to pass 1: `step3d_uv` is low risk, not medium

Pass 1 marked `step3d_uv` "medium, MPI placement to confirm, reduction to confirm". Both are now
resolved, and the verdict changes.

Its call skeleton is:

| lines | content |
|---|---|
| 234-461 | `DO j=Jstr,Jend` — XI- and ETA-momentum time stepping, vertical tridiagonal solves |
| 467-472 | `u3dbc_tile`, `v3dbc_tile` |
| 482-505 | `IF (LuvSrc(ng))` point-source block |
| 513-737 | `DO j=JstrT,JendT` — 2D/3D coupling, `ubar`/`vbar`/`Huon`/`Hvom` |
| 743-780 | `exchange_*_tile`, `mp_exchange3d`, `mp_exchange2d` |

Every communication call is after line 743, i.e. after both compute loops close. There is no global
reduction anywhere in the routine. So the routine is two clean `DO j` loops separated by boundary
work, needing two independent `!$OMP PARALLEL DO` regions and no restructuring at all.

Race analysis of the second loop, which is the one that looked risky: every assignment target is
`(i,j,...)` at the loop's own `j` — `ubar(i,j,1:2)`, `vbar(i,j,1:2)`, `u(i,j,k,nnew)`,
`v(i,j,k,nnew)`, `Huon(i,j,k)`, `Hvom(i,j,k)`. The only off-`j` reads are `Hz(i,j-1,k)` at the
v-point averaging, and `Hz` is `intent(in)`. The `DC(i,0)`/`CF(i,0)`/`FC(i,0)` recurrences run
within a single `j`.

Local declarations are `i, idiag, is, j, k`, three scalars `cff, cff1, cff2`, and seven arrays
`AK, BC, CF, DC, FC` `(IminS:ImaxS,0:N(ng))` plus `Hzk, oHz` `(IminS:ImaxS,N(ng))`. None carries a
`j` dimension, so all seven are PRIVATE — the same structure as `rho_eos`, and the same reason
`-no-heap-arrays` is required. Per-thread stack is about `7 x 53 x 35 x 8 = 104 KB`, far under the
`4 MB` default `OMP_STACKSIZE`.

`step3d_uv` therefore moves into the low-risk group, and it is the largest member of that group at
`2.562 %` of wall.

### `hmixing`'s "no local arrays" claim, verified

The claim was checked against the declaration block rather than assumed. `Build/hmixing.f90` 155-158
declares only `i, j, k`, the two parameters `SmagorCoef`/`PecletCoef`, and the scalars
`DefRate, cff, clip_diff, clip_scale`. The 2-D field `Hdiffusion` that the loop reads is
`intent(in)` at line 140, supplied from `MIXING(ng) % Hdiffusion` at the call site on line 101 — it
is module data, not a local temporary, and it is not written anywhere in the routine.

The routine also has exactly one top-level loop between its timer calls: `DO k=1,N(ng)` at 243-278,
writing `diff3d_u(i,j,k)` and `diff3d_v(i,j,k)` at its own `k`, followed by the boundary blocks and
`mp_exchange3d` at 386. `DefRate` and `cff` are declared but never referenced in this build; the
Smagorinsky branch that uses them is preprocessed out. PRIVATE therefore reduces to
`k, j, i, clip_diff, clip_scale`.

### Correction to pass 1: `rhs3d` is also low risk

Pass 1 and pass 2 called `rhs3d` "medium" because it needs two different parallel axes. The axes are
in fact explicitly named in the source and cleanly separated:

```
264:      K_LOOP : DO k=1,N(ng)
543:      END DO K_LOOP
545:      J_LOOP : DO j=Jstr,Jend
672:      END DO J_LOOP
```

Nothing else at top level exists between the timer calls at 91 and 119 — no subroutine call, no
communication, no reduction. Assignment targets inside `K_LOOP` are `ru(i,j,k,nrhs)`,
`rv(i,j,k,nrhs)` at the loop's own `k`, plus the fifteen `(IminS:ImaxS,JminS:JmaxS)` temporaries
`Huee, Huxx, Hvee, Hvxx, UFe, UFx, uee, uxx, VFe, VFx, vee, vxx, Uwrk, Vwrk, wrk`, which lack a `k`
dimension and must therefore all be PRIVATE. Inside `J_LOOP` the targets are `ru`, `rv` at own `j`,
plus `rufrc(i,j)`, `rvfrc(i,j)` at own `j`, with `CF, DC, FC` `(IminS:ImaxS,0:N(ng))` PRIVATE.

So `rhs3d` needs two directives with two PRIVATE lists and no restructuring. Its only real hazard is
an implementation slip that merges the two lists; that is a review item, not a structural risk.
Per-thread stack for `K_LOOP` is about `15 x 53 x 44 x 8 = 280 KB`.

### Corrected upside table

The overlap deduction is **not** uniform, contrary to how pass 2 applied it. Objects whose timer
encloses `mp_exchange` calls (`rho_eos`, `hmixing`, `step3d_uv`) carry MPI time that no directive can
remove; `rhs3d` encloses none and needs no deduction.

| grouping | raw wall | after per-object deduction | @1.651 | @1.50 | @1.40 | @1.30 |
|---|---:|---:|---:|---:|---:|---:|
| `rho_eos` + `hmixing` | `3.240 %` | `2.797 %` | `1.10 %` | `0.93 %` | `0.80 %` | `0.65 %` |
| + `step3d_uv` (low-risk trio) | `5.802 %` | `5.008 %` | `1.97 %` | `1.67 %` | `1.43 %` | `1.16 %` |
| + `rhs3d` (no deduction) | `8.258 %` | `7.464 %` | **`2.94 %`** | `2.49 %` | **`2.13 %`** | `1.72 %` |
| `step2d` alone | `18.001 %` | `15.539 %` | `6.13 %` | `5.18 %` | `4.44 %` | `3.58 %` |

Two conclusions follow, and they differ from pass 1's:

1. The low-risk trio lands at `1.97 %` under the most optimistic speed-up — right on the gate but not
   over it. Pass 1's recommendation to calibrate with `rho_eos` + `hmixing` alone (`1.10 %` ceiling)
   understated what a same-risk edit can deliver.
2. Adding `rhs3d` — which this pass reclassifies as low risk too — produces the first grouping that
   clears `2 %` down to a speed-up of `1.40`, without touching `step2d` at all. All four objects are
   now in the same risk class, so there is no reason to build the trio and the quartet separately.

### Assumptions tested

**Is `1.651` transferable?** Still no, and this remains the dominant uncertainty. It is the average
over five objects chosen for being the hottest and most regular nests in the model. `rho_eos`,
`hmixing` and `step3d_uv` iterate over the same `N=34` levels with comparable loop bodies, so they
are closer to those five than `step2d` is, but the honest range remains `1.30` to `1.65`. This is
exactly why the trio is worth building: it converts the range into a measurement on regions 14, 28
and 34, which are separately timed.

**Does the flat `13.68 %` overlap deduction hold per object?** No. It is a tree-wide average. For
`rho_eos` the enclosed communication is six `exchange_*` plus two `mp_exchange*` calls on `r3d`,
`r2d` and `w3d` fields; for `hmixing` two calls; for `step3d_uv` six plus two. Their true shares
differ and cannot be separated from the enclosing timer without instrumentation. The table above
should be read as an estimate with roughly `+/-0.3 %` of slack in the deducted column.

**Is Grid 02's tile really `30x31`?** Derived, not read. `235x245` over an `008x008` tiling gives
`29.4x30.6`. The log prints only Grid 01's `45x40`. The derivation is sound but the exact interior
bounds `IstrT..IendT` include ghost points, so the loop count per thread is somewhat larger than the
interior tile suggests. This works in favour of OpenMP efficiency, not against it.

**Will the compiler actually vectorise the same way under `-qopenmp`?** Not guaranteed. Adding
`-qopenmp` to an object changes the optimiser's aliasing and privatisation assumptions, and Intel
2017.5 has been observed to lose some vectorisation when automatic arrays become thread-private.
This is a second reason the trio must be measured rather than assumed: a `1.65` thread speed-up on a
body that lost `20 %` of its serial vector throughput nets far less.

### Compliance

- **Floating-point order.** Every proposed directive parallelises an outer `j` or `k` loop whose
  iterations write disjoint memory. No accumulation order changes, no reduction clause is introduced,
  no expression is rewritten. Bitwise-identical output is the expectation, and the run must be
  checked against the reference RMSE anyway.
- **OpenMP/MPI structure.** The pattern replicates `[O25]`, already accepted and already in the
  scored binary: per-object `FFLAGS += -qopenmp -no-heap-arrays` in `Linux-ifort.mk`, directives in
  `ROMS/Nonlinear/*.F`. No change to rank count, tiling, or the MPI communication pattern. No
  `MPI_THREAD_MULTIPLE` requirement, since every directive sits strictly outside communication.
- **No I/O, no algorithm substitution, no input modification.**

Nothing here approaches the boundaries the organising committee clarified on 2026-08-02/03.

### Risks

| risk | severity | mitigation |
|---|---|---|
| A missed PRIVATE on an automatic array | high — silent wrong answers | the PRIVATE lists are enumerated from the declaration blocks; validation run must compare RMSE |
| Stack overflow from thread-private arrays | medium | `-no-heap-arrays` plus `OMP_STACKSIZE`; worst case is `~300 KB`/thread for `rhs3d` |
| Lost vectorisation under `-qopenmp` | medium | measured directly by the trio's own region timers |
| Thread oversubscription against the existing five objects | low | same `OMP_NUM_THREADS=2`, same binding; no new threads are created |
| `rhs3d`'s two different parallel axes implemented as one | high | it needs two regions with two PRIVATE lists; must not be merged |

### Verdict and revised recommendation

Pass 1's mechanical findings hold. Its risk ranking for `step3d_uv` and `rhs3d` was wrong, and its
recommendation was consequently too timid.

The direction to build is the **four-object group `rho_eos` + `hmixing` + `step3d_uv` + `rhs3d`**.
All four are structurally identical to the already-accepted `[O25]` objects: an outer loop over an
independent axis, every temporary lacking that axis made PRIVATE, communication untouched and
strictly outside the region. Together they need six directives across four files plus four makefile
lines. Projected gain is `2.13 %` to `2.94 %` over the plausible speed-up range, so the grouping is
gate-clearing on its own — and because regions 14, 28, 34 and 21 are separately timed, the same run
also measures the platform's real OpenMP speed-up, which is the number that decides whether
`step2d`'s `15.539 %` pool is worth a sixty-site edit.

`step2d` remains the only single object that clears the gate on its own at any plausible speed-up,
and it remains the last thing to attempt, not the first.

### Limitations

- Nothing in this pass was measured. Every percentage is a projection from the Stage-88 calibration.
- The PRIVATE lists were enumerated from the declaration blocks and the assignment targets, not from
  a compiler data-race check. Each one must be re-read against the source at edit time.
- The `obc_flux_tile` reduction inside `step2d` was identified but not read line by line; if
  `step2d` is ever attempted, that routine needs its own audit.
