# Stage 72 - VTune hotspots collection: validity check

- Re-read evidence: Slurm `118418627` reports `FAILED 1:0`, elapsed `00:04:56`, nodes `j05r2n[11-14]`; the harness records `collect_rc=0`, `summary_rc=1`, `hotspots_rc=1`.
- The raw model log contains `ROMS/TOMS: DONE`; the model finished the intended diagnostic scope. It is not a full `2592/12960` run and has no NetCDF/official-validator obligation.
- The result root contains four node-specific VTune result directories and totals 473 MiB. A direct node-11 `vtune -report hotspots` report succeeds, demonstrating that the `.norun` markers and missing aggregate directory do not mean zero collection data.
- The error is reproducible and localized: the script expects `.../result`, while collection created `.../result.j05r2n11` through `.../result.j05r2n14`. It must be corrected before a future profiling run, but no rerun is authorized by this analysis.

Pass 1 valid: **yes** — raw job, collector, model completion and paths support the summary.

Pass 2 valid: **yes, with stated limit** — node-local hotspot data are readable; no global merged percentage or score-time inference is made.

Root cause proven: **yes**, for the Stage-71 nonzero wrapper exit (incorrect post-processing result path).

Performance gain proven: **no**.

Scoring validity proven: **not applicable**; this is an instrumented shortened diagnostic.

Reproduction required: **only if a new question needs merged/all-node attribution**; retain this data and fix the harness first.

Output deletion at the next task: **no**. Retain the latest VTune collection and all three valid analyses.
