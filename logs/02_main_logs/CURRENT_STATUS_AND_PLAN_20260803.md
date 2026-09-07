# MCC26 ROMS-CoSiNE：当前进度、有效配置与后续计划

> Snapshot date: 2026-08-03. This document distinguishes full, validator-passing evidence from shortened diagnostics and static reviews. It does not authorize a new model run.

## 1. Current best valid result

| Item | Confirmed value |
|---|---|
| Current retained run | `/public/home/fujiake/fjk/mcc_runs/118405320_o33_full_reproduce_64x2` |
| Wall time (`time real`) | **2136.310 s = 35m36.310s** |
| Job / resources | `118405320`; 4 nodes; 64 MPI ranks x 2 OpenMP threads; 128 allocated CPU cores |
| Decomposition | SCS `8x8`; Dongsha60 `8x8` |
| Scope | cold start; full `NTIMES=2592,12960`; 16 NetCDF files (8.43 GiB) |
| Correctness | `ROMS/TOMS: DONE`; official `vali.py` **26/26 PASS** |
| Binary | immutable O33 `oceanM`, SHA-256 `5f1a137e...fcb9` |
| Input | full input SHA-256 `a3e8a5db...79a8` |

This reproducible valid run is 0.3025% faster than same-O33 profile job `118346383` (2142.793 s) and inside the previously recorded valid O33 range 2129.853–2142.793 s. The 2129.853 s historical O33 result is the fastest recorded validated time, but its complete raw profile is not retained locally. The organizer reference is 6606 s (01:50:06) and is external evidence, not a workflow measurement.

## 2. Adopted configuration and optimization state

### Frozen runtime configuration

- Platform ceiling: at most 4 nodes / 128 CPU cores; current layout is 64 MPI x2 OpenMP.
- MPI partition is legal internal tiling: each grid uses 8x8 = 64 tiles; physical grid, vertical levels, timestep, integration length, output content, forcing, boundary/initial fields and ecology are unchanged.
- Shared inputs are read-only under `/public/home/fujiake/Inputfiles`; the run is cold-start.
- O33 is treated as an immutable measured binary, not a newly reconstructable source recipe: later audit found its incremental object lineage is not fully represented by the formal source tree. Submission work must preserve and document that provenance rather than claim a clean bitwise rebuild without evidence.

### Measured performance and profiler information

Full O33 `PROFILE` reports rank-CPU aggregate attribution, not wall-time phase fractions. The observed leading shares are: predictor `pre_step3d` 13.6563%, tracer corrector `step3d_t` 10.9957%, `step2d` 10.6543%, GLS 9.9602%, 4-D halo 7.2090%, biology 5.6066%, and 2-D halo 5.5326%.

VTune software sampling independently ranks `pre_step3d_tile`, `step3d_t_tile`, `__libm_pow_e7`, `step2d_tile`, `mp_exchange4d`, biology, GLS and mixing as material. Hygon C86 prevents VTune hardware-event collection. `perf` supports user-space cycles/instructions/branches only; cache-reference/cache-miss events are zero and must not be used for cache, bandwidth or NUMA claims.

## 3. Optimization work completed

| Direction | Diagnostic / full evidence | Result |
|---|---|---|
| Fine-to-coarse exchange `vtype` guard | 64x2 A-B-B-A | candidate 130.945 s vs control 127.458 s; rejected |
| `step2d` no-heap arrays | 64x2 A-B-B-A | candidate 131.047 s vs control 128.873 s; rejected |
| `pre_step3d` metric reuse | 64x2 A-B-B-A | candidate mean 132.310 s vs 129.974 s; 1.80% regression |
| Rank-map square blocks | 64x2 A-B-B-A | only 0.79% apparent change; both B not faster; rejected |
| 128 MPI x1 OpenMP | 64x2 vs 128x1 A-B-B-A | 168.194 s vs 127.323 s; 32.10% regression; halo +322.65% |
| Clean rebuild equivalence | 64x2 A-B-B-A | clean +1.454%; delivery-equivalent gate only, not a speedup |
| Clean source full run | full 2592/12960 | 2179.403 s, 26/26 PASS, but 2.017% slower than O33 |

## 4. Proven ineffective or closed paths

- 128 pure MPI / larger tile count: directly regresses and sharply increases halo cost.
- 64-rank square/stripe remapping and affinity-only settings: no stable wall-time gain; mapping evidence does not identify a critical path.
- Generic HCOLL/UCX/collective rule sweeps: closed; HCOLL also caused full-run MPI-IO write hang in prior evidence.
- Generic nonblocking halo / asynchronous MPI overlap: no site-specific compute-overlap proof; do not reopen without contradictory critical-path evidence.
- Fine2coarse exchange guard, `step2d` no-heap, `pre_step3d` metric reuse: directly measured regressions or below gate.
- Broad compiler/vector flags and biology CSE: no measured >=2% legal mechanism.
- GLS `pow` rewrite: variable/parameterized exponents; no conservative >=2% mechanism. Floating-order change is now permitted if the physical formula remains unchanged and full RMSE validation passes, but this does not supply a performance mechanism.
- Broad OpenMP persistent-region, `nowait`, region merge: producer/exchange/consumer dependencies lack a full array-dependence proof and a quantified benefit.
- Further VTune/perf sweeps: current Hygon tool boundary cannot establish cache/bandwidth/NUMA or global MPI critical path.

## 5. Active plan

1. **Freeze and protect O33 evidence.** Retain `118405320`, its validator receipt, binary/input/rankfile hashes and VTune raw data. No output deletion is authorized by this documentation stage.
2. **Finish delivery provenance, not performance experimentation.** Create/verify the final source archive only with the full `NTIMES=2592,12960` runtime input and explicit O33 incremental-lineage notes. Do not claim a clean-build binary is identical to O33; clean full validation was accurate but slower.
3. **Prepare source-review documentation.** State frozen scientific settings, exact runtime layout, retained binary hash, build/provenance limitations and validator receipt.
4. **Reopen performance work only at a strict gate.** A proposed change needs (a) an exact source/profile mechanism, (b) conservative full-run potential >=2%, (c) unchanged physical formula/algorithm and the ability to pass the official RMSE range despite any permitted floating-order change, then (d) one-variable short A-B-B-A with both B faster and >=3% mean gain before a full 26/26 validation.
5. **Only remaining exploratory class:** static proof of a concrete temporary array, non-unit-stride access, or alias-driven scalarization inside an unclosed compute hotspot. Without compiler/assembly evidence and the >=2% ceiling, reject before build.

## 6. Compliance boundary

Allowed implementation work includes MPI/OpenMP, legal tile partitioning, loops, memory/layout, compiler and I/O implementation. The organizer explicitly distinguishes frozen physical/meteorological algorithm/formulae from adjustable computer-side implementation algorithms, including communication organization, buffering, nonblocking/persistent messaging and data layout. Physical equations/discretization, physical grids, time step, full scored step count, output semantics, input fields, ecology and two-way nesting must remain unchanged. The organizer now allows changed floating-point execution order and mathematically equivalent implementation rewrites when physical formulae/algorithm remain unchanged and official RMSE passes; bitwise identity is not required. Aggressive compiler/math changes remain validation-sensitive and require full official validation.

## Evidence entry points

- Full result: `analysis/o33_full_reproduce_118405320/`.
- Profile provenance: `analysis/o33_profile_provenance_review_20260802/`.
- VTune: `analysis/o33_vtune_hotspots_118418627/` and `analysis/o33_vtune_node_compare_118418627/`.
- Perf boundary and closure: `analysis/perf_capability_118464271/` and `analysis/profiling_closure_20260803/`.
- Master chronology: `OPTIMIZATION_LOG.md`.
