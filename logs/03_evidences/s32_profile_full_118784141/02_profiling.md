# 02_profiling — PROFILE-on full

- Purpose: make Writing / `set_avg` / input **visible on full length** (sample ABBA is nc-blind for Writing).
- Writing full-run wall share ~**2.0–2.2%** of S32 parent — confirms Stage-127 transfer estimate (~2.33% from O33 abs) was the right order; not sample-invisible anymore.
- `set_avg` full ~**2.5–2.8% wall** — slightly above sample 2.39%; still Stage-90 non-critical-path (uniform across ranks historically).
- Input processing ~**2.0–2.2% wall** — consistent with Stage-128 G02-dominated nested-halo story; already `BELOW_GATE_STOP` for ≥2% clear.
- NOFILL optimistic removable fraction of Writing alone remains **≲1.1%** of parent (30–50% of Writing pool) — still fails ≥2% alone; full ABBA is below-gate measurement only.
- PROFILE itself costs ~99 s (+5.6%) vs champion; do not compare PROFILE wall to scoring parent.
