# Pass 3 - Independent validity check

Date: 2026-08-01

## Independent raw-evidence checks

- Slurm accounting re-read: job `118365261` and all four mpirun steps completed `0:0`; job nodes are `j05r2n[12-15]` and allocation is 128 CPUs.
- Remote/local hashes match for `summary.tsv` (`f163db0e...a0aa`), `decision.txt` (`c8086df4...3e2`), `harness.log` (`ea51442e...c1a8`) and rankfile (`2e7353e8...6b89`).
- Every model-log SHA and trajectory SHA matches `summary.tsv`.
- Every log contains one DONE marker, exact 144/720 configured ranges and two final grid profiles.
- All four generated inputs are byte-identical after normalizing only their unique absolute output directory; normalized SHA-256 is `17ee55b1fda8116f48aee0769426a7671c46ea1787231ef5028561dd4a13fdbe`.
- Harness gates confirm the exact A/B binaries, candidate source, input, collective rules, validator and script hashes before A1.
- Candidate source has exactly four remaining `Arecv=0.0_r8` sites; only the two reviewed aggregate sites differ from O33.

## Contradiction and boundary checks

- The decision file's mean calculations reproduce from the four raw `time real` values: A `127.341 s`, B `129.035 s`, `-1.3303%` gain.
- The identical trajectory hash is consistent with no printed numerical divergence, but it is not a substitute for official NetCDF RMSE validation.
- Zero NetCDF files are expected for this diagnostic scope. Therefore no accuracy PASS and no scoring validity can be claimed.
- Short-run A variability is 3.6846%; this prevents a confident claim that B is intrinsically 1.3303% slower. It does not create evidence that B is faster.
- Missing `data gathering` profile rows and mixed secondary timers independently support stopping rather than escalating to a full run.

## Validity verdict

- Pass 1 valid: **yes**. Identity, completion, timings and limitations match raw evidence.
- Pass 2 valid: **yes**. Profile observations and the no-gain conclusion are supported; causal claims are appropriately withheld.
- Root cause proven: **no**.
- Performance gain proven: **no**.
- Printed trajectory consistency: **yes**.
- Official accuracy/scoring validity: **not tested**.
- Reproduction required: **no**; the predeclared below-2% gate closes the branch.
- Full run authorized: **no**.

Final validity: **VALID** for the `STOP_BRANCH` diagnostic decision.

Output deletion: not now. Retain `/public/home/fujiake/fjk/mcc_runs/118365261_o33_nrz_abba_sample`. It may be considered only when a later task begins and the exact deletion gate is rechecked.
