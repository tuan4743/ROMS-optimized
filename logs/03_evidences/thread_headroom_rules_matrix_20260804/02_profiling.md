# Rule-by-rule optimization-space review and thread headroom (2026-08-04)

## 02 Profiling / mechanism

All figures come from the retained scored run
`/public/home/fujiake/fjk/mcc_runs/118405320_o33_full_reproduce_64x2/logs/model.log`
(immutable O33, four nodes `j01r2n[00-03]`, 64 MPI x 2 threads, `8x8`/`8x8`, full `2592,12960`,
`real = 2136.310 s`, official 26/26 PASS).

### Unit calibration

The ROMS profile denominator `178516.604 s` is a sum of per-rank `cpu_time`, so it counts both
threads of a rank. Converting a timer to a share of the scored wall clock therefore requires

```
wall_seconds_per_rank = cpu_seconds / 64
wall_share            = wall_seconds_per_rank / 2136.310
```

for a timer that runs on one thread, and an extra division by the achieved parallel speed-up for a
timer inside one of the five OpenMP objects. The equivalent single factor for single-threaded
timers is `2789.322 / 2136.310 = 1.305676`.

### Core-second budget

| quantity | core-seconds | share |
|---|---:|---:|
| allocated (128 cores x `2136.310 s`) | `273447.68` | `100.00 %` |
| consumed (ROMS aggregate) | `178516.604` | `65.28 %` |
| unused | `94931.08` | `34.72 %` |

Launch-node cross-check: `user 42638.955 s + sys 1972.130 s = 44611.085 s` over
`32 x 2136.310 = 68361.92` core-s gives `65.26 %`. The two independent measurements agree to
`0.03` percentage points, which is why the calibration is treated as established rather than
inferred.

### Thread-time decomposition

With `W1` single-threaded wall time and `W2` two-thread wall time:

```
W1 +   W2 = 2136.310   (shell real)
W1 + 2*W2 = 2789.322   (ROMS per-rank cpu_time)
=> W2 = 653.012 s (30.57 % of wall),  W1 = 1483.298 s (69.43 % of wall)
```

The five OpenMP objects account for `106002.304` CPU-s = `59.38 %` of the aggregate, i.e.
`1656.286 s`/rank. The remaining `1133.036 s`/rank is single-threaded and equals its own wall time,
so the OpenMP objects occupy `2136.310 - 1133.036 = 1003.274 s` of wall and their achieved average
parallel speed-up is

```
1656.286 / 1003.274 = 1.651   (ceiling 2.0, efficiency 82.5 %)
```

This `1.651` is a *measured* property of this build on this machine and is the natural reference
for what a newly parallelised object might achieve.

### Single-threaded compute pool (the item-1 target)

| timer | CPU-s (G01+G02) | CPU share | wall-s/rank | wall share |
|---|---:|---:|---:|---:|
| Model 2D kernel (`step2d_LF_AM3.h`) | `24612.191` | `13.787 %` | `384.566` | `18.001 %` |
| Corrector time-step for 3D momentum (`step3d_uv.F`) | `3503.085` | `1.962 %` | `54.736` | `2.562 %` |
| 3D equations right-side terms (`rhs3d.F`) | `3357.705` | `1.881 %` | `52.464` | `2.456 %` |
| Biharmonic mixing, geopotentials (`t3dmix4_geo.h`) | `2243.781` | `1.257 %` | `35.059` | `1.641 %` |
| Equation of state (`rho_eos.F`) | `2185.604` | `1.224 %` | `34.150` | `1.599 %` |
| 2D/3D coupling, vertical metrics | `1730.069` | `0.969 %` | `27.032` | `1.265 %` |
| Pressure gradient (`prsgrd31.h`) | `1482.584` | `0.831 %` | `23.165` | `1.084 %` |
| Omega vertical velocity (`omega.F`) | `1073.613` | `0.601 %` | `16.775` | `0.785 %` |
| Harmonic stress tensor | `904.569` | `0.507 %` | `14.134` | `0.662 %` |
| Tidal forcing | `530.689` | `0.297 %` | `8.292` | `0.388 %` |
| vertical BC + global integrals | `126.634` | `0.071 %` | `1.979` | `0.093 %` |
| **compute subtotal** | **`41750.524`** | **`23.382 %`** | **`652.352`** | **`30.536 %`** |
| `set_avg` (output time-averaging) | `3156.218` | `1.768 %` | `49.316` | `2.308 %` |
| `set_data` (input processing) | `2884.586` | `1.616 %` | `45.072` | `2.110 %` |
| **subtotal incl. the two data stages** | **`47791.328`** | **`26.766 %`** | **`746.740`** | **`34.955 %`** |

None of these files contains a single `!$OMP` directive; the census returned `omp=0` for
`rhs3d.F`, `step3d_uv.F`, `rho_eos.F`, `set_avg.F`, `set_data.F`, `t3dmix4_geo.h`, `prsgrd31.h` and
`omega.F`, and no directive at all in `step2d_LF_AM3.h`.

### Upside as a function of achieved speed-up

Gain = `wall_seconds * (1 - 1/speedup) / 2136.310`.

| grouping | wall-s/rank | @1.651 (measured ref) | @1.40 | @1.30 | @1.20 |
|---|---:|---:|---:|---:|---:|
| 3-D compute only (excl. `step2d`) | `267.786` | `4.94 %` | `3.58 %` | `2.89 %` | `2.09 %` |
| 3-D compute + `set_avg` + `set_data` | `362.174` | `6.68 %` | `4.84 %` | `3.91 %` | `2.83 %` |
| all single-threaded compute (incl. `step2d`) | `652.352` | `12.04 %` | `8.72 %` | `7.05 %` | `5.09 %` |

The 3-D-only grouping clears the 2 % reopen gate even at a speed-up of `1.20`, which is well below
the `1.651` this build already achieves on its five existing objects. That is the reason this
direction is ranked first.

### Why `step2d` is the largest but riskiest single item

`step2d_LF_AM3.h` is `2486` lines with `225` loop headers, and it is called `nfast = 42` times per
baroclinic step on both grids (`model.log` 1736/1784: `ndtfast = 30, nfast = 42`), i.e. about
`2592*42 + 12960*42 = 653184` invocations. Two structural constraints apply:

- Six `mp_exchange2d` call sites (lines 563, 691, 697, 859, 895, 2473) plus `exchange_*_tile` calls
  split the routine; MPI calls must stay outside any parallel region, so the OpenMP regions have to
  be placed between them.
- `obc_flux_tile`/`set_DUV_bc_tile` (`USE obc_volcons_mod`, line 201) perform the volume-conservation
  reduction and must remain serial.

The per-call work is also far smaller than in the existing OpenMP objects: `step2d` is purely 2-D
(Grid 01 tile `45x40`, Grid 02 roughly `30x31`), whereas `pre_step3d`/`step3d_t`/`t3dmix4_s` iterate
over `N=34` levels and up to `NT=17` tracers. Fork/join cost is therefore a much larger fraction of
each region. With one region per compute segment, roughly six per call, the cost is about
`653184 * 6 * 2 us ~ 7.8 s`/rank = `0.37 %` of wall — tolerable, but it is a real deduction and it
grows linearly if the regions are made finer.

The 3-D objects have the opposite profile: their loop nests are structurally identical to the
already-working `t3dmix4_s.h` pattern

```fortran
!$OMP PARALLEL DO DEFAULT(SHARED) SCHEDULE(STATIC)                    &
!$OMP& PRIVATE(itrc,k,j,i,cff,cff1,cff2,cff3,FX,FE,LapT)
      DO itrc=1,NT(ng)
        DO k=1,N(ng)
```

so they carry the same evidence of feasibility inside this exact build and compiler.

### Communication pool, for comparison (item 3)

| timer | CPU-s | CPU share | wall-s/rank | wall share |
|---|---:|---:|---:|---:|
| 2D halo exchanges | `11979.517` | `6.711 %` | `187.180` | `8.762 %` |
| 3D halo exchanges | `5862.471` | `3.284 %` | `91.601` | `4.288 %` |
| 4D halo exchanges | `16051.478` | `8.992 %` | `250.804` | `11.740 %` |
| **halo subtotal** | **`33893.466`** | **`18.986 %`** | **`529.585`** | **`24.790 %`** |
| point data gathering (`mp_assemble*`) | `3635.683` | `2.037 %` | `56.808` | `2.659 %` |
| data reduction | `2214.817` | `1.241 %` | `34.606` | `1.620 %` |
| data broadcast | `1492.605` | `0.836 %` | `23.322` | `1.092 %` |
| gathering / scattering / boundary | `1863.689` | `1.044 %` | `29.120` | `1.363 %` |
| **message subtotal** | **`43100.260`** | **`24.144 %`** | **`673.442`** | **`31.523 %`** |

`mp_exchange.F` transports every halo with plain `mpi_isend`/`mpi_irecv` pairs. The only
`mpi_comm_split_type(..., MPI_COMM_TYPE_SHARED, ...)` in the tree is at `distribute.F` 5236, serving
the `[O9]` hierarchical broadcast. With 16 ranks per node (32 cores per node, `Sockets=4`,
`CoresPerSocket=8`), a large fraction of halo partners are node-local and could in principle be
served by `MPI_Win_allocate_shared` load/stores instead of message passing. This is a real and
untouched mechanism, but it requires rewriting `mp_exchange.F`, which the project has previously
ruled out as a whole-file rewrite, so it is ranked second behind item 1.

### Platform inventory relevant to items 3 and 7

- Compilers: `/opt/hpc/software/compiler/intel` contains only `intel-compiler-2017.5.239`; the `gcc`
  directory is empty. There is no alternative Intel version to test.
- MPI: `/opt/hpc/software/mpi/hpcx` contains `v2.4.0`, `v2.4.1`, `v2.5.0`, `v2.7.4`, `v2.11.0`. The
  binary links `v2.7.4`. `v2.11.0` has never been tested in this project.
- Nodes: `CPUTot=32`, `Sockets=4`, `CoresPerSocket=8`, `ThreadsPerCore=1`, `RealMemory=126500`.
- The scored `rankfile` binds each rank to two adjacent slots (`rank 0 = slot 0,1`,
  `rank 1 = slot 2,3`, `rank 2 = slot 8,9`, ...), consistent with the Stage-53 finding that each
  2-thread rank is confined to exactly two physical cores.
