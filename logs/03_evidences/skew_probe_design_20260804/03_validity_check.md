# Skew Probe Design — Pass 3 (Validity Check)

This pass re-verifies Passes 1–2 against the raw artifacts (remote filesystem, hashes, build logs, slurm outputs, retained model logs) rather than trusting the first two files.

## Independent re-checks performed (read-only over SSH `MCC`)

1. **Hash anchors** (re-read remotely this session):
   - parent `oceanM.O33_final` = `5f1a137e42252c9b978ad50ab344b9d6493f5e5afeeb71ed2d83f0a4228cfcb9` ✓ (matches frozen parent, all prior stages)
   - parent `ROMS/Utility/timers.F` = `c7407649...9312` ✓ (matches build script expectation `expected_parent_timers`)
   - diagnostic input = `05ceb746...7b21` ✓, `coll_rules.conf` = `0ef5b45a...ce473` ✓ (both match run-script expectations)
   - candidate `timers.F` (deployed = local draft) = `89384aaf...1c56` ✓; build/run scripts local = deployed byte-identical (SHA verified both sides) ✓
2. **Binary provenance** (the two prior build jobs ended at harness gates; reconstructed evidence):
   - `oceanM.O33_skew` = `3322eeaf85be7ac7cf5caaa46660d87fe0b030abfa2164855668d1b5a0c17aa7`, 6,916,600 B, mtime 14:07:51
   - `strings oceanM.O33_skew` → contains `skewprobe/rank` (exact `grep -q` rc=0) and the `$SKEWFILE` symbol — probe code is compiled and linked in
   - mtime chain consistent: `timers.f90` 14:07:50 → `timers.o` 14:07:50 (29,056 B; parent 24,552 B; SHA differs `4c80bb5f...` vs `1336e461...`) → `libUTIL.a` 14:07:51 (4,031,368 B vs parent 4,026,864 B) → `oceanM` 14:07:51
   - source gate: `source_tree.diff` = exactly 1 line (`ROMS/Utility/timers.F`); `timers.patch` adds lines only (no `-` removal lines)
   - spot-check: `pre_step3d.o`, `step3d_t.o`, `mp_exchange.o`, `distribute.o`, `nesting.o`, `gls_corstep.o`, `biology.o`, `step2d.o` all byte-identical to parent ✓
   - conclusion: the existing binary is the probe build; no functional dependency on the missing `build_metadata.txt`
3. **Harness failure classification**: `118532196` FATAL at the multi-file diff gate and `118532486` FATAL at the strings gate both occurred under two overlapping builds of the same tree (same platform pattern as Allgatherv duplicate build `118206252`). Neither produced a model sample or timing; both are harness artifacts, not candidate results, and do not increment the ineffective-attempt counter.
4. **`analyze_skew.py`**: end-to-end run on a synthetic two-run dataset (64 ranks, 2 grids, compute + Message Passage regions): all five output sections produced; region-name filter verified against real region names in retained Stage-90 `A2/model.log` (`Message Passage: 2D/3D/4D halo exchanges`, `data broadcast`, `data scattering`, `point data gathering` — all start with `Message Passage`). Parser format matches FORMAT `4(i6,1x),f16.6,2x,a`.
5. **Run harness sanity**: base input asserts NTIMES=144/720 and 8x8/8x8 (verified content-assert in `prepare_input`); expected trajectory `fa498694...e44b0` matches every prior O33 144/720 diagnostic (Stages 85/90); probe fires only at finalize after all physics, so bitwise neutrality is structural and additionally enforced by the run's trajectory gate; expected `nc_count=0`.
6. **Platform/coordination snapshot at resume** (read-only): queue contains only teammate `118533083` (`zya`, `ntile_abba_ompk`, running, j01r2n[08-11]) — untouched; `/public` 71% used, 18P free; home quota recheck pending at submit time. Stage-90 run dir and build tree retained; no output deleted.

## Contradictions checked

- No contradiction between Pass 1's "two failed builds" and Pass 2's "binary usable": the failures were gates before/around a race; the settled tree and binary are internally consistent (point 2) and the run harness re-verifies the binary by SHA at execution time.
- No contradiction on units: Pass 2 explicitly re-derives cpu_time semantics from `Build/mp_routines.f90` + makefile (`USE_OpenMP` empty), consistent with Stage-88 correction, and treats wait-pool CPU≈wall only under documented busy-poll behavior.
- No contradiction on the plan gate: plan.md Stage-90 item 3 asks for the probe *before any candidate*; this design analysis is exactly that gate step; item 3's "arrival timestamps" intent is met by the aggregated per-rank wait distribution with an explicit staged `[P2]` fallback for literal timestamps, justified by perturbation risk at the measured sync point.

## Verdicts

- Pass 1 valid: **yes** — facts re-derived from remote artifacts, not filenames; limitations stated.
- Pass 2 valid: **yes** — methodology, thresholds, region roles and decision mapping are internally consistent and grounded in measured Stage-90/88 evidence; synthetic end-to-end run of the analyzer succeeds.
- Root cause of the skew: **not yet determined** (that is the probe's job, not this design's).
- Performance gain or scoring validity: **none claimed**; this stage is diagnostic-only by design.
- Reproduction required: **no** — no model measurement exists yet; the run will be a fresh diagnostic.
- Deletion status: **no output may be deleted**; the candidate tree with the verified probe binary is required by the run harness.

## Gate decision

The skew-probe design is **APPROVED** for execution: one diagnostic build is already complete and verified (binary `3322eeaf...`), the run harness is ready as written, and submission becomes authorized for a single `144/720` 4-node/64-MPI×2-OpenMP job once the user confirms, with a fresh `squeue`/`df` recheck and the teammate job left untouched. All Stage-90/91 closures (no `[O34]` revival, no `step2d` OpenMP, no candidate without this probe's evidence) remain in force.
