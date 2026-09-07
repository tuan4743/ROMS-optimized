# Stage 77 - profiling closure: analysis

## Evidence boundary

The Stage-72 VTune run used `hotspots` software sampling at diagnostic `NTIMES=144/720`, four nodes, 64 MPI x 2 OpenMP and 8x8/8x8. It is not a scoring timing. VTune's hardware-event analyses are inapplicable on the Hygon C86 platform, so no VTune cache, DRAM-bandwidth, top-down, IPC, or NUMA conclusion is valid.

## Confirmed observations

- Node-local sampled CPU time consistently contains `pre_step3d`, `step3d_t`, `pow`, and `step2d` as compute hotspots.
- `mp_exchange4d` had a 20.70% node-to-node range, but UCX progress time varied in the opposite direction. This is not rank-level wall-clock critical-path evidence and does not prove a better rank mapping exists.
- The Stage-76 Hygon `perf` probe records repeatable user-mode cycles/instructions/branches/branch-misses: two 2-second samples show 2.482 GHz and IPC 3.12/3.05. `cache-references=0` and `cache-misses=0` in both samples; those event classes are unusable on this platform/configuration.
- Static review already rejects GLS `pow` rewrite and broad OpenMP region merging: each either crosses unresolved floating-point-order compliance or lacks a conservative >=2% whole-run mechanism.

## Final profiling decision

No additional profiling job is authorized. A new rank-wrapped perf sample could at most show local instruction/cycle dispersion. It cannot observe cache/memory behavior, establish MPI wait time or prove the global critical path; Stage-74 already rules out direct reinterpretation of node-local halo variation as a mapping gain. Therefore it has insufficient decision value relative to queue time.

No root cause, speedup, or new candidate is proven. Immutable O33 remains the only measured valid performance parent.
