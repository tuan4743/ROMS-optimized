# Pass 3 - MPI overlap probe validity check

Status: **VALID**.

## Evidence integrity

- `sacct` confirms allocation `118369338` completed `0:0` in 11 seconds on four nodes with 128 allocated CPUs.
- Hash gates passed before compilation. Local raw `results.tsv` SHA-256 is `623f6eb7e9d1097a5c9d0555f625b5038df6291568380da4b3ceda644f3e13c3`; `summary.txt` is `1d3c9949d2358f18fa66e03c3d55506074975b271b6032d9fb7d1924d9d3a8c2`; remote `probe.raw` is `0bde0bd3...b7959`; final harness is `9268b5d7...83e8`.
- There are exactly eight result rows: two message/work sizes and four repetition counts. Both rep=1 cases report positive overlap.
- Failed jobs `118369309` and `118369327` have no audit roots and are correctly excluded.

## Arithmetic recheck

- Measured projection recomputes to `1.415094624 s`, `0.0660397%` of `2142.793 s`.
- Full communication ceiling recomputes to `7.997141664 s`, `0.3732111%`.
- O33 2% and 3% gates recompute to `42.85586 s` and `64.28379 s`.
- Since the candidate ceiling is below the gate by more than a factor of five, compiler-kernel mismatch or ordinary probe variance cannot reverse the decision.

## Workflow decision and lifecycle

- Result: asynchronous MPI progress is real on this platform, but the only clean O33 caller window cannot deliver a competitive whole-run gain.
- This is the second consecutive post-PLAN direction that fails the promotion gate: two-object AVX2, then caller-side halo overlap. Per the permanent rule, stop experiments and enter a new PLAN research cycle with internet searches, open-source projects, and China-prioritized papers.
- No ROMS source, binary, input, model output, or accuracy state changed. The 166-KiB audit remains retained. No deletion is applicable.

Final verdict: Pass 1 and Pass 2 are valid; the branch must stop before a ROMS build or model job.
