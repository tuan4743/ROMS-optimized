# Static OpenMP audit of the single-threaded compute objects (2026-08-04)

## 01 Read summary

### Scope

Per-object static audit requested after Stage 88, to decide whether extending the `[O25]`
selective-OpenMP pattern is buildable and where. Read-only over SSH alias `MCC` against the immutable
O33 tree; no source, build, job, input or output was created or modified, and nothing was copied into
the local workspace. Probe scripts: `experiments/omp_audit_20260804/`.

Crucially, the audit was performed on `Build/*.f90` — the CPP-resolved files the compiler actually
consumed — rather than on the `.F`/`.h` sources. That choice immediately corrected two errors.

### Correction 1: timer 28 is not `t3dmix4_geo`

Stage 88 listed `t3dmix4_geo.h` (`1.2569 %` CPU) as a candidate. It is not compiled at all.
`ROMS/Include/bye24bio15.h` defines `TS_U3ADV_SPLIT` at 33, which at 63-65 also defines
`MIX_GEO_TS`, and defines `MIX_S_TS` unconditionally at 66. **Both** mixing modes are therefore
defined, but `t3dmix.F` 45-48 resolves them in order:

```c
# ifdef TS_DIF4
#  if defined MIX_S_TS
#   include "t3dmix4_s.h"
#  elif defined MIX_GEO_TS
#   include "t3dmix4_geo.h"
```

`MIX_S_TS` wins the `#if`/`#elif` chain, so `t3dmix4_geo.h` is never included. `Build/t3dmix.f90` is
355 lines, contains only `t3dmix4`/`t3dmix4_tile`, holds zero occurrences of the geopotential-only
`dZdx`/`dZde` terms, and already carries the `[O25]` directives at lines 218-219.

The timer-28 time belongs to `ROMS/Nonlinear/hmixing.F` line 86, which reuses region 28 for its own
`wclock_on`. The profile label "Biharmonic mixing of tracers, geopotentials" is therefore misleading
in this build. `hmixing` replaces `t3dmix4_geo` in the candidate list.

### Correction 2: `gls_prestep` shares region 19 with the already-parallel `gls_corstep`

The full timer map rebuilt from `Build/*.f90` shows both `gls_corstep.f90` (line 67) and
`gls_prestep.f90` (line 64) calling `wclock_on (ng, iNLM, 19)`. Only `gls_corstep` has `-qopenmp`.
Part of the GLS bucket (`13.8027 %` CPU) is therefore still single-threaded, which Stage 88 did not
account for. Its exact share cannot be separated from the existing timer.

### Timer map as actually compiled

| region | printed label | actual routine(s) | OpenMP today |
|---|---|---|---|
| 4 | Processing of input data | `set_data` | no |
| 5 | Processing of output time averaged data | `set_avg`, `vorticity` | no |
| 9 | Model 2D kernel | `step2d` | no |
| 12 | 2D/3D coupling, vertical metrics | `set_depth`, `set_massflux`, `set_zeta` | no |
| 13 | Omega vertical velocity | `omega` | no |
| 14 | Equation of state | `rho_eos` | no |
| 15 | Biological module | `biology` | **yes** |
| 19 | GLS vertical mixing | `gls_corstep` **yes**, `gls_prestep` **no** | partial |
| 21 | 3D equations right-side terms | `rhs3d` | no |
| 22 | 3D equations predictor step | `pre_step3d` | **yes** |
| 23 | Pressure gradient | `prsgrd` | no |
| 27 | Biharmonic mixing, S-surfaces | `t3dmix` | **yes** |
| 28 | Biharmonic mixing, geopotentials | **`hmixing`** | no |
| 30 | Harmonic stress tensor, S-surfaces | `uv3dmix` | no |
| 34 | Corrector 3D momentum | `step3d_uv` | no |
| 35 | Corrector time-step for tracers | `step3d_t` | **yes** |

### Per-object verdict

| object | wall share | parallel axis | private complexity | MPI placement | reduction | risk |
|---|---:|---|---|---|---|---|
| `rho_eos` | `1.599 %` | one `DO j=JstrT,JendT` covering 223-344 | 6 automatic arrays + `C(0:9)` + 13 scalars | all exchanges after the loop (350-380) | none | **very low** |
| `hmixing` | `1.641 %` | `DO k=1,N(ng)` (243-278) plus 8 small boundary loops | 4 scalars, no arrays | all at the end (376-386) | none | **very low** |
| `rhs3d` | `2.456 %` | segmented: k-outer block, then j-outer vertical block | 15 `(i,j)` + 3 `(i,k)` arrays | none inside the tile routine | none | medium |
| `step3d_uv` | `2.562 %` | segmented, vertical tridiagonal work present | mixed | to confirm | to confirm | medium |
| `step2d` | `18.001 %` | ~60 `DO j` loops in ~7 segments | 21 `(i,j)` arrays can stay SHARED; 11 scalars private | 5+ sites interleaved (331/444/449/574/608/...) | `obc_flux_tile` volume conservation | **high** |

`rho_eos` is the cleanest target found. Its entire computation sits inside a single `DO j` loop; the
six temporaries (`bulk`, `bulk0`, `bulk1`, `bulk2`, `den`, `den1`) are shaped `(IminS:ImaxS,N(ng))`
with no j dimension, so they must be PRIVATE; `C(0:9)` is written inside the innermost i loop and
must also be PRIVATE; the vertical accumulation into `rhoA`/`rhoS` runs inside one j and is therefore
race-free; and every `exchange_*`/`mp_exchange*` call already sits after the loop ends.

### The decisive finding

**No combination of low-risk objects reaches the 2 % gate.** Adding `rho_eos` and `hmixing` gives a
pool of `3.240 %` of wall, `2.797 %` after the Stage-88 nested-timer deduction, which is only
`1.10 %` even at the measured `1.651` speed-up. Including `rhs3d` and `step3d_uv` raises the pool to
`7.128 %` after deduction — `2.81 %` at `1.651`, `2.04 %` at `1.40`, and below gate at `1.30`.

`step2d` is the only object that clears the gate on its own (`15.539 %` after deduction: `3.59 %` at
`1.30`, `2.59 %` at `1.20`, `2.03 %` at `1.15`), and it is also the riskiest and largest edit.

### Initial conclusion and recommendation

The direction is buildable, but the decision hinges on one unknown: the OpenMP speed-up actually
achievable on this platform for ROMS loops over a tile of roughly `45x40` (Grid 01) and `30x31`
(Grid 02) points. The estimate spans `1.06` to `1.39` and straddles the gate, so it cannot be settled
by more static reading.

The recommended next step is therefore **not** a gate-seeking candidate but a cheap calibration
experiment: parallelise only `rho_eos` and `hmixing` — two files needing three or four directive
lines each plus two makefile lines — and read the measured speed-up directly from profile regions 14
and 28, which are separately timed. That converts the decisive uncertainty into a measurement for
roughly ten minutes of machine time, and its result predicts `step2d`'s payoff before committing to
a 60-to-80-site edit.

This experiment is expected to be below the 2 % gate by design and must not be recorded as a failed
performance candidate.

### Limitations

- `step3d_uv` was only skeleton-audited; its vertical tridiagonal sections need a dedicated pass
  before it enters any candidate.
- The Grid 02 tile size `30x31` is derived from `235x245` divided by the `008x008` tiling, not read
  directly from the log; only the Grid 01 tile (`45x40`) is printed explicitly.
- All speed-up figures remain projections. Nothing here was measured.
