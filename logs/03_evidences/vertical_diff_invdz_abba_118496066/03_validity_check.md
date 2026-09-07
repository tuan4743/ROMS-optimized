# vdiff_invdz ABBA diagnostic 118496066 (2026-08-03)

## 03 Validity check

- Job `118496066` (replacement of harness-failed `118495850`): 4 nodes `j01r2n[16-19]`, 64 MPI x2 OpenMP, 8x8/8x8, 144/720, HCOLL off, dynamic rules, CCX rankfile; started 19:33, harness DONE 19:45 +0800.
- Harness sequence: all 11 hash gates HASH_OK; disk gate 67.4 GiB free; four `prepare_input` assertions (NTIMES/NtileI/NtileJ/DT/NDTFAST and 18 `output/` replacements) passed for each sample.
- Sample results (summary.tsv):
  | label | variant | real_seconds | rc | done | trajectory_sha |
  |---|---|---|---|---|---|
  | A1 | O33 | 125.407 | 0 | yes | fa498694...e44b0 |
  | B1 | O33_VDIFF_INVDZ | 128.334 | 0 | yes | fa498694...e44b0 |
  | B2 | O33_VDIFF_INVDZ | 127.601 | 0 | yes | fa498694...e44b0 |
  | A2 | O33 | 126.573 | 0 | yes | fa498694...e44b0 |
- Decision computation: mean_A=125.990, mean_B=127.968, gain=-1.5696%, both_B_faster=False, trajectory_consistent=True -> `STOP_BRANCH` (written to `decision.txt`).
- Cross-checks: predictor/corrector improvements (~1-3%) are smaller than the GLS regression (~22%) and 4D-halo regression (~7-10%); even a perfect trajectory-consistent best-case could not rescue the wall time. The rejected branch needs no further runs.
- The candidate is bitwise-equivalent (identical trajectory hash), so no numerical risk was introduced; but the change is a measured regression and is closed like `pmnreuse` (-1.80%) before it.
- Statutory gate status: no full-run, no half-day, no official `vali.py` run occurred; no accuracy claim is made. Retention: `118492146` (harness-only, 151 B), `118495850` (harness-only), `118496066` (full four-sample ABBA) all retained; no model output was deleted at any point in this stage.
