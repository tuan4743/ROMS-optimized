# Pass 2 - Profiling and minimal-run impact

- Date: 2026-07-30 (platform time)
- Physical grids remain unchanged: Grid 01 `359x326x34`, Grid 02 `235x245x34`
- Legal resource range: up to four nodes/128 CPU cores

## Decomposition implications

The new rule reopens 128 MPI ranks without requiring OpenMP. It does not guarantee that 128 ranks are faster: the complete 64-rank profiles attribute 30%-43% to communication, and the historical 128-rank diagnostic projected severe saturation.

If one 128-rank orientation is tested, a geometry-only halo-edge proxy favors:

- Grid 01: `16x8`; internal-edge proxy `(16-1)*326 + (8-1)*359 = 7403`, versus `7667` for `8x16`.
- Grid 02: `8x16`; internal-edge proxy `(8-1)*245 + (16-1)*235 = 5240`, versus `5320` for `16x8`.

This mixed orientation is a heuristic, not a measured result. Nesting-contact traffic, collective cost, load balance, cache behavior, and the ROMS tile bounds may outweigh the simple halo proxy.

## Time-critical plan

Keep the default low-run sequence unchanged:

1. S0: unchanged passing GCC, four nodes/64 MPI, `8x8` on both grids, half-day.
2. S1: same 64-rank layout with the blocking rank-ordered `MPI_Allgatherv` aggregate candidate, half-day.
3. If S1 is clearly useful, it remains eligible for the full F1 run.

Only if more performance is still required and time remains, add one optional S2:

- same S1 binary and half-day input;
- four nodes/128 MPI ranks;
- Grid 01 `16x8`, Grid 02 `8x16` as the first static choice;
- no OpenMP and no additional source/runtime changes.

Compare S2 directly with S1. If S2 does not beat S1 beyond the established noise margin, retain 64 ranks and do not test the opposite orientations. If S2 clearly wins and its numerical trajectory is consistent, use the S2 layout for the single full candidate run and require official validation.

Thus the rule change adds zero default runs and at most one conditional half-day run.
