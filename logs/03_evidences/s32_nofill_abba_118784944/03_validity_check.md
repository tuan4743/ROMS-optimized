# 03_validity_check — NF90_NOFILL full ABBA

- Re-read: `decision.txt` + harness under `118784944_s32_nofill_abba_belowgate`; five REALs; A/B SHAs match build `118784293`; `INPUT_OK full`; all legs DONE (orted steps 0–4 COMPLETED 0:0).
- Pass 1 valid: **yes for run facts only**.
- Pass 2 valid: **no for causal attribution**. B came from a different source/flag lineage and there was no zero-change rebuilt A-prime control.
- The original claims that NOFILL regresses 8.12% and that create/write interaction explains the gap are withdrawn. STOP is retained only from the independently measured removable ceiling below 2%.
- Scoring validity: **no** (`scoring_candidate=no`; below-gate).
- Reproduction: deliberately not requested because the independent removable ceiling remains below the experiment gate.
- Output may be deleted when the next task begins (A1 NC retained for optional vali; not required for this STOP).
- Pass 3: **RUN RECORD VALID; ATTRIBUTION INVALID (`CONFOUNDED_ATTRIBUTION`)**. Superseded by Stage 132.
