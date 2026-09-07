# O33 pre_step3d cross-tracer invariant review

## Task and lifecycle gate

- Date: 2026-08-01, after Stage 49.
- Goal: inspect the exact immutable O33 `pre_step3d` source and compiler report for redundant cross-tracer work, without changing or running the model unless a full-O33 2% static ceiling remains possible.
- Previous-result gate passed: `analysis/o33_step2d_siteprof_118371327/{01_read_summary.md,02_profiling.md,03_validity_check.md}` all exist and are valid. The retained remote audit resolves to `/public/home/fujiake/fjk/agent_tmp/isolated/audits/o33_step2d_siteprof_118371327`, contains zero NetCDF files, and remains retained. Nothing was deleted.

## Exact evidence

- Immutable parent: `/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15`.
- Exact active source: `ROMS/Nonlinear/pre_step3d.F`, SHA-256 `de54caa236e6c54e6c733d505043e68da968c87a8b572810b3fd40fa2598721b`.
- Preprocessed source: `source_evidence/pre_step3d.f90`, SHA-256 `e6b99adffc14988208a0a81c2a47b9a2b13b14474ecdc5baafc57c6ee9cdaf25`.
- ifort report: `source_evidence/pre_step3d.optrpt`, SHA-256 `8260409fbf08d6ed2edb8a05a49cf2134918e7d921ac5bfd6eafccd9417430d8`.
- Parsed loop/blocker tables: `1d07f4ffeba2c24652638028077d8a969985cab1a59626df467e6d7f5c110ce4` and `22be1fb6eb6a46305b3ef36842df5d776b1b3d3652c595cf7585ab8b7008bdcf`.

## Program structure observed

- O33 already puts `k` outside `itrc` in the horizontal tracer-advection region and parallelizes that outer loop. Repeating the earlier K/T reordering is not a new route.
- The vertical region uses one OpenMP-parallel `J_LOOP1`. It computes the artificial continuity factor `DC(i,k)` once per `j,k,i`, then processes all 17 tracers in `T_LOOP2`.
- Inside each tracer and each of 34 vertical levels, the update recomputes `cff*pm(i,j)*pn(i,j)`, although `cff`, `pm`, and `pn` are invariant across both `itrc` and `k` for the current `j`.
- The compiler report says the target preprocessed line-495 inner `i` loop is vectorized, with alignment-path estimated potential speedups `1.66` and `1.36`. Reported dependence blockers are source/sink loops, not this update loop.

## Narrow candidate

Add one OpenMP-private one-dimensional `real(r8)` scratch over `i`. Compute the exact expression `cff*pm(i,j)*pn(i,j)` once per `j,i`, then load that scratch in the existing vertical tracer update. Do not alter the horizontal expression, tracer/vertical ordering, advection scheme, artificial continuity equation, OpenMP schedule, physical grid, input, or output.

## Result

Decision: **BUILD_ONE_DIAGNOSTIC_CANDIDATE**. This is a source-level feasibility result, not a speedup or accuracy result. Only one diagnostic `144/720` A-B-B-A allocation is authorized; a half-day/full run is forbidden unless the matched diagnostic clearly exceeds the promotion gate and preserves the printed trajectory.

