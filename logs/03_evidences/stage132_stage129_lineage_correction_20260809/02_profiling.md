# 02_profiling — Stage 132 provenance and profile verification

## Stage-129 confounder

- Champion s22b makefile: global `-march=core-avx2 -no-fma -ipo`; link `-qopenmp -ipo`; `step2d.o` adds AVX2/no-FMA; `biology.o -fp-model fast=2` was already present.
- Wrong tree makefile: all three champion additions are absent. Its `globaldefs.h` and `nesting.F` hashes differ from s22b.
- `setup_build_setavg.sh` and `setup_build_nofill.sh` both set `src=/public/home/fujiake/nan/sprint/ROMS_CoSiNE15`.
- Both candidate build logs contain 0 AVX2, 0 no-FMA, and 0 IPO compile lines.
- Consequently, the common ~8% B slowdown is a mixed source/build/knob observation. It cannot quantify either knob or the exact compiler-stack contribution without an A-prime rebuild.

## Full PROFILE `118784141`

Using total CPU `155619.296 s` for G01+G02:

| Pool | Combined CPU share |
|---|---:|
| 3D predictor | 17.076% |
| tracer corrector | 16.655% |
| GLS | 13.646% |
| 2D kernel | 10.993% |
| biology | 8.759% |
| all message passage | 25.805% |
| 4D halo | 10.339% |
| 2D halo | 6.512% |
| 3D halo | 3.796% |
| Writing | 1.571% |
| set_avg | 2.021% |
| input processing | 1.577% |

No new high-upside pool appears. The only near-gate unclosed imbalance remains halo arrival skew with a perfect-rebalance ceiling of 1.81-2.57%, but no removable mechanism has been established.

## Teammate-result refresh

- S33 one-day 604.117 s, PASS: slower than S32 one-day 596.5 s.
- S35 one-day 597.301 s, PASS; S36 596.223 s, PASS; S37 1015.831 s, PASS; S38 592.534 s, PASS. These are diagnostic one-day results only.
- S42 one-day 587.926 s but full `118811124` is 1769.205 s, 26/26 PASS: 0.874% slower than S32 `1753.876 s`.
- S44b one-day 589.902 s, PASS, without a full result.
- `oceanM.s33_t3dmix_fast2_2021.bak` and `oceanM.s34_persist2d_2021.bak` are SHA-identical; no independent S34 timing was found.

Decision: keep S32 `d9a45dbb...e5a2` as the performance parent. Pass 2: **VALID**.
