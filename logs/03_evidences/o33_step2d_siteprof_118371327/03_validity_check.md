# O33 step2d site-profile validity check

## Pass 1: read and initial summary

- Exact private parent and variant paths are recorded.
- Parent/source/binary/input/rule/script hashes passed before the job.
- Job `118371327` completed `0:0` on the requested four-node 64-MPI x2-thread layout.
- Model reached DONE, both profiles exist, 128/128 expected site files exist, and NetCDF count is zero.
- Build/preparation incidents occurred before a model result and are not classified as optimization attempts.

Verdict: **VALID**.

## Pass 2: profiling result

An independent PowerShell parse of all 128 TSV files reproduced:

- Grid 01 uv mean/max `0.275789250/0.321879000 s`;
- Grid 02 uv mean/max `1.386586469/1.935634000 s`;
- combined mean `1.662375719 s`;
- maximum combined rank 63 `2.256610000 s`;
- full-scaled mean `29.922762938 s`, `1.396437404%`;
- full-scaled maximum `40.618980000 s`, `1.895609142%`;
- margin below the 2% gate `2.236880000 s`.

Call-count identities also recompute exactly: Grid 01 `12096/144=84`; Grid 02 `60480/720=84`; beginning-site counts are 85 per long step on both grids.

Verdict: **VALID**.

## Pass 3: validity of the first two passes

- Original and instrumented source retain the same six `mp_exchange2d` calls; the diff has 57 additions and zero deletions.
- The profiler does not modify physical grids, MPI tiling, integration/time steps, output settings, input/boundary/forcing/ecology files, ecology variables/module, or two-way nesting.
- `real 2m12.302s` is explicitly excluded from performance comparison because the binary is instrumented.
- No NetCDF exists, so the official validator was correctly not run. DONE proves execution completion but no new accuracy/scoring claim is made.
- Scaling by 18 is valid because both official NTIMES are exactly 18 times the diagnostic values and call counts are proportional to NTIMES.
- The maximum-rank calculation already assumes the entire ending-call time disappears; actual delayed grouping retains payload work, so rejection is conservative.
- Remote audit/build logs and the private profiling variant remain retained. No remote output was deleted.
- The partial local `Inputfiles` copy from the interrupted evidence download is not model output or result evidence; it is recoverably quarantined at `C:\Users\Fu Jiake\Documents\MCC\_quarantine\20260801_step2d_scp_inputfiles_partial`.

Final verdict: **VALID**. The exact delayed `ubar/vbar` grouping route is closed before candidate construction. This is ineffective direction 1 after the latest PLAN reset.
