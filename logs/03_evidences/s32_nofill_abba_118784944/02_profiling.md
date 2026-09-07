# 02_profiling — NF90_NOFILL full ABBA

- Scope: full scored length; one allocation W0+A1+B1+B2+A2; PROFILE off.
- Both B legs were slower than both A (~1911/1915 vs 1767/1772), but A and B did not share a build/source lineage.
- Stage 132 build audit: the NOFILL setup script copied the non-s22b tree; its build log contains zero `-march=core-avx2`, zero `-no-fma`, and zero `-ipo` compile lines. The wrong tree also differs in `globaldefs.h` and `nesting.F`.
- Withdrawn hypothesis: the 8% gap is **not evidence** of a create/write-path interaction or other NOFILL behavior. Without an A-prime zero-change rebuild, the knob's isolated sign and magnitude are unknown.
- Independent ceiling remains: full PROFILE `118784141` gives Writing 1.5711% of aggregate CPU (about 2.0-2.2% translated wall); Stage 127's optimistic removable NOFILL share is only 0.58-1.17% of S32 wall.
- Correct label: `CONFOUNDED_ATTRIBUTION / BELOW_GATE_STOP`; no new model run.
- A legs ≈ champion 1753.9 s (+~0.9%), so A is a sane S32 parent reference on these nodes.
