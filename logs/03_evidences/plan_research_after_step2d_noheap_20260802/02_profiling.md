# Stage 62 PLAN — research and profiling synthesis

## Evidence reconciled

1. **Intel compiler storage semantics.** Intel documents that `-heap-arrays` places automatic arrays and compiler-created temporaries on the heap; arrays whose size is known only at runtime are heap allocated when the option has no threshold. O33 `step2d_tile` has 21 local arrays with bounds based on runtime tile limits, and its parent object imports `for_allocate`/`for_deallocate`. [Intel heap-arrays documentation](https://www.intel.com/content/www/us/en/docs/fortran-compiler/developer-guide-reference/2024-2/heap-arrays.html)
2. **Measured non-transferability.** Stage 61's microbenchmark shows the local allocation mechanism, and candidate `step2d` drops 3.18/3.87% across grids. Yet A-B-B-A wall time regresses 1.6873% and both GLS timers rise ~20%. An isolated storage-policy benefit is therefore insufficient in the coupled model.
3. **Chinese platform-relevant literature.** The NEMO code-modernization work applies hot-loop parallelization and reduces inter-process communication, but reports the need to preserve model behavior while matching the target architecture. It supports hotspot-specific measurement, not independent local optimizations extrapolated from synthetic tests. [海洋环流模式 NEMO 的代码现代化](https://www.ams-journal.org.cn/website/article/doi/10.3969/j.issn.1671-6647.2021.01.007)
4. **Open-source ROMS boundary.** Current ROMS releases contain MPI gathering/scattering changes, but O33's direct 128-rank/mapping/collective work and the fine2coarse source guard were measured and rejected. Upstream shape alone is not an O33 performance justification. [ROMS releases](https://github.com/myroms/roms/releases)

## Rejected follow-ups

- `-heap-arrays:<threshold>`: Intel specifies that runtime-size arrays remain heap allocated; it does not target the demonstrated step2d object path.
- Global or additional object-level `-no-heap-arrays`: Stage 61 proves an object-local version changes coupled timing adversely; generalization has no measured 2% case and raises stack/NUMA interaction risk.
- Generic MPI/OpenMP restructuring, async halos, collective sweeps, rank-count and mapping: previously measured/rejected or lacks a legal data-dependency proof.

## Decision

No candidate presently clears a conservative 2% whole-run mechanism. The next useful profiling action, if user requests it, is **read-only delivery profiling** of the immutable O33 parent and its official-validation provenance—not a new optimization build.
