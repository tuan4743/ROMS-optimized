# Stage 78 - current status and plan: evidence reconciliation

- Timing categories are separated: full `time real` establishes scored-runtime evidence; shortened A-B-B-A runs establish only diagnostic direction decisions; ROMS PROFILE and VTune CPU time establish hotspot attribution rather than wall-time phase fractions.
- Current retained full evidence is job `118405320`: 2136.310 s, cold start, 64 MPI x2 OpenMP, both grids 8x8, full 2592/12960, 26/26 PASS. It is not a newly optimized candidate; it reproduces the immutable O33 parent.
- The document lists only measured closures as ineffective. Static routes are labeled as pre-build rejections rather than performance regressions.
- The future gate preserves the distinction between possible hotspot presence and an actionable optimization: exact mechanism, conservative >=2% full-run ceiling, semantic compliance, short A-B-B-A >=3% with both B faster, then full official validation.
