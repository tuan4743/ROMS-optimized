# 03 Validity Check — O33 profile provenance

- Date: 2026-08-02.
- Re-read raw job `118346383` profile block: 64 rank CPU lines, aggregate total near `179144.3`, both grid compute/message tables, `ROMS/TOMS: DONE`, and shell `real=35m42.793s` are present.
- Recomputed examples match the printed percentages: `24392.018/179144.331=13.6158%` and `12844.396/179144.331=7.1699%` after rounding.
- Source evidence contains the expected `wclock_on` call sites for biology, GLS, predictor, tracer corrector and MPI routines. The extraction script uses `rg` only and does not transform values.
- Pass 1 valid: yes. It separates fastest timing job `118307015` from the auditable profile job `118346383` and reproduction `118405320`.
- Pass 2 valid: yes. The calculation and attribution reproduce from the raw log and source/extraction evidence.
- Performance gain/root cause: no new gain or root cause is established. The evidence supports hotspot ordering for the O33 configuration, not an exact profile claim for the unavailable fastest-sample raw log.
- Reproduction required: no; job `118405320` already supplies an independent full reproduction. Output deletion is not applicable to this read-only review, and existing outputs remain untouched.
