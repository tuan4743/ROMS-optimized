# O33 step2d exchange-site profiling

## Instrumentation boundary

The profiler uses `SYSTEM_CLOCK` immediately before and after two unchanged calls:

1. beginning `mp_exchange2d(...,DUon,DVom)`;
2. ending `mp_exchange2d(...,ubar(:,:,knew),vbar(:,:,knew))`.

No exchange was removed, reordered, resized, or given a different field. The counter and final TSV I/O are diagnostic overhead, so job wall time is not compared with O33.

## Coverage and structural check

All 64 ranks report identical call counts:

| Grid | NTIMES | flux calls/rank | uv calls/rank | calls per long step |
|---|---:|---:|---:|---:|
| 01 | 144 | 12,240 | 12,096 | flux 85, uv 84 |
| 02 | 720 | 61,200 | 60,480 | flux 85, uv 84 |

`12096/144 = 60480/720 = 84` ending calls per long step. The beginning site has one additional call per long step because the auxiliary `nfast+1` predictor executes flux preparation/exchange and then returns. This confirms that the counters cover the repeated sites intended by the source audit.

## Direct measurements

| Site | Grid | mean seconds/rank | maximum seconds/rank |
|---|---:|---:|---:|
| beginning `DUon/DVom` | 01 | 0.362203328 | 0.633074000 |
| ending `ubar/vbar` | 01 | 0.275789250 | 0.321879000 |
| beginning `DUon/DVom` | 02 | 1.498618016 | 2.151103000 |
| ending `ubar/vbar` | 02 | 1.386586469 | 1.935634000 |

Across both grids, the ending-site time is:

- mean per rank: `1.662375719 s`;
- maximum combined rank (rank 63): `2.256610000 s`.

The official full run has exactly 18 times the diagnostic NTIMES on both grids. Scaling repeated call time by 18 gives:

- mean projection: `29.922762938 s`, `1.396437404%` of O33 `2142.793 s`;
- deliberately favorable maximum-rank projection: `40.618980000 s`, `1.895609142%`;
- 2% gate: `42.855860000 s`; even the maximum misses it by `2.236880000 s` or about `0.104391` percentage point.

## Why this is a true upper bound for the proposed change

Delayed grouping would remove one MPI call boundary but append `ubar/vbar` to the following `DUon/DVom` exchange. It cannot eliminate the measured payload transfer, packing, or all synchronization. The calculation above unrealistically credits the candidate with eliminating the complete ending-call time. Therefore actual gain must be lower than `1.895609%` even before considering larger combined buffers, active two-way-nesting contact dependencies, and implementation overhead.

The full O33 two-grid 2-D halo pool remains `6.8424%`, but this site-resolved result proves the exact removable site cannot independently clear 2%. No A-B-B-A is justified.

## Decision and sequence state

- Decision: `REJECT_BEFORE_SCHEDULE_BUILD`.
- Do not change the `step2d` communication schedule.
- No candidate binary beyond profiling, no half-day/full run, and no official scoring claim.
- This is below-gate direction 1 after the Stage-48 PLAN reset. One further ineffective direction would trigger mandatory PLAN research again.

