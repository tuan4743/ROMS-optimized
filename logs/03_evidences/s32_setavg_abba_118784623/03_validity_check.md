# 03_validity_check — set_avg OMP sample ABBA

- Re-read: `decision.txt` and harness log under `118784623_s32_setavg_abba_belowgate`; A/B binary SHAs match build records; input sample rewrite logged `INPUT_OK sample`.
- Pass 1 valid: **yes for run facts only** (completion, five REALs, decision written).
- Pass 2 valid: **no for causal attribution**. The A binary is the frozen champion, but B was rebuilt from a different source tree without the champion AVX2/no-FMA/IPO stack. No zero-change rebuilt A-prime leg exists.
- The original claim that set_avg OMP regresses 7.84% or is disproven by this run is withdrawn. Only the independent below-gate/critical-path argument supports STOP.
- Scoring validity: **no** (`scoring_candidate=no`; below-gate; sample).
- Reproduction: deliberately not requested; it would refine a route that still lacks a >=2% removable critical-path ceiling.
- Output may be deleted when the next below-gate task begins (after this three-pass is accepted).
- Pass 3: **RUN RECORD VALID; ATTRIBUTION INVALID (`CONFOUNDED_ATTRIBUTION`)**. Superseded by Stage 132.
