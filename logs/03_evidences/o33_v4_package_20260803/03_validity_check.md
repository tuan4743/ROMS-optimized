# Stage 82 Validity Check — O33 v4 source package

Re-read raw evidence (remote delivery root listing, `v4.manifest.txt`, `v4.sha256`, `v4.contents.txt`, script outputs) rather than trusting the two earlier passes.

- Hash identities confirmed independently: v3 `3a1a0b30...de284` (`.sha256` file and script precheck), full input `a3e8a5db...79a8` (remote `sha256sum`), local/remote script match `18288668...4734e`, v4 `b0e146e0...da6c` from `v4.sha256`.
- Gate results confirmed: `gzip -t` exit 0; `excluded_count=0` (recomputed via grep on contents.txt); 8828 entries; archived `.in` hash equals full input; NTIMES/NtileI/NtileJ checks executed inside the script with `set -e`.
- First-run failure reconfirmed as gate-consistent: two TOC lines `ROMS_CoSiNE15/Projects/bye24/Build` and `ROMS_CoSiNE15/Projects/bye24/oceanM` were the only matches; after exclusion, none remain. The gate was not weakened — the tar command was changed instead.
- No contradiction found between passes 1 and 2 or with the Stage-67b plan. The claim "binary unaffected by runtime-only `.in` change" is consistent with the rule that `.in` is runtime input, and no compiler/link step was invoked.
- Pass 1 valid: yes — reads the exact script output, artifact hashes and failure cause.
- Pass 2 valid: yes — entry-count arithmetic (8830→8828), exclusion regex recomputation and manifest contents support the conclusions.
- Root cause proven: yes (v3 legacy example artifacts). Performance gain proven: N/A (no performance work). Scoring validity proven: N/A (no model run; v4 is packaging only).
- Reproduction required: no (packaging is deterministic; a rebuild/rerun is not authorized or needed solely for v4).
- Deletion: no model output may be deleted at next-task start; the `.gatefail_*` artifact is retained as evidence. v3 remains retained (superseded, not deleted).
