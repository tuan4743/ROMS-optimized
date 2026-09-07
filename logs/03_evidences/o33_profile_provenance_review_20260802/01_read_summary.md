# 01 Read Summary — O33 profile provenance

- Date: 2026-08-02.
- Task: explain how the best O33 hotspot profile was obtained.
- Fastest validated timing anchor: job `118307015`, shell `real=2129.853 s`, official 26/26 pass. Its complete raw profile log is not retained in the local evidence package.
- Primary auditable full-profile sample: job `118346383`, shell `real=2142.793 s`, same O33 binary/layout/full scope and official pass. Raw log: `analysis/teammate_o33_sync_review_20260801/source_evidence/evidence/run_O33_final3day_20260801_110155_J118346383.txt`.
- Independent reproduction profile: job `118405320`, shell `real=2136.310 s`, same immutable O33 binary/layout/full input and official pass; analysis at `analysis/o33_full_reproduce_118405320/02_profiling.md`.
- Initial conclusion: the hotspot table is a same-configuration O33 profile envelope, not a direct profile artifact uniquely tied to the fastest `118307015` sample.
- No experiment or model output was created; deletion is not applicable.
