# 03_validity_check — Stage 132 independent validity audit

1. Binary lineage was checked by `sha256sum`, size, and `cmp`; champion backup and private frozen parent are byte-identical.
2. Source lineage was checked against the S32 tar archive. The archive and current s22b key files match, while the Stage-129 source tree differs.
3. Candidate build flags were checked from both setup scripts and build logs; AVX2/no-FMA/IPO compile-line counts are all zero.
4. PROFILE percentages were independently recomputed from raw G01/G02 timer files rather than copied from the old summary.
5. Teammate timings and validator tails were read directly; shortened runs were not promoted to scored evidence. The only refreshed full run, S42 `118811124`, passes but is slower than S32.
6. Causal correction is conservative: it does not assert the flag/source stack is exactly worth 8%; it asserts only that the knob effect is not identifiable from the mixed comparison.
7. Original run records remain preserved. No remote output was deleted; deletion is not applicable to this zero-run correction stage.
8. Handoff synchronization audit: 23 selected main/BN files compared by SHA-256 with `BAD=0`; six changed workspace/installed Skill files compared with `BAD=0`.
9. `skill-creator/scripts/quick_validate.py` could not start because available Python environments lack `PyYAML` (`ModuleNotFoundError: yaml`). Its source checks were reproduced directly: frontmatter delimiters, allowed keys, required name/description, hyphen-case/length, description constraints, and required reference paths. Workspace, BN, and installed Skill copies all returned `VALID=True`. This is an equivalent structural check, not a claim that the official Python validator executed successfully.
10. The first BN directory copy left one unintended empty nested `mcc26-roms-cosine-handoff` directory. Its resolved absolute path was verified inside the BN Skill root and its recursive item count was 0 before non-recursive removal. Final duplicate count is 0; no evidence file was removed.

Pass 1 validity: **VALID**. Pass 2 validity: **VALID**. Stage-129 knob attribution: **INVALID/CONFOUNDED**. Stage-132 correction: **VALID**.
