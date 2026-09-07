# 01_read_summary — Stage 129 set_avg OMP sample ABBA

- Date: 2026-08-08. Task: user-authorized **below-gate** `set_avg` OpenMP (tracer `it`-loop + `set_avg.o -qopenmp`).
- Parent bin: `oceanM.S32_parent` sha256 `d9a45dbbc351a3e386a504c87d355f0db2197c6c6bdec2b5eb2b2276b36fe5a2`.
- Candidate: `oceanM.S32_setavg` sha256 `314fbfc6090c585557d263bb2063229e3ab187edec1dd1c8436188226ef6c544` (build `118784294`).
- Job **`118784623`** COMPLETED `0:0`, elapsed `00:09:17`, nodes from sacct; layout 4n/64×2, sample `NTIMES=144/720`.
- Run root: `/public/home/fujiake/fjk/mcc_runs/118784623_s32_setavg_abba_belowgate/`.
- Timings (shell `real`): W0 109.285; A1 107.295; B1 114.348; B2 113.164; A2 103.683.
- Recorded harness decision: `mean_A=105.489`, `mean_B=113.756`, `gain_percent=-7.8368`, `both_B_faster=False`, `verdict=BELOW_GATE_STOP`, `scoring_candidate=no`.
- Prior fail `118784424`: harness `pipefail` on empty traj grep after W0 DONE (not a model failure). Fixed before `118784623`.
- **Limitation:** sample only; traj=none; not a scored full run.

## Headline

**Stage 132 correction (2026-08-09): this A-B-B-A is attribution-confounded.** A used the frozen S32 champion binary, while B was rebuilt from `/public/home/fujiake/nan/sprint/ROMS_CoSiNE15`, not the champion source tree/archive. That rebuild omitted the champion's global `-march=core-avx2 -no-fma -ipo`, link `-ipo`, and `step2d.o` AVX2/no-FMA flags; `globaldefs.h` and `nesting.F` also differed. Therefore the observed `-7.8368%` is a **mixed lineage/build delta plus the set_avg edit**, not a measured set_avg-OMP effect.

The performance attribution is `CONFOUNDED_ATTRIBUTION`. The route remains `BELOW_GATE_STOP` only because independent Stage-90/127/129 profiling places `set_avg` near 2.5-2.8% wall but off the demonstrated critical path; under the standing >=2% removable-gain gate and limited time, no rerun is justified.
