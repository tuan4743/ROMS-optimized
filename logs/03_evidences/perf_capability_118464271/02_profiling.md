# Stage 76 - Hygon perf capability: profiling

| Metric | Pass 1 | Pass 2 | Interpretation |
|---|---:|---:|---|
| Task clock | 2.000127 s | 2.000337 s | Single CPU fully utilized |
| Cycles | 4.9643e9 | 4.9652e9 | Stable, 2.482 GHz both passes |
| Instructions | 15.4931e9 | 15.1600e9 | 2.17% pass-to-pass variation |
| IPC | 3.12 | 3.05 | 2.27% variation; reasonable repeatability for a two-second loop |
| Branches | 3.2019e9 | 3.1331e9 | 2.17% variation |
| Branch misses | 113,816 | 111,613 | about 0.00356% both passes |
| Cache references/misses | 0 / 0 | 0 / 0 | Not usable, not evidence of perfect cache behavior |

The `:u` event suffix and `perf_event_paranoid=2` show user-space-only collection is the supported boundary. Core instruction/branch accounting works. Cache events are either unsupported, unimplemented or filtered on this Hygon kernel/PMU configuration; do not use them for ROMS cache, bandwidth, NUMA or memory-bound claims.

This probe says nothing directly about ROMS because `yes` has a radically different instruction/data mix. It supports a later *diagnostic-only* immutable-O33 perf design that records cycles/instructions/branches per selected rank or node. It does not justify a source candidate, MPI tuning, or a performance claim.
