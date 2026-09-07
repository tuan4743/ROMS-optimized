# get_contact2d sparse owner-map review (2026-08-04)

## 02 Profiling / mechanism

### Timer attribution

`ROMS/Modules/mod_strings.F` line 81 defines timer index 49 as
`Message Passage: point data gathering`. In `distribute.F` the routines guarded by
`wclock_on (ng, model, 49)` are the `mp_assemble*` family (`mp_assemblef_1d` at 1424,
`mp_assemblef_2d` at 1730, `mp_assemblef_3d` at 1853, `mp_assemblei_1d` at 1975,
`mp_assemblei_2d` at 2097). Timer 49 therefore measures assembly, not NetCDF gathering.

From the scored run `118405320` (rank-CPU aggregate total `178516.604 s`):

| bucket | Grid 01 (s) | Grid 02 (s) | sum (s) | share of total |
|---|---|---|---|---|
| point data gathering (timer 49, `mp_assemble*`) | 2900.985 | 734.698 | 3635.683 | 2.0366% |

Because `z_weights` is gated off by `[O20]` (`get_Vweights=.FALSE.`) and `get_metrics`/`mask_hweights`
run only during initialization, the per-step consumers of timer 49 in the scored configuration are
`get_contact2d` (13 call sites) and `get_persisted2d` (2 call sites). `collect_bry_fluxes` uses the
packed `assemble4/assemble2` paths added by `[O4]`/`[O11]` and is a separate, already-optimized site.

The Grid 01 / Grid 02 asymmetry (2900.985 vs 734.698 s) is consistent with the donor-grid accounting:
`get_contact2d` is called with `dg` = donor grid, and the coarse grid is the donor for the
coarse-to-fine boundary supply exercised on every barotropic stage.

### Current implementation and its cost model

`get_contact2d` (`nesting.F` 4725-4880) does three things:

1. Initializes the whole contact array to the special value (`nesting.F` 4806-4812):

   ```
   Npts=4*Npoints
   DO m=1,Npoints
     Ac(1,m)=Aspv
     ...
     Ac(4,m)=Aspv
   END DO
   ```
   with `real(r8), parameter :: Aspv = 0.0_r8`.

2. Fills only the four donor-cell corners owned by the calling tile, guarded by
   `IF (((Istr.le.i).and.(i.le.Iend)).and.((Jstr.le.j).and.(j.le.Jend)))`.

3. Calls `mp_assemble (dg, model, Npts, Aspv, Ac)`, i.e. one
   `MPI_Allreduce(MPI_IN_PLACE, A, 4*Npoints, MP_FLOAT, MPI_SUM, OCN_COMM_WORLD)`.

Cost model per call: `4*Npoints` doubles are reduced across all 64 ranks, and every rank receives the
complete contact array even though each rank consumes only the contact points that fall in its own
receiver tile. Two costs are paid that the algorithm does not need: full-communicator bandwidth
proportional to the entire contact region, and a global synchronization point on every barotropic
stage.

### Proposed mechanism (mirror of the validated 3-D path)

`get_contact3d` already carries the replacement, and it is directly transferable:

- `ContactPlan3D(Ncontact,3)` caches, per contact region and per staggering index
  (`Tindex` 1/2/3 for r/u/v), the donor rank and receiver rank of every contact point.
- The map is built once, from `contact(cr)%Idg/Jdg/Irg/Jrg` against `BOUNDS(dg)`/`BOUNDS(rg)` tile
  ranges, and validated with `Dhit`/`Rhit` counters that must both equal exactly 1 per point,
  so missing owners and overlapping tile bounds are detected instead of silently corrupting data.
- Topology is validated once: `NtileI(dg)*NtileJ(dg)`, `NtileI(rg)*NtileJ(rg)` and the communicator
  size must all be equal. The scored layout is 8x8 on both grids with 64 ranks, so this holds.
- Values are packed per peer with `reclen=4*(UBk-LBk+1)`, exchanged with `mpi_irecv`/`mpi_isend` plus one
  `mpi_waitall`, and unpacked in contact-index order so no index metadata travels.

Porting to 2-D requires only `reclen=4` and the `r2dvar/u2dvar/v2dvar` to `Tindex` mapping. The owner
map itself is dimension-independent: it is derived purely from horizontal contact indices and the
`IstrT/IstrP/JstrT/JstrP` staggering rules, and `nesting.F` 4816-4845 (2-D) uses exactly the same
staggering rules as 5045-5075 (3-D). The existing `ContactPlan3D` cache can therefore be reused, with
the build-on-first-use guard retained so a 2-D call that runs before any 3-D call still constructs it.

### Bitwise-equivalence argument

The collective being replaced is a sum over an array whose entries are zero on every rank except the
single owner. With `Aspv = 0.0_r8` written to all `4*Npoints` entries first, and the fill guarded so that
exactly one tile writes each entry (which `Dhit=1` independently proves for the same index set), the
reduction computes `0 + ... + v + ... + 0`. IEEE-754 addition of `+0.0` is exact for every finite `v`, so
transporting `v` directly from owner to consumer reproduces the reduction result bit for bit.

One documented edge case: if an owner value were exactly `-0.0`, the sum `-0.0 + 0.0` yields `+0.0`
while direct transport preserves `-0.0`. The two compare equal and are used only as interpolation
inputs multiplied by `Lweight`, so no branch or division can distinguish them; this is recorded as a
known, non-consequential difference rather than claimed impossible.

This property is what separates the candidate from the Stage-79/80 floating-order discussion: it needs
no appeal to the organizer's changed-execution-order permission, because the execution order of the
physics is unchanged and the transported values are identical.

### Conservative ceiling and gate

The addressable pool is the whole timer-49 bucket, `2.0366%` of rank-CPU. `get_contact2d` plus
`get_persisted2d` are its per-step members but cannot be separated from it without site-resolved
instrumentation, so the honest conservative statement is: the ceiling is at most `2.0366%`, and the
realized figure will be lower than that by whatever share the initialization-time assemblies hold.

Two effects are deliberately excluded from the ceiling and left as upside to be measured, not claimed:
removing a global synchronization point per barotropic stage can also reduce the propagation of load
imbalance into neighbouring timers, and the 64-rank `MPI_Allreduce` latency term does not scale with the
useful payload.

This places the candidate at the 2% reopen gate rather than comfortably above it. Under the Stage-77/78
rule the reopen is justified by an exact, legal, previously unexamined mechanism with a quantified
pool; promotion remains conditional on the measured A-B-B-A.

### Comparison with the other pools examined in this pass

| direction | pool (rank-CPU share) | status |
|---|---|---|
| point data gathering / `mp_assemble` 2-D | 2.0366% | proposed here; bitwise equivalent; O10 template exists |
| `t3dmix4_s` biharmonic, S-surfaces | 4.9332% | open, but `itrc` loop already carries teammate OpenMP; k-reorder conflicts with that parallel axis and repeats the Stage-85 scratch risk |
| `t3dmix` geopotentials | 1.2569% | below gate alone |
| `set_avg` accumulation (`Processing of output time averaged data`) | 1.7680% | below gate; bandwidth-bound read-modify-write, `NTSAVG=1` forbids skipping steps |
| `Writing of output data` | 1.4663% | below gate alone; no `USE_NETCDF4`, master-collect serial write; format change carries validation risk |
| `Processing of input data` | 1.6159% | below gate alone |

The two largest pools overall (predictor `18.22%`, tracer corrector `14.81%`, GLS `13.80%`, 2-D kernel
`13.79%`, biology `7.61%`) are either closed by measurement (Stages 51/85 scratch reuse) or currently
occupied by the teammate `nopow`/`allland` lineage.
