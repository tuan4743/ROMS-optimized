# 03_validity_check — [S32-BcastHier] ABBA

## Pass 1 valid: yes

Re-read `decision.txt` / `summary.tsv` / `harness.log` under
`/public/home/fujiake/fjk/mcc_runs/118775392_s32_bcasthier_abba_sample`.
Hashes gated; all five legs `ROMS/TOMS: DONE`; libimf 2017 on A and B.

## Pass 2 valid: yes

Gain −0.0861% and `both_B_faster=False` are arithmetic from the four scored reals.
Trajectory sha identical across legs.

## Proven

| claim | status |
|---|---|
| Binary differs only by distribute hierarchical bcast | yes (build/patch evidence) |
| Bit-identical trajectory | yes |
| ≥2% wall gain | **no** |
| Scoring validity | N/A (STOP before vali) |

## Reproduction

Not required. Output may be deleted at next-task start after gate script if user does not request retention.

## Next

Third consecutive STOP on S32 (119/120 compiler, 122 BcastHier) → return to research cycle before any new A-B-B-A.
