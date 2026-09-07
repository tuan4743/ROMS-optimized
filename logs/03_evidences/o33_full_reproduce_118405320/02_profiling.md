# Stage 63 O33 full cold-start reproduction: profiling analysis

- Date: 2026-08-02 +0800.
- Timing scope: one uninstrumented full three-day model run, shell `time` around `mpirun`; official validation runs after model timing and is excluded from `real`.
- Comparison anchor: same immutable O33 binary/layout and full scope, packaged job `118346383`; historical valid O33 timings are `2129.853 s` and `2142.793 s`.

## End-to-end consistency

Current `2136.310 s` is effectively the prior two-run mean `2136.323 s` (`-0.013 s`, about `-0.00061%`). It is inside the prior `12.940 s` range (`0.6057%` of the historical mean). The new sample therefore confirms the earlier O33 performance envelope; the `0.3025%` difference from job `118346383` is ordinary run/node variation until stronger evidence says otherwise.

## Current internal profile

ROMS totals are rank-CPU aggregates over approximately `178516.6 s`.

- Grid 01 compute profile total: `42115.206 s` (`23.5918%`).
- Grid 01 message-passage total: `11758.930 s` (`6.5870%`).
- Grid 02 compute profile total: `114762.107 s` (`64.2866%`).
- Grid 02 message-passage total: `31341.330 s` (`17.5566%`).
- The percentages overlap neither model `real` nor each other as wall-clock phases; they are rank-CPU/profile shares and must not be summed into a wall-time claim.

Largest Grid 02 entries remain:

| Component | Rank-CPU seconds | Share |
|---|---:|---:|
| 3-D predictor | 24378.657 | 13.6563% |
| Tracer corrector | 19629.030 | 10.9957% |
| 2-D kernel | 19019.713 | 10.6543% |
| GLS | 17780.611 | 9.9602% |
| 4-D halo | 12869.225 | 7.2090% |
| Biology | 10008.652 | 5.6066% |
| 2-D halo | 9876.529 | 5.5326% |

Relative to packaged job `118346383`, selected timer changes are mixed and small: Grid 01 predictor `-0.073%`, tracer corrector `-0.798%`, 2-D halo `-0.948%`, 4-D halo `+0.513%`; Grid 02 predictor `-0.055%`, tracer corrector `+0.165%`, 2-D kernel `+0.577%`, GLS `+0.359%`, 2-D halo `-2.548%`, and 4-D halo `+0.193%`. There is no coherent component-wide shift that supports a new causal optimization claim.

## Resource and I/O observations

- Slurm reports `COMPLETED 0:0`; the `orted` step is `00:35:34` and the job including validation/packaging is `00:36:07`.
- Batch-step maximum resident set is about `12,409,500 KiB`; the `orted` step reports about `12,211,000 KiB`. These step maxima are diagnostic and are not a per-rank memory total.
- Output writing is not dominant in the internal profile: Grid 01 `1703.609 s` (`0.9543%`) and Grid 02 `914.040 s` (`0.5120%`) rank-CPU share. Input reading is smaller still.
- Communication remains material, especially Grid 02 halo exchange, but prior exact histogram/overlap/mapping/rank-count experiments have already rejected blind communication tuning. The present unchanged run adds no contradictory mechanism.

## Profiling conclusion

Pass 2 confirms stable reproduction and the same hotspot ordering. It does not reveal a new conservative >=2% whole-run mechanism. No optimization experiment should be launched solely from these aggregate timers; a future candidate still needs exact site/source attribution and the existing static and matched-A/B gates.
