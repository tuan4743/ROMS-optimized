# Stage 77 - profiling closure: read summary

- Date: 2026-08-03.
- Scope: read-only consolidation of Stage 72 VTune software hotspots, Stage 74 four-node comparison, and Stage 76 `perf` capability probe. No source, compiler, MPI/OpenMP setting, input, job, or model-output path was changed.
- Raw evidence: VTune root `/public/home/fujiake/fjk/vtune_runs/118418627_o33_hotspots_64x2`; local analyses `analysis/o33_vtune_hotspots_118418627`, `analysis/o33_vtune_node_compare_118418627`, and `analysis/perf_capability_118464271`; perf audit `/public/home/fujiake/fjk/agent_tmp/isolated/audits/perf_capability_118464271/perf_capability.log`.
- Baseline protected for handoff: immutable O33 `/public/home/fujiake/fjk/mcc_runs/118405320_o33_full_reproduce_64x2`, 64 MPI x 2 OpenMP, 8x8/8x8, four nodes, `real=2136.310 s`, official 26/26 PASS.
- Initial conclusion: profiling is closed. Software sampling identifies compute and MPI-library activity but provides no rank-critical-path attribution; Hygon C86 prevents usable VTune PMU collection. `perf` supplies repeatable user-space cycles/instructions/branches only; cache-reference and cache-miss counts are zero. A four-rank ROMS perf diagnostic is intentionally not submitted because it cannot resolve this attribution gap and would not justify reopening already rejected mapping/placement work.
- Output lifecycle: no output was generated. All existing raw results, including the 473 MiB VTune root and protected full O33 result, remain retained; deletion is not applicable.
