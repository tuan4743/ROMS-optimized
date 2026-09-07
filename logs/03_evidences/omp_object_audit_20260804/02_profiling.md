# Static OpenMP audit of the single-threaded compute objects (2026-08-04)

## 02 Profiling / mechanism

### Reference pattern extracted from the working `[O25]` implementation

`Build/t3dmix.f90` 218-219 is the only surviving worksharing pattern in a compute object, and it
defines the template every new candidate should follow:

```fortran
! [O25] selective OpenMP (zya)
!$OMP PARALLEL DO DEFAULT(SHARED) SCHEDULE(STATIC)                      &
!$OMP& PRIVATE(itrc,k,j,i,cff,cff1,cff2,cff3,FX,FE,LapT)
      DO itrc=1,NT(ng)
        DO k=1,N(ng)
```

Three properties make it safe, and each must be reproduced in any new object:

1. The parallel axis is an outermost loop whose iterations are provably independent — here `itrc`
   over `NT(ng)=17` tracers, each writing its own slice `t(...,itrc)`.
2. `PRIVATE` covers all four loop indices, all scalars, and every automatic array whose shape lacks
   the parallel axis. `FX`, `FE` and `LapT` are `(IminS:ImaxS,JminS:JmaxS)` — no `itrc` dimension —
   so a shared copy would be a race.
3. This is exactly why the object also carries `-no-heap-arrays`: PRIVATE automatic arrays must land
   on the stack, one copy per thread.

### `rho_eos` — cleanest target

`Build/rho_eos.f90` 105-384, one `rho_eos_tile` (the `NONLIN_EOS` branch; `bye24bio15.h` 35 defines
it). Structure:

| lines | content |
|---|---|
| 223 | `DO j=JstrT,JendT` — **the parallel axis**, closing at 344 |
| 224-272 | `DO k=1,N(ng)` / `DO i=IstrT,IendT`: nonlinear EOS, writes `den1(i,k)`, `bulk0/1/2(i,k)`, `bulk(i,k)`, `den(i,k)` |
| 279-296 | vertical accumulation into `rhoA(i,j)`, `rhoS(i,j)`, then normalisation |
| 308-328 | Brunt-Vaisala frequency into `bvf(i,j,k)` |
| 337-343 | loads `rho(i,j,k)`, `pden(i,j,k)` |
| 350-380 | `exchange_r3d/r2d/w3d_tile`, `mp_exchange3d`, `mp_exchange2d` — **all outside the loop** |

Independence proof: every write inside 223-344 is indexed by the loop's own `j`
(`rho(i,j,k)`, `pden(i,j,k)`, `bvf(i,j,k)`, `rhoA(i,j)`, `rhoS(i,j)`). The equation of state is a
pointwise function of `t(i,j,k,nrhs,:)` and `z_r(i,j,k)` with no horizontal stencil, so no iteration
reads another iteration's output. The `DO k=N(ng)-1,1,-1` accumulation at 284-290 is a recurrence in
k inside a single j, which parallelising over j leaves untouched.

Temporaries `bulk`, `bulk0`, `bulk1`, `bulk2`, `den`, `den1` are declared
`(IminS:ImaxS,N(ng))` — i and k only, no j — so they must be PRIVATE. `C(0:9)` is written at lines
241-256 inside the innermost i loop and must also be PRIVATE; a shared `C` is the single most likely
mistake here.

Proposed directive:

```fortran
!$OMP PARALLEL DO DEFAULT(SHARED) SCHEDULE(STATIC)                      &
!$OMP& PRIVATE(j,k,i,Tt,Ts,sqrtTs,Tp,Tpr10,C,den1,den,                  &
!$OMP&         bulk,bulk0,bulk1,bulk2,cff,cff1,cff2,                    &
!$OMP&         bulk_up,bulk_dn,den_up,den_dn)
      DO j=JstrT,JendT
```

Stack cost per thread: six arrays of `(IminS:ImaxS) x N(ng)` at 8 bytes. With `ImaxS-IminS` about 53
and `N=34`, that is roughly `6 x 53 x 34 x 8 = 86 KB`, plus `C` — negligible.

Floating-point order is unchanged: each `(i,j,k)` executes the identical operation sequence, only on
a different thread. Bitwise identity is the expectation.

### `hmixing` — simplest target

`Build/hmixing.f90`. Local declarations are `i, j, k` plus four scalars (`DefRate`, `cff`,
`clip_diff`, `clip_scale`) and two parameters. **There are no local arrays at all**, which removes
the entire PRIVATE-array and stack question.

| lines | content |
|---|---|
| 243-278 | `DO k=1,N(ng)` with `DO j` / `DO i` inside — main Smagorinsky body, the parallel axis |
| 288-322 | four small `DO k` + `DO j`/`DO i` boundary blocks |
| 330-369 | four more `DO k` blocks |
| 376-386 | `exchange_u3d/v3d_tile`, `mp_exchange3d` — outside |

Proposed directive on 243: `PRIVATE(k,j,i,DefRate,cff,clip_diff,clip_scale)`. Each k writes only its
own level, so independence is structural.

### `rhs3d` — segmented, medium risk

`Build/rhs3d.f90` 171-672. Two distinct regions with different natural axes:

- Lines 270-543 sit inside an outer k loop (closing `END DO` at 543) and use the fifteen
  `(IminS:ImaxS,JminS:JmaxS)` temporaries (`Huee`, `Huxx`, `Hvee`, `Hvxx`, `UFx`, `UFe`, `Uwrk`,
  `VFx`, `VFe`, `Vwrk`, `uee`, `uxx`, `vee`, `vxx`, `wrk`). Parallelising the k axis makes all
  fifteen PRIVATE: about `15 x 53 x 44 x 8 = 280 KB` per thread.
- Lines 553-670 are the vertical-advection block using `CF`, `DC`, `FC`, all
  `(IminS:ImaxS,0:N(ng))`, inside `DO k` / `DO i` nests that themselves sit within an outer j loop.
  This block has k recurrences and must be parallelised over j, not k, with `CF`/`DC`/`FC` PRIVATE.

Two different axes in one routine means two parallel regions and two distinct PRIVATE lists. No MPI
call appears inside the tile routine (the `uv3dmix2` call at 125 is in the driver, outside timer 21's
own work), so region placement is unconstrained by communication.

### `step2d` — largest pool, highest cost

`Build/step2d.f90` 211-235 declares 21 temporaries, all `(IminS:ImaxS,JminS:JmaxS)`, plus eleven
scalars (`cff`, `cff1`-`cff7`, `fac`, `fac1`-`fac3`) and `i, is, j, ptsk`.

Because every temporary carries the j dimension and every loop is `DO j` outer / `DO i` inner with no
k dimension, the arrays can stay **SHARED** under a j-parallel decomposition — each thread writes
disjoint j slices. Only the scalars need PRIVATE. That is a genuine simplification relative to
`rho_eos`.

The cost is structural instead. Communication and callee routines interleave with the compute loops:

| line | call |
|---|---|
| 324/327/331 | `exchange_u2d/v2d_tile`, `mp_exchange2d` |
| 341 | `set_DUV_bc_tile` |
| 428-449 | five `exchange_*_tile`, two `mp_exchange2d` |
| 460 | `wetdry_tile` |
| 570/574 | `exchange_r2d_tile`, `mp_exchange2d` |
| 598/604/608 | `zetabc_tile`, `exchange_r2d_tile`, `mp_exchange2d` |

The binary is not built for `MPI_THREAD_MULTIPLE`, so each of these must sit outside a parallel
region. That partitions the routine into roughly seven compute segments containing about sixty `DO j`
loops in total, requiring one `!$OMP PARALLEL` per segment with `!$OMP DO` per loop. `obc_flux_tile`
reached through `set_DUV_bc_tile` performs the volume-conservation reduction and must stay serial.
`DO is=1,Nsrc(ng)` at 584 is the point-source loop and is too short to parallelise.

### Overhead model for `step2d`, and why it decides the plan

Per invocation the routine executes on the order of sixty j-loops over a tile of `45x40 = 1800`
points (Grid 01) or about `30x31 = 930` points (Grid 02). Grid 02 supplies `19019.713` of the
`24612.191` CPU-s in this timer, i.e. `77 %`, so the smaller tile dominates.

Taking Grid 02, roughly ten floating-point operations per point per loop:

```
compute per call  ~ 60 loops x 930 pts x 10 flop = 558 kflop  ~ 270 us at 2 GFLOP/s/core
overhead per call ~ 7 region fork/join x 2 us + 60 DO barriers x 1 us = 74 us
implied speed-up  ~ 2 / (1 + 2 x 74/270) = 1.30
```

The model is highly sensitive to the barrier cost. At 3 us per barrier the implied speed-up falls to
about `1.15`; with negligible barriers and perfect bandwidth it approaches `1.39`. Converting:

| assumed speed-up | `step2d` gain (pool `15.539 %` after deduction) |
|---:|---:|
| `1.39` | `4.36 %` |
| `1.30` | `3.59 %` |
| `1.20` | `2.59 %` |
| `1.15` | `2.03 %` |
| `1.10` | `1.41 %` |

The gate sits inside the model's own uncertainty band, so static analysis cannot decide it.

### Calibration experiment design

`rho_eos` (region 14) and `hmixing` (region 28) are separately timed in the profile, need no MPI
restructuring, have no reductions, and require only:

- three or four directive lines in `ROMS/Nonlinear/rho_eos.F` and `ROMS/Nonlinear/hmixing.F`;
- two makefile lines, `$(SCRATCH_DIR)/rho_eos.o` and `$(SCRATCH_DIR)/hmixing.o`, each with
  `private FFLAGS += -qopenmp -no-heap-arrays`.

A matched `144/720` A-B-B-A then yields the achieved speed-up directly as
`CPU_seconds_before / CPU_seconds_after` for regions 14 and 28, on real tiles, with the real
compiler, the real binding and the real memory pressure. That single number replaces the
`1.10`-to-`1.39` guess and determines whether `step2d` is worth a 60-to-80-site edit.

Expected whole-run effect of the calibration build itself is about `1.1 %` at `1.651` — deliberately
below gate. Its purpose is measurement, not promotion.
