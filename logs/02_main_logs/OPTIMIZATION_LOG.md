# MCC 2026 Final ROMS-CoSiNE Optimization Log

## 2026-08-01 - O33 hot-object ifort optimization-report audit

- Date: `2026-08-01 19:34 +0800`.
- Slurm step: `118367159`, `COMPLETED 0:0`, node `j05r2n10`; report-only compile wall time `20.770 s`.
- Local script: `C:\Users\Fu Jiake\Documents\MCC\决赛\02_优化工作区\ROMS_CoSiNE_final_20260727\experiments\ifort_optrpt_20260801\run_o33_hotspot_optrpt.sh`.
- Remote script: `/public/home/fujiake/fjk/agent_tmp/isolated/scripts/ifort_optrpt_20260801/run_o33_hotspot_optrpt.sh`; SHA-256 `ffe1ea86bc6b5029d797ce2d88cf3bc33a5eff3a87bbc9846d9cc1073793ac61`.
- Immutable inputs: exact O33 preprocessed `Build/pre_step3d.f90` SHA-256 `e6b99adffc14988208a0a81c2a47b9a2b13b14474ecdc5baafc57c6ee9cdaf25`; `Build/step3d_t.f90` SHA-256 `2d5466f0f1d3da088777d4590a38eaad7d31e427e84081555b8eecb1b7903d93`.
- Optimization content: no source change. Recompiled only these two exact preprocessed files with the O33 baseline flags plus `-qopt-report=5 -qopt-report-phase=vec,loop,openmp`; no link and no model run.
- Remote audit path: `/public/home/fujiake/fjk/agent_tmp/isolated/audits/o33_ifort_optrpt_20260801`.
- Report results: `pre_step3d.optrpt` SHA-256 `8260409fbf08d6ed2edb8a05a49cf2134918e7d921ac5bfd6eafccd9417430d8` (2367 lines); `step3d_t.optrpt` SHA-256 `163ea750b33517625aecc0a70b0363c759865242ad686cefc65c53daa71b4c8f` (1591 lines).
- Non-transformative check: regenerated `pre_step3d.report.o` SHA-256 `735e892c57e476a3bae392773091b2492ddf722fa6c82a2765271bc0d793d71d` and `step3d_t.report.o` SHA-256 `d37d883a06545c7cc1738debe3d6204947c533bf5376766b144233ec26efe1da` are byte-identical to the archived O33 objects.
- Initial result: current code already vectorizes many inner loops, but uses vector length 2 and reports substantial non-unit-stride/unaligned traffic plus conservative dependence assumptions. This is static evidence only; no speedup or accuracy claim is made.
- Output lifecycle: this stage created no model output or NetCDF file. Previous diagnostic logs remain retained; deletion is not applicable.
- Next gate: parse loop-level evidence, then compile-screen a small bounded set of legal flags. A model job is allowed only if a candidate plausibly exceeds the established 2% whole-run static gate.

### Compile-screen harness correction

- Failed preflight job: `118367480`, node `j05r2n10`, exit `1` before the first compile.
- Cause: the node's Bash plus `set -u` rejected expansion of the empty baseline extra-flags array at script line 62.
- Correction: explicitly branch the zero-extra-flag baseline and append optional flags only when the array is non-empty.
- Result boundary: no candidate object, link, model execution or NetCDF output was created; this harness failure is not an ineffective optimization result.
- Postprocessing note: the first summary invocation was rejected by the login node's Python 3.6 because the parser used newer annotation syntax. The parser was converted to Python 3.6-compatible syntax; compiled objects and reports were not regenerated or changed.

## 2026-08-01 - Bounded ifort flag screen for two O33 hot objects

- Date: `2026-08-01 19:49 +0800`.
- Successful job: `118367570`, `COMPLETED 0:0`, node `j04r2n00`, elapsed `00:01:30`; report/compile script shell real `94.197 s`.
- Hardware: Hygon C86 7185, 32 physical cores, four NUMA nodes; CPU flags include AVX2 and FMA.
- Script: `/public/home/fujiake/fjk/agent_tmp/isolated/scripts/ifort_optrpt_20260801/run_o33_flag_screen.sh`; corrected SHA-256 `d09192174511f32b31f68b9873520d8ea9358cba3329c75e6f2d70271f162de0`.
- Output path: `/public/home/fujiake/fjk/agent_tmp/isolated/audits/o33_ifort_flag_screen_20260801`.
- Optimization content: compile-only screen of baseline, `-align array64byte`, `-vec-threshold0`, streaming stores `never/always`, `-march=core-avx2`, and AVX2+alignment for exact O33 `pre_step3d.f90`/`step3d_t.f90`. No source modification, link or model run.
- Evidence: `manifest.tsv` SHA-256 `496a7e3a78fbf3ccc937904fa9321deb24c42650c33f24ab7a2986d3bf251b41`; `candidate_summary.tsv` `1e605fa2b9c5f2b6795c8d0584d8689d3e8c8a10ee2175290bfac741d7c65729`; `flag_screen_summary.json` `df7185c6d7e60f7644e04666e1854b1435eef25be382bb64a3a99bf9ea181a45`.
- Rejections: streaming-store `never` is byte-identical to baseline; alignment leaves report/disassembly metrics unchanged; vector threshold adds only 2/3 vectorized remarks without 256-bit code; forced streaming stores add 79/61 non-temporal stores to temporally reused arrays and have no safe 2% static case.
- Promoted candidate: `-march=core-avx2` on only the two objects. It changes vector length predominantly from 2 to 4, creates 1179/728 YMM instruction lines and 180/113 FMA lines, and raises report-only mean potential loop speedup from `1.603/1.676` to `2.440/2.512`.
- Interpretation boundary: ifort potential-speedup estimates are not measured runtime. Hygon's native 256-bit throughput and the prior accuracy-sensitive global O1 bundle make realized benefit uncertain.
- Decision: build one isolated two-object AVX2 binary with `-fp-model precise`, no alignment/prefetch/global-flag change, then allow exactly one diagnostic A-B-B-A allocation. Do not run half-day/full unless matched diagnostic gain reaches the existing gates.
- Output lifecycle: no model output or NetCDF file was created or deleted in this screen.

### AVX2 candidate build causality gate

- Initial build job `118367813` reached the private copied tree and verified all parent/screened hashes, then exited `2` at the dry-run gate before `make` or link.
- Reason: the legacy make dependency graph wanted to recompile `rhs3d.f90` and `main3d.f90` in addition to updating the archive/link, which would confound the two-object experiment.
- Preserved private partial path: `/public/home/fujiake/fjk/agent_tmp/isolated/work/o33_avx2hot_abba_20260801/ROMS_CoSiNE15`; 138M. Its `oceanM` and `Build/libNLM.a` remained byte-identical to O33, while only the standalone pre/step objects hold screened AVX2 code.
- Corrective plan: replace exactly those two existing members in the copied `libNLM.a`, verify the archive member list is unchanged, and execute the exact audited link command. No Fortran source is to be compiled.
- Result boundary: no candidate binary or model output was produced by job `118367813`; this build-preflight failure is not an ineffective optimization result.

### Two-object AVX2 candidate relink completed

- Job `118368020`, `COMPLETED 0:0`, node `j05r2n10`, elapsed `00:00:03`.
- Script: `/public/home/fujiake/fjk/agent_tmp/isolated/scripts/ifort_optrpt_20260801/relink_o33_avx2hot.sh`; SHA-256 `4c0951cb9b0c8bd9e755cd5860ceb574b503464d4e699b490185a837da9c3d8d`.
- Candidate tree: `/public/home/fujiake/fjk/agent_tmp/isolated/work/o33_avx2hot_abba_20260801/ROMS_CoSiNE15`.
- Candidate binary: `oceanM.O33_avx2hot`, SHA-256 `c061e82aca104828416f35bfd42b1b1a38a30ffdd40f5be3532347b6d73e7973`.
- Causality: replaced only existing `pre_step3d.o` and `step3d_t.o` archive members. `libNLM.a` member list is 67 lines and byte-identical before/after as a name/order list (SHA-256 `23de44b3...dd`); no Fortran source was compiled.
- Build evidence: metadata SHA-256 `2ee3b2a3add99df0596f254ed5ad0e2cad20734badfd058b4174ba94e24e6055`; changed-object list `610f7ffab1911e9e739a139c912d0a0e2a3f1024c78d160eaef967ca732e386b` with exactly two lines.
- Static/runtime boundary: binary links and all libraries resolve; no model run, performance result, NetCDF or accuracy result yet.
- Next: exactly one unchanged-layout 144/720 A-B-B-A diagnostic against parent O33.

### Two-object AVX2 A-B-B-A submitted

- Job `118368098` (`fjk_O33_AVX2_ABBA`) submitted with no dependency.
- Resources/layout: queue `kshcexclu06`, four nodes, 64 MPI ranks x 2 OpenMP threads, 16 ranks per node, exclusive 128 CPUs, unchanged 8x8/8x8 tiles.
- Diagnostic scope: unchanged physics/grid/time step/output settings; organizer-permitted shortened `NTIMES 144/720`; A1-B1-B2-A2 in one allocation; no NetCDF output expected.
- Run script: `/public/home/fujiake/fjk/agent_tmp/isolated/scripts/ifort_optrpt_20260801/run_avx2hot_abba.slurm`, SHA-256 `83b358ffbb740c1df91d09ded8658098e289a1ff99f45a2449385ae9dbecf82f`.
- Submit wrapper SHA-256 `addea3ab03bc221ef44052dc93b57b357c8f3af22f50391fc37985fc88199488`.
- Expected retained run root: `/public/home/fujiake/fjk/mcc_runs/118368098_o33_avx2hot_abba_sample`.
- Gate: stop below 2%; review 2-3%; only at least 3% with both B runs faster and matching printed trajectory permits consideration of one full run. No full run is currently authorized.

### Diagnostic input-link correction and resubmission

- Job `118368098` failed `2:0` after four seconds on `j05r2n[14-17]` before A1/model launch because the copied candidate tree lacked `Inputfiles`.
- Read-only check confirmed the path was absent, not a directory or retained output. Added only the required private-tree symlink `/public/home/fujiake/fjk/agent_tmp/isolated/work/o33_avx2hot_abba_20260801/ROMS_CoSiNE15/Inputfiles -> /public/home/fujiake/Inputfiles`.
- The failed root `/public/home/fujiake/fjk/mcc_runs/118368098_o33_avx2hot_abba_sample` is retained as preflight evidence; it contains no model timing or NetCDF output and is not an ineffective optimization attempt.
- Corrected job `118368170` submitted with the exact same script/hash, binary hashes, resources, tiles and diagnostic scope. No full run is authorized.

## 2026-08-01 - O33 two-object AVX2 diagnostic closed

- Job `118368170`, `COMPLETED 0:0`, elapsed `00:08:42`, nodes `j05r2n[00-03]`; four nodes/64 MPI x 2 OpenMP/8x8 tiles/diagnostic 144/720.
- Retained run root: `/public/home/fujiake/fjk/mcc_runs/118368170_o33_avx2hot_abba_sample`, `1.4M`, zero NetCDF files.
- Timings: A1 `129.238 s`, B1 `131.404 s`, B2 `132.009 s`, A2 `125.155 s`; mean A `127.1965 s`, mean B `131.7065 s`.
- Result: gain `-3.545695%`; both B runs are slower than both A runs; all runs reached DONE and share trajectory SHA-256 `fa498694...e44b0`.
- Profile result: total rank-time regresses `3.719-3.720%`. The directly targeted `pre_step3d + step3d_t` timers improve only `0.389%` across both grids, far below the `8.2%` static gate. GLS timers increase about `22%`; this is an interaction/timing observation, not proof of changed GLS code.
- Decision: `STOP_BRANCH`. Do not use the AVX2 objects in the submission binary; no half-day/full run and no official validation.
- Raw evidence: `summary.tsv` SHA-256 `5fa2aee113e022269f4c9d224bcd45ba7a5b7a86c81ef4add60d20be3abb132e`; `decision.txt` `135b7f7cd6562f38639254afa86af069170051fa4e4d78b95956423809b54ab2`; `harness.log` `6455f924e9e2c39785c270545eb9af8e8ae7d4a869dd6e4a713c2568dbc79cf1`.
- Three valid analyses: `analysis/o33_avx2hot_abba_118368170/01_read_summary.md` SHA-256 `3707b475...d4b6`; `02_profiling.md` `8dd85610...5c02`; `03_validity_check.md` `889a35e2...78a8`.
- Lifecycle: passes 1 and 2 are independently valid; this is one ineffective runtime direction after the PLAN reset. Latest result and preflight-failure root remain retained; nothing was deleted.
- Next method: constrained parameter DOE only—static/hash elimination, one-factor diagnostic A-B-B-A, then full validation only after the 3% gate. AVX2, alignment-only, vector-threshold and streaming-store variants from this screen are closed.
- Skill synchronization: main workspace and installed `mcc26-roms-cosine-handoff` each contain the same 10 relative files with zero hash differences; progress/plan/evidence/project-structure hashes match. Frontmatter name/description checks pass.
- Skill validator boundary: both default and bundled Python lack PyYAML, so `quick_validate.py` could not execute. This is recorded as a validator-dependency limitation; file-set/hash/frontmatter validation succeeded.
- Queue boundary at final analysis: teammate job `118368357` (`nan_O48_1day`) was running; it was not touched and no further job was submitted.

本日志仅记录本决赛题。初赛 MCC26 C++/HIP 项目的性能数据和验证结果不得作为本题证据。

## 2026-07-30 - Organizer resource, benchmark, NTIMES, and DCU clarification

- Date received: 2026-07-30
- Source: user-provided verbatim group notice; retained as organizer-level rule/target evidence.
- Resource rule: queue `kshcexclu06`; 32 cores per node; maximum four nodes/128 CPU cores per team; full 128-core use is not mandatory.
- Organizer reference: current best reported as four nodes/64 cores, `01:50:06`. Exact duration is about 110 minutes, so the user's shorthand “90min左右” is not used as the precise record.
- Attribution boundary: no job ID, source/binary hash, input hash, or validator artifact accompanied the notice. Treat `01:50:06` as an external target, not this workflow's measured/validated result.
- Debug rule: proportional `NTIMES` changes are allowed for debugging—full three days `2592 12960`, one day `864 4320`, half day `432 2160`, or another proportional pair.
- Final boundary: final scoring still requires the complete three-day `2592 12960` integration and official validation; shortened runs are diagnostic only.
- Accelerator rule: DCU is not supported for this final because the physical calculation scheme cannot be changed.
- Shared reference path: `/public/share/mcc2026_final/mcc2026_source`, read-only under this workflow.
- Skill synchronization: rules, project structure, progress, plan, and evidence index updated with this notice.
- Skill installation check: five references were initially copied to the Skill root during synchronization; they were immediately copied to `references/`, the five misplaced duplicates were removed, and the final root/file hashes and frontmatter were validated. No project source, run, or model output was affected.
- Three analyses: `analysis/organizer_notice_20260730/{01_read_summary,02_profiling,03_validity_check}.md`; all three valid. The external `6606 s` target requires a further `28.6590%` reduction (`1.401718x`) from validated job `118169717`.
- Model output deletion: none; unrelated valid/reproduction outputs remain retained.

## 2026-07-30 - Reproduce validated original-source GCC result

- Date: 2026-07-30
- Job: `118196481` (running at last check).
- Script: `/public/home/fujiake/fjk/ROMS_CoSiNE15_codex_20260727/experiments/toolchain_bisect_20260729/rerun_original_gcc731_64.slurm`.
- Script SHA-256: `e822d80c4f1a094051cfc9b6bb274c058be25bc77fe93be7974cbece64434144`.
- Run path: `/public/home/fujiake/fjk/mcc_runs/118196481_original_gcc731_noomp_64_8x8_repro`.
- Change: none; exact reproduction of validated job `118169717` using the same binary, input, modules, two-node/64-MPI/8x8 layout, full cold start, and output schedule.
- Start state: running on `j05r2n[12-13]`; model log and metadata created without immediate error.
- Storage gate: `87G` free before submission, sufficient for an additional expected 8.5G output.
- Output lifecycle: previous valid output `/public/home/fujiake/fjk/mcc_runs/118169717_original_gcc731_noomp_64_8x8/output` is intentionally retained for variance comparison; nothing deleted.
- Skill synchronization: reproduction job, path, and active plan recorded after submission.

## 2026-07-30 - Original-source GCC full run completed; pass 1

- Date: 2026-07-30
- Job: `118169717`
- Run path: `/public/home/fujiake/fjk/mcc_runs/118169717_original_gcc731_noomp_64_8x8`
- Change: compiler/toolchain only, original passing sources, GCC 7.3.1 + HPC-X 2.7.4, no OpenMP; two nodes, 64 MPI, 8x8 tiles, full cold-start input.
- Result: Slurm `COMPLETED 0:0`; `ROMS/TOMS: DONE`; 16 NetCDF files, `8.5G`; shell `real 9259.75 s`.
- Comparable Intel baseline: `10383.89 s`; provisional reduction `1124.14 s` (`10.8258%`, `1.121401x`). Accuracy remains unverified.
- Pass 1: `analysis/toolchain_run_118169717/01_read_summary.md`.
- Output lifecycle: retained; no deletion is allowed before profiling, official validation, pass 3, and a later task start.
- Skill synchronization: added the permanent rule to update `$mcc26-roms-cosine-handoff` after every stage advance; synchronized completion state, plan, and evidence index to the workspace package and installed Skill with hash checks.

### Pass 2 profiling

- File: `analysis/toolchain_run_118169717/02_profiling.md`.
- Comparable full-run result: shell time and ROMS summed CPU both improve about `10.8%` versus Intel job `117981144`.
- Main reductions: Grid 01 point gathering `-18.54%`; Grid 02 `step2d -31.20%`, GLS `-29.04%`, tracer corrector `-21.47%`, point gathering `-18.23%`.
- Remaining bottleneck: Grid 02 data gathering is essentially unchanged (`+0.11%`) at about `162807` summed rank-seconds.
- Regressions: Grid 02 biology `+48.13%`, 4-D halo exchange `+4.12%`, and output writes increase; total runtime still improves.
- Evidence boundary: one run per compiler; performance is not yet reproduced and accuracy remains unverified.
- Output lifecycle: retained; no deletion.

### Official validation and pass 3

- Validation job: `118196173`, `COMPLETED 0:0` in `00:00:17`.
- Official validator SHA-256: `97230e0b0dd4533a4000155bd691c81d243bdc45c24e6ceaeb09ffa6b1bb878a`.
- Result: all official checks pass. Dongsha `u RMSE=0.000057 <= 0.000060`.
- Pass 3: `analysis/toolchain_run_118169717/03_validity_check.md`.
- Three-pass verdict: passes 1, 2, and 3 valid; official accuracy valid; performance variance not yet characterized.
- Root-cause decision: GCC 7.3.1 alone is not sufficient to reproduce the inherited `u=0.000067` failure. Move to the original-source-GCC reproduction, then source-level bisection beginning with sparse nesting's donor-side averaging and floating `mp_sum`.
- Output lifecycle: retain the 8.5G output because it is the latest valid result required for reproduction. No deletion at the next task start.

## 2026-07-29 - Project handoff Skill package

- Date: 2026-07-29
- Installed Skill: `C:\Users\Fu Jiake\.codex\skills\mcc26-roms-cosine-handoff`
- Workspace package: `C:\Users\Fu Jiake\Documents\MCC\skill-packages\mcc26-roms-cosine-handoff`
- Content: mandatory rules, project/source structure, confirmed progress and evidence, active decision plan, job/hash index, three-pass analysis template, read-only remote-status script, and read-only output-deletion gate.
- Result: `skill-creator` standard `quick_validate.py` returned `Skill is valid!`; all 10 installed files matched the workspace package by relative path and SHA-256.
- Script tests: `status.ps1` successfully inspected running job `118169717`; `check-output-deletion-gate.ps1` correctly denied deletion with exit `72` because the current task's three analysis files do not yet exist.
- Safety: the Skill contains no deletion command. The temporary PyYAML validation dependency was removed after validation; the installed Skill and workspace package were retained.
- Runtime boundary: job `118169717` remained in progress during packaging. `references/progress.md` is a timestamped snapshot and instructs future agents to refresh dynamic state before making claims.

## 2026-07-29 - Latest team-log retention and evidence audit

- Date: 2026-07-29
- Source log: `C:\Users\Fu Jiake\Documents\MCC\MCC26决赛.md`
- Source mtime: `2026-07-29T09:41:10`
- Source size: `16725` bytes
- Source SHA-256: `a54163834d21ea1d861c6c698009823516ca686149d314d23485819f7a7711e9`
- Action: read-only retention and evidence audit; no source edit, model submission, cancellation, or output deletion was caused by this audit.

### Retained optimization ideas and observations

- NUMA/CCX-aware MPI placement is reported as the largest historical runtime lever.
- The team log identifies bidirectional-nesting collectives, `RESHAPE`/temporary-array traffic, MPI progress/wait, tile load imbalance, 17-tracer 3-D work, and memory bandwidth as major bottlenecks.
- Candidate families retained for controlled testing include sparse nesting communication, z-weight/flux work reuse, contact batching, hierarchical broadcast, HCOLL, and staged OpenMP in biology/GLS/`pre_step3d`/`step3d_t`.
- Negative-result warnings retained: `Sendrecv`, incomplete `Isend` conversions, persistent requests with saved allocatables, and exchange double-buffering regressed in the reported short tests.

### Evidence conflicts and required status corrections

- The team log calls v24a's full RMSE validation successful while also recording Dongsha `u` above threshold. Under the contest validator this is a failure, not a pass.
- Confirmed official results in this workflow: v22, v24a, and v31 all fail the same Dongsha `u` check (`0.000067 > 0.000060`). They are fast candidates, not valid scoring baselines.
- The team log attributes `38:15.90` to v24a, while the retained v24a full result is `38:48.79`; the independently observed v31 LTO result is `38:16.69`. Version/time attribution must be resolved by job ID and hashes before reuse.
- HCOLL's reported 2-3% gain comes from shortened ABBA evidence in the source log; a completed, officially validated full run was not established there.
- The statements that the original `Irecv -> Send -> Wait` pattern is preferred and that the current baseline already uses `Isend + Waitall` require exact-version qualification; they must not be merged into one baseline claim.
- Empty profile-table sections in the team log do not independently substantiate the stated Bcast, Allreduce, or hotspot percentages.

### Retention verdict

- Retain the optimization directions and negative-result lessons as hypotheses/history.
- Do not promote any candidate to `valid` without an exact source/binary hash, full official input, `time real`, complete output, and official validator pass.
- Current isolation task remains job `118169717`: original passing source, GCC 7.3.1, no OpenMP, 64 MPI ranks. Its purpose is to distinguish toolchain effects from optimized-source effects.
- Output lifecycle: no output was deleted during this retention task.

## Stage 0 - Read-only takeover and compliance audit

- Date: 2026-07-27
- Local workspace: `C:\Users\Fu Jiake\Documents\MCC`
- Remote SSH alias: `MCC`
- Remote account: `fujiake@cancon.hpccube.com:65023`
- Action type: read-only inventory; no remote edits, builds, job submissions, cancellations, or deletions

### Paths audited

- Public archive mirror: `/public/share/mcc2026_final/ROMS_CoSiNE15.tar`
- Public run-script copy: `/public/share/mcc2026_final/sub.sh`
- Public validation-script copy: `/public/share/mcc2026_final/vali.py`
- Public validation reference: `/public/share/mcc2026_final/output/`
- Stable extracted source candidate: `/public/home/fujiake/fjk/ROMS_CoSiNE15`
- Concurrently modified teammate copy: `/public/home/fujiake/nan/ROMS_CoSiNE15`
- Historical profiler artifacts: `/public/home/fujiake/nan/mcc_perf/perf_out/`

The path announced in the problem statement, `/public/home/mcc2026_final/mcc2026_source`, was not readable by this account during the audit because `/public/home/mcc2026_final` had mode `0700`. The readable `/public/share/mcc2026_final` mirror is used only as a current audit anchor; organizer confirmation is still required if the two locations are expected to be identical.

### Baseline anchors and hashes

| Artifact | SHA-256 | Result |
|---|---|---|
| Archive member `ROMS_CoSiNE15/ROMS/External/ocean_SCS_Dongsha60_bio15.in` | `e80a59934cedeeb828aaba6e1361eb8789712b1333ea32f8ecd07b83d388d602` | Matches the `fjk` extracted copy |
| Archive member `ROMS_CoSiNE15/makefile` | `468daaebbd4e392de3aeb63abb292cf46eb0288c1bf3f9d073f11aed4721ce9c` | Matches the `fjk` extracted copy |
| Archive member `ROMS_CoSiNE15/Compilers/Linux-ifort.mk` | `a583989b72332e261b604daa8d63918d017677ff163213df8ec68ff7c14d1a8b` | Matches the `fjk` extracted copy |
| `/public/share/mcc2026_final/vali.py` | `97230e0b0dd4533a4000155bd691c81d243bdc45c24e6ceaeb09ffa6b1bb878a` | Byte-identical to the `nan` copy |
| `/public/share/mcc2026_final/sub.sh` | `a6c3d2645b2db769f351c891919b79b2e543e589ac42b20d926dcc109f604893` | Example script; not yet accepted as a compliant timing script |

Original archive input tiling is `NtileI == 4 4` and `NtileJ == 8 8` for the two grids. This is the only configuration area the contest statement explicitly allows changing.

### Historical run evidence (not a current validated baseline)

- Job ID: `117845239`
- Work tree: `/public/home/fujiake/nan/ROMS_CoSiNE15`
- Nodes: `j05r2n14,j05r2n15`
- Allocation: 64 MPI ranks, 64 CPUs, 2 Slurm nodes
- Slurm elapsed: `02:55:12`
- Shell `time real`: `175m10.521s`
- Model completion: log ended with `ROMS/TOMS: DONE`
- Model input: cold start (`nrrec = 0`)
- Output size: approximately 8.5 GiB
- Validation: `UNVERIFIED`; the copied `vali.py` still contained a placeholder `dir_test`
- Profiling caveat: the run included a 120-second `perf` attachment to one rank and was executed across two nodes

The ROMS internal aggregate profile for this run reported message-passing totals of about 32.35% for Grid 01 and 40.32% for Grid 02. The PMPI summary reported large Allreduce/Allgather costs. These figures are profiling evidence for this exact two-node run only; they are not a single-node baseline and do not establish a source-level optimization result.

### Concurrent-work and storage findings

- The `nan` parameter file changed during this read-only audit (mtime `2026-07-27 16:01:02 +0800`), so that tree is not a stable baseline. The live copy used `NtileI == 8 8`, `NtileJ == 8 8`, and shortened `NTIMES == 432 2160`; the archive baseline is `NtileI == 4 4`, `NtileJ == 8 8`, and full `NTIMES == 2592 12960`. Shortened `NTIMES` is suitable only for profiling and is forbidden for a scored or accuracy run. A saved full-input snapshot also exists at `/public/home/fujiake/nan/mcc_perf/.mcc_opt/inputs/ocean_64_8x8.in`.
- Active jobs belonged to separate work trees under `/public/home/fujiake/feng/...` and `/public/home/fujiake/lsd/...`; they were not modified or interrupted.
- Visible partition `kshcexclu06` exposes 32 CPUs per Slurm node and no GRES/DCU. On 2026-07-27 the user confirmed that the organizer's “single machine” wording was incorrect: the effective CPU limit is four Slurm nodes, or 128 CPU cores on this partition. Therefore 2-node and 4-node runs are allowed; earlier suspicion that they violated the node-count rule is withdrawn. No DCU partition was visible in the current account during this audit.
- `/public/home` had approximately 6.7 GiB free at audit time, less than one full 8.5 GiB output set. No new full-output experiment should be launched there without a storage plan.

### Source audit and first candidates

The compute-source subtrees in `nan` and the hash-matching `fjk` archive extraction were identical for `ROMS/Nonlinear`, `ROMS/Utility`, `ROMS/Modules`, `ROMS/Drivers`, `ROMS/Programs`, `ROMS/Include`, `User`, `Master`, and `Projects`. The audited hot files were also identical:

| File | SHA-256 |
|---|---|
| `ROMS/Nonlinear/nesting.F` | `9e9e7f3b2acbcc54ad5199bbb52c0d1e7425c4fdfa946c5f938cb41bea807c12` |
| `ROMS/Utility/distribute.F` | `f03d0175a421510bcb237351dd8c9cef04e1cf95f1713680921423f111342977` |
| `ROMS/Utility/mp_exchange.F` | `c66ab7bb6a855ab319a886f6ace110429b204efb26aa1aaf0785ff28a38e577a` |

The current code is pure MPI. `makefile` rejects simultaneous MPI and OpenMP, so hybrid MPI+OpenMP is not an immediate configuration toggle.

Profile-guided mechanical candidates, in proposed order:

1. Remove redundant whole-buffer `Arecv=0` before `MPI_Allgather` in `ROMS/Utility/distribute.F`; the collective overwrites the complete receive range. Preserve zero padding in `Asend`.
2. Add `EXIT` after the unique vertical interval match in the three `z_weights` searches in `ROMS/Nonlinear/nesting.F`, after proving donor depths are monotonic for this model and retaining the original arithmetic expression.
3. Within each `fine2coarse3d` call, precompute the wet-mask count once per contact point instead of recomputing the same value at every vertical level. Do not cache across time steps because `WET_DRY` is enabled.

No candidate has been implemented, compiled, timed, or validated. Replacing the global gather algorithm, adding contact-only communication, changing floating-point association, or enabling fast-math remains outside this first low-risk stage.

### Stage result

- Optimization implemented: none
- Performance result established: none
- Accuracy result established: none
- Safe next step: create a uniquely named isolated source/build directory from the public archive baseline (or the hash-matching `fjk` source), keep inputs read-only, and run a complete baseline with no more than four nodes.
- Resolved clarification: up to four Slurm nodes are allowed. `/public/share` remains read-only; any unavoidable request to write there must be approved explicitly by the user first.

## Stage 1 - Isolated baseline source and build

- Date: 2026-07-27
- Remote variant root: `/public/home/fujiake/fjk/ROMS_CoSiNE15_codex_20260727`
- Shared logical-read-only inputs: `/public/home/fujiake/Inputfiles`
- Action: created a new private source/build tree without copying `Inputfiles`, old `Build`, old `output`, old `oceanM`, or old run logs
- Remote writes under `/public/share`: none

### Build-isolation change

Only the build bookkeeping path in the private root `makefile` was changed:

```diff
-MAKE_MACROS := $(shell echo ${HOME} | sed 's| |\\ |g')/make_macros.mk
+MAKE_MACROS := $(CURDIR)/make_macros.mk
```

This prevents concurrent team builds under the shared Unix account from overwriting `$HOME/make_macros.mk`. It does not alter generated model equations or runtime behavior.

- Original `makefile` SHA-256: `468daaebbd4e392de3aeb63abb292cf46eb0288c1bf3f9d073f11aed4721ce9c`
- Isolated `makefile` SHA-256: `219747441f5ec0dbfbeff3cb8b683bfd6eadd014beb7bfd6652cb891bf39d8a8`
- `Linux-ifort.mk` remained at SHA-256 `a583989b72332e261b604daa8d63918d017677ff163213df8ec68ff7c14d1a8b`

### Build result

- Slurm job: `117981097`
- Node: `j05r2n10`
- Allocation: 1 node, 32 CPUs, exclusive
- State / exit: `COMPLETED`, `0:0`
- Slurm elapsed: `00:00:54`
- Compiler command timing: `real 52.62s`, `user 248.67s`, `sys 22.00s`
- Binary: `/public/home/fujiake/fjk/ROMS_CoSiNE15_codex_20260727/oceanM`
- Binary SHA-256: `903360ee3b94db17a628ee9332fd72ddb97bd15cd7e492ae04cda4db22deaf5c`
- Build stdout: `/public/home/fujiake/fjk/ROMS_CoSiNE15_codex_20260727/logs/build_baseline_117981097.out`
- Build stderr: `/public/home/fujiake/fjk/ROMS_CoSiNE15_codex_20260727/logs/build_baseline_117981097.err`
- Result: build succeeded; no performance or accuracy result is implied by compilation

## Stage 2 - Complete 64-rank baseline and official validation

- Date submitted: 2026-07-27
- Date confirmed: 2026-07-28 +0800 (2026-07-27 America/New_York)
- Slurm job: `117981144`
- Allocation: 2 nodes, 64 MPI ranks, 32 ranks/node, exclusive
- Nodes: `j05r2n13,j05r2n14`
- Run directory: `/public/home/fujiake/fjk/mcc_runs/117981144_baseline_64_8x8`
- Input candidate: `/public/home/fujiake/fjk/ROMS_CoSiNE15_codex_20260727/experiments/inputs/ocean_full_64_8x8.in`
- Candidate input SHA-256: `a3e8a5dbee769ced1e097cd22d9e0424eb326b0a7b1006451fe6609dd14779a8`
- Configuration: `NtileI == 8 8`, `NtileJ == 8 8`, full `NTIMES == 2592 12960`, cold start
- Compliance diff: exactly one line versus the archive input, changing only `NtileI == 4 4` to `NtileI == 8 8`
- Capacity guard: abort with exit code `73` if free space at job start is below 11 GiB
- State / exit: `COMPLETED`, `0:0`
- Slurm elapsed: `02:53:08`
- `/usr/bin/time -p`: `real 10383.89`, `user 282698.47`, `sys 47377.91`
- Model completion: Grid 01 completed steps `1-2592`, Grid 02 completed steps `1-12960`, and `logs/model.log` ended with `ROMS/TOMS: DONE`
- Error scan: no `error`, `blowup`, `abort`, `failed`, or segmentation-fault marker; top-level Slurm stdout and stderr were both empty
- Output: 16 NetCDF files, `9,048,194,368` logical bytes (about `8.5G` by `du`)
- Result boundary: this is one current complete baseline measurement, not an optimized result and not a repeat-run statistic

### Official validation result

- User authorization: read-only access to `/public/share/mcc2026_final/vali.py`, `/public/share/mcc2026_final/output/`, and `/public/share/mcc2026_final/miniforge3/envs/vali/` granted on 2026-07-27
- Writes under `/public/share`: none
- Validation job: `117981681`
- Dependency: `afterok:117981144`, with invalid-dependency cancellation enabled
- State / exit: `COMPLETED`, `0:0`
- Slurm elapsed: `00:00:29`; validator `real 25.47s`
- Official validator SHA-256: `97230e0b0dd4533a4000155bd691c81d243bdc45c24e6ceaeb09ffa6b1bb878a`
- Private in-memory path wrapper SHA-256: `242b8f831d087da6451dc6d9d14d0f45e8fe0fcb9bc4136ef95faa7212a70ced`
- Validation script SHA-256: `70ef0a1b67f635bc554cc800feb892756abbc238621c370f153d64ad0ea1c484`
- Validation result path: `/public/home/fujiake/fjk/mcc_runs/117981144_baseline_64_8x8/validation/vali_result.txt`
- The wrapper executes the organizer script byte-for-byte except for replacing its placeholder `dir_test` assignment in memory. It does not create or modify files under `/public/share`.
- Result: all 13 tested variables for both `SCS_avg_0001.nc` and `Dongsha60_avg_0001.nc` printed RMSE `0.000000` and passed their thresholds; the official final message was `两组文件所有变量RMSE均在阈值范围内，优化结果无异常`.
- Accuracy boundary: the official validator checks only these two `avg_0001` files. The remaining 14 avg/history/restart files were not checked by this script, and six-decimal `0.000000` output does not establish bitwise identity.

## Stage 3 - Preliminary profiling and program-structure audit

- Date: 2026-07-28 +0800 (2026-07-27 America/New_York)
- Source root: `/public/home/fujiake/fjk/ROMS_CoSiNE15_codex_20260727`
- Current profile source: `/public/home/fujiake/fjk/mcc_runs/117981144_baseline_64_8x8/logs/model.log`
- Historical auxiliary PMPI/perf source: job `117845239` under `/public/home/fujiake/nan/mcc_perf/`
- Action: read-only source and log audit; no source edit, rebuild, benchmark submission, cancellation, deletion, or write under `/public/share`

### Program structure confirmed

The active build is pure MPI: `USE_MPI=on`, `USE_MPIF90=on`, and OpenMP is disabled. The makefile explicitly rejects enabling MPI and OpenMP together. Every MPI rank owns one tile, and each grid requires `NtileI*NtileJ == MPI rank count`; the complete baseline therefore uses `8*8=64` for both grids.

The main call chain is:

```text
Master/ocean.h: PROGRAM ocean
  -> ROMS_initialize (parallel setup, parameter parsing, allocation, grid/initial/forcing input)
  -> ROMS_run
     -> ROMS/Drivers/nl_ocean.h
        -> ROMS/Nonlinear/main3d.F
           -> two nesting layers and two grids
           -> rhs3d / GLS / split-explicit step2d
           -> step3d_uv / omega / biology / step3d_t
           -> two-way fine2coarse feedback and MPI aggregation
           -> history / average / restart NetCDF output
  -> ROMS_finalize
```

Grid 01 is `359x326x34`, `2592` steps at `DT=100`; Grid 02 is `235x245x34`, `12960` steps at `DT=20`. Both are advanced by the same MPI communicator according to nesting-layer scheduling; they are not separate rank groups. `BIO_UMAINE15` is enabled with 15 ecological tracers, including carbon and oxygen branches. `NESTING` is enabled and `ONE_WAY` is disabled, so two-way feedback remains active.

### Preliminary profile result

ROMS internal timers for the current complete baseline report the following aggregate rank-time shares:

| Grid | Main communication / compute entries | Aggregate share |
|---|---|---:|
| 01 | Message passage total | 32.0680% |
| 01 | Point data gathering | 29.0448% |
| 01 | Compute total | 10.7536% |
| 01 | Corrector tracers | 3.8127% |
| 02 | Message passage total | 40.2845% |
| 02 | Data gathering | 24.6331% |
| 02 | Compute total | 32.4793% |
| 02 | Corrector tracers | 14.7225% |
| 02 | Point data gathering | 8.1799% |
| 02 | 4-D halo exchange | 3.8502% |
| 02 | Biology | 1.4281% |

These timers are nested/overlapping aggregate rank-seconds; rows must not be summed as exclusive wall-clock percentages. NetCDF read/write entries are all below 1% individually, so the first-order bottleneck is not output I/O.

The source path matching the dominant signature is `fine2coarse3d -> mp_aggregate3d -> MPI_Allgather` in `ROMS/Nonlinear/nesting.F` and `ROMS/Utility/distribute.F`. Historical PMPI data from the separately instrumented job `117845239` also showed `MPI_Allreduce` at 26.683% and `MPI_Allgather` at 11.139% of average rank elapsed time; this is supporting evidence only because that job used a different binary, nodes, and instrumentation.

### Stage result and next candidates

- Confirmed primary target: two-way-nesting gather/assembly and MPI collective synchronization.
- Confirmed secondary target: Grid 02 tracer corrector and associated physical kernels.
- Biology alone is only 1.4281% in the current aggregate timer, so accelerating only CoSiNE is unlikely to produce the largest first gain.
- NetCDF I/O is not the initial optimization priority.
- Low-risk candidates remain: remove redundant full receive-buffer zeroing before `MPI_Allgather` while preserving send padding; add proven-safe early exits to vertical interval searches; compute per-contact wet-mask counts once within each `fine2coarse3d` invocation.
- No candidate in this stage has been implemented, compiled, timed, or validated. No speedup claim is made.
- Storage warning: `/public/home` was 97% used with about `5.3G` free at the confirmation snapshot, less than one additional full output set. No further full run should be submitted without an approved storage plan.

## Stage 4 - Take over the existing `~/lsd` optimization lineage

- Date: 2026-07-28 to 2026-07-29
- Experience document: `C:\Users\Fu Jiake\Desktop\想法册\.SXUHPC\MCC26\Final_Com\MCC26决赛.md`
- Read-only source lineage: `/public/home/fujiake/lsd/mcc2026_final/ROMS_CoSiNE15`
- New isolated work tree: `/public/home/fujiake/fjk/ROMS_CoSiNE15_lsd_v24a_20260728`
- Shared inputs: `/public/home/fujiake/Inputfiles`
- Writes under `/public/share`: none

### Lineage audit

The `lsd` tree is about `35G` and contains source variants, binaries, short ABBA tests, full runs, validation output, PMPI/perf data, and failed experiments under `.mcc_opt`. The stale `.mcc_opt/bin/current-best` link points to v10, while later evidence exists for v22 and v24a. Failed v24b/v25/v26/v27/v28 communication variants were not selected.

The strongest completed full-run candidates found were:

| Variant | Job | Layout | Model wall time | Completion |
|---|---:|---|---:|---|
| v22 | `117916577` | 4 nodes, 64 MPI x 2 OpenMP | `38:58.50` | `COMPLETED 0:0`, `ROMS/TOMS: DONE` |
| v24a | `117977216` | 4 nodes, 64 MPI x 2 OpenMP | `38:15.90` | Slurm completed, but the private run wrapper recorded exit `127` after the model output was written |
| v24a no HCOLL rerun | `118062810` | 4 nodes, 64 MPI x 2 OpenMP | `38:48.79` | `COMPLETED 0:0`, `ROMS/TOMS: DONE` |

HCOLL was not accepted as a base: full jobs `118059543`, `118062295`, `118062837`, and `118063144` were cancelled, and completed short HCOLL logs contained repeated UCX `cannot add ... lane - reached limit` errors.

### Isolated v24a import

Only about `231M` was copied to the new private tree. Historical `Build`, `.mcc_opt/runs`, output, binaries, Inputfiles, plot, matlab, and test trees were excluded. The following exact v24a components were installed persistently in the isolated source:

| Target | SHA-256 |
|---|---|
| `ROMS/Utility/distribute.F` | `9ecb0059e493dc6b33fae4b117c0148e7d568ecbbecdd064dda5719bc248512b` |
| `ROMS/Nonlinear/nesting.F` | `b28e430cfd9c6e4c7ca7779d26c7a5505c0f023f912028ab67925add95b1edb4` |
| `ROMS/Nonlinear/step3d_t.F` | `cb1bc8fb01e226ecd4c0b51eaddd34d3b6d890d418924abe9d952c66d3febf90` |
| `ROMS/Nonlinear/pre_step3d.F` | `54cc6ac728760b50ae0f3db93ba5963cc5610b1d500e6d039360564d7a41a409` |
| `ROMS/Nonlinear/t3dmix4_s.h` | `3a7f3f29d11695f3c81462b2f4975b6afc4c8d4f239db0a7ea0ac0c164d7a14b` |
| `ROMS/Nonlinear/gls_corstep.F` | `b94b75c871d853e157c1c267223f9e5e1eba2a89f296f8e54f9eb577c2be229a` |
| `ROMS/Nonlinear/Biology/bio_UMAINE15.h` | `8d579a85cad39249f5d136922c90dc14ea51624623ad8c4b08659141658e4378` |

The isolated makefile uses `$(CURDIR)/make_macros.mk` instead of the account-wide `$HOME/make_macros.mk` to prevent concurrent team builds from overwriting one another.

### Accuracy audit of inherited full output

- Validation job: `118068696`
- Official validator SHA-256: `97230e0b0dd4533a4000155bd691c81d243bdc45c24e6ceaeb09ffa6b1bb878a`
- Tested output: `lsd` v24a no-HCOLL full run `118062810`
- Result: `FAILED 1:0`
- SCS: all 13 variables passed
- Dongsha60: 12 variables passed; `u` RMSE was `0.000067`, exceeding the `0.000060` threshold
- v22's saved official result has the same 25-pass/1-fail signature
- Conclusion: neither v22 nor v24a is a valid scored base despite its much shorter runtime

### Reproduction build

- First build job `118068693`: failed because `MCC_MAKE_JOBS=32` triggered a Fortran module-file race (`step3d_uv_mod.mod0` rename failure). This was an experiment-script error, not a source compile error.
- Corrected build job `118126939`: `COMPLETED 0:0` with the inherited `MCC_MAKE_JOBS=1`; make wall time `2:52.00`.
- Reproduced binary: `.mcc_opt/bin/codex-v24a-repro-gcc731/oceanM`
- SHA-256: `e1f2cb7fcd9f531a77dbe76c87901841235449cf418e084468cf774c9b8b4df1`
- The binary hash differs from the `lsd` v24a binary because ROMS embeds the absolute source root in the executable; runtime behavior still requires a same-node short comparison.

### Precision-recovery candidate

- Change: add only GCC `-ffp-contract=off` to the v24a compiler rule; no model equation, grid, timestep, forcing, output, or input change.
- Purpose: test whether disabling fused multiply-add contraction moves the marginal Dongsha60 `u` result back within the official threshold.
- Invalid first build job: `118127158`, `COMPLETED 0:0`, but the compiler configuration had been uploaded to `scripts/` while `build_variant.sh` was given `.mcc_opt/scripts/`. Because the inherited helper uses `set -uo pipefail` rather than `set -euo pipefail`, the failed configuration copy did not stop the build. Its binary was byte-identical to the standard v24a reproduction (`e1f2cb7f...`) and is not a precision candidate.
- Invalid first three-way short comparison: `118127234`. All three 180-second model segments ran, but the postprocessor exited `127` because `python3` was absent from the compute-node environment. A later official-environment comparison showed 12 common checkpoints exactly equal between the Intel baseline and standard v24a, and 35 exactly equal between v24a and the supposed precision candidate; this is consistent with the candidate actually being the same binary. These checkpoints are diagnostic only and do not establish final-output RMSE.
- Corrected configuration: `.mcc_opt/scripts/Linux-gfortran.gcc731-znver1-ompbio-precise.mk`, with `FFLAGS := -march=znver1 -mtune=znver1 -ffp-contract=off`.
- Corrected build job: `118128434`, `COMPLETED 0:0`, elapsed `00:02:38`.
- Corrected binary: `.mcc_opt/bin/codex-v24a-fpcontractoff-v2-gcc731/oceanM`.
- Corrected binary SHA-256: `55890f2a9470d08c659173c647d3a9d776abcc8aea7363e46e820006a53ed732`; it differs from the standard v24a reproduction SHA-256 `e1f2cb7fcd9f531a77dbe76c87901841235449cf418e084468cf774c9b8b4df1`, confirming the compiler option changed generated code.
- Submission artifact: `C:\Users\Fu Jiake\Documents\MCC\ROMS_CoSiNE_final_20260727\lsd_v24a\build_v24a_fpcontractoff.slurm`.
- Corrected dependent four-node three-way short comparison: job `118128460`, using the explicit validator Python `/public/share/mcc2026_final/miniforge3/envs/vali/bin/python`; running at this log update.
- Submission artifact: `C:\Users\Fu Jiake\Documents\MCC\ROMS_CoSiNE_final_20260727\lsd_v24a\compare_precision_short.slurm`.
- An unintended duplicate build submission, job `118128423`, failed after 21 seconds with exit `2:0` before producing a binary. The subsequent clean build `118128434` rewrote the variant build logs and completed normally; no duplicate job remained running.
- Corrected short comparison job `118128460`: `COMPLETED 0:0`, elapsed `00:09:16`; all three sequential 180-second `srun` steps completed `0:0` on the same four-node allocation.
- Short comparison result: Intel baseline versus standard v24a had 12/12 common checkpoints exact. Intel baseline versus the real `-ffp-contract=off` candidate had 11/12 exact, first differing at Grid 02 step 225. Standard v24a versus the candidate had 32/35 exact. The maximum printed diagnostic difference was `1.0e-9` absolute (`5.81e-7` relative).
- Interpretation: the flag genuinely changes the numerical trajectory, but the short diagnostic does not show movement toward the Intel baseline and cannot predict the final Dongsha60 `u` RMSE.
- Full-run gate at 2026-07-29: `/public` had only `9.7G` free, while one known complete output set is about `8.5G`; the existing 11 GiB capacity guard would abort. No complete candidate run was submitted.

### Intel-precise v24a isolation candidate

- Date: 2026-07-29
- Change: keep the imported v24a source and communication path unchanged, replace the GCC toolchain with Intel 2017 `-fp-model precise`, and enable Intel OpenMP (`-qopenmp`) only for `biology.o`, `pre_step3d.o`, `step3d_t.o`, `t3dmix.o`, and `gls_corstep.o`.
- Purpose: separate compiler floating-point semantics from v24a source/communication changes while retaining the inherited selective-hotspot OpenMP design.
- Local compiler rule: `C:\Users\Fu Jiake\Documents\MCC\ROMS_CoSiNE_final_20260727\lsd_v24a\Linux-ifort.intel2017-v24a-omp.mk`, SHA-256 `b1819cadf9f04ee6c46dcef7f096e72eecb2e932eac9738b8d5d2e22e7fbdbe6`.
- Local build script: `C:\Users\Fu Jiake\Documents\MCC\ROMS_CoSiNE_final_20260727\lsd_v24a\build_v24a_intelprecise_omp.slurm`, SHA-256 `e866b66a7cdef6d1633efa5f2bde5748da021d29b3dd503391a240475dee3ca4`.
- Build job: `118129636`, `COMPLETED 0:0`, elapsed `00:04:51`.
- Binary: `.mcc_opt/bin/codex-v24a-intelprecise-omp/oceanM`, SHA-256 `c33a2b5d2ab93a85d783b122f228be3f86a53432f616712f7a3d477bdad8e2a9`.
- The final link command contains `-fp-model precise -O3 -qopenmp`, confirming both the accuracy model and selective OpenMP runtime linkage were active.
- Dependent 180-second four-node diagnostic job `118129663`: `COMPLETED 0:0`, elapsed `00:03:06`.
- Diagnostic result: original Intel baseline versus v24a Intel-precise had 11/12 common checkpoints exact; v24a GCC versus v24a Intel-precise had 32/34 exact. Both first differed at Grid 02 step 225 by `1.0e-9`, with the Intel-precise value matching the `-ffp-contract=off` candidate at the printed precision.
- Interpretation: changing the compiler alone does not preserve the original early printed trajectory; the simple hypothesis that Intel precise automatically recovers the final threshold is unsupported.
- Local comparison script: `C:\Users\Fu Jiake\Documents\MCC\ROMS_CoSiNE_final_20260727\lsd_v24a\compare_intelprecise_short.slurm`.
- First thread-isolation submission `118130484`: rejected by `profile_job.sh` in one second with exit `2:0`, before model start, because `spread_numa16_ccx_2t` requires `MCC_OMP_THREADS=2`. This was a test-script mapping error and produced no model result.
- Corrected OMP1 mapping: `spread_numa16_ccx`, the existing 4-node/64-rank one-core-per-rank layout.
- Corrected thread-isolation diagnostic job `118130688`: `COMPLETED 0:0`, elapsed `00:03:07`, using the existing `spread_numa16_ccx` one-core-per-rank mapping.
- OMP1 result: original Intel versus v24a Intel-precise OMP1 had 11/12 common checkpoints exact and the same first `1.0e-9` difference at Grid 02 step 225. Intel-precise OMP2 versus OMP1 had all 32 common checkpoints exact.
- Thread conclusion: the observed early numerical divergence is not caused by using two OpenMP threads. In 180 seconds, OMP1 produced 32 checkpoints versus 34 for OMP2, so disabling threading also reduced short-run progress by about 6% on these allocations.
- Local OMP1 comparison script: `C:\Users\Fu Jiake\Documents\MCC\ROMS_CoSiNE_final_20260727\lsd_v24a\compare_intelprecise_omp1_short.slurm`.
- No accuracy or performance improvement is claimed until the candidate builds, runs, completes a full cold start, and passes the official validator.

### Private build-driver reliability fix

- Date: 2026-07-29
- File: `/public/home/fujiake/fjk/ROMS_CoSiNE15_lsd_v24a_20260728/.mcc_opt/scripts/build_variant.sh`.
- Local artifact: `C:\Users\Fu Jiake\Documents\MCC\ROMS_CoSiNE_final_20260727\lsd_v24a\build_variant.sh`.
- Change: use `set -euo pipefail`; reject an unreadable compiler rule before creating build artifacts; remove the previous `.time` file; truncate the per-variant make log before each new build.
- Reason: the inherited helper continued after a failed compiler-rule copy and appended output from repeated builds, which invalidated job `118127158` and contaminated the duplicated v2 timing file.
- Backup retained: `.mcc_opt/scripts/build_variant.sh.pre_codex_20260729`, SHA-256 `5d1f36198b062e2d152f9754182aa8711a0f8e8472a780a5a86c57cb7a8f6fc0`.
- Patched script SHA-256: `1907b21c638f5629d30c456439750d578383fa81de05ee7620508dfeb09d7e92`.
- Verification: local/remote upload completed, `bash -n` passed, and the expected fail-fast and log-reset lines were present. No model build was launched solely for this script fix.
- Scope: private isolated tree only; `/public/home/fujiake/lsd` and `/public/share` were not modified.

### Storage and coordination gate

- Date: 2026-07-29
- `/public` free space fell from `9.7G` to `9.1G` during inspection.
- A teammate-owned `~/lsd` full run, job `118129811` (`v31_lto_full3d`), was running on `j05r2n[10-13]`; its output was about `557M` at the snapshot.
- Action: read-only status check only. The job, its files, and its nodes were not modified or cancelled.
- Result: no Codex full-output job was submitted; the known output size (~`8.5G`) plus ongoing filesystem growth makes a new full run unsafe.

### Authorized baseline-output cleanup

- Date: 2026-07-29
- Authorization: the user explicitly stated that three confirmations had passed.
- Exact deleted path: `/public/home/fujiake/fjk/mcc_runs/117981144_baseline_64_8x8/output`.
- Pre-delete validation: `readlink -f` exactly matched the expected absolute path; the directory contained 16 NetCDF files and occupied `8.5G`.
- Preserved paths: `/public/home/fujiake/fjk/mcc_runs/117981144_baseline_64_8x8/logs` and `/public/home/fujiake/fjk/mcc_runs/117981144_baseline_64_8x8/validation`.
- Post-delete result: `output_removed=yes`, `logs_preserved=yes`, `validation_preserved=yes`; the remaining baseline run directory occupied `653K`.
- Recoverability: the 16 NetCDF files were permanently removed and are not recoverable from this directory. The job logs, official validation transcript, hashes, timings, and optimization log remain available.
- Filesystem result immediately afterward: `/public` reported `9.7G` free (`94%` used), still below the 11 GiB full-run safety guard because the teammate-owned v31 full run continued producing output.
- Scope: no file under `/public/home/fujiake/lsd` or `/public/share` was modified.

## Stage 5 - PLAN research after repeated ineffective accuracy candidates

- Date: 2026-07-29
- Trigger: the real GCC `-ffp-contract=off` candidate and the Intel-precise v24a candidate did not provide evidence of accuracy recovery; the new permanent rule requires stopping after two ineffective attempts.
- Action: no new experiment submitted. Performed internet research on relevant scientific work and similar open-source ROMS implementations, prioritizing Chinese ocean-model research.
- Official ROMS finding: ROMS 4.2 reports an implementation of gathering/scattering with `MPI_GATHERV/MPI_SCATTERV` in PR #40.
- Chinese research finding: MASNUM optimization emphasizes communication aggregation, I/O, and balanced two-dimensional decomposition; swPOM profiling shows communication share increasing with core count and warns against blind strong scaling, while supporting outer-loop parallelism and contiguous memory access after profiling.
- Local synthesis: return to the officially passing Intel baseline and design a rank-ordered variable-count gather/scatter path that performs no floating arithmetic. Do not begin with owner-reduce, fluxsum reordering, broad nonblocking halo exchange, HCOLL, or biology-only optimization.
- First analysis: `analysis/plan_research_20260729/01_read_summary.md`.
- Second analysis: `analysis/plan_research_20260729/02_profiling.md`.
- Third validity analysis: `analysis/plan_research_20260729/03_validity_check.md`.
- Three-pass result: all three analyses valid as planning evidence; no measured speedup or accuracy claim is made.
- Output deletion: not applicable because this task generated no model output directory.

## Stage 6 - Source-level precision-regression bisection audit

- Date: 2026-07-29
- Action: read-only audit of baseline, v22, and v24a source hashes, build scripts, and progressive staging diffs. No model experiment was launched.
- Key finding: staging `distribute_owner_reduce.F` used by v22 is byte-identical to staging `distribute.F` (`9ad6370e...`), but third-pass checking found that this staging file already differs from the passing baseline distribute (`f03d0175...`). It contains boundary batching, in-place assembly reductions, `mp_sum`, and a conditional native uniform-reduction path.
- Activation check: no `REDUCE_ALLGATHER` or `COLLECT_ALLREDUCE` definition was found in the application headers or v22/v24a compile logs inspected. Therefore the conditional rank-order-to-native reduction change is not counted as a proven active cause.
- The v24a hierarchical distribute change still cannot explain the failure already present in v22.
- Shared high-risk change: `nesting_sparse_contact3d.F` changes `fine2coarse2d/3d` from global field aggregation followed by receiver-side ordered averaging to donor-side averaging followed by floating `mp_sum` of packed contact values.
- Lower-risk subchange: owner-to-receiver contact copies transfer values without arithmetic and may later be separated from the averaging/reduction change.
- Unresolved alternatives: GCC 7.3.1 and hotspot OpenMP/math-reuse source substitutions remain possible causes; there is no complete original-source GCC validation in the historical tree.
- First analysis: `analysis/source_bisection_20260729/01_read_summary.md`.
- Second analysis: `analysis/source_bisection_20260729/02_profiling.md`.
- Third validity analysis: `analysis/source_bisection_20260729/03_validity_check.md`.
- Three-pass result: all three analyses valid; root cause not yet proven.
- Next candidate: original passing source compiled with GCC 7.3.1, with no hotspot OpenMP source substitutions, followed by full official validation.
- Output deletion: not applicable because the audit generated no model output directory.
# 2026-07-29 - Original-source GCC 7.3.1 toolchain isolation build

- Date: 2026-07-29
- Job: `118169519`
- Script: `/public/home/fujiake/fjk/ROMS_CoSiNE15_codex_20260727/experiments/toolchain_bisect_20260729/build_original_gcc731.slurm`
- Source path: `/public/home/fujiake/fjk/ROMS_CoSiNE15_codex_20260727`
- Artifact: `/public/home/fujiake/fjk/ROMS_CoSiNE15_codex_20260727/.mcc_opt/bin/original_gcc731_noomp/oceanM`
- Optimization/change: isolate GCC 7.3.1 + HPC-X 2.7.4 on the original passing model sources; no OpenMP and no communication/source substitutions.
- Result: build completed in `2:47.26`; binary SHA-256 `8c4bc0ae48330f3041ab9f223315fd9aa5fc4f0ca926cb67d5d65f4b767de9cf`; original Intel binary preserved at `903360ee...`.
- Three analyses: `analysis/toolchain_build_20260729/{01_read_summary,02_profiling,03_validity_check}.md`.
- Validation boundary: compilation and isolation are confirmed; model accuracy and runtime are not yet measured.
- Deletion: none; no model output was produced by this or the preceding source-audit task.
# 2026-07-29 - Original-source GCC 7.3.1 full runtime isolation

- Date: 2026-07-29
- Job: `118169717` (running at last check)
- Script: `/public/home/fujiake/fjk/ROMS_CoSiNE15_codex_20260727/experiments/toolchain_bisect_20260729/run_original_gcc731_64.slurm`
- Run path: `/public/home/fujiake/fjk/mcc_runs/118169717_original_gcc731_noomp_64_8x8`
- Optimization/change: compiler/toolchain only; original passing sources, GCC 7.3.1, HPC-X 2.7.4, no OpenMP; 2 nodes, 64 MPI ranks, 8x8 tiles, unmodified full integration.
- Result at 2026-07-29 21:40 +0800: running normally; reached fine-grid step 135, output 557 MiB, no immediate error; final time and accuracy pending.
- Output lifecycle: no deletion at task start because the preceding build task produced no model output. Preserve this run output through all three analyses and into the next task unless the user requests retention beyond that point.
- Validation boundary: startup/progress only; no performance or accuracy conclusion yet.

### Read-only progress synchronization

- Status time: `2026-07-29T23:21:46+0800`.
- Slurm state: `RUNNING`, elapsed `01:43:24`, nodes `j05r2n[11-12]`, accounting exit field `0:0` while active.
- Model progress: coarse Grid 01 step `1725/2592`; fine Grid 02 step `8640/12960`; no fatal-error marker was returned by the status scan.
- Current output: `7.5G`, with 12 NetCDF files present; restart files are still being written, so this is not a final output manifest.
- Storage: `/public` size `250G`, free `89G`, use `65%`.
- Pending evidence: shell `time` output is not yet available; the validation directory is empty; `01_read_summary.md`, `02_profiling.md`, and `03_validity_check.md` do not yet exist for this run.
- Coordination: the user queue showed only job `118169717`; this does not establish the result of previously visible teammate job `118167715`.
- Task boundary: this synchronization launched no experiment and deleted no output. Preserve the active output through completion, official validation, and all three analysis passes.

## Stage 7 - Four-node/128-core scaling hypothesis audit and profiling plan

- Date: 2026-07-30 (platform time).
- Task: test the claim that four-node/128-core execution is bandwidth-limited and that the 15 GiB input tree implies more parallel potential; define a correct profile before launching another experiment.
- Existing 128-rank evidence: team-tree job `118167715`, script `/public/home/fujiake/lsd/mcc2026_final/ROMS_CoSiNE15/.mcc_opt/slurm/intel128_full3d_v2.sh`, run `/public/home/fujiake/lsd/mcc2026_final/ROMS_CoSiNE15/.mcc_opt/runs/full3d_intel128_118167715`.
- Result: the wrapper timed out after 5400 seconds (`process.time` exit `124`), at coarse step `1380/2592` and fine step `6930/12960`; there is no `ROMS/TOMS: DONE` or final ROMS profile. Eight partial NetCDF files occupy about 4.0 GiB.
- Projection, not a result: `10098.70 s` (`02:48:18.70`). Relative to complete Intel 64-rank `10383.89 s`, this is only `1.02824x` projected speedup and `51.4120%` strong-scaling efficiency when ranks double.
- Comparability limitation: 128-rank binary SHA-256 `b5cfb381...`; its team-tree `distribute.F` is `9ad6370e...`, whereas the passing original source is `f03d0175...`. The sample is not a strict same-source 64-to-128 comparison.
- Input evidence: `/public/home/fujiake/Inputfiles` is about 15 GiB, but complete Intel/GCC ROMS profiles attribute less than 0.05% per grid to input reading and 30%-43% to message passing. Large files do not imply useful 128-rank strong scaling.
- Profiling conclusion: current evidence supports severe saturation and strongly implicates MPI/nested-grid communication, but does not directly measure DRAM bandwidth. The `MPI_Allreduce` kill stack is a timeout snapshot, not proof of an Allreduce bottleneck.
- Planned controlled diagnostic: original-source validated GCC binary, half-day `NTIMES=432,2160`, OMP1 and identical runtime environment; compare A=`2 nodes/64 ranks/8x8`, B=`4 nodes/64 ranks/8x8`, C=`4 nodes/128 ranks/16x8 and 8x16`, with two uninstrumented repetitions in `A-B-C-C-B-A` order plus a separate PMPI/hardware-counter cohort.
- Required measurements: ROMS compute/message timers, per-rank PMPI calls/time/payload and imbalance, exact binding/topology, Slurm resource accounting, startup I/O, and direct memory-controller bandwidth if supported. One-rank `perf record cycles` is insufficient to claim memory bandwidth.
- First analysis: `analysis/scaling_profile_plan_20260730/01_read_summary.md`.
- Second analysis: `analysis/scaling_profile_plan_20260730/02_profiling.md`.
- Third validity analysis: `analysis/scaling_profile_plan_20260730/03_validity_check.md`.
- Three-pass result: passes 1 and 2 are valid as planning evidence. No direct memory-bandwidth root cause, completed 128-rank time, speedup, or scoring-valid result is claimed.
- Output lifecycle: documentation only; no model output was generated or deleted. Existing valid and reproduction outputs were preserved.
- Skill synchronization: updated workspace package references `progress.md`, `plan.md`, and `evidence-index.md`, then copied them to `C:\Users\Fu Jiake\.codex\skills\mcc26-roms-cosine-handoff\references`. Recursive comparison found 10 files in each tree and zero path/hash differences.
- Skill validation: frontmatter, folder/name match, six direct reference links, and installed/package file hashes passed a manual deterministic check. The bundled `quick_validate.py` could not run because the default Python lacks `PyYAML`; no package was installed and this tooling limitation is recorded rather than misreported as a validator pass.

## Stage 8 - Grid-freeze correction of the scaling profile plan

- Date: 2026-07-30 (platform time).
- User correction: all grid-related settings are immutable. For this project, `NtileI` and `NtileJ` are also frozen despite the earlier general interpretation that tile counts could vary.
- Invalidated content: `analysis/scaling_profile_plan_20260730/02_profiling.md` proposed a 128-MPI `16x8`/`8x16` decomposition. That matrix is now explicitly marked superseded, and its third-pass `Pass 2 valid` conclusion is withdrawn.
- Permanent rule: preserve Grid 01/Grid 02 `8x8`/`8x8`; never propose alternate tile counts or orientations without a new explicit user authorization.
- Corrected resource comparison: A=`2 nodes, 64 MPI, OMP1`; B=`4 nodes, 64 MPI, OMP1`; C=`4 nodes, 64 MPI, OMP2`. All retain the same `8x8`/`8x8` decomposition. C requires one OpenMP-capable binary shared across A/B/C and separate full accuracy validation.
- First correction analysis: `analysis/scaling_profile_correction_20260730/01_read_summary.md`.
- Second correction analysis: `analysis/scaling_profile_correction_20260730/02_profiling.md`.
- Third correction analysis: `analysis/scaling_profile_correction_20260730/03_validity_check.md`.
- Result: all three correction passes are valid as planning evidence. No experiment, speedup, memory-bandwidth proof, or accuracy claim was produced.
- Output lifecycle: documentation only; no output was generated or deleted, and existing results were untouched.
- Permanent memory: added `C:\Users\Fu Jiake\.codex\memories\extensions\ad_hoc\notes\2026-07-30-mcc-freeze-all-grid-settings.md` with the grid/Ntile freeze and invalid-plan warning.
- Skill synchronization: updated `SKILL.md`, `rules.md`, `project-structure.md`, `progress.md`, `plan.md`, and `evidence-index.md` in the workspace package and installed Skill. Recursive comparison found 10 files in each tree and zero path/hash differences.
- Skill validation: frontmatter, folder/name match, six direct reference links, and absence of the stale permissive-Ntile wording passed manual deterministic checks. The bundled Python validator remains unavailable because the default Python lacks `PyYAML`; no dependency was installed.
- Additional user clarification: MPI may be changed. Allowed work now explicitly includes MPI communication implementation, collectives, MPI/UCX/HCOLL runtime configuration, mapping, placement, and binding while all grid and tile settings remain frozen.
- Permanent memory addition: `C:\Users\Fu Jiake\.codex\memories\extensions\ad_hoc\notes\2026-07-30-mcc-mpi-changes-allowed.md`.
- MPI-clarification Skill resynchronization: recopied the updated `rules.md`, `progress.md`, and `plan.md` to the installed Skill; the workspace and installed trees again contain 10 files with zero path/hash differences.

## Stage 9 - Passing-source code inspection and optimization plan

- Date: 2026-07-30 (platform time).
- Paths inspected: `/public/home/fujiake/fjk/ROMS_CoSiNE15_codex_20260727`, read-only team staging `/public/home/fujiake/lsd/mcc2026_final/ROMS_CoSiNE15/.mcc_opt`, and local imported compiler rules under `ROMS_CoSiNE_final_20260727/lsd_v24a`.
- Optimization content: inspection and plan only; no source implementation, build, run, cancellation, output deletion, or shared-directory write.
- Code result: global ROMS `USE_MPI+USE_OpenMP` is blocked by the makefile. A compliant hybrid must keep the MPI driver single-threaded and compile only explicitly parallelized hotspot objects with OpenMP. The inherited biology outer-J source is directive-only, while the inherited deferred `step3d_t` variant also changes communication and is not an isolated candidate.
- Profile result: valid GCC timers still select nesting gather/MPI as the primary target. Grid 02 biology is about `1.4281%`, so biology-only OpenMP is a feasibility gate with a small whole-program ceiling, not the first performance target.
- Exact MPI recheck: passing `distribute.F` (`f03d0175...`) shows that `mp_aggregate2d/3d` computes a maximum per-tile `Npts`, zero-pads `Asend`, performs padded `MPI_Allgather`, and unpacks on every rank. `mp_gather2d/3d` already uses exact-count point-to-point transfers to the master; scatter uses Bcast.
- Active order after reproduction: fixed-grid 2-node/4-node placement ABBA; exact-binary PMPI/counter cohort; remove only aggregate-path `Arecv=0`; replace padded aggregate `MPI_Allgather` with rank-ordered `MPI_Allgatherv`; then selective OpenMP one hotspot at a time.
- Accuracy constraints: preserve both `8x8` tile grids and 64 MPI ranks; preserve packing/rank/unpacking and floating arithmetic order; use full official validation before accepting any source/collective candidate.
- First analysis: `analysis/code_audit_plan_20260730/01_read_summary.md`.
- Second analysis: `analysis/code_audit_plan_20260730/02_profiling.md`.
- Third validity analysis: `analysis/code_audit_plan_20260730/03_validity_check.md`.
- Three-pass result: all three are valid as inspection/planning evidence. No speedup, bandwidth root cause, or accuracy result is claimed.
- Output lifecycle: documentation only; no model output was generated or deleted. Existing valid and reproduction outputs remain retained.
- Skill synchronization: updated workspace references `project-structure.md`, `progress.md`, `plan.md`, and `evidence-index.md`, then copied the package to `C:\Users\Fu Jiake\.codex\skills\mcc26-roms-cosine-handoff`; both trees contain 10 files and recursive SHA-256 comparison reports zero differences.
- Skill validation: frontmatter and six direct reference targets passed a deterministic manual check. `quick_validate.py` could not run because the default Python lacks `PyYAML`; no dependency was installed.

## Stage 10 - Time-constrained minimal-run plan

- Date: 2026-07-30 (platform time).
- User direction: minimize model runs because remaining competition time is limited.
- Paths: `analysis/run_minimization_plan_20260730/` and Skill references `progress.md`, `plan.md`, and `evidence-index.md`.
- Optimization content: plan revision only; no source edit, build, job submission, cancellation, validation job, output creation, or deletion.
- Result: replace the default ABBA/profile/OpenMP matrix with at most two new half-day runs and one full candidate run. S0 is an unchanged four-node/64-MPI short baseline; S1 changes only `mp_aggregate2d/3d` to rank-ordered `MPI_Allgatherv` and removes its redundant receive zero-fill; F1 runs only if S1 clears an adaptive variance threshold and remains numerically consistent.
- Conditional work: PMPI, a confirmation short run, a second full run, HCOLL/UCX, and OpenMP are triggered only by ambiguous evidence or remaining time rather than scheduled upfront.
- First analysis: `analysis/run_minimization_plan_20260730/01_read_summary.md`.
- Second analysis: `analysis/run_minimization_plan_20260730/02_profiling.md`.
- Third validity analysis: `analysis/run_minimization_plan_20260730/03_validity_check.md`.
- Three-pass result: passes 1 and 2 are valid as a reduced-run execution policy; no measured result is claimed.
- Output lifecycle: documentation only; no model output was generated or deleted. Existing valid and reproduction outputs remain retained.
- Skill synchronization: updated workspace `progress.md`, `plan.md`, and `evidence-index.md`, copied the package to the installed `mcc26-roms-cosine-handoff` Skill, and confirmed 10 files in each tree with zero SHA-256 differences.
- Skill validation: frontmatter and all six direct reference targets passed manual deterministic checks; the known local `quick_validate.py` PyYAML limitation remains unchanged.

## Stage 11 - Asynchronous MPI feasibility assessment

- Date: 2026-07-30 (platform time).
- Paths inspected: passing `ROMS/Utility/distribute.F` (`f03d0175...`), `ROMS/Nonlinear/nesting.F` (`9e9e7f3b...`), and `ROMS/Utility/mp_exchange.F` (`c66ab7bb...`), retained under `analysis/code_audit_plan_20260730/source_evidence/`.
- Optimization content: read-only assessment; no source edit, build, model run, validation, cancellation, or deletion.
- Result: a direct `MPI_Iallgatherv` followed by immediate `MPI_Wait` exposes essentially no useful overlap because aggregate output is immediately unpacked and consumed. A begin/end pipeline could overlap the main field collective only with packing/posting `Adx`, `Ady`, and mask collectives; halo overlap would require a more invasive interior/boundary split.
- Decision: keep blocking rank-ordered `MPI_Allgatherv` as S1. Do not add an asynchronous run by default. Permit at most one extra half-day async-pipeline comparison only if S1 is accurate, still communication-bound, and time remains.
- First analysis: `analysis/async_mpi_assessment_20260730/01_read_summary.md`.
- Second analysis: `analysis/async_mpi_assessment_20260730/02_profiling.md`.
- Third validity analysis: `analysis/async_mpi_assessment_20260730/03_validity_check.md`.
- Three-pass result: passes 1 and 2 are valid as feasibility evidence; no speedup or accuracy result is claimed.
- Output lifecycle: documentation only; no model output was generated or deleted. Retained outputs remain untouched.
- Skill synchronization: updated workspace `progress.md`, `plan.md`, and `evidence-index.md`, copied them to the installed MCC Skill, and confirmed 10 files per tree with zero SHA-256 differences.
- Skill validation: frontmatter and all six direct reference targets passed the deterministic manual check; no dependency was installed for the known PyYAML limitation.

## Stage 12 - Organizer clarification: MPI grid partition is allowed

- Date: 2026-07-30 (platform time).
- Evidence: `analysis/partition_rule_update_20260730/organizer_grid_partition_clarification.png`, SHA-256 `8242eb06422fcdcd509403e4940b8e423e60650bb1d75970adf79d51601b7bde`.
- Rule change: physical grid point count, dimensions, resolution, levels, and files remain immutable; internal MPI partitioning may change. `NtileI/NtileJ` are allowed when each product equals the MPI rank count and the decomposition is valid.
- Superseded rule: the earlier project-specific freeze on `NtileI/NtileJ` is withdrawn. Its physical-grid protections remain active.
- Planning result: 128 pure-MPI ranks with legal `16x8`/`8x16` factorizations are permitted. Historical job `118167715` remains incomplete, source-mismatched, and unvalidated, so it is not promoted to a valid result.
- Time-budget result: keep S0/S1 at 64 ranks by default. Add at most one conditional half-day S2 after an effective S1, initially Grid 01 `16x8` and Grid 02 `8x16`; no exhaustive orientation matrix.
- First analysis: `analysis/partition_rule_update_20260730/01_read_summary.md`.
- Second analysis: `analysis/partition_rule_update_20260730/02_profiling.md`.
- Third validity analysis: `analysis/partition_rule_update_20260730/03_validity_check.md`.
- Three-pass result: passes 1 and 2 are valid; this is a rule/plan update with no measured speedup or accuracy result.
- Output lifecycle: documentation only; no model output was generated or deleted. Retained outputs remain untouched.
- Permanent memory: added `C:\Users\Fu Jiake\.codex\memories\extensions\ad_hoc\notes\2026-07-30-mcc-mpi-grid-partition-allowed.md`, explicitly superseding only the former `NtileI/NtileJ` freeze.
- Skill synchronization: updated `SKILL.md`, `rules.md`, `project-structure.md`, `progress.md`, `plan.md`, and `evidence-index.md`; installed/workspace trees each contain 10 files with zero SHA-256 differences.
- Skill validation: frontmatter, six direct reference targets, and absence of stale active tile-prohibition wording passed deterministic manual checks; the known local PyYAML limitation remains unchanged.

## Stage 13 - Rank-ordered MPI_Allgatherv candidate preparation

- Date: 2026-07-30 (platform time).
- Local source: `experiments/allgatherv_20260730/ROMS/Utility/distribute.F`.
- Remote isolated source: `/public/home/fujiake/fjk/ROMS_CoSiNE15_allgatherv_20260730/ROMS/Utility/distribute.F`.
- Source hashes: passing `f03d0175a421510bcb237351dd8c9cef04e1cf95f1713680921423f111342977`; candidate `d573dcec715b2531c7f15a86a1a30a43c7baa7ff2affd24e01bf3eb94e0561df`.
- Optimization: in `mp_aggregate2d/3d`, replace maximum-tile padded `MPI_Allgather` with exact-count, rank-ordered `MPI_Allgatherv`; use prefix displacements for unpacking and remove only the now-unneeded aggregate `Arecv=0.0_r8`. Preserve `Asend` initialization, packing/rank/unpacking order, contact-point overwrite order, and all floating arithmetic.
- Diagnostic input: `experiments/allgatherv_20260730/inputs/ocean_halfday_64_8x8.in`, SHA-256 `4b0087cb692ccff9a2298b85470ee4ad0c23b44a8aefb9d4021454a9537cacb7`; it differs from the full validated input only in organizer-approved `NTIMES=432,2160`.
- Mapping preparation: S0 and S1 scripts use four nodes, 64 MPI ranks, 8x8 tiles on both physical grids, OMP1, and the audited `spread_numa16_ccx` rankfile placement. Both scripts passed remote `bash -n`; no run has been submitted yet.
- Build job: `118204040`, script `/public/home/fujiake/fjk/ROMS_CoSiNE15_allgatherv_20260730/build_allgatherv_gcc731.slurm`; pending under `QOSMaxCpuPerUserLimit` at the stage checkpoint.
- Result: isolated candidate preparation is statically valid; compile, speed and accuracy remain `UNVERIFIED`.
- Three analyses: `analysis/allgatherv_candidate_preparation_20260730/{01_read_summary,02_profiling,03_validity_check}.md`.
- Output lifecycle: previous stage was documentation-only, so there was no prior-stage output eligible for deletion. All full GCC baseline/reproduction outputs are retained while reproduction validation is pending. No output was deleted.
- Skill synchronization: updated `progress.md`, `plan.md`, and `evidence-index.md`; workspace and installed Skill trees each contain 10 files with zero recursive SHA-256 differences.

## Stage 14 - GCC reproduction validation and variance closure

- Date: 2026-07-30 (platform time).
- Full reproduction jobs: `118196477` on `j05r2n[10-11]`, shell `real 9311.09 s`; `118196481` on `j05r2n[12-13]`, shell `real 9263.08 s`. Both were `COMPLETED 0:0`, reached `ROMS/TOMS: DONE`, and produced 16 files/8.5G.
- Exact lineage: original passing source, GCC 7.3.1/HPC-X 2.7.4, no OpenMP, binary SHA-256 `8c4bc0ae...`, input SHA-256 `a3e8a5db...`, 2 nodes/64 MPI, both grids `8x8`, full cold-start `NTIMES=2592,12960`.
- Variance result: with validated job `118169717` (`9259.75 s`), median is `9263.08 s`, range `51.34 s`, range/median about `0.554%`, and sample CV about `0.310%`.
- Official validation: combined job `118203698`, `COMPLETED 0:0` on `j05r2n00`. Both exact output directories pass all 26 checks; Dongsha `u RMSE=0.000057 <= 0.000060` in each.
- Determinism boundary: the two checked `SCS_avg_0001.nc` and `Dongsha60_avg_0001.nc` pairs have different SHA-256 hashes. Official scoring validity and repeatable timing are established; byte identity is not.
- Three analyses: `analysis/toolchain_reproduction_118196477_118196481/{01_read_summary,02_profiling,03_validity_check}.md`; all three valid.
- Output lifecycle: no deletion. Retain newest run `118196481`; older outputs require the full deletion gate at a later task start.

## Stage 15 - Allgatherv candidate build and duplicate containment

- Date: 2026-07-30 (platform time).
- First attempt `118204040`: zero-second `FAILED 0:53` before stdout/stderr creation; no source/compiler failure can be inferred.
- Successful build `118205647`: `COMPLETED 0:0` on `j05r2n10`, Slurm elapsed `2:50`, make elapsed `2:48.37`, exit `0`.
- Candidate lineage: `distribute.F=d573dcec...`, passing `nesting.F=9e9e7f3b...`, GCC 7.3.1/HPC-X 2.7.4, no OpenMP token or `libgomp`.
- Candidate binary: `/public/home/fujiake/fjk/ROMS_CoSiNE15_allgatherv_20260730/.mcc_opt/bin/allgatherv_rankordered_gcc731_noomp/oceanM`, SHA-256 `55a95f9eb23e6345d34437cd65c136c1d2f5d6555d0e34550c725ad411c19c19`.
- Duplicate containment: delayed/concurrent submission visibility created `118206252`; it was cancelled after 27 seconds. It partially rebuilt shared scratch and overwrote non-job-specific `build_metadata.txt`, but did not relink the successful binary: mtime remains `13:25:14` and hash remains `55a95f9e...`. Use `118205647` job-specific logs for attribution; clean before any future rebuild.
- Three analyses: `analysis/allgatherv_build_118205647/{01_read_summary,02_profiling,03_validity_check}.md`; all three valid as build evidence. Runtime, speed and accuracy remain untested.
- Output lifecycle: build generated no model output. Existing valid/reproduction outputs remain retained; no deletion occurred.
- Skill synchronization: refreshed `progress.md`, `plan.md`, and `evidence-index.md` in both the workspace package and installed Skill before S0 submission.

## Stage 16 - S0 four-node/64-MPI half-day baseline submission

- Date: 2026-07-30 (platform time).
- Job: `118206571`, started `2026-07-30T13:43:41+0800` on `j05r2n[14-17]`.
- Run path: `/public/home/fujiake/fjk/mcc_runs/118206571_s0_original_gcc731_4n64_halfday_8x8`.
- Script: `/public/home/fujiake/fjk/ROMS_CoSiNE15_codex_20260727/experiments/allgatherv_20260730/run_s0_original_4n64_halfday.slurm`, SHA-256 `a765b7630bd6de22618018e81aa19cf1e400d7e9718ff5cfe5146c0a30f962a9`; remote `bash -n` passed.
- Causal change: layout-only diagnostic relative to the validated two-node GCC runs; unchanged original binary SHA-256 `8c4bc0ae...`, four nodes/64 MPI, 16 ranks/node, OMP1, both grids `8x8`, audited `spread_numa16_ccx` rankfile SHA-256 `b35a88a9...`.
- Input: organizer-approved half-day `NTIMES=432,2160`, SHA-256 `4b0087cb...`. This run cannot establish final scoring time or accuracy.
- Storage gate: `42741220 KiB` free before model start; script requires at least `15728640 KiB`.
- Output lifecycle: previous build generated no model output. Full GCC valid/reproduction outputs are intentionally retained; nothing deleted.
- Current boundary: model is running; no completion, runtime, speed or accuracy claim. S1 is unsubmitted until S0 receives three valid analyses.
- Skill synchronization: refreshed `progress.md`, `plan.md`, and `evidence-index.md` in workspace and installed Skill immediately after submission.

## Stage 17 - S0 completion, wrapper diagnosis, and S1 gate

- Date: 2026-07-30 (platform time).
- Job/run: `118206571`, `/public/home/fujiake/fjk/mcc_runs/118206571_s0_original_gcc731_4n64_halfday_8x8`.
- Model result: Grid 01 `432/432`, Grid 02 `2160/2160`, full ROMS profile, `ROMS/TOMS: DONE`; shell `real 922.61`, `user 13233.79`, `sys 1478.87 s`. The mpirun step completed `0:0`.
- Wrapper result: top-level `FAILED 1:0` after model completion because unchanged output intervals produced zero NetCDF files and the old final command expanded literal `output/*.nc`. The only top-level stderr is `sha256sum: output/*.nc: No such file or directory`.
- Evidence boundary: accept `922.61 s` as the same-scope S0 diagnostic baseline; do not call the Slurm job completed, do not claim full-run time or scoring accuracy, and do not rerun S0 solely for postprocessing.
- Profile anchors: Grid 01 message total `17233.008` rank-s and point gathering `14304.201`; Grid 02 message total `20932.275`, data gathering `12937.395`, point gathering `3955.980`.
- S1 gate: direct F1 eligibility requires `real <= 894.93 s` (3%); 2%-3% is ambiguous, below 2% is deferred.
- S1 script fix: add exact binary hash `55a95f9e...`; replace the empty glob with zero-file-safe `find -exec sha256sum`. Local/remote script SHA-256 `31aca99f...`; `bash -n` passed.
- Three analyses: `analysis/s0_118206571/{01_read_summary,02_profiling,03_validity_check}.md`; all three valid.
- Output lifecycle: zero NetCDF files, so deletion is not applicable. Retain S0 logs/metadata for S1 comparison.
- Coordination gate: S1 not submitted at the `14:04` checkpoint because unrelated same-account four-node jobs were active/pending. No teammate job was modified.
- Skill synchronization: refreshed `progress.md`, `plan.md`, and `evidence-index.md` in workspace and installed Skill after S0 closure.

## Stage 18 - S1 dependency-safe submission

- Date: 2026-07-30 (platform time).
- Job: `118208199`, submitted `2026-07-30T14:06:01+0800`.
- Script: `/public/home/fujiake/fjk/ROMS_CoSiNE15_allgatherv_20260730/run_s1_allgatherv_4n64_halfday.slurm`, SHA-256 `31aca99f5b7f5e923030376c1fdc08cff1faba7cbf9172c6e1dff743c1ec2c79`; local/remote hash match and `bash -n` passed.
- Candidate gates: binary SHA-256 `55a95f9e...`, `distribute.F=d573dcec...`, half-day input `4b0087cb...`, four nodes/64 MPI, OMP1, both grids `8x8`, `spread_numa16_ccx`.
- Coordination: submitted with `afterany:118206688:118206764:118206766:118207238` because those unrelated same-account four-node jobs were running or pending. S1 is `PENDING (Dependency)` and consumes no resources at this checkpoint.
- Output lifecycle: S0 produced no NetCDF files; its run logs are retained. No deletion was performed.
- Result boundary: no model start, timing, speed, output or accuracy result yet. Refresh the full queue and exact S1 metadata when it starts.
- Skill synchronization: refreshed `progress.md`, `plan.md`, and `evidence-index.md` in workspace and installed Skill immediately after submission.

## Stage 19 - Local workspace organization and entry guides

- Date: 2026-07-30.
- Workspace: `C:\Users\Fu Jiake\Documents\MCC`.
- Change: classify all local MCC material into `初赛/` and `决赛/`, then split initial-round files into main source/scripts, experiments/performance data, submissions/archives, and reports; split final-round files into contest rules, ROMS-CoSiNE optimization workspace, and handoff Skill.
- Move result: 45 top-level items moved within the same filesystem. No source item was missing, no destination existed, and no file or output was deleted or overwritten.
- Entry guides: `README.md`, `初赛/README.md`, and `决赛/README.md`; all local Markdown links passed UTF-8-aware existence checks with zero broken links.
- Active path update: current project root is `C:\Users\Fu Jiake\Documents\MCC\决赛\02_优化工作区\ROMS_CoSiNE_final_20260727`; current workspace Skill package is under `决赛\03_交接Skill\skill-packages`.
- Compatibility: Git root and existing uncommitted user changes were preserved; no staging/commit/reset occurred. Remote source, input, run and Slurm paths are unchanged.
- Result: organization is valid and the active final-round handoff remains usable from the new paths.
- Three analyses: `analysis/local_workspace_organization_20260730/{01_read_summary,02_profiling,03_validity_check}.md`.
- Output lifecycle: organization produced no model output; deletion is not applicable. Existing local and remote results were untouched.
- Skill synchronization: updated `SKILL.md`, `project-structure.md`, `progress.md`, `plan.md`, and `evidence-index.md` in the relocated workspace package and installed Skill; recursive package comparison confirms 10 files in each tree with zero path/hash differences.

## Stage 20 - Remote session k3 recovery and 4-node layout breakthrough

- Date: 2026-07-31 (platform time).
- Action: recovered remote progress of session `k3_20260731` (interrupted at `13:54`, controller.lock heartbeat frozen; no agent process remains). Remote state files `KNOWLEDGE_DIGEST.md`/`AGENT_STATE.md`/`HYPOTHESIS_BACKLOG.md` are empty; `final/` and `EXPERIMENT_LEDGER.jsonl` empty; `knowledge/README.md` MISSING.
- EXP-0001 (job 118284636): 4 nodes/64 MPI ranks, 16 ranks/node, `spread_numa16_ccx`, original GCC 7.3.1 no-OMP binary `8c4bc0ae...`, full input `a3e8a5db...`, `NTIMES=2592,12960`. Shell `real 5471.77 s`. Official validation job 118291691: 26/26 PASS.
- EXP-0003 (job 118291659): confirmation rerun, same conditions. Shell `real 5412.96 s`, `ROMS/TOMS: DONE`. Range across the two runs 1.08%; robust.
- Conclusion: four-node/64-rank layout is the current best at ~5412-5472 s, 41% faster than two-node median 9263.08 s, and below the organizer target 6606 s. Remote `CURRENT_BEST.md` still records the stale 9263.08 s entry and must be refreshed.
- EXP-0004 (norecvzero): patch script written, NOT applied/built. Caveat: `work/current/ROMS/Utility/distribute.F` hash `2ee1b555...` differs from patch-expected `f03d0175...` and contains 4 `Arecv=0.0_r8` sites; applying as-is aborts. Reconcile target file before use.
- EXP-0002 (hcoll): run script written, NOT submitted.
- Previous-agent jobs observed in queue (all 4 nodes/128 ranks, scripts outside k3 logs): `intel_pack1_1d` (118297792, running), `nan_O31_1day` (118298602, completed), `nan_O32_half` (118298605, running); earlier `nan_O29_half` (118295702) left queue. Do not cancel/reprioritize without user instruction.
- Permanent memory rule added to `rules.md`: save a work log at the end of every stage (submission, build, run, correctness, review, pause) so any interruption can be resumed from the last saved stage.
- Knowledge base: organizer PPT transcription (optimization strategy + validation rules, with 〔模糊〕 markers preserved) added at `决赛/01_赛题与规则/官方PPT_优化策略与验证规则.md`; progress snapshot refreshed in `progress.md`.

## Stage 21 - Old-output cleanup (user authorized)

- Date: 2026-07-31.
- User authorized deleting only `output/` subdirectories (NetCDF, 8.5G each x5 = 42.5G) from the 5 historical run dirs; `logs/` (model.log with ROMS profiling), `metadata/`, `validation/` preserved.
- Deleted output dirs: mcc_runs/{118169717_original_gcc731_noomp_64_8x8, 118196477_original_gcc731_noomp_64_8x8_repro, 118196481_original_gcc731_noomp_64_8x8_repro}/output; agent_k3_20260731/{EXP-0001,EXP-0003}_f0_original_gcc731_4n64_full_8x8/output.
- Rationale: /public at 13G free (96%); current best 4n64 5412.96s already validated 26/26 and recorded; profiling kept in model.log.
- Profiling paths retained: 118169717/118196477/118196481: <dir>/logs/model.log; EXP-0001/EXP-0003: agent_tmp/logs/benchmarks/k3_20260731/EXP-{0001,0003}/logs/model.log.

- Cleanup verified: 5 dirs now 158-658K each (logs/metadata/validation/analysis/ROMS kept); /public usage 96% -> 71% (13G -> 18G free). All output/ removed.

## Stage 22 - EXP-0004 norecvzero patch fixed and build submitted

- Date: 2026-07-31.
- Root cause found via diff: work/current/ROMS/Utility/distribute.F (2ee1b555, 207604B) was manually modified by a previous agent (2 lines `Arecv=0.0_r8` removed at lines 5526/5733) while the patch script expects pristine stable f03d0175 (207642B, 2 sites). Full-tree `diff -rq imports/stable work/current` confirmed distribute.F is the ONLY differing file.
- Fix: backed up work/current distribute.F to `distribute.F.pre_exp0004_bak`; restored pristine copy from imports/stable; ran apply_EXP-0004_norecvzero_patch.py -> `PATCH_OK sites=2 after_sha256=940405d8c9a69b38fa9481a91ed20c550b02132bd1527cfff054370c710e9520`.
- Build job 118313069 submitted (kshcexclu06, N=1) using build_EXP-0004_norecvzero.slurm (hash gates: distribute != f03d0175 now passes; nesting.F == 9e9e7f3b gate present; OpenMP token check; binary_sha256.txt emission; variant norecvzero_gcc731_noomp under WS/builds/).

- Build via sbatch failed twice identically (jobs 118313069/118313150/118313186, CANCELLED exit 0:53 in ~1s, Reason=None, on j05r2n00 and j05r2n04; nodes were healthy - srun worked on same nodes). Worked around with `srun -N 1 -n 1 -c 8 -t 40 --exclusive --oversubscribe bash build_EXP-0004_norecvzero.slurm` (job 118313221, node j05r2n00).
- Build SUCCESS: variant norecvzero_gcc731_noomp, oceanM SHA-256 ff4711744737ec31bc529c9c8d007723398d1e1bbd48f0ae09c86e110008d5af, distribute_sha256=940405d8 (patched), build_result=success logged.
- run_EXP-0004_norecvzero_4n64_halfday.slurm placeholder __EXPECTED_BIN_SHA256__ filled with ff471174...; input hash gate 4b0087cb (ocean_halfday_64_8x8.in) verified in place.
- EXP-0004 half-day diagnostic submitted as job 118313359 (4 nodes j05r2n[00-03], 64 ranks, spread_numa16_ccx); status RUNNING at checkpoint.

- EXP-0004 half-day run (job 118313359, 4n j05r2n[00-03], 64 ranks, spread_numa16_ccx, input 4b0087cb, binary ff471174): COMPLETED 14:37, model DONE 23:31:12 -> 23:45:46.
- timing: real 876.37s (user 12553.42 sys 1419.52) vs S0 baseline 922.61s (job 118206571) = -5.01%; gate -3% (894.93s) PASSED. Half-day produced no NetCDF output (4.0K dir) as expected.
- run_metadata.txt captured via cp to login-node /tmp (FS read instability); model_result=done; binary/input/rankfile sha256 gates verified in metadata.
- Conclusion: removing redundant Arecv zero-fill in mp_aggregate2d/3d is effective at half-day scale. Next decision: full 3-day run + official 26-item validator to promote EXP-0004 (expected ~5150s if the -5% holds), pending user authorization.

## Stage 23 - EXP-0002 (hcoll) half-day submitted; EXP-0004 results recorded

- User decision: run EXP-0002 (hcoll) half-day before promoting EXP-0004 to full run.
- EXP-0002 script fully reviewed via /tmp copy trick: runtime-only change `export OMPI_MCA_coll_hcoll_enable=1`; binary gate 8c4bc0ae (baseline), input gate 4b0087cb (half-day); gate vs S0 922.61s -> effective <=894.93s; same spread_numa16_ccx rankfile and `/usr/bin/time -p` timing.
- EXP-0002 submitted as job 118315497 (4n j05r2n[00-03], 64 ranks); RUNNING at checkpoint.

## Stage 24 - EXP-0002 hcoll result; EXP-0005 full run submitted

- EXP-0002 (hcoll, job 118315497, 4n64 half-day, baseline binary 8c4bc0ae + OMPI_MCA_coll_hcoll_enable=1): COMPLETED 14:14 exit 0; real 851.83s vs S0 922.61s = -7.67%; gate -3% (894.93s) PASSED. Best half-day result so far (EXP-0004 876.37s -5.01%).
- User decision: promote hcoll to full validation run first.
- Created run_EXP-0005_hcoll_gcc731_4n64_full.slurm locally (full input a3e8a5db, full BIN 8c4bc0ae, hcoll runtime flag, gate vs EXP-0003 5412.96s -> <=5250.57s, ntimes=2592,12960, --time=2:30:00, new ID EXP-0005 to keep EXP-0002 half-day logs intact); uploaded via scp; verified hash gates in place.
- Submitted as job 118333863 (4n64 full); ETA ~85-90 min. Validation script val_EXP-0001.slurm to be adapted afterwards.

## Stage 25 - EXP-0005 (hcoll full) FAILED: hang in MPI-IO write path

- Job 118333863 TIMEOUT at 2:30:00 (limit --time=2:30:00), step FAILED exit 1. Model hung writing SCS_his_0001.nc: file stamped Aug 1 08:55 (374,548,724 B) unchanged for 2.5h; SCS_rst.nc 32 B; model.log stuck after 'WRT_HIS wrote history fields (Index=1,1)' at 391604 B.
- Root cause: OMPI_MCA_coll_hcoll_enable=1 (HCOLL hardware collectives) hangs the MPI-IO/NetCDF collective write path. Half-day run never exercises output (NTIMES=432 < NHIS=864), so the hang was invisible; its -7.67% applies only to compute phases.
- EXP-0005 result INVALID (no DONE, incomplete output). Do NOT reuse hcoll flag for full runs. Keep output dir for inspection; delete after user authorization.
- Next candidate: EXP-0004 (norecvzero source change, -5.01% half-day) - no MPI-IO interaction; propose full run.

## Stage 26 - EXP-0006 (norecvzero full) SUCCESS; hcoll full FAILED; teammate E063 found

- EXP-0005 (hcoll full, job 118333863) TIMEOUT at 2:30:00: model hung in WRT_HIS (SCS_his_0001.nc stamped 08:55, 374,548,724 B, never grew). Root cause: OMPI_MCA_coll_hcoll_enable=1 hangs MPI-IO/NetCDF collective write path. Half-day runs never exercise output (NTIMES=432 < NHIS=864), masking the hang. EXP-0005 INVALID; output dir (358M) kept for now.
- EXP-0006 (norecvzero full, job 118349988, 4n64 spread_numa16_ccx, full input a3e8a5db, binary ff471174): COMPLETED 01:26:10 exit 0; real 5126.75s (user 73423.10 sys 8520.77) vs EXP-0003 5412.96s = -5.29%; gate -3% (5250.57s) PASSED. 16 output files 8.5G complete. Half-day (-5.01%) and full (-5.29%) agree.
- val_EXP-0006 first submit (118359408) FAILED in 1s: RUN_DIR sed replace did not match because script uses ${EXP}_f0_original_gcc731_4n64_full_8x8 (variable prefix, literal replace missed). Fixed via remote `sed -i s/_f0_original_gcc731_4n64_full_8x8/_norecvzero_gcc731_4n64_full_8x8/`; resubmitted as job 118361271.
- Teammate (feng) evidence: job 118308549 `feng_E063_3day` COMPLETED 00:41:25 (full three-day ~40min, 4 nodes/128 ranks area), WorkDir=/public/home/fujiake/nan/...; teammate workspace /public/home/fujiake/nan/ with README.md (41,324 B, updated 2026-08-01 14:49) not yet read (FS stalls). Team notebook MCC26决赛.md documents v24a hierarchical Bcast and step3d_t/pre_step3d OpenMP itrc->k swap (full 3-day 46:19 -> 40:42, -12.0%).
- Queue empty at checkpoint; /public at 71% (18G free).

## Stage 27 - EXP-0006 official validation PASSED (26/26); new best 5126.75s

- val_EXP-0006 (job 118361271) COMPLETED 0:0 in 19s. Official vali.py (sha256 97230e0b) on EXP-0006 output: SCS_avg_0001 all 13 variables PASS; Dongsha60_avg_0001 all PASS (u RMSE=0.000057 <= 0.000060); final verdict "两组文件所有变量RMSE均在阈值范围内，优化结果无异常".
- NEW CURRENT BEST: EXP-0006 norecvzero 4n64 full = 5126.75s, officially valid, -5.29% vs EXP-0003 (5412.96s), -22.4% vs organizer target 6606s.
- TODO: refresh remote CURRENT_BEST.md; sync progress.md + SESSION_MEMORY.md.

## Stage 28 - BN final-round snapshot synchronized into the organized local workspace

- Date: 2026-08-01 (desktop task date).
- Source: C:\Users\Fu Jiake\Documents\MCC\BN决赛\决赛.
- Destination: C:\Users\Fu Jiake\Documents\MCC\决赛.
- Pre-merge manifest: source 98 files, destination 96 files; 93 files had identical relative path and SHA-256, 2 were source-only, 0 were destination-only, and 3 same-path files differed.
- Review result: all three differences were append-only newer records (OPTIMIZATION_LOG.md, Skill progress.md, Skill rules.md); no conflicting or regressive edit was found.
- Imported two new files: 01_赛题与规则\官方PPT_优化策略与验证规则.md and SESSION_MEMORY.md. Imported the three append-only updates, then refreshed the root/final README files, Skill plan/progress/evidence-index, and this stage log.
- Material result recorded from the BN lineage: EXP-0006 job 118349988, full real 5126.75 s, official validator job 118361271 recorded 26/26 PASS. EXP-0005 HCOLL job 118333863 is INVALID because it timed out in WRT_HIS.
- Validation boundary: this stage performed a local content/hash synchronization and did not rerun or live-refresh either remote job. Dynamic remote facts must be refreshed before submission.
- Three analyses: analysis/bn_snapshot_sync_20260801/{01_read_summary,02_profiling,03_validity_check}.md.
- Output lifecycle: no model output was created, moved, or deleted; BN source snapshot retained intact. Deletion gate is not applicable.
- Skill synchronization: project package and installed Skill were synchronized. The four changed references were evidence-index.md, plan.md, progress.md, and rules.md; final recursive SHA-256 verification found 10 files in each Skill tree with zero differences.

## Stage 29 - 64-core wording corrected; teammate-best remote audit opened

- Date: 2026-08-01.
- Rule correction: user confirmed that “fixed 64 cores” in the transcribed PPT is a local-optimum/reference-configuration description, not a hard resource constraint. The active ceiling remains four nodes/128 cores.
- Updated paths: 决赛/README.md, 01_赛题与规则/官方PPT_优化策略与验证规则.md, and Skill references rules.md, progress.md, plan.md, evidence-index.md.
- Experiment state: no new build or model run is started. Previous task generated no model output, so deletion is not applicable.
- New stage objective: read-only audit and synchronize the teammate E063 best-result lineage from /public/home/fujiake/nan into a user-private fjk isolation path; review code and produce a minimal-run plan without modifying teammate files or submitting jobs.

## Stage 30 - Teammate O33 final package synchronized into fjk isolation

- Date: 2026-08-01; remote audit time approximately 17:16–17:30 +0800.
- Read-only source package: /public/home/fujiake/nan/backup/tarballs/ROMS_CoSiNE15_O33_final.tar.gz.
- User-private target: /public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801.
- Copy scope: exact 132,615,082-byte source archive, extracted source/build package, timing summary, Slurm/run logs, official validator wrapper/log, source manifest, final submit script, teammate README and bottleneck/plan documents. The 8.5G NetCDF output was not duplicated.
- Integrity: source and copied archive SHA-256 both 7aa2b2a871dc95e5079ff7dcc6ecf0e1baba82ccfa9686aa66c965b5475e47e8; extracted oceanM and oceanM.O33_final both SHA-256 5f1a137e42252c9b978ad50ab344b9d6493f5e5afeeb71ed2d83f0a4228cfcb9.
- Target footprint: initial post-copy reading 624M, 8603 files. Final 17:40 +0800 recheck reports 632M with the same 8603 files and matching archive/binary hashes. No teammate file was modified.
- Exact teammate result anchor: job 118346383, four nodes, 64 MPI x 2 OpenMP, 8x8/8x8 tiles, full NTIMES 2592/12960, time real 2142.793 s, ROMS/TOMS DONE, 16 NetCDF files totaling 8.5G, official validation all 26 checks PASS, Dongsha u RMSE 0.000052.
- Output lifecycle: teammate output remains at /public/home/fujiake/nan/backup/results/3day_118346383 and is read-only to this workflow. No new model output was created in fjk; deletion is not applicable.
- Next action: compare the isolated O33 sources against the validated EXP-0006/norecvzero tree and review legal, numerical and build risks before proposing any run.

## Stage 31 - O33 code review and minimal-run plan completed

- Date: 2026-08-01.
- Local evidence: analysis/teammate_o33_sync_review_20260801/source_evidence contains 16 O33 files (13 comparable source/config paths plus 3 runtime/build configuration files), 13 matching EXP-0006 files, and 10 exact run/validation documents.
- Source comparison: 13 active ROMS/config paths differ; mp_exchange.F is byte-identical. Major deltas are nesting.F +557/-64, distribute.F +284/-44 and five selective-OpenMP hotspots.
- Profiling: O33 reduces EXP-0006 G01 point gathering 25.9982% to 1.5615% and G02 data/point gathering 18.2708%/7.2548% to 0.2830%/0.4335%. Remaining G02 hotspots are predictor, tracer corrector, step2d, GLS, halo exchange and biology.
- Review result: no blocking model-code defect; O33 is a legal and repeatedly validated parent. Runner hardening is mandatory before private reuse.
- Patch safety: O33 has six Arecv zero fills. Only the two in mp_aggregate2d/3d are eligible for the EXP-0006 norecvzero overlay; the other four must remain.
- Plan: one private hardening/build stage, then at most one A-B-B-A sample allocation and one conditional full run. Three-percent full target is 2072.233 s against the two-run O33 mean 2136.323 s.
- Artifacts: analysis/teammate_o33_sync_review_20260801/CODE_REVIEW.md, NEXT_PLAN.md and 01_read_summary.md, 02_profiling.md, 03_validity_check.md.
- Three-pass conclusion: Pass 1 VALID, Pass 2 VALID, final validity VALID.
- Output lifecycle: no new model output; deletion not applicable. Retain the private import (8603 files; current `du -sh` 632M) and do not touch teammate output.
- Handoff: updated the workspace handoff Skill references for plan, progress, project structure and evidence index; installed-Skill equality is verified in the final synchronization check below.
- Final synchronization check: workspace and installed handoff Skill each contain 10 files with zero manifest differences. Remote recheck at 2026-08-01 17:40:35 +0800 confirms archive SHA-256 7aa2b2a8..., both extracted binaries SHA-256 5f1a137e..., retained teammate output 16 NetCDF/8.5G, and an empty `kshcexclu06` queue. No job was submitted.

## Stage 32 - Private O33 two-site norecvzero candidate prepared

- Date: 2026-08-01; remote preparation approximately 17:47-18:09 +0800.
- Immutable parent: `/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15`; parent `distribute.F` SHA-256 `e1de89f3a01974084a91b09bb6064b7e4ff0d67be8276aee7e8d10ef0dcb743a`.
- Private candidate: `/public/home/fujiake/fjk/agent_tmp/isolated/work/o33_norecvzero_abba_20260801/ROMS_CoSiNE15`.
- Local experiment files: `experiments/o33_norecvzero_20260801/{o33_two_site_norecvzero.patch,build_candidate.sh,run_abba_sample.slurm,README.md}`.
- Change: removed only the `Arecv=0.0_r8` assignments in `mp_aggregate2d` and `mp_aggregate3d`. Six parent sites became four candidate sites at lines 2735, 3073, 4931 and 5212. Candidate `distribute.F` SHA-256 is `c91c138ec6b912647f7d0c1d616cd6babc4d3250b7ae7c4e43efd61a8313d704`.
- Static result: the model-tree comparison excluding build products, legacy MATLAB/plot/Lib trees, SVN metadata, input symlink and inherited binaries reports only `ROMS/Utility/distribute.F`; all 15 other audited active source/config paths are byte-identical to O33. Both uploaded scripts pass remote `bash -n`.
- Harness gates: exact A/B/source/input/rules/validator/script hashes, four nodes/64 MPI/2 OpenMP, 8x8 tiles, DT/NDTFAST/144-720 assertions, HCOLL disabled, unique output, failure-safe RC capture, DONE/final-step checks and trajectory/profile extraction.
- Incident: the first long `cp -a` SSH call was initially misread as completed and left a partial private copy. After confirming exact PIDs and path, the copy was stopped; deletion on the shared filesystem did not converge cleanly, so the remaining 1170-file fragment was moved recoverably to `/public/home/fujiake/fjk/agent_tmp/isolated/failed/o33_copy_partial_20260801_1752`. Parent and teammate trees were untouched.
- Output lifecycle: no model output and no Slurm job yet. Previous-task output deletion remains not applicable; immutable parent and teammate result remain retained.
- Next action: incremental rebuild of only `distribute.F` plus relink on one compute node, then record the exact candidate binary hash before any diagnostic submission.

## Stage 33 - O33 two-site norecvzero candidate build completed

- Date: 2026-08-01 18:14:12-18:14:56 +0800.
- Build allocation: interactive Slurm step/job `118364775`, `COMPLETED 0:0`, node `j05r2n14`, 1 task x 8 CPUs, Slurm elapsed 41 s.
- Source: `/public/home/fujiake/fjk/agent_tmp/isolated/work/o33_norecvzero_abba_20260801/ROMS_CoSiNE15`; `distribute.F` SHA-256 `c91c138ec6b912647f7d0c1d616cd6babc4d3250b7ae7c4e43efd61a8313d704`.
- Binary: `oceanM.O33_norecvzero`, SHA-256 `3f9aa42af02861d205b85a3b73ae1c72eef13a4875a4b8b5584cc813d7a75b4c`.
- Build command/result: archived Intel/HPC-X/NetCDF/HDF5 modules, `make -j16`, shell `real 38.548 s`, `MAKE_RC=0`, `BUILD_OK`; all runtime libraries resolved after module load.
- Dependency boundary: changing the `distribute` module triggered 145 compiler commands plus archive/relink work, not a single-object-only build. No compiler warning was found. Three naive `error|fatal` text matches are only filenames `wrt_error`, `def_error`, and `checkerror`, not diagnostics.
- Exact logs: `/public/home/fujiake/fjk/agent_tmp/logs/o33_norecvzero_abba_20260801/build_20260801_181416.log` (SHA-256 `93b7a7f9...3613`), `build_metadata.txt` (`561ab9d6...7f5e`) and `make_dry_run.txt` (`a0c81685...5b9`).
- Validation boundary: build/static evidence only; no runtime speedup or scoring validity claim. No model output was generated.
- Final pre-submit harness update restores the parent runtime limits (`ulimit -s unlimited`, `ulimit -l unlimited`) with explicit failure gates. Final remote/local script SHA-256 is `f54484790205b324d0a34dc2db834dd2bbd77005bbf500c56ed760af67e1d8d1`; remote `bash -n` passes.
- Next action: submit exactly one four-node A-B-B-A `144/720` diagnostic job with candidate binary/source/script hashes supplied as Slurm environment gates.

## Stage 34 - O33 two-site norecvzero A-B-B-A diagnostic submitted

- Date: 2026-08-01 18:19:28-18:19:29 +0800.
- Job: `118364863`, name `fjk_O33_NRZ_ABBA`, partition `kshcexclu06`, initial state `PENDING`, no dependency.
- Resources: four nodes, 128 allocated CPUs, 64 MPI tasks, 16 tasks/node, two CPUs/OpenMP threads per task, exclusive allocation, 30-minute limit.
- Script: `/public/home/fujiake/fjk/agent_tmp/isolated/work/o33_norecvzero_abba_20260801/run_abba_sample.slurm`, SHA-256 `f54484790205b324d0a34dc2db834dd2bbd77005bbf500c56ed760af67e1d8d1`.
- Submit wrapper: local/remote `experiments/o33_norecvzero_20260801/submit_abba.sh`, SHA-256 `0cb70d09732d5c713b9b11d52c9c0bb17853f00ae306f61431da50908989eecb`.
- Hash-gated inputs: A binary `5f1a137e...fcb9`, B binary `3f9aa42a...5b4c`, candidate source `c91c138e...d704`, diagnostic input `05ceb746...b21`, collective rules `0ef5b45a...473`, official validator `97230e0b...78a`.
- Planned order/scope: A1-B1-B2-A2 in one allocation, each `NTIMES=144,720`, same four nodes/rankfile/8x8 tiles/runtime. This is diagnostic and cannot establish a scored full-run result.
- Expected retained run root: `/public/home/fujiake/fjk/mcc_runs/118364863_o33_nrz_abba_sample`; no pre-existing path was allowed by the harness.
- Submission incident boundary: a first long inline SSH command closed before returning. Immediate `squeue` and `sacct` checks proved that it created no job; the short wrapper then created only job 118364863. No duplicate submission exists.
- Output lifecycle: no result is deletable while this job is pending/running. Parent, teammate output, candidate and all diagnostic logs remain retained.
- Next action: monitor exact nodes/hash gates and four run completions; then perform the mandatory three analyses before deciding whether a full run is allowed.

## Stage 35 - Job 118364863 stopped by input-harness preflight; fixed without model execution

- Date: 2026-08-01 approximately 18:19:33-18:23 +0800.
- Slurm: job `118364863` ran on `j05r2n[10-13]`, allocated 128 CPUs, and ended `FAILED 1:0` after four seconds.
- All resource and provenance gates passed: 4 nodes/64 MPI/2 threads, disk, ulimits, A/B/source/input/rules/validator/script hashes.
- Root cause: the generated absolute output path itself contains the substring `output/`, so the assertion `assert 'output/' not in actual` was logically invalid. The model had not started; no A or B segment, shell timing, ROMS output or performance result exists.
- Fix: replace that assertion with an exact replacement-count check. Final run script SHA-256 is `0b380157465c3a9dcff05621a864df2b49a0b3dc378c54071ca5dd924f4b8208`; updated submit wrapper SHA-256 is `1cf823c6e59c054d88b9cc4f5af1e2d05fd1c0c1bae4ebe3c218cba0a238102b`.
- Exact extracted-heredoc preflight now passes against the real base input: 18 path replacements, NTIMES 144/720, both tiles 8x8, generated input SHA-256 `e396b1c9...3493`, `PREFLIGHT_INPUT_OK`.
- Failed preflight evidence is retained at `/public/home/fujiake/fjk/mcc_runs/118364863_o33_nrz_abba_sample`; it contains harness/preflight files only and must not be treated as model output.
- Classification: harness failure, not an ineffective optimization result and not a completed diagnostic submission. It does not count toward the two-ineffective-attempt rule.
- Next action: submit one corrected A-B-B-A job after confirming no active queue entry and the updated script hashes.

## Stage 36 - Corrected A-B-B-A diagnostic job 118365058 running

- Date: submitted 2026-08-01 18:25:31 +0800; observed RUNNING at 18:25:47 +0800.
- Job: `118365058`, `fjk_O33_NRZ_ABBA`, no dependency, nodes `j05r2n[10-13]`, four nodes/128 CPUs, 64 tasks x 2 CPUs/threads, exclusive.
- Corrected script SHA-256 `0b380157...8208`; submit wrapper SHA-256 `1cf823c6...102b`; all pre-submit queue, free-space, source/binary/script and syntax gates passed.
- Expected unique run root: `/public/home/fujiake/fjk/mcc_runs/118365058_o33_nrz_abba_sample`.
- Failed-preflight job 118364863 is retained separately and was not reused. No full run exists.
- Next action: monitor A1/B1/B2/A2 completion, exact `time real`, final steps, DONE, trajectory hashes and profiles; then write all three analysis files before any branch decision.

## Stage 37 - Job 118365058 completed A1 but post-run terminal-step check was over-strict

- Date: 2026-08-01 18:26:17-18:29:14 +0800.
- Slurm: job `118365058` on `j05r2n[10-13]` ended `FAILED 2:0` after 2:57; its mpirun step completed `0:0` in 2:09.
- Valid A1 model evidence: exact O33 binary, NTIMES headers `1-144` and `1-720`, `ROMS/TOMS: DONE`, both grid completion profiles, shell `real 129.380 s`, trajectory/profile artifacts. No NetCDF was expected at this short output interval.
- Harness root cause: the script required literal progress rows numbered 144 and 720. ROMS completed both configured ranges but does not guarantee terminal progress rows at the print interval, so A1 was rejected after successful completion. B1/B2/A2 never started.
- Fix: require exact configured step-range headers, DONE and both final elapsed-time profiles instead of terminal progress-row printing. Corrected script SHA-256 is `a28ad4f7bdb98288f671d5bad74ce55d7b82133091b4cffd6e5e2715223486a2`; submit wrapper SHA-256 `f657e23d632fb7ad41108fdab48c4bbc7b9ab2268c8ddc05e85d449557373ea4`; both pass remote `bash -n`.
- Classification: A1 is a valid ancillary diagnostic sample, but the planned A-B-B-A comparison is incomplete and no candidate effectiveness result exists. This is a harness failure, not an ineffective candidate attempt.
- Evidence retained: `/public/home/fujiake/fjk/mcc_runs/118365058_o33_nrz_abba_sample` and Slurm logs. It will not be deleted or silently merged into the primary matched allocation.
- Next action: submit one final corrected A-B-B-A allocation. If another harness-only failure occurs, stop submissions and return to PLAN/review rather than continuing retries.

## Stage 38 - Final corrected A-B-B-A allocation submitted

- Date: 2026-08-01 18:31:54-18:31:57 +0800.
- Job `118365261`, `fjk_O33_NRZ_ABBA`, initial `PENDING`, no dependency, four nodes/128 CPUs, 64 MPI x 2 OpenMP, exclusive, 30-minute limit.
- Script SHA-256 `a28ad4f7...86a2`; submit wrapper `f657e23d...3ea4`. Queue, 20-GiB free-space floor, source/binary/script hashes and remote syntax all passed.
- Expected run root: `/public/home/fujiake/fjk/mcc_runs/118365261_o33_nrz_abba_sample`.
- Scope remains A1-B1-B2-A2 at `144/720`; this is diagnostic only. No automatic full submission exists.
- Retry boundary: this is the final harness-corrected allocation. Any further harness failure stops submission and triggers review.

## Stage 39 - O33 two-site norecvzero diagnostic completed; branch stopped

- Date: 2026-08-01; final remote recheck completed after job end.
- Optimization under test: remove only the two aggregate-path `Arecv=0.0_r8` assignments in `mp_aggregate2d/3d` on top of the validated teammate O33 parent. Parent source is `/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15`; candidate source is `/public/home/fujiake/fjk/agent_tmp/isolated/work/o33_norecvzero_abba_20260801/ROMS_CoSiNE15`.
- Job `118365261` completed `0:0` in Slurm elapsed `00:08:38` on `j05r2n[12-15]`, four nodes/128 CPUs, 64 MPI x 2 OpenMP, 8x8/8x8 tiles, HCOLL disabled, diagnostic `NTIMES=144,720`.
- Matched A-B-B-A shell times: A1 O33 `129.687 s`; B1 candidate `129.371 s`; B2 candidate `128.699 s`; A2 O33 `124.995 s`. Mean A=`127.341 s`, mean B=`129.035 s`, reported gain=`-1.3303%`; neither the 3% promotion gate nor the 2% ambiguity floor is met.
- All four model runs reached `ROMS/TOMS: DONE`, printed both grid profiles, and produced the same trajectory SHA-256 `fa498694...e44b0`. No NetCDF was expected at this short interval, so the official validator was not run and no scoring/accuracy claim is made.
- Profiling result: candidate profile totals are about `+2.90%` on both grids. The directly relevant `Message Passage: data gathering` row is absent from all four short profiles; point-gathering changes are mixed. O33 has already collapsed the historical aggregate/gather bottleneck, so there is no profile evidence supporting a full run.
- Decision: `STOP_BRANCH`. Do not submit a half-day or full three-day candidate. This is one ineffective optimization attempt in the current sequence; the two-ineffective-attempt PLAN/research rule is not triggered yet.
- Three analyses are complete and valid at `analysis/o33_norecvzero_abba_118365261/{01_read_summary.md,02_profiling.md,03_validity_check.md}`. Evidence manifest is `analysis/o33_norecvzero_abba_118365261/EVIDENCE_MANIFEST.md`.
- Remote retained result: `/public/home/fujiake/fjk/mcc_runs/118365261_o33_nrz_abba_sample`, `1.4M`, 20 files. Rechecked hashes: `summary.tsv=f163db0e...a0aa`, `decision.txt=c8086df4...3e2`, `harness.log=ea51442e...c1a8`, `rankfile=2e7353e8...6b89`.
- Output lifecycle: no deletion. Retain jobs `118364863`, `118365058`, and `118365261`, the immutable O33 parent, and the private candidate. Any future deletion is permitted only at the start of a later task after exact private-path and three-analysis gates are rechecked.
- Next task plan: static-only review of repeated-argument exponential common-subexpression opportunities in `ROMS/Nonlinear/Biology/bio_UMAINE15.h`; no new model job was submitted.

## Stage 40 - O33 biology exp CSE rejected before build

- Date: 2026-08-01; remote status/deletion audit at approximately 19:02 +0800.
- Previous-result lifecycle: resolved `/public/home/fujiake/fjk/mcc_runs/118365261_o33_nrz_abba_sample` inside the private run root; local `01_read_summary.md`, `02_profiling.md`, and `03_validity_check.md` exist and are valid. Four segment `output` directories contain zero NetCDF files, so there is no model output to delete. The 1.4M log/evidence root remains retained.
- Reviewed immutable source: `/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15/ROMS/Nonlinear/Biology/bio_UMAINE15.h`, local/remote SHA-256 `f4fb45d7...9abe`.
- Existing object evidence: `Build/biology.o`, SHA-256 `1db6cb47...fdd6`, contains 42 `exp` relocations. The compiler already hoists source line 630 shallow-water `exp(cff2)` before the compiled K loop; separate hot-path calls remain for Q10, pnh4s1, alts1, pnh4s2 and alts2 at `0x8af2/0x8b68/0x8c40/0x8cd2/0x8dc0`.
- Both grids use `BioIter=1`, `parsats1=parsats2=80`, so a universal guarded reuse could remove the second light-limitation `exp` while retaining the original formula when parameters differ. No value may be hard-coded.
- Full O33 profile: Grid 01 biology `1.9939%`, Grid 02 `5.5896%`, combined `7.5835%` of the same total. One removable call is only one of at least six mandatory per-cell/per-level exponentials.
- Deliberately impossible upper bound: `7.5835%/6=1.2639%`, about `27.083 s` of O33 `2142.793 s`; below the 2% (`42.856 s`) ambiguity floor and 3% (`64.284 s`) promotion gate. Real benefit must be lower after non-exp work, carbon/oxygen paths, branch and spill overhead.
- Decision: `REJECT_BEFORE_BUILD`. No source variant, build, Slurm job, model output, speedup or accuracy result was created.
- Three analyses: `analysis/biology_exp_cse_review_20260801/{01_read_summary.md,02_profiling.md,03_validity_check.md}`; Pass 1 VALID, Pass 2 VALID, final validity VALID.
- Ineffective sequence count: two consecutive directions (`O33 norecvzero`, then `biology exp CSE`). Stop experiments and enter PLAN research with papers and similar open-source projects, prioritizing Chinese-platform relevance.
- Output lifecycle: deletion not applicable; no NetCDF from the prior short diagnostic and none from this static review.
- Skill synchronization: workspace and installed Skill each contain 10 files with zero recursive path/hash differences; `progress.md`, `plan.md`, `evidence-index.md`, and `project-structure.md` record this stage.

## Stage 41 - Two-ineffective-attempt PLAN research completed

- Date: 2026-08-01.
- File path: `analysis/plan_research_after_two_ineffective_20260801/`.
- Optimization content: stopped model experiments after two ineffective directions and reviewed primary papers/open-source sources for ocean-model loop/data-movement optimization, communication removal/grouping, and real computation-communication overlap. Chinese swPOM, swNEMO, LICOM and OMARE/JASMIN work were prioritized, then checked against NEMO communication optimization, official ROMS develop/ticket 839, and Intel ifort optimization-report documentation.
- O33 source anchors: `step3d_t.F` SHA-256 `450c9892...e5b62e`, 1325 lines; `pre_step3d.F` SHA-256 `de54caa2...98721b`, 1158 lines. O33 already batches active MPDATA tracers with `mp_exchange4d`, already has O25 K-outer tracer reordering, and O46 `nowait` was ineffective; no upstream wholesale port or generic async edit is justified.
- Profile gate: validated full O33 job `118346383`, real `2142.793 s`, 26/26 official checks. The at-least-24.6% `pre_step3d + step3d_t` hotspot needs an 8.2% joint reduction for a 2% end-to-end result. The exact 15.7796% two-grid 2-D+4-D halo bucket needs at least 12.7% removed or hidden for 2% end-to-end.
- Result: select P0, a zero-run ifort `vec,loop,openmp` optimization-report and active-path data-flow/assembly audit of exact O33 preprocessed hot sources. P1 caller-side halo dependency analysis is conditional. A model candidate is forbidden until a static 2% viability gate passes.
- Three analyses: `01_read_summary.md` SHA-256 `5788b1ca...473e0`; `02_profiling.md` `6ef53446...5d636`; `03_validity_check.md` `bf43f1bf...03e44`. Pass 1 VALID, Pass 2 VALID, final validity VALID; no performance or new accuracy claim.
- Output lifecycle: no source edit, candidate build, Slurm job, model output, or deletion. Job `118365261` logs remain retained and its four output directories still contain zero NetCDF files.
- Skill synchronization: workspace package and installed `mcc26-roms-cosine-handoff` each contain 10 files; recursive path/SHA-256 comparison reports zero differences. Updated `progress.md`, `plan.md`, `evidence-index.md`, and `project-structure.md`; `SESSION_MEMORY.md` records the P0 handoff.

## Stage 42 - P0 flag screen completed; two-object AVX2 runtime branch rejected

- Date: 2026-08-01; final job and analysis checks completed before 20:41 +0800.
- File paths: scripts under `experiments/ifort_optrpt_20260801/`; analysis under `analysis/o33_avx2hot_abba_118368170/`; remote candidate `/public/home/fujiake/fjk/agent_tmp/isolated/work/o33_avx2hot_abba_20260801/ROMS_CoSiNE15`; retained run `/public/home/fujiake/fjk/mcc_runs/118368170_o33_avx2hot_abba_sample`.
- Optimization content: generated exact O33 ifort optimization reports, screened seven compile-only variants, then relinked only `pre_step3d.o` and `step3d_t.o` with `-march=core-avx2` while preserving precise floating-point flags and all source/input/runtime settings.
- Job `118368170` completed A1-B1-B2-A2 on four nodes, 64 MPI x 2 OpenMP, 8x8/8x8, diagnostic `144/720`; real times `129.238/131.404/132.009/125.155 s`.
- Result: mean A `127.1965 s`, mean B `131.7065 s`, AVX2 regression `3.5457%`. The two target timers improve only `0.389%` while total profile time regresses about `3.72%`.
- All four runs reach DONE and share one printed-trajectory hash; zero NetCDF is expected, so no official accuracy claim is made.
- Decision: `STOP_BRANCH`. No half-day/full run. This is ineffective attempt 1 after the PLAN reset.
- Three analyses are valid at `analysis/o33_avx2hot_abba_118368170/{01_read_summary.md,02_profiling.md,03_validity_check.md}`. Previous-result deletion gate was rechecked at the next task start: all three files exist and are valid, the remote path resolves inside the private root, and the run has zero NetCDF; logs remain retained and nothing was deleted.

## Stage 43 - Teammate O48 one-day result synchronized read-only; biology CSE not promoted

- Date: 2026-08-01 20:41-20:48 +0800.
- File paths reviewed read-only: `/public/home/fujiake/nan/ROMS_CoSiNE15/{sub_o48_fusion_1day.sh,oceanM.O48_fusion.bak,log_SCS_Dongsha60_2021_daily_O48_1day_20260801_202231_J118368357.txt,TIMING_O48_1day_118368357.txt,vali_O48_1day_118368357.log,output_O48_1day_118368357}` and `/public/home/fujiake/nan/report_his/O48_fusion_sprint.md`.
- Optimization content: only `bio_UMAINE15.h`; hoist one repeated vertical-loop exponential and reuse the light-limitation exponential under a general equality guard. Parent/O48 source SHA-256 `f4fb45d7...9abe` / `b4f9b821...585e4`; binary `ff1bdd5e...f3b04`.
- Job `118368357` completed `0:0` in `00:13:17` on `j05r2n[00-03]`; one-day `real=739.184 s`; eight NetCDF files, about 4.0 GiB; official validator passes all 26 variables with Dongsha `u=0.000052`.
- Result: against inherited O33 one-day `725.47 s`, O48 is about `1.89%` slower (`0.98145x`). The intended biology timer falls only `1.554%`, equivalent to roughly `0.12%` whole-program rank time; large GLS/halo movement is non-target variability.
- Decision: accuracy accepted, performance `DO_NOT_PROMOTE` and `DO_NOT_REPEAT`; O33 remains parent. Because this is read-only teammate evidence, it does not increment our post-PLAN ineffective-attempt count.
- Three analyses: `analysis/teammate_o48_sync_review_20260801/{01_read_summary.md,02_profiling.md,03_validity_check.md}`; all valid.
- Output lifecycle: teammate output was neither copied nor modified. Private job `118368170` remains retained with zero NetCDF; nothing was deleted.
- Next optimization step: complete the conditional P1 caller-side halo dependency/viability audit. Whole-file nonblocking exchange O26/O26b, Ntile scans, 128 pure MPI, reverse KMP tuning, recursive-doubling forcing, HCOLL and UCX remain closed by measured evidence. No new model job is allowed unless a real begin/interior/end overlap passes the static 2% gate.

## Stage 44 - P1 MPI overlap probe proves progress but rejects ROMS branch by upper bound

- Date: 2026-08-01 20:48-21:01 +0800.
- File paths: local `experiments/mpi_overlap_probe_20260801/`; remote script root `/public/home/fujiake/fjk/agent_tmp/isolated/scripts/mpi_overlap_probe_20260801`; retained audit `/public/home/fujiake/fjk/agent_tmp/isolated/audits/mpi_overlap_probe_118369338`; analyses `analysis/mpi_overlap_probe_118369338/`.
- Optimization content: no ROMS edit. A four-node/64-rank/2-thread 8x8 microbenchmark tests a true `MPI_Irecv/Isend -> oHz-like independent reciprocal loop -> MPI_Waitall` pipeline with Grid02-like 512-KiB and Grid01-like 704-KiB neighbor messages.
- Source/script SHA-256: `6855a75a...b1a90` / `f7af245b...ad924`; probe binary `65a85841...a4748`.
- Platform incident: jobs `118369309` and `118369327` both ended before script entry with `JobLaunchFailure 0:53`; no audit root or result. The unchanged script ran via explicit allocation `118369338`, which completed `0:0` in 11 seconds on `j05r2n[14-17]`; probe real `5.172 s`.
- Result: rep=1 Grid02/Grid01 communication `0.483780/0.666417 ms`, compute `0.080481/0.179383 ms`, overlapped total `0.482584/0.708238 ms`, saved `0.081677/0.137562 ms`. The platform does make asynchronous progress.
- Full-run projection: measured clean-window saving `1.415095 s` (`0.06604%`); optimistic 100%-hidden network ceiling `7.997142 s` (`0.37321%`). O33 needs `42.85586 s` for 2%; the ceiling misses by over 5x.
- Decision: `REJECT_BEFORE_ROMS_BUILD`. No candidate source/build/model run. A deeper interior/boundary split cannot hide more network time and adds semantic/OMP overhead.
- Three analyses are valid at `analysis/mpi_overlap_probe_118369338/{01_read_summary.md,02_profiling.md,03_validity_check.md}`; raw evidence is retained below that directory.
- Ineffective sequence: AVX2 plus P1 caller overlap are two consecutive post-PLAN directions below the gate. Stop experiments and enter PLAN research with internet/open-source/China-prioritized evidence before another job.
- Output lifecycle: 166-KiB audit retained; no NetCDF/model output exists and nothing was deleted.

## Stage 45 - Mandatory PLAN research selects current-O33 collective histogram

- Date: 2026-08-01 after 21:01 +0800.
- File path: `analysis/plan_research_after_overlap_20260801/`.
- Optimization content: no code/run; internet and live-platform review after the two-ineffective rule triggered. Primary sources include Chinese swPOM and LICOM research, official ROMS MPI material, Open MPI `tuned` documentation, and upstream `open-mpi/ompi-collectives-tuning`.
- Live environment: Open MPI `4.0.4rc3`; `coll_tuned` Allreduce and Allgather each expose algorithms 0-6. Current `coll_rules.conf` SHA-256 `0ef5b45a...473` uses Allreduce thresholds 64 KiB/4 MiB and Allgather threshold 1 MiB.
- Result: select P0, a private PMPI histogram of current O33 collective message sizes/times at diagnostic `144/720`. Do not change rules yet.
- Quantitative gate: after a bounded algorithm microbenchmark, require `measured collective share * weighted time reduction >= 2%`; the provisional screen is at least 13.33% collective share and 15% weighted reduction. Otherwise reject before model A-B-B-A.
- Rejected/reclosed: async halo, output I/O, Ntile/rank count, reverse KMP, broad OpenMP, HCOLL/UCX, O15a global recursive doubling, AVX2/compiler microflags, GLS/biology CSE and prior communication-source variants.
- Three analyses are valid at `analysis/plan_research_after_overlap_20260801/{01_read_summary.md,02_profiling.md,03_validity_check.md}`. No source, build, job, output, performance, or accuracy result was created.
- Previous-result gate: overlap analyses exist and are valid; the retained 166-KiB audit has no model output, so no deletion is applicable.

## Stage 46 - Current-O33 PMPI collective histogram rejects a blind collective-rule sweep

- Date: 2026-08-01 21:15-21:26 +0800.
- File paths: local `experiments/pmpi_collective_hist_20260801/`; remote script root `/public/home/fujiake/fjk/agent_tmp/isolated/scripts/pmpi_collective_hist_20260801`; retained successful audit `/public/home/fujiake/fjk/agent_tmp/isolated/audits/o33_collective_hist_118370068`; analyses `analysis/o33_collective_hist_118370068/`.
- Optimization content: no ROMS/source/grid/rule edit. `LD_PRELOAD` PMPI instrumentation records per-rank Allreduce/Allgather/Allgatherv/Bcast message sizes and call time for immutable O33 at diagnostic `144/720`, 4 nodes, 64 MPI ranks x 2 OpenMP threads, 8x8 tiles.
- Final hashes: profiler `89f7fe7d...e132`, analyzer `ca7da9c...dda3`, harness `8ca3136f...6584`; immutable O33 binary/input/rules hashes passed before launch.
- Incidental harness failures: allocation `118369921` lacked the isolated relative `ROMS/External/varinfo.dat` path; `118370031` found no `/usr/bin/python3` on compute nodes. Both exited before a model result. A read-only ROMS symlink and organizer Miniforge absolute path fixed these issues; their small private audits are retained.
- Successful allocation `118370068` completed `0:0` in `00:02:19` on `j04r2n[16-19]`; model `real=130.730 s` under instrumentation, DONE, 64/64 rank histograms, zero NetCDF as expected.
- Result: timed collectives average `15.217087 s/rank`, `12.053999%` of rank lifetime. Bcast is `9.820224 s`/`7.778950%`; Allreduce is `5.396863 s`/`4.275049%`; no Allgather/Allgatherv was observed.
- Gate: 2% whole-program gain requires `16.5920%` reduction of all measured collective time. A 15% weighted reduction gives only `1.80810%`; even an optimistic all-calls-scale full normalization gives `1.91741%`. Large communicator-16 Bcasts are partly one-time startup traffic, so realistic full-run share is lower.
- Decision: `STOP_AT_PROVISIONAL_SCREEN`; do not launch a collective algorithm sweep or ROMS A-B-B-A. O33 rules remain unchanged. This is the first below-gate direction after the latest PLAN reset.
- Three analyses are valid at `analysis/o33_collective_hist_118370068/{01_read_summary.md,02_profiling.md,03_validity_check.md}`; complete raw evidence is retained. Nothing was deleted.
- Handoff sync: workspace, installed, and BN Skill packages each contain 10 files with zero manifest differences; Skill frontmatter begins correctly. BN analysis contains the same 76 files with zero hash differences, and all four experiment scripts match. Master log was synchronized after this entry.

## Stage 47 - O33 3-D Allreduce batching rejected by impossible favorable bound

- Date: 2026-08-01 after 21:26 +0800.
- File paths: exact O33 source evidence under `analysis/teammate_o33_sync_review_20260801/source_evidence/o33/`; new analyses `analysis/o33_3d_allreduce_batch_review_20260801/`.
- Optimization content: zero-run source/PMPI mapping only. No source, binary, MPI rule, input, job, output, runtime, or accuracy result was created.
- Source anchors: `nesting.F` SHA-256 `9d8434c7...95c`; `distribute.F` `e1de89f3...43a`. The 17-tracer loop plus u/v each reaches `fine2coarse3d -> Packed -> mp_sum -> MPI_Allreduce(MPI_SUM)`.
- PMPI mapping: 626,416 bytes x 2,448 calls=`17x144`; 613,088 and 613,632 bytes x 144 calls each=u/v. Total `2,736=19x144` calls and `1.650180496 s/rank`.
- Result: even deleting all 19 calls entirely and scaling their time by 18 gives only `1.386193%` of validated O33 full `2142.793 s`. A real 11,875,792-byte batched Allreduce retains payload work and adds packing/lifetime overhead, so benefit must be lower.
- Decision: `REJECT_BEFORE_BUILD`; no edit/build/run. Three analyses are valid at `analysis/o33_3d_allreduce_batch_review_20260801/{01_read_summary.md,02_profiling.md,03_validity_check.md}`.
- Ineffective sequence: blind collective-rule sweep plus 3-D Allreduce batching are two consecutive below-gate directions after the latest PLAN reset. Stop experiments and enter mandatory internet/open-source/China-prioritized PLAN research before any further experiment.
- Output lifecycle: prior histogram analyses were rechecked; successful and incidental-failure audits contain zero NetCDF and remain retained. Nothing was deleted.
- Handoff sync: workspace, installed and BN Skill packages each contain 10 files with zero manifest differences; the three Stage-47 analyses match the BN mirror exactly. Master log synchronized after this entry.

## Stage 48 - Mandatory PLAN research selects site-resolved step2d exchange timing

- Date: 2026-08-01 21:26-21:52 +0800.
- File paths: `analysis/plan_research_after_collectives_20260801/{01_read_summary.md,02_profiling.md,03_validity_check.md}`; immutable source `/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15`.
- Optimization content: no edit/build/job. After the two-below-gate trigger, reviewed Chinese NEMO/swPOM work, NEMO communication grouping, official ROMS MPI changes, official Open MPI collective guidance, and exact O33 `step2d`/nesting data flow.
- Source anchors: preprocessed `Build/step2d.f90` SHA-256 `9806a56e...ff5`; `step2d_LF_AM3.h` `0f03de31...a7`. O33 already groups fields at each exchange site, but retains a beginning `DUon/DVom` and ending `ubar/vbar` exchange in every actual predictor/corrector invocation.
- Dependency boundary: the next invocation computes `DUon/DVom` before the first stencil use of `ubar/vbar` ghosts, suggesting delayed grouping may be possible; however active two-way nesting consumes predictor/corrector contact fields between calls, so the NEMO schedule cannot be copied without site timing and contact-semantics proof.
- Profile gate: full O33 2-D halo pool is `1.1851% + 5.6573% = 6.8424%`. Equal-call arithmetic for removing two of seven fast-step calls gives only `1.95497%`; payload bytes remain, and total timers cannot attribute synchronization imbalance to the end site.
- Result: authorize one zero-output diagnostic that times only the exact beginning and ending `step2d` exchange sites without changing behavior. Reject before a schedule-changing build if the measured full-run-scaled removable end-site ceiling is below `42.85586 s`/2%. No candidate/full run is authorized yet.
- Three analyses: Pass 1 VALID, Pass 2 VALID, final validity VALID. No source, binary, job, output, speedup, accuracy result, or deletion.
- Next task start must recheck the prior private PMPI audit path and its three analyses. All prior audits have zero NetCDF, so deletion is not applicable and logs remain retained.

## Stage 49 - O33 step2d end-exchange site profile closes delayed grouping route

- Date: 2026-08-01 21:52-22:22 +0800.
- File paths: local scripts/source `experiments/step2d_siteprof_20260801/`; analyses `analysis/o33_step2d_siteprof_118371327/`; private variant `/public/home/fujiake/fjk/agent_tmp/isolated/work/o33_step2d_siteprof_20260801/ROMS_CoSiNE15`; remote build logs `/public/home/fujiake/fjk/agent_tmp/logs/o33_step2d_siteprof_20260801`; retained audit `/public/home/fujiake/fjk/agent_tmp/isolated/audits/o33_step2d_siteprof_118371327`.
- Optimization content: profile-only `SYSTEM_CLOCK` counters around unchanged beginning `DUon/DVom` and ending `ubar/vbar` `mp_exchange2d` calls. The source diff adds 57 lines, deletes zero, and retains all six exchange calls and arguments.
- Build hashes: parent/instrumented source `0f03de31...a7` / `8a46eb11...f87f`; parent/instrumented binary `5f1a137e...fcb9` / `ca88a5e0...a4d`.
- Preparation incidents: first compile rejected runtime `Ngrids` for initialized local `SAVE` arrays; fixed to two profiling slots for the frozen two-grid diagnostic. The successful retry was initially stopped by a `strings | grep -q`/`pipefail` gate despite correct binary symbols; the gate was fixed without another compile. Both logs are retained and neither incident produced a model result.
- Job `118371327` completed `0:0` in `00:02:20` on `j05r2n[14-17]`, four nodes/128 CPUs, 64 MPI x 2 OpenMP, 8x8/8x8, diagnostic `144/720`; model `real=132.302 s` under instrumentation, DONE, both profiles, 128/128 site files, zero NetCDF.
- Coverage: each rank has Grid01/Grid02 ending calls `12096/60480`, exactly `84*144` and `84*720`; beginning counts are one auxiliary call per long step higher.
- Result: ending-site mean across both grids `1.662375719 s/rank`; full-scaled mean `29.922762938 s`=`1.396437404%`. Maximum combined rank 63 is `2.256610 s`; even deleting its complete time projects to only `40.61898 s`=`1.895609142%`, `2.23688 s` below the 2% gate.
- Decision: `REJECT_BEFORE_SCHEDULE_BUILD`. Real delayed grouping retains payload transfer and must save less; no schedule candidate, A-B-B-A, half-day or full run.
- Three analyses: Pass 1 VALID, Pass 2 independently reproduced from all 128 TSV files, final validity VALID. This is ineffective direction 1 after the Stage-48 PLAN reset.
- Output lifecycle: remote audit `451K`/137 files and build logs `474K` remain retained; zero NetCDF, no deletion. A recursive evidence-download incident followed the remote Inputfiles symlink; the remote was untouched and the four partial local copies (`659,113,840` bytes) were moved recoverably to `C:\Users\Fu Jiake\Documents\MCC\_quarantine\20260801_step2d_scp_inputfiles_partial`, outside the analysis package.
- Next minimal-run direction: zero-run exact-O33 `pre_step3d` cross-tracer invariant/data-reuse audit. No build/job unless a source-level full-O33 2% ceiling is demonstrated.

## Stage 50 - Exact-O33 pre_step3d invariant audit authorizes one diagnostic

- Date: 2026-08-01 after Stage 49.
- File path: `analysis/pre_step3d_invariant_review_20260801/`; exact source `/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15/ROMS/Nonlinear/pre_step3d.F`.
- Optimization content: zero-run source/compiler-report audit. O33 already has the horizontal K-outer/T-inner reordering. In the vertical `T_LOOP2`, `cff*pm(i,j)*pn(i,j)` is nevertheless recomputed for all 17 tracers and 34 levels although it is invariant across both loops.
- Candidate scope: one OpenMP-private 1-D `real(r8)` scratch, computed once per `j,i`, replacing only the repeated vertical `cff1` expression. The arithmetic order, advection scheme, grid, time integration, MPI layout, ecology, nesting and output remain unchanged.
- Static result: combined full-O33 predictor share `18.1701%`; 2% whole needs 11.0068% predictor reduction. A deliberately favorable compute-count ceiling is `3.0284%` whole-program, while an optimistic memory-traffic projection is only about `1.3977%`. The target loop is already vectorized (`1.66/1.36` ifort estimated paths).
- Decision: `BUILD_ONE_DIAGNOSTIC_CANDIDATE`. Authorize only one four-node A-B-B-A at `144/720`, 64 MPI x2 OpenMP, 8x8/8x8. Reject below 2%; no half-day/full run is authorized by static evidence.
- Three analyses are valid at `analysis/pre_step3d_invariant_review_20260801/{01_read_summary.md,02_profiling.md,03_validity_check.md}`. This stage creates no model output, speedup, accuracy result, or deletion.

## Stage 51 - pre_step3d metric reuse is ineffective; experiments stop

- Date: 2026-08-01 22:49-23:10 +0800.
- File paths: local scripts/source `experiments/pre_step3d_pmnreuse_20260801/`; analyses `analysis/o33_pmnreuse_abba_118372618/`; private candidate `/public/home/fujiake/fjk/agent_tmp/isolated/work/o33_pmnreuse_abba_20260801/ROMS_CoSiNE15`; retained run `/public/home/fujiake/fjk/mcc_runs/118372618_o33_pmnreuse_abba_sample`.
- Optimization content: one OpenMP-private r8 `pmn_dt(i)` vector in `pre_step3d`, computed once per `j,i`, replaces only repeated `cff*pm*pn` loads/multiplies in the vertical tracer update. Source-tree diff is exactly one file, seven additions/three deletions.
- Build result: parent/candidate binary `5f1a137e...fcb9` / `eabad62d...f4f72`; candidate source/object `93472d10...15dfd` / `8dfdddc9...b3463`. Target loop remains vectorized with report paths `1.71/1.38`.
- Preparation incidents: private 505-MiB clone was slow under filesystem contention but `make` succeeded in 41.712 s. Job `118372547` stopped after five seconds before model launch because the private `Inputfiles` symlink was absent; the link was added in the candidate only and the unchanged script was resubmitted. Neither incident is a performance sample.
- Job `118372618` completed `0:0` in `00:08:49` on `j05r2n[00-03]`, four nodes, 64 MPI x2 OpenMP, 8x8/8x8, diagnostic `144/720`.
- A1/B1/B2/A2 real times `132.956/132.446/132.174/126.991 s`; A mean `129.9735`, B mean `132.3100`, candidate regression `1.797674%`, `both_B_faster=False`.
- Direct predictor timer: combined A/B means `1813.8980/1810.8990`, only `0.165335%` candidate improvement versus the 11.0068% predictor reduction needed for 2% whole-run.
- All four runs DONE with identical printed trajectory `fa498694...e44b0`, zero NetCDF. Official accuracy remains unverified.
- Decision: `STOP_BRANCH`; no half-day/full/reproduction. This is ineffective direction 2 after Stage 48, so stop model experiments and enter mandatory web/open-source/China-prioritized PLAN research.
- Three analyses valid at `analysis/o33_pmnreuse_abba_118372618/{01_read_summary.md,02_profiling.md,03_validity_check.md}`. All remote evidence retained; nothing deleted.

## Stage 52 - Mandatory PLAN selects square-node rank mapping

- Date: 2026-08-01 after Stage 51.
- File path: `analysis/plan_research_after_pmnreuse_20260801/`.
- Optimization content: no source/build/job. Mandatory China-priority and open-source research reviewed NEMO code modernization, swPOM, swNEMO, NEMO communication/decomposition, and official ROMS GATHERV/SCATTERV work against exact O33 closed-route evidence.
- Research result: Sunway CPE/DMA and mixed precision are inapplicable; random compiler/data-reuse, gather/scatter, generic async and communication-deletion routes remain closed. NEMO's square-node rank placement maps directly to O33 without changing source or numerical settings.
- Exact O33 `mp_exchange.F=c66ab7bb...e577a` assigns `rank=j*8+i`. Current rankfile puts contiguous 16-rank blocks on nodes, producing four 8x2 stripes.
- Exact edge audit: current 24 inter-node/88 intra-node cardinal edges per 8x8 grid; four 4x4 node blocks give 16/96. Inter-node pairs fall `33.3333%` on both grids.
- Full O33 2-D+4-D halo share `15.7796%`; 2% whole requires `12.6746%` halo reduction. Favorable mapping ceiling `5.25987%`; it clears 2% if at least `38.0238%` of halo time is inter-node-sensitive.
- Decision: `AUTHORIZE_ONE_MAPPING_ONLY_A-B-B-A` at `144/720`, immutable O33, four nodes, 64 MPI x2 OpenMP, 8x8/8x8. No source build or full run. Require >=3%, both B faster, halo timer support and trajectory consistency before promotion.
- Three analyses valid at `analysis/plan_research_after_pmnreuse_20260801/{01_read_summary.md,02_profiling.md,03_validity_check.md}`. Edge-audit script/JSON hashes `a7e19c46...c4848` / `481e9ffb...aed79`. No output/deletion.

## Stage 53 - Square-node rank mapping is below gate; branch closed

- Date: 2026-08-01 23:27-23:36 +0800.
- File paths: scripts `experiments/rankmap_square_20260801/`; source-free private runtime `/public/home/fujiake/fjk/agent_tmp/isolated/work/o33_rankmap_abba_20260801/runtime`; retained run `/public/home/fujiake/fjk/mcc_runs/118373369_o33_rankmap_abba_sample`; local three-pass analysis `analysis/o33_rankmap_abba_118373369/`.
- Optimization content: mapping only. Immutable O33 binary `5f1a137e...fcb9`, input, MPI collective rules, 64 ranks x two threads and 8x8/8x8 tiles are unchanged. Current 8x2-stripe rankfile versus square-node 4x4-block rankfile reduces audited inter-node cardinal edges 24 to 16 per grid (33.3333%).
- Result: job `118373369` completed `0:0` on `j04r2n[08-11]`; real A1/B1/B2/A2=`128.132/125.746/124.383/123.998 s`, ABBA mean A=`126.065 s`, B=`125.0645 s`, apparent B gain=`0.7936%`, `both_B_faster=False`.
- Profiling: combined two-grid 2-D+4-D halo mean is A=`1528.751 s`, B=`1548.159 s`; B is `1.2695%` higher. The small wall difference is not supported by the relevant profile and run-order drift is material.
- Validity: all four runs are DONE with the same printed trajectory SHA `fa498694...e44b0`; zero NetCDF is expected for diagnostic 144/720. Official validator/full-input scoring validity remains unverified.
- Decision: `STOP_BRANCH`; no reproduction, half-day, full run, source build, or deletion. This is ineffective direction 1 after Stage-52 mandatory PLAN. Remaining credible work is narrowed to a bounded runtime/compiler parameter DOE; do not reopen this mapping without contradictory topology evidence.
- Lifecycle: three analyses are VALID and raw evidence remains retained; next task deletion gate may consider it only after path/analysis rechecks. Handoff synchronization follows this entry.
- Handoff sync verification: workspace, installed, and BN Skill packages each contain 10 files with zero hash differences; Stage-53 analysis mirror has 29 files and experiment mirror 3 files with zero hash differences. BN master log SHA-256 matches `DEEDB8E0CCFFC0E9374DF13138C9B854693D5F93675225EA889C85D65732771B` before this final log-line update; it is recopied immediately after this record.

## Stage 54 - Affinity-variable DOE rejected before queue use

- Date: 2026-08-01 after Stage 53.
- File paths: analyses `analysis/o33_affinity_doe_screen_20260801/`; binding/rankfile evidence `analysis/o33_rankmap_abba_118373369/raw/118373369_o33_rankmap_abba_sample/`; exact launch script `experiments/rankmap_square_20260801/run_rankmap_abba.slurm`.
- Optimization content: zero-run review of a possible single-parameter OpenMP affinity/runtime DOE. No source, binary, input, job, model output, or validator result was created.
- Result: the rankfile binds each 2-thread MPI rank to exactly two physical cores. The 16 ranks per node are already balanced four per NUMA domain on the Hygon 32-core/four-NUMA node. `OMP_PROC_BIND=close`, `OMP_PLACES=cores`, and inherited Open MPI affinity mean `close/spread` can only swap the same two threads; `KMP_BLOCKTIME` lacks a measured >=2% idle-spinning mechanism.
- Decision: `REJECT_BEFORE_JOB`; do not spend a queue slot on OpenMP-affinity spelling/blocktime. Three analyses are valid, no output exists and deletion is not applicable. This is static screening, not a new ineffective runtime experiment.
- Handoff sync verification: workspace, installed and BN Skill packages each contain 10 files with zero hash differences; Stage-54 three-pass analysis mirror has three files with zero differences. BN master log is recopied after this line.

## Stage 55 - O33 64x2 versus 128x1 legal scaling diagnostic submitted

- Date: 2026-08-01. Script: `experiments/o33_128mpi_scaling_20260801/run_64v128_abba.slurm`, SHA-256 `905f7eac4af218b2ec231a7da36dc84d4d3975f339f23c5d4059ff068795a049`; private remote copy `/public/home/fujiake/fjk/agent_tmp/isolated/scripts/o33_128mpi_scaling_20260801/run_64v128_abba.slurm` passed remote `bash -n` and hash check.
- Optimization content: no source or physical-grid change. A controls use immutable O33 binary `5f1a137e...fcb9`, 64 MPI x2 OpenMP and legal 8x8 tiles. B uses the same binary/input/rules with 128 MPI x1 OpenMP and legal internal 16x8 tiles on both unchanged grids. A 128-rank 2x2 node-block rankfile retains 8x4 logical blocks per node; no shared directory is modified.
- Rationale: test whether 128 physical cores reduce the compute-dominated O33 work enough to offset smaller tiles/extra halo traffic. This is a new rank-count/tile-scaling direction, not the closed 64-rank square/stripe or affinity-variable branch.
- Job: `118394943`, queue `kshcexclu06`, four exclusive nodes, allocation 128x1; A-B-B-A at diagnostic `NTIMES=144,720`. Runtime source-free context is `/public/home/fujiake/fjk/agent_tmp/isolated/work/o33_128mpi_scaling_20260801/runtime` and links only immutable O33 ROMS plus read-only `/public/home/fujiake/Inputfiles`.
- Status: SUBMITTED; no model result, performance claim, NetCDF, or accuracy result yet. Retained Stage-53 output has zero NetCDF and was not deleted.

### Stage 55a - pre-model harness assertion fixed

- Job `118394943` failed in four seconds before `mpirun`: `prepare_input` asserted that the generated input contains no literal `output/`, but the intentional private target directory itself ends in `output/`. No model log, time, trajectory, profile, NetCDF, or performance sample exists.
- Change: in the same private/local script replace that false assertion with an exact write/read equality assertion. No model, source, binary, rankfile design, input parameter, or runtime setting changes. Re-upload, remote `bash -n`/hash check, then resubmit exactly once.
- Corrected script SHA-256 is `5a609c88aaa51f7b5cee52459712b406feb3477f24bfda0af05c9037538dd83b`; corrected job `118394983` is running on `j05r2n[04-07]`. The failed root `118394943_o33_64v128mpi_sample` is retained as zero-NetCDF pre-model evidence.

### Stage 55b - 128 pure-MPI scaling branch closed

- Corrected job `118394983` model samples all completed. A1/B1/B2/A2 real=`128.412/168.451/167.936/126.234 s`; ABBA means A=`127.323 s`, B=`168.1935 s`, 128x1 regression=`32.0999%`. Both B runs are slower than both controls.
- All four runs are DONE with identical trajectory `fa498694...e44b0`, zero NetCDF and expected diagnostic step headers. The terminal job status is failed only because the post-model decision-file Python helper has an f-string expression syntax error; this does not invalidate the four raw model samples.
- Combined two-grid 2-D+4-D halo means A=`1579.454 s`, B=`6675.488 s`, an increase of `322.6454%`, which directly supports the regression.
- Decision: `STOP_BRANCH`; no one-day/full validation or reproduction. This is ineffective runtime/scaling direction 2 after Stage 52, so stop further experiments and enter mandatory China-prioritized web/open-source PLAN research before any new model job.
- Three analyses are valid at `analysis/o33_64v128mpi_abba_118394983/`; all remote raw evidence is retained and nothing is deleted.

## Stage 56 - Mandatory research closes blind runtime scaling

- Date: 2026-08-02. File path: `analysis/plan_research_after_128mpi_20260802/`. No source/build/job/output is created.
- China-priority/open-source evidence: Chinese NEMO modernization and multi-node hybrid studies, NEMO 4.0 benchmarking/communication work, and current NEMO HPC documentation were reconciled with exact O33 profile evidence.
- Result: decomposition/halo accounting is the correct screen; nested grids constrain per-grid independent task optimization. Our direct 128x1 result (wall -32.0999%, halo +322.6454%) is decisive, while Stage-53 placement and Stage-54 affinity evidence close the remaining blind runtime adjustments.
- Decision: `NO_NEW_MODEL_JOB_AUTHORIZED`. Preserve immutable 64x2 O33 parent. Reopen only with contradictory, site-specific source/profile evidence and a quantified >=2% full-run mechanism; otherwise report convergence rather than consume more queue time.
- Three analyses are valid; no output/deletion. Handoff sync follows.
- Handoff sync verification: workspace, installed and BN Skill packages each contain 10 files with zero SHA-256 differences; Stage-55 analysis mirror has 27 files and Stage-56 PLAN mirror has 3 files with zero differences. BN master log is recopied after this line.

## Stage 57 - Convergence and delivery plan

- Date: 2026-08-02. Plan analyses: `analysis/plan_finalization_after_stage56_20260802/`; no code/build/job/output.
- Content: freeze O33 64x2 parent; audit existing full-run provenance/validator evidence; run an unchanged full parent only if a concrete delivery artifact is missing; otherwise prepare submission package. A future optimization is prohibited unless an exact legal 64x2 source/profile proof has a conservative >=2% whole-run ceiling, then passes >=3% matched diagnostic and full official validation gates.
- Result: plan is valid, retains all raw evidence, and authorizes no speculative experiment. Output deletion is not applicable. Handoff sync follows.
- Handoff sync verification: workspace, installed and BN Skill packages each contain 10 files with zero SHA-256 differences; Stage-57 three-pass plan mirror has three files with zero differences. BN master log is recopied after this line.

## Stage 58 - literature-directed source-locality screen

- Date: 2026-08-02. Analyses: `analysis/research_directions_after_stage57_20260802/`; no code/build/job/output.
- China-priority NEMO modernization and open ROMS/Fortran sources identify memory bandwidth, SIMD blockers, pointers and hidden array pack/unpack as general candidates. Only one O33-specific follow-up survives: a zero-run audit of unclosed GLS/mixing/biology hotspot call boundaries for provable non-contiguous temporary, alias, or unit-stride losses.
- Exact tile screen: immutable input grids are 359x326 and 235x245; 8x8 is already the near-square 64-rank factorization. 16x4/4x16 increase tile perimeter for both grids, so no orientation experiment.
- Mixed precision, generic Gatherv, generic async/halo removal and additional rank scaling are rejected by constraints or existing O33 evidence. The retained audit needs a conservative >=2% full-run ceiling before any edit/build/job.
- Three analyses valid; no output/deletion. Handoff sync follows.
- Handoff sync verification: workspace, installed and BN Skill packages each contain 10 files with zero SHA-256 differences; Stage-58 analysis mirror has three files with zero differences. BN master log is recopied after this line.

## Stage 59 - O33 code and literature review selects fine2coarse exchange guard

- Date: 2026-08-02 +0800 / 2026-08-01 EDT.
- File paths: exact O33 source `analysis/teammate_o33_sync_review_20260801/source_evidence/o33/ROMS__Nonlinear__nesting.F`; new review package `analysis/o33_fine2coarse_exchange_review_20260802/`.
- Optimization content: read-only source/object/profile audit plus China-prioritized literature and official open-source ROMS review. No source edit, build, model job, output, runtime or new accuracy result was created.
- Primary finding: O33 `nesting(n2way)` runs `correct_tracer`, `fine2coarse(r2dvar)`, `set_depth`, then `fine2coarse(r3dvar)`, while `fine2coarse` lines 3767-3845 unconditionally execute both 2-D and 3-D/4-D exchange groups after either call. The first call therefore exchanges not-yet-feedback-updated 3-D fields, and the second repeats unchanged 2-D fields.
- Correctness boundary: preserve `correct_tracer`, all 2-D/3-D/ecological fine-to-coarse averaging, `set_depth`, all fields and one complete local/MPI synchronization after each field class's producer. Candidate changes only the existing exchange-region guard.
- Open-source result: current official ROMS `develop` applies exactly `vtype.eq.r2dvar` and `vtype.eq.r3dvar` guards around these exchange groups. Debreu et al. 2012 fixes the refluxing/two-way nesting boundary; NEMO GMD 2022 supports site-proven removal/grouping rather than blind MPI tuning; Chinese NEMO modernization supports hotspot/SIMD/memory screening.
- Profiling: validated full O33 `real=2142.793 s`; 2%=`42.85586 s`; combined 2-D/3-D/4-D halo pool=`18.9954%`. This broad pool is not a fine2coarse-site attribution, so candidate gain remains UNMEASURED.
- Secondary audit: no concrete hidden pack/unpack or locality change in GLS/mixing/biology clears 2%. The shallow-water biology invariant `exp` has a deliberately favorable whole-run ceiling of about 1.05% and is rejected before build. An inactive non-`ASSUMED_SHAPE` duplicate `Adx`/missing `Ady` declaration is recorded as P3 only.
- Decision: `WAIT_THEN_ONE_ABBA`. After teammate job `118396521` clears, authorize one four-node `144/720` A-B-B-A, immutable O33 versus one-file guard candidate, 64 MPI x2 OpenMP, 8x8/8x8. Require both B faster, trajectory/profile support and >=3% mean gain; reject below 2%.
- Compliance: the supplied PPT says fixed 64 cores and `mpirun -np 64`, while the established hard ceiling is four nodes/128 cores. Keep 64 ranks as the current presentation/comparison reference; O33 64x2 consumes 128 physical cores and must not be labeled the confirmed final scoring layout until organizer clarification.
- Three-pass status: `01_read_summary.md` VALID, `02_profiling.md` VALID, `03_validity_check.md` VALID_FOR_ONE_DIAGNOSTIC_ABBA. No NetCDF/model output exists, deletion is not applicable, and no prior output was deleted.
- Queue state at the review checkpoint: teammate job `118396521` RUNNING for `01:15:38` on `j05r2n[04-07]`, 4 nodes, 64 tasks, 128 allocated CPUs. Its source/output tree remains untouched.
- Handoff sync verification: workspace, installed and BN Skill packages each contain 10 files with zero SHA-256 differences; the Stage-59 analysis mirror contains six files with zero differences. The BN master log is recopied after this line.

## Stage 60 - fine2coarse vtype candidate submitted; pre-build retry active

- Date: 2026-08-02 +0800 / 2026-08-01 EDT.
- Rule update from user: organizer committee guidance prevails over the instructional video. Hard resource ceiling is four nodes/128 CPU cores; the organizer's four-node/64-core result is a reference only. O33 64 MPI x2 OpenMP is legal for this diagnostic.
- Local paths: `experiments/o33_f2c_vtype_20260802/{o33_f2c_vtype.patch,build_f2c_vtype.slurm,run_f2c_vtype_abba.slurm,submit_pipeline.sh}`. Remote private script root: `/public/home/fujiake/fjk/agent_tmp/isolated/scripts/o33_f2c_vtype_20260802`.
- Optimization content: candidate adds only `vtype` guards to the already-existing 2-D and 3-D/4-D local/MPI exchange groups in `ROMS/Nonlinear/nesting.F`. It preserves `correct_tracer`, both fine-to-coarse kernels, `set_depth`, fields, arguments, arithmetic, input, compiler/runtime, 64 MPI x2 OpenMP and 8x8/8x8 decomposition.
- Parent gates: `oceanM=5f1a137e42252c9b978ad50ab344b9d6493f5e5afeeb71ed2d83f0a4228cfcb9`; `nesting.F=9d8434c7c7291309d4dd281b4c8531dff7ee988bfc038590301484516b53795c`; local `git apply --check` and remote `/usr/bin/patch --dry-run` both accept patch `d3858c56d2a2c0ddf1f315257e85c2e822cc50b02ba0ae4f6aaf55c81533423e`.
- First pipeline: build `118399786` on one node/16 CPUs FAILED `2:0` before compilation/model launch. Remote Git 1.8.3 `git apply` check returned success but did not modify the copied source, so the guard-count assertion failed. Dependent four-node job `118399788` was automatically CANCELLED before launch. These are harness/build incidents, not performance samples; no NetCDF or model output exists and no deletion occurred.
- Retry: changed only patch-application mechanism to `/usr/bin/patch`, retained the failed source tree, and assigned fresh private root `/public/home/fujiake/fjk/agent_tmp/isolated/work/o33_f2c_vtype_r1_20260802/ROMS_CoSiNE15`. Retry build script SHA `e9b6c3ea72e1324c953056a70b673af6642fd343f3f4ae6a663346037ed2f28d`; run script SHA `f41f37e34b50a789e0ac0f458cdfbdf9c1cafe1597e70987067b33660b9bfa8c`; pipeline wrapper SHA `f3acc0eafabe04822ec00785579c5b1db8e87e228d8ce395aac69db94240c64f`.
- Retry jobs: build `118400453` RUNNING at checkpoint on `j01r2n00`, one node/16 CPUs; four-node `118400454` PENDING with `afterok:118400453`, 64 MPI x2 OpenMP/128 CPUs. No timing, DONE marker, candidate binary or accuracy result exists yet.
- Next action: read build result before touching the dependent diagnostic. If build is successful, monitor ABBA; if not, stop and diagnose the pre-model failure without claiming a performance result.
- Handoff sync verification: workspace, installed and BN Skill packages each contain 10 files with zero SHA-256 differences; BN has the same Stage-60 experiment package (6 files) and Stage-59 analysis update. BN master log is recopied after this line.

### Stage 60a - candidate build confirmed; diagnostic run resubmitted

- Date: 2026-08-02 +0800 / 2026-08-01 EDT. Candidate build `118400453` completed successfully (`real=19.669 s`); candidate binary SHA-256 `14e55b8adbc58528508fca1e9b27aa2eda4594277d3b442d6e03ee600dfebe8d`, patched `nesting.F` SHA-256 `5716d0fe80c86b0469449b8ec8e6571bf2fdd658f14ec5315c13732265af722c`.
- First run `118400454` stopped after 7 s before any model step because the new `run_one` helper omitted `cd "$root"`; ROMS consequently could not resolve its unchanged relative `ROMS/External/varinfo.dat`. No `DONE`, time sample, trajectory, NetCDF, profiler result, or accuracy result exists. The private failed root is retained.
- Change: add only `cd "$root"` immediately before `mpirun`; no candidate source, binary, input parameter, tile decomposition, MPI/OpenMP configuration, rankfile, shared path, or model setting changed. Added `submit_run_only.sh` so the existing successful build is reused.
- Current run script SHA-256 `d28cd857dc31e8c5200651a2002b11353f4ed2ccac5655445518b5f649247786`; submit-only wrapper SHA-256 `1f2753dddbb978f1143787fe1b32e180cf18bf007e652cc2d701584fd8ee6e05`; patch remains `d3858c56d2a2c0ddf1f315257e85c2e822cc50b02ba0ae4f6aaf55c81533423e`. Both scripts passed remote `bash -n` and all three remote SHA checks matched local content.
- Job `118401389` submitted to `kshcexclu06`: four nodes, 64 MPI x2 OpenMP, 8x8/8x8, diagnostic `NTIMES=144,720`, A-B-B-A. Status: SUBMITTED; no performance or correctness conclusion yet. No output has been deleted.

### Stage 60b - fine2coarse vtype diagnostic closed

- Date: 2026-08-02 +0800 / 2026-08-01 EDT. Raw result: `/public/home/fujiake/fjk/mcc_runs/118401389_o33_f2c_vtype_abba_sample`; local three-pass analysis: `analysis/o33_f2c_vtype_abba_118401389/{01_read_summary.md,02_profiling.md,03_validity_check.md}`.
- Job `118401389` completed `0:0` in `00:08:44` on `j05r2n[00-03]`, four nodes/128 CPUs, 64 MPI x2 OpenMP, 8x8/8x8 and diagnostic `144/720`. A1/B1/B2/A2 `real=128.353/131.535/130.354/126.562 s`; means A=`127.458 s`, B=`130.945 s`, candidate change=`-2.7358%`. Both B samples are slower than both controls.
- All four samples exit 0 with `ROMS/TOMS: DONE` and identical trajectory SHA `fa498694...e44b0`. No NetCDF is expected in this diagnostic, so no official validator was run and no scoring-valid accuracy result is claimed.
- Profile evidence: combined 2-D/3-D/4-D halo mean rises from `2012.92` to `2064.40` (+`2.56%`); Grid 01 halo falls but Grid 02 rises, and Grid 01/Grid 02 GLS timers each rise about `22%`. This supports rejection but does not prove the microscopic interaction cause.
- Decision: `STOP_BRANCH`. Keep O33 parent `5f1a137e...fcb9`; do not reproduce, half-day test, full run or promote this candidate. Raw output remains retained and is not eligible for deletion during this task. Next work is zero-run code/profile analysis before any new candidate job.
- Handoff sync: workspace Skill, installed Skill and BN mirror received the Stage-60 progress/plan/evidence updates. SHA-256 matches for `progress.md`=`1339005b...9b49b`, `plan.md`=`f7efa2c1...d262`, and `evidence-index.md`=`17b8c4b8...e5a1` across the synchronized copies. Stage-61 is static profiling only; no new output exists and no deletion occurred.

## Stage 61 - step2d heap-array allocation microprofile submitted

- Date: 2026-08-02 +0800 / 2026-08-01 EDT. Local files: `experiments/step2d_heapalloc_probe_20260802/{step2d_heapalloc_probe.f90,run_probe.slurm}`; source SHA-256 `363f9930fdd9ed0f2b79066ef5990469d3fde5fbb24c6838b013d1a001c16af2`, script SHA-256 `d3d63358a991ed723d6cdd9d7e5abc51fe43d4e67abc8fa1df2414a8390cf3c3`.
- Profiling finding: O33 `Build/step2d.o` directly references `for_allocate`/`for_deallocate`, with twenty-one variable-size local 2-D arrays; inspected `pre_step3d.o`, `step3d_t.o`, `gls_corstep.o` and `biology.o` have no corresponding symbols. `step2d` is 13.1949% of the matched control profile across both grids.
- Optimization/profiling content: a standalone Fortran tile-shaped, 21-array microbenchmark compiled using exact Intel 2017 `-O3 -ip -fp-model precise`, once with `-heap-arrays` and once with `-no-heap-arrays`. It changes no ROMS source, binary, configuration, input, physics, ecology, grid, output, or MPI layout.
- Job `118402888` submitted on `kshcexclu06`, one node/one CPU, private audit root `/public/home/fujiake/fjk/agent_tmp/isolated/audits/step2d_heapalloc_probe_118402888`. Remote script passed `bash -n`; remote hashes equal local values. Status `SUBMITTED`; no performance conclusion or model output exists. A ROMS candidate is conditional on a measured microprofile sufficient to support a >=2% whole-run mechanism.

### Stage 61a - heap microprofile measured; step2d candidate built and submitted

- Microprofile job `118402888` completed `0:0` in 20 s on one private compute CPU. For 100,000 tile-shaped calls with 21 variable-size local 2-D arrays, exact Intel 2017 flags yield `12.432300 s` with `-heap-arrays` and `1.681400 s` with `-no-heap-arrays`; checksum is identical (`2.1e6`). This is a compiler allocation microprofile, not ROMS/model performance evidence.
- Conservative diagnostic call count is approximately `(144+720)*30=25,920` tile calls; scaling the microprofile difference gives about `2.79 s` of diagnostic potential, or `~2.2%` of the 127.458 s matched O33 wall time. This is sufficient only to authorize one measurement, not to claim an expected gain.
- Candidate path: `experiments/o33_step2d_noheap_20260802/`; private source root `/public/home/fujiake/fjk/agent_tmp/isolated/work/o33_step2d_noheap_20260802/ROMS_CoSiNE15`. Exact compiler diff contains one added line: `$(SCRATCH_DIR)/step2d.o: private FFLAGS += -no-heap-arrays`; no ROMS source text, input, model setting, grid, MPI layout, physics or ecology changes.
- Build job `118403081` completed `0:0` in `00:04:09`; candidate binary SHA-256 `d35f2c7780d4712b87980a062f64bb66cbd1ce8663495a2559de3858bcb60e1e`, candidate config SHA `eb4613d732b4e2fba88a969420c3faecfb62eb1bdbf6f5f55ff92e4d027f2936`, candidate `step2d.o` SHA `95fdd4526432a144d20cc4d168e4c75fe4899f0f1e178a42ba8408c2ef05711c`. The candidate object has no `for_allocate`/`for_deallocate` reference, unlike parent `Build/step2d.o`.
- Job `118403744` submitted: four nodes/128 CPUs, 64 MPI x2 OpenMP, 8x8/8x8, diagnostic `NTIMES=144,720`, private A-B-B-A output root `/public/home/fujiake/fjk/mcc_runs/118403744_o33_step2d_noheap_abba_sample`. No timing, completion, accuracy, or promotion result yet. Retain prior raw outputs; no output deletion occurred.

### Stage 61b - step2d no-heap candidate rejected

- Date: 2026-08-02 +0800 / 2026-08-01 EDT. Raw output: `/public/home/fujiake/fjk/mcc_runs/118403744_o33_step2d_noheap_abba_sample`; local three-pass result: `analysis/o33_step2d_noheap_abba_118403744/{01_read_summary.md,02_profiling.md,03_validity_check.md}`.
- Job `118403744` completed `0:0` in `00:08:45` on `j05r2n[10-13]`, four nodes/128 CPUs, 64 MPI x2 OpenMP/8x8/8x8 and diagnostic `144/720`. A1/B1/B2/A2 real=`129.753/132.023/130.071/127.992 s`; means A=`128.873 s`, B=`131.047 s`; candidate regression=`1.6873%`. Both B samples are slower than both controls.
- Every sample exits 0 with `ROMS/TOMS: DONE` and matching trajectory SHA `fa498694...e44b0`; zero NetCDF is expected, so no official validation is run and no scoring claim exists.
- The intended local effect is observed: Grid 01/Grid 02 `step2d` falls `3.18%/3.87%`. It does not transfer to wall time: Grid 01/Grid 02 GLS rises `20.70%/20.36%`; two-grid halo moves only `-0.42%`. The GLS interaction cause is unproven, but rejection is directly supported.
- Decision: `STOP_BRANCH`; no rerun, full validation or promotion. This is the second consecutive ineffective candidate after the prior PLAN cycle (Stage 60 and Stage 61), so enter mandatory China-prioritized paper/open-source/code profiling PLAN before any new model job. Retain all raw results; no deletion occurred.

## Stage 62 - mandatory PLAN after two ineffective candidates

- Date: 2026-08-02 +0800 / 2026-08-01 EDT. Analyses: `analysis/plan_research_after_step2d_noheap_20260802/{01_read_summary.md,02_profiling.md,03_validity_check.md}`. No source edit, build, model job, output, deletion or validator run was created.
- Sources reviewed: Intel Fortran `heap-arrays`/array-copy documentation, Chinese NEMO code-modernization work (DOI `10.3969/j.issn.1671-6647.2021.01.007`), and current official ROMS releases; findings were reconciled with exact O33 objects/configuration and Stage 60/61 measured profiles.
- Result: runtime-size automatic arrays explain the `step2d` heap calls and its local timer decrease, but Stage 61 proves that this local effect does not transfer to O33 wall time because GLS timing rises about 20%. Threshold variants, broader no-heap flags, generic async/collective/mapping/rank changes and upstream copy-paste changes have no new quantified >=2% O33 mechanism.
- Decision: PLAN gate complete; do not submit new model jobs. Continue only with read-only delivery/provenance profiling of immutable O33 or with a future exact source/profile proof meeting the >=2% ceiling and one-variable diagnostic gate. Stage 60/61 raw output remains retained; no deletion occurred.

## Stage 63 - immutable O33 full cold-start reproduction submitted

- Date: 2026-08-02 +0800 / 2026-08-01 EDT. Local script: `experiments/o33_full_reproduce_20260802/run_full_validate.slurm`, SHA-256 `edf60e58410212b7632c907b836ae84e3aa998463d8947c9db29f6f7b9207e45`; remote private copy `/public/home/fujiake/fjk/agent_tmp/isolated/scripts/o33_full_reproduce_20260802/run_full_validate.slurm` passed `bash -n` and hash verification.
- Content: no optimization candidate. Reproduce immutable O33 binary `5f1a137e42252c9b978ad50ab344b9d6493f5e5afeeb71ed2d83f0a4228cfcb9` using pre-existing full legal 8x8 input `a3e8a5dbee769ced1e097cd22d9e0424eb326b0a7b1006451fe6609dd14779a8` (`NTIMES=2592,12960`), unchanged O33 collective rules `0ef5b45a...e473`, read-only Inputfiles, and the established 64 MPI x2 OpenMP mapping.
- Job `118405320` submitted on `kshcexclu06`, four exclusive nodes/128 CPUs, private output `/public/home/fujiake/fjk/mcc_runs/118405320_o33_full_reproduce_64x2`. It checks full steps, writes private output, then calls official `vali.py` through the existing wrapper. Status `SUBMITTED`; no time, output or validation conclusion yet. No earlier output was deleted.

### Stage 63a - immutable O33 full reproduction completed and validated

- Date: 2026-08-02 +0800. Job `118405320` completed `0:0` in Slurm `00:36:07` on `j01r2n[00-03]`, four nodes/128 allocated CPUs, 64 MPI x2 OpenMP, 8x8/8x8 and full cold-start `NTIMES=2592,12960`.
- Exact paths: remote result `/public/home/fujiake/fjk/mcc_runs/118405320_o33_full_reproduce_64x2`; local three-pass analysis `analysis/o33_full_reproduce_118405320/{01_read_summary.md,02_profiling.md,03_validity_check.md}`; local run script `experiments/o33_full_reproduce_20260802/run_full_validate.slurm`.
- Optimization content: none. This stage reproduces immutable O33 binary `5f1a137e...fcb9`, full input `a3e8a5db...79a8`, rules `0ef5b45a...e473` and script `edf60e58...e45`; it is delivery/provenance evidence, not a candidate.
- Result: shell `real=2136.310 s` (`35m36.310s`), `ROMS/TOMS: DONE`, 16 NetCDF files totaling `9,048,193,920` bytes (`8.5G`). Official validator SHA `97230e0b...878a` passes all 26 checks; Dongsha60 `u=0.000052 <= 0.000060`.
- Reproduction analysis: prior valid O33 full times are `2129.853` and `2142.793 s`, mean `2136.323 s`; the new result differs from that mean by only `-0.013 s` and lies inside the prior `0.6057%` range. Status `REPRODUCED`; no new speedup or causal change is claimed.
- Profile: Grid 02 compute/message totals are `64.2866%/17.5566%`; major entries remain predictor `13.6563%`, tracer corrector `10.9957%`, step2d `10.6543%`, GLS `9.9602%`, 4-D halo `7.2090%`. Selected changes versus job `118346383` are mixed and small, with no new >=2% mechanism.
- Lifecycle: all three mandatory analyses are valid. The latest 8.5G output remains retained as the complete reproducibility/delivery package; nothing was deleted. No additional reproduction is required unless a variance study or ceremony rerun is explicitly requested.
- Handoff sync verification: workspace, BN and installed `mcc26-roms-cosine-handoff` packages each contain 10 files with zero relative-file/SHA-256 differences. The Stage-63 three-file analysis mirror has zero differences, and the BN master log is recopied after this entry.

## Stage 64 - O33 submission-readiness audit and delivery entrance

- Date: 2026-08-02 +0800. Paths: local delivery entrance `C:\Users\Fu Jiake\Documents\MCC\决赛\04_提交准备\O33_交付清单_20260802`; three-pass analysis `analysis/o33_submission_readiness_20260802/`; verified remote source `/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15`.
- Optimization content: none. Read-only audit of the O33 source/build/run/validation lineage, followed by local documentation only. No build, model job, validator job, output or deletion.
- Source inventory: private O33 tree is approximately 505 MiB with 2426 `ROMS/` files. Key hashes are binary `5f1a137e...fcb9`, makefile `21974744...8a8`, make macros `70ac9889...653`, Linux-ifort `081b267b...ced`, and rules `0ef5b45a...e473`.
- Result: performance/correctness evidence is ready, but final submission is `INCOMPLETE`. Missing P0/P1 deliverables are an independent optimized-source archive, clean extraction/build proof, portable scripts without personal absolute paths, the committee-format optimization record and final PPT/automatic playback.
- Files created: delivery `README.md`, `BUILD.md`, `RUN_AND_VALIDATE.md`, `EVIDENCE_MANIFEST.md`, `SUBMISSION_CHECKLIST.md`, plus mandatory `01_read_summary.md`, `02_profiling.md`, `03_validity_check.md`.
- Decision: do not run another model from this audit. First package source and prove a clean build; rerun the full model only if the rebuilt binary hash or platform/toolchain differs. Stage-63 8.5G output remains retained.
- Collaboration: queue jobs `118410815` and `118409770` were observed only through Slurm metadata and left untouched.
- Handoff sync verification: workspace, BN and installed Skill packages have zero relative-file/SHA-256 differences; Stage-64 three-pass analysis and five-file delivery entrance mirrors have zero differences. BN master log is recopied after this entry.

## Stage 65 - O33 standalone source archive and clean-build verification submitted

- Date: 2026-08-02 +0800. Delivery root `/public/home/fujiake/fjk/delivery/o33_20260802`; local scripts `C:\Users\Fu Jiake\Documents\MCC\决赛\04_提交准备\O33_交付清单_20260802/{package_o33_source.sh,build_archive_verify.slurm}`.
- Archive content: source/configuration tree only. Excluded `Build/`, `.mcc_opt/`, `oceanM`, `oceanM.O33_final`, `output/` and `.git`; no input/output/shared directory content is bundled.
- Final v3 archive: `ROMS_CoSiNE15_O33_source_20260802_v3.tar.gz`, 116 MiB, 8830 table-of-contents entries, SHA-256 `3a1a0b30dd36c4c52e84fd4681ce68bba258fde9c089acea9fd372b0d11de284`. `gzip -t` passes; excluded-path count is zero; archived makefile/make macros/Linux-ifort/rules hashes match the verified source tree.
- Packaging incidents: the platform old tar rejected `--sort=name`; two SSH-disconnected/background attempts left corrupted/incomplete private artifacts. They are retained and explicitly not valid. The foreground heartbeating v3 run completed `rc=0` at `2026-08-02T16:13:37+0800`. One duplicate tar PID `27001` from the first disconnected attempt was terminated after exact ownership/command verification; its partial file remains.
- Clean-build script SHA-256 `54973cd3711255f441a2de88e32e07ec3d232af7e92e2fc90684a5447f3930a1`; remote `bash -n` and hash checks pass. It extracts v3 into unique private `clean_builds/$SLURM_JOB_ID`, loads exact Intel/HPC-X/NetCDF/HDF5 modules, runs `make -j32`, records build/ldd/manifests and compares the resulting binary to O33 `5f1a137e...fcb9`.
- Job `118412739` submitted to `kshcexclu06`, one node/32 CPUs, 20-minute limit. This is build-only evidence: no ROMS model, NetCDF, performance or accuracy result. Stage-63 8.5G output remains retained; nothing was deleted.

### Stage 65a - clean-build mismatch isolated; v3 archive downgraded

- Date: 2026-08-02 +0800. Exact paths: archive `/public/home/fujiake/fjk/delivery/o33_20260802/ROMS_CoSiNE15_O33_source_20260802_v3.tar.gz`; clean tree `/public/home/fujiake/fjk/delivery/o33_20260802/clean_builds/118412739/ROMS_CoSiNE15`; validated parent `/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15`; local comparison script `C:\Users\Fu Jiake\Documents\MCC\决赛\04_提交准备\O33_交付清单_20260802\compare_clean_build.sh`.
- Optimization content: none. This is source-lineage and clean-build diagnosis only. No model, NetCDF, accuracy validation, performance sample, input change or output deletion occurred.
- Result: Slurm job `118412739` ended `FAILED 1:0` after `00:01:04`, but `make -j32` itself completed successfully in `43.405 s` and produced `oceanM`. The wrapper failed only because it attempted to hash root `make_macros.mk` after the build system had moved that generated file into `Build/`.
- Rebuilt binary SHA-256 is `e64347f3bd44eb69c5c224684306ebeb8898e909ce81a0260c0878650bbd53bb`, different from validated O33 `5f1a137e42252c9b978ad50ab344b9d6493f5e5afeeb71ed2d83f0a4228cfcb9`. Of 272 compared object files, 270 are byte-identical and two differ: `mod_ncparam.o` and `step3d_t.o`.
- `mod_ncparam.o` differs through embedded build/source paths and SVN-status strings. `step3d_t.o` differs materially: the validated parent `Build/step3d_t.f90` contains the O46 fused OpenMP region with `END DO NOWAIT`, while archived formal `ROMS/Nonlinear/step3d_t.F` contains the earlier O25 two-region implementation. The formal source hash is identical in parent and clean trees, proving that the validated parent relied on a stale/uncommitted generated Build artifact not represented by v3.
- Decision: mark v3 `UNVERIFIED / DO_NOT_SUBMIT`. Recover the exact O46 source-level change from private provenance or reconstruct it against the formal source, then require a fresh clean build and object/code equivalence check before any model run. No speculative model job is authorized at this point; all archives, build logs and prior full output remain retained.

### Stage 65b - O46 inference corrected; O33 incremental-link provenance isolated

- Date: 2026-08-02 +0800. Exact evidence paths: `/public/home/fujiake/nan/README.md`, `/public/home/fujiake/nan/report_his/failure_analysis_O46.md`, `/public/home/fujiake/nan/backup/docs/O33_optimization_stack.md`, `/public/home/fujiake/nan/ROMS_CoSiNE15/.mcc_opt/staging/O33_build.log`, and local audit tools in `C:\Users\Fu Jiake\Documents\MCC\决赛\04_提交准备\O33_交付清单_20260802\`.
- Optimization content: none. Read-only source/build-lineage inspection plus audit-script compatibility fixes. No ROMS source, model parameter, physical/ecological path, shared input, model output or validated binary was changed.
- Correction to Stage 65a: O46 was measured and rejected on 2026-08-01, after the validated O33 binary had been created on 2026-07-31 18:29. The formal `step3d_t.F` was intentionally rolled back to its pre-O46 state. Therefore the later O46 `Build/step3d_t.f90/.o` is post-O33 build-directory contamination, not the source used by the validated O33 binary.
- Stronger finding: O33 itself was an incremental link. `O33_build.log` rebuilt only five hotspot objects with `-qopenmp -no-heap-arrays` and then linked against the existing archives. Current clean objects are byte-identical to 270 of 272 later Build objects, but the validated executable has different linked symbol sizes for `mp_exchange3d/4d` and `gls_corstep`, consistent with older experiment objects being retained in the O33 link. The documented `Build.ifort_O33/` snapshot is no longer present.
- Machine-code audit: validated and clean `step3d_t_tile`, `step3d_t` wrapper and `pre_step3d_tile` have identical instruction-line counts; the wrapper normalizes exactly, while remaining first differences are relocated absolute runtime addresses. Current evidence rejects the earlier claim that an O46 source patch must be restored, but it does not yet prove full clean-build performance equivalence.
- Decision: v3 remains `UNVERIFIED / HOLD`, now because the exact incremental O33 object lineage is not fully reconstructable from the formal source tree. Use a short same-node-cohort A-B-B-A clean-build diagnostic before deciding whether a full clean-build validation is necessary. No historical artifact and no output was deleted.

## Stage 66 - clean-build delivery-equivalence ABBA submitted

- Date: 2026-08-02 +0800. Local script: `experiments/o33_clean_rebuild_abba_20260802/run_clean_rebuild_abba.slurm`; remote script `/public/home/fujiake/fjk/agent_tmp/isolated/scripts/o33_clean_rebuild_20260802/run_clean_rebuild_abba.slurm`; SHA-256 `2c8e7c6a3856d60be9de62932ece58b7204f8245e4c20a62e6ceb9c8fc0aea8c`.
- Content: delivery/reproducibility diagnostic, not an optimization candidate. Compare validated O33 `5f1a137e...fcb9` against clean archive rebuild `e64347f3...bbd53bb` in A-B-B-A order using the established four-node, 64 MPI x2 OpenMP, 8x8/8x8 mapping and legal diagnostic `NTIMES=144,720`. Physics, ecology, grids, timestep, output configuration and shared Inputfiles content remain unchanged.
- Private mutation: added only the missing symlink `/public/home/fujiake/fjk/delivery/o33_20260802/clean_builds/118412739/ROMS_CoSiNE15/Inputfiles -> /public/home/fujiake/Inputfiles`; no write occurred under the target Inputfiles directory or `/public/share`.
- Job `118413800` submitted to `kshcexclu06`, four nodes/128 CPUs, 30-minute limit. Output root will be `/public/home/fujiake/fjk/mcc_runs/118413800_o33_clean_rebuild_abba_sample`. Gate requires identical trajectories; a clean-build slowdown above 2% is a delivery regression. No timing, trajectory, profile or conclusion exists yet.
- Queue observation: existing jobs `118413682` and `118413767` were observed only and left untouched. Stage-63 full output and all packaging/build artifacts remain retained; nothing was deleted.

### Stage 66a - clean-build diagnostic equivalent; full validation authorized

- Date: 2026-08-02 +0800. Job `118413800` completed `0:0` in `00:08:34` on `j01r2n[16-19]`. Remote result `/public/home/fujiake/fjk/mcc_runs/118413800_o33_clean_rebuild_abba_sample`; local three-pass analysis `analysis/o33_clean_rebuild_abba_118413800/{01_read_summary.md,02_profiling.md,03_validity_check.md}`.
- Result: A1/B1/B2/A2 shell real=`127.272/128.125/127.794/124.979 s`. Validated-parent mean=`126.1255 s`; clean-build mean=`127.9595 s`; clean delta=`+1.4541%`. All four runs exit 0, reach `ROMS/TOMS: DONE`, finish exact `144/720` steps and share trajectory SHA `fa498694...e44b0`; zero NetCDF is expected.
- Profiling: clean GLS rank-CPU timer increases consistently by about `21.84%/21.53%` on Grid 01/02; combined 2-D+3-D+4-D halo rises about `7.01%/2.63%`. Shell wall delta remains below the predefined 2% delivery threshold. These differences are consistent with the unresolved incremental-object lineage but do not create an accuracy mismatch in this trajectory gate.
- Independent validity: summary, decision and rankfile hashes reproduce; every log has one DONE, both final-step markers and both profiles. `SHA256SUMS` contains a pre-finalization `harness.log` hash because the script appends `HARNESS_DONE` after hashing; this is a harness manifest-order bug, not model corruption, and must be corrected in future scripts.
- Decision: `SOURCE_REBUILD_DIAGNOSTIC_EQUIVALENT`. The v3 archive advances from `HOLD` to `FULL_VALIDATION_REQUIRED`, not to submission-ready. Authorize one full cold-start clean-build run at `2592/12960` with 16 expected outputs and official 26/26 validation. Retain Stage-66 raw evidence and Stage-63 full parent output; delete nothing.

## Stage 67 - clean-build full cold-start validation submitted

- Date: 2026-08-02 +0800. Local script `experiments/o33_clean_full_validate_20260802/run_clean_full_validate.slurm`; remote private copy `/public/home/fujiake/fjk/agent_tmp/isolated/scripts/o33_clean_full_validate_20260802/run_clean_full_validate.slurm`; SHA-256 `9eff8032a3d6bb79f019d6251ee203d6f6d127c43fa00c1291733d15b909702f`.
- Content: no optimization change. Run clean source-archive binary `e64347f3...bbd53bb` with full input `a3e8a5db...79a8`, collective rules `0ef5b45a...e473`, four nodes/64 MPI x2 OpenMP, 8x8/8x8, full cold-start `NTIMES=2592,12960`, shell `time`, 16-output gate and official `vali.py` wrapper.
- Script fixes the Stage-66 manifest-order issue by writing completion/validation metadata before the final artifact manifest; it does not self-hash an open model log. No shared-directory write is performed; Inputfiles and official validator remain read-only.
- Pre-submit gates: queue empty; `/public` has 56 GiB available; remote `bash -n` passes; remote script/binary/input/rules hashes match expected values. Job `118414346` submitted to `kshcexclu06`, four nodes/128 CPUs, 90-minute limit. Expected private output `/public/home/fujiake/fjk/mcc_runs/118414346_o33_clean_full_validate_64x2`.
- No full timing, DONE marker, NetCDF, accuracy or submission-readiness conclusion exists yet. Stage-63 and Stage-66 results plus every source/build/archive artifact remain retained; nothing was deleted.

### Stage 67a - portable clean-build harness corrected while model runs

- Date: 2026-08-02 +0800. File `C:\Users\Fu Jiake\Documents\MCC\决赛\04_提交准备\O33_交付清单_20260802\build_archive_verify.slurm`; private remote copy `/public/home/fujiake/fjk/delivery/o33_20260802/build_archive_verify.slurm`; corrected SHA-256 `ab876e6f2dafe685633159af6f888de8b0f62cec52810fdf375f14a9b8758ec4`.
- Change: hash generated `Build/make_macros.mk` instead of removed root `make_macros.mk`; when a clean extraction produces a path-dependent binary hash different from historical O33, record `BINARY_DIFF_REQUIRES_FULL_VALIDATION` with successful build exit rather than misclassifying the compile as failed. Bitwise historical match remains an explicit separate status.
- Result: local/remote hashes match and remote `bash -n` passes. This fixes packaging/build reporting only and does not touch source, compiler flags, binary, model, inputs, output, physics, ecology, MPI/OpenMP mapping or running job `118414346`.
- Stage-67 progress snapshot at this point: job remains RUNNING on `j01r2n[04-07]`; Grid 02 has reached at least step 990/12960. No full result exists yet and no output was deleted.

### Stage 67b - final-input source-package correction prepared, not executed

- Date: 2026-08-02 +0800. Local files `C:\Users\Fu Jiake\Documents\MCC\决赛\04_提交准备\O33_交付清单_20260802\{SOURCE_PACKAGE_STATUS.md,package_o33_source_v4_full.sh}`; SHA-256 `165b978c...e5702` and `c91bfce0...32b7d`; remote script `/public/home/fujiake/fjk/delivery/o33_20260802/package_o33_source_v4_full.sh` matches and passes `bash -n`.
- Finding: v3 archive integrity/build gates pass, but its archived `ocean_SCS_Dongsha60_bio15.in` is the allowed diagnostic `NTIMES=144,720`, so v3 must not be submitted directly. Stage-67 uses the separately verified full input `a3e8a5db...79a8` with `2592,12960`.
- Prepared change: after Stage-67 completes, extract v3 into a new retained private staging tree, replace only that parameter file with the exact full input, create v4, and verify gzip/TOC/exclusions/critical hashes. Because `.in` is runtime-only, this packaging correction does not change the compiled binary and does not by itself require another build or model run.
- Result/status: script is prepared and syntax-checked but deliberately not executed while the timed model is running, to avoid shared-filesystem I/O interference. Stage-67 remains RUNNING and has reached at least Grid 02 step 2880/12960. No output or staging directory was deleted.

## Stage 68 - organizer optimization-scope clarification recorded

- Date: 2026-08-02. Paths: `C:\Users\Fu Jiake\Documents\MCC\决赛\01_赛题与规则\组委会优化边界确认_20260802.md`; `analysis/organizer_scope_clarification_20260802/{01_read_summary.md,02_profiling.md,03_validity_check.md}`; handoff references under `决赛\03_交接Skill\skill-packages\mcc26-roms-cosine-handoff\references\`.
- Optimization content: none. This stage records the organizer's nine-item implementation-boundary response; it changes no ROMS source, build flag, binary, parameter, input, running job or output.
- Result: items 1, 3, 4, 5, 6, 7, 8 and 9 are allowed. Item 2, floating-point execution-order acceptance, remains pending. Item 5 is allowed only while two-way nesting is not changed to one-way.
- Interpretation: allowed categories cover loop/OpenMP, MPI, proven dead-work removal, nesting communication, memory/layout, compiler and I/O methods. Candidates changing reductions, accumulation order, FMA/reassociation or precision remain `FP_ORDER_COMPLIANCE_PENDING`. Item 9 requires full `2592/12960`, `vali.py`, unchanged model/discretization semantics and organizer source review; validation alone is insufficient.
- Three-pass result: pass 3 validates passes 1 and 2. No model output was generated, deletion is not applicable, and existing outputs remain untouched.
- Handoff synchronization: the primary workspace package, `BN决赛` mirror and installed `C:\Users\Fu Jiake\.codex\skills\mcc26-roms-cosine-handoff` package were synchronized. Full installed-package relative-file/SHA-256 comparison reports `SKILL_DIFF_COUNT=0`; the rule record, three analyses and master log were mirrored to `BN决赛` without hash differences.

## Stage 69 - O33 best-profile provenance review

- Date: 2026-08-02. Paths: `analysis/o33_profile_provenance_review_20260802/{01_read_summary.md,02_profiling.md,03_validity_check.md}`; auditable raw log `analysis/teammate_o33_sync_review_20260801/source_evidence/evidence/run_O33_final3day_20260801_110155_J118346383.txt`; extraction script/file `sub_final_3day.sh` and `g02_hotspot_final3day_118346383.txt`.
- Optimization content: none. Read-only attribution review; no source, build, job, validator or output was created.
- Result: fastest validated O33 timing is `118307015=2129.853 s`, but its full raw profile is not retained locally. The reported hotspot table is directly auditable from same-O33 full job `118346383=2142.793 s` and independently reproduced by `118405320=2136.310 s`.
- Derivation: ROMS `PROFILE` timers accumulate rank CPU seconds across 64 ranks. Printed shares use the rank-CPU aggregate denominator, for example `24392.018/179144.331=13.6158%`; shell `time real` remains the scoring time. The hotspot file is an `rg` excerpt, not a statistical estimate.
- Three-pass result: pass 3 validates passes 1 and 2. No output was generated, deletion is not applicable, and all existing outputs remain untouched.
- Handoff synchronization: workspace and `BN决赛` analysis/log mirrors report `BN_DIFF_COUNT=0`; the full installed Skill comparison reports `SKILL_DIFF_COUNT=0` after refreshing progress and evidence index.

## Stage 70 - clean-source full result closed; VTune hotspots prepared

- Date: 2026-08-02. Stage-67 analyses `analysis/o33_clean_full_validate_118414346/`; retained result `/public/home/fujiake/fjk/mcc_runs/118414346_o33_clean_full_validate_64x2`; VTune script `experiments/o33_vtune_hotspots_20260802/run_o33_vtune_hotspots.slurm`.
- Stage-67 result: full clean-source run completes `2592/12960`, `ROMS/TOMS: DONE`, `real=2179.403 s`, 16 NetCDF/8.5 GiB and official 26/26 PASS. Top-level `FAILED 1:0` is a wrapper false failure from a mojibake success-line `grep`. Clean is `2.017%` slower than immutable O33 reproduction and retains the approximately 21% GLS increase.
- VTune preparation: discovered VTune 2026.3.0 at `/public/home/fujiake/intel/oneapi/vtune/2026.3/bin64/vtune`. Prepared one immutable-O33 `hotspots` software-sampling diagnostic at 144/720, four nodes, 64 MPI x2 OpenMP, 8x8/8x8, no NetCDF, private result root and 32 MB/rank cap.
- No VTune job is submitted at this entry. Existing queue job `118416917` was observed only and left untouched. Available `/public` space was 34 GiB; Stage-67 output remains retained and no deletion occurred.

## Stage 71 - VTune hotspots diagnostic submitted

- Date: 2026-08-02. Local script `experiments/o33_vtune_hotspots_20260802/run_o33_vtune_hotspots.slurm`; remote private script root `/public/home/fujiake/fjk/agent_tmp/isolated/scripts/o33_vtune_hotspots_20260802`; expected result `/public/home/fujiake/fjk/vtune_runs/118418627_o33_hotspots_64x2`.
- Content: immutable O33 binary `5f1a137e...fcb9`; legal diagnostic `144/720`; four nodes, 64 MPI x2 OpenMP, 8x8/8x8; VTune 2026.3 `hotspots` software sampling; stacks off; 32 MB/rank data cap; zero expected NetCDF.
- Preflight: local/remote script SHA `5aba743527c2b596caea76cc1d9c3b95475c34a020996ef3e57974f90f8a828e`; submit wrapper SHA `e51c2caeed0a17d52a961cbc86d0fb387293a44e3f779417893bd806b2b1f507`; remote `bash -n` passes; `/public` has 34 GiB available.
- Job `118418627` submitted with dependency `afterany:118418526` to avoid overlap with the newly observed current four-node job. No timing, VTune data, model completion or profile conclusion exists yet.
- Stage-72 closure (2026-08-03): the model completes its diagnostic scope and VTune collection returns `collect_rc=0`; later per-node reporting proves data are readable. The Slurm `1:0` derives from a harness query for nonexistent aggregate `result`, while actual data are under `result.j05r2n11` through `result.j05r2n14`. Three valid analyses now exist at `analysis/o33_vtune_hotspots_118418627/`; raw root 473 MiB is retained, no rerun or deletion occurs.
- Stage-73 PLAN (2026-08-03): analyses `analysis/plan_after_vtune_hygon_20260803/{01_read_summary.md,02_profiling.md,03_validity_check.md}` are valid. Hygon C86 excludes Intel VTune hardware-event analysis; P0 node-report comparison, P1 perf capability, and P2/P3 static pow/OpenMP audits are the only authorized next evidence paths. No source/build/job/input/output change or deletion occurred.
- Stage-73 synchronization: workspace, installed and BN-mirror handoff references refreshed; package SHA comparison is required before handoff.
- Stage-74 P0 (2026-08-03): read-only four-node comparison at `analysis/o33_vtune_node_compare_118418627/` is valid. Principal compute functions vary only 2.0-4.9%; `mp_exchange4d` range is 20.7% but anti-correlates with UCX progress and does not prove a critical-path mapping issue. Mapping/placement is not reopened; no source/job/output change or deletion.
- Stage-75 P1/P2/P3 (2026-08-03): single-core, no-ROMs perf capability job `118464271` submitted from `experiments/perf_capability_20260803/run_perf_capability.slurm` (SHA `c28c9a...92463d`) and is pending `QOSMaxCpuPerUserLimit`. Static review `analysis/o33_pow_openmp_static_review_20260803/` is valid: GLS variable-exponent pow and separated OpenMP producer/exchange/consumer regions fail the >=2%/semantics gate. No source edit, model job, input/output change or deletion.
- Stage-75 synchronization: workspace, installed and BN-mirror handoff references refreshed; retain the pending job ID and do not duplicate submission.
- Authorized cleanup (2026-08-03): after read-only scan and explicit user authorization, removed `/public/home/fujiake/fjk/mcc_runs/118414346_o33_clean_full_validate_64x2` and only `/public/home/fujiake/fjk/mcc_runs/agent_k3_20260731/EXP-0006_norecvzero_gcc731_4n64_full_8x8/output`, about 17 GiB total. Retained EXP-0006 metadata/validation, immutable O33 full reproduction, VTune raw data, sources and all shared/team trees. Post-check: `mcc_runs=8.8G`, `vtune_runs=473M`; analyses `analysis/cleanup_authorized_20260803/` are valid.
- Cleanup synchronization: workspace, installed and BN-mirror references updated with deleted/retained paths and completed-but-unread perf job `118464271`.
- Stage-76 perf capability analysis (2026-08-03): `analysis/perf_capability_118464271/` is valid. Job `118464271` completed `0:0` on Hygon C86; user-space cycles/instructions/branches/branch-misses are repeatable, but cache reference/miss events are zero and cannot support memory/cache claims. `PERF_RC=124` is the deliberate two-second timeout. No ROMS bottleneck, source candidate or gain is proven; raw audit retained.
- Stage-76 synchronization: workspace, installed and BN-mirror handoff references refreshed with the limited perf evidence boundary.
- Stage-77 profiling closure (2026-08-03): local three-pass conclusion `analysis/profiling_closure_20260803/{01_read_summary.md,02_profiling.md,03_validity_check.md}`. No source, build, runtime, input, model job or output changed. Stage-72 software-sampling data remain useful only for function attribution; Hygon C86 blocks VTune hardware-event analyses. Stage-76 `perf` confirms user-space cycles/instructions/branches but cache-reference/cache-miss events are zero, so no memory/bandwidth conclusion is allowed. The planned four-rank ROMS perf run is intentionally not submitted: it cannot establish a global MPI critical path and Stage-74 already rejects turning node-local halo variation into a mapping claim. Decision: profiling closed; preserve immutable O33 64 MPI x2 OpenMP/8x8 full result `118405320` (2136.310 s, official 26/26 PASS) as the only measured valid parent. No output was created or deleted.
- Stage-77 handoff synchronization (2026-08-03): refreshed workspace Skill references `progress.md`, `plan.md`, and `evidence-index.md`; mirrored the three closure analyses and log to `BN决赛`; synchronized the installed `C:\Users\Fu Jiake\.codex\skills\mcc26-roms-cosine-handoff` references. SHA-256 matches for all three refreshed installed/workspace reference files.
- Stage-78 current-status/plan handoff (2026-08-03): created `CURRENT_STATUS_AND_PLAN_20260803.md` and valid three-pass documentation at `analysis/current_status_plan_20260803/{01_read_summary.md,02_profiling.md,03_validity_check.md}`. Content records the retained O33 64 MPI x2 OpenMP/8x8 full parent `118405320` (2136.310 s, official 26/26 PASS), measured diagnostic closures, profiler limits and strict reopening gate. No source, compiler, MPI/OMP runtime, input, job or output changed; no deletion applies. Next work is delivery/source-review provenance unless a new exact legal >=2% mechanism is proved.
- Stage-78 synchronization (2026-08-03): copied the entry document, three analyses, master log and refreshed Skill references to the `BN决赛` mirror. Installed Skill reference SHA-256 checks all pass: `progress.md=True`, `plan.md=True`, `evidence-index.md=True`.
- Stage-79 organizer floating-order clarification (2026-08-03): recorded `决赛/01_赛题与规则/组委会浮点与等价优化澄清_20260803.md` with valid three-pass analysis `analysis/organizer_fp_order_clarification_20260803/`. Organizer confirms bitwise equality is not required: normal optimizations and mathematically equivalent implementation changes may alter floating execution order when physical formula/algorithm remains unchanged and official RMSE passes. This supersedes `FP_ORDER_COMPLIANCE_PENDING`; it does not itself prove a speedup or reopen directions rejected for independent performance/dependency evidence. No source/build/job/output/deletion occurred.
- Stage-79 synchronization (2026-08-03): synchronized `rules.md`, `progress.md`, `plan.md` and `evidence-index.md` across installed, workspace and `BN决赛` Skill copies; mirrored the rule record, analyses, current handoff document and master log to `BN决赛`.
- Stage-80 organizer computer-optimization boundary (2026-08-03): appended the organizer's distinction between frozen physical/meteorological algorithm and adjustable computer-side implementation algorithms to `决赛/01_赛题与规则/组委会浮点与等价优化澄清_20260803.md`; valid three-pass record at `analysis/organizer_computer_optimization_boundary_20260803/`. MPI communication organization, OpenMP, loops, data/buffer layout, compiler/vectorization and I/O internals are in scope provided physical/discretization and two-way-nesting semantics remain unchanged and full RMSE/source-review gates are met. No model/source/job/output change or deletion occurred.
- Stage-80 synchronization (2026-08-03): mirrored rule extension, current plan, master log and three analyses to `BN决赛`; installed/workspace/BN Skill SHA-256 checks pass for `rules.md`, `progress.md`, `plan.md` and `evidence-index.md`.
- Stage-81 documentation entry refresh (2026-08-03): updated `决赛/README.md` with direct links to the current O33 status/plan, profiling closure and organizer floating-order/equivalent-optimization clarification. Documentation-only change; no source, job, output or deletion occurred.
- Handoff synchronization: refreshed workspace, installed and BN-mirror `progress.md`, `plan.md` and `evidence-index.md`; final relative-path/SHA-256 comparison is recorded as the Stage-72 completion gate.
- Stage-67 8.5-GiB output and all earlier results remain retained; nothing was deleted.
- Monitoring snapshot: job `118418627` remains `PENDING (Dependency)` while job `118418526` is `RUNNING` on `j01r2n[12-15]`; the profiler has therefore not started and no hotspot claim is made.
- Handoff synchronization: Stage-67 analyses, Stage-71 scripts, progress/plan/evidence references and this log were mirrored to `BN决赛`; the installed and workspace handoff packages were compared by relative path and SHA-256 with `SKILL_DIFF_COUNT=0`.

## Stage 82 - O33 v4 full-input source package completed

- Date: 2026-08-03 +0800. Local/remote script `04_提交准备/O33_交付清单_20260802/package_o33_source_v4_full.sh`; SHA-256 `18288668cf4a2ad83e1e4fcfaad450afbf7299d0985012cce6dc014f0484734e`.
- Content: delivery/provenance only. Executed the Stage-67b prepared packaging after the timed model closed: extract v3 archive, replace only the archived `ROMS/External/ocean_SCS_Dongsha60_bio15.in` with the verified full scoring input `a3e8a5db...79a8`, re-tar as v4, and pass gzip/TOC/exclusion/hash gates.
- First run (tag `manual_20260803_165751`) failed the exclusion gate with `excluded_count=2`: v3 shipped the legacy example project `Projects/bye24/` containing a stale prebuilt `oceanM` binary (8,072,088 B) and a `Build` script. These two entries violate the declared no-binary-in-source-archive policy; the gate itself was not relaxed.
- Fix: the script now excludes exactly those two legacy entries at tar time. Second run (tag `manual_20260803_170424`) completed `PACKAGE_COMPLETE`.
- Result: `/public/home/fujiake/fjk/delivery/o33_20260802/ROMS_CoSiNE15_O33_source_20260802_v4_full.tar.gz` SHA-256 `b0e146e0f20abeef4bb3335761155e820bd829468614734aab604427ba28da6c`; 8828 entries; `gzip -t` OK; `excluded_count=0`; archived parameter file SHA matches full input; NTIMES=2592,12960; NtileI/J=8 8. Manifest `v4.manifest.txt` records v3/input hashes, staging path and critical-file hashes.
- Provenance: v4 equals v3 except the runtime-only `.in` replacement and the two stale legacy entries removed; the compiled binary is unaffected, so no rebuild or rerun is required solely for this packaging. v3 is marked `SUPERSEDED`; the failed first attempt is retained as `ROMS_CoSiNE15_O33_source_20260802_v4_full.tar.gz.gatefail_20260803_165757` plus its contents listing. Staging dir `package_stage_v4_manual_20260803_170424` is retained.
- No model, source (active tree), compiler, runtime, input tree, job or scored output changed; no deletion of model outputs occurred (one failed-run staging dir and its in-progress tar were renamed/removed within the private delivery root as gate evidence).
- Queue observation: teammate jobs `118484948/118484951/118484955` (`nan_*`) and `118483148` were observed only and left untouched.

## Stage 83 - delivery completion: portable scripts, record, PPT, platform recheck

- Date: 2026-08-03 +0800. Delivery-only stage; no source, binary, input, job or model output changed.
- Portable scripts (no personal absolute paths; local/remote SHA-256 match verified):
  - `04_提交准备/O33_交付清单_20260802/build_from_archive.slurm` SHA `9c059e57...8af85`: clean-build gate from v4 archive; top-level `ARCHIVE`/`BUILD_ROOT`; verifies archive/makefile/Linux-ifort.mk/coll_rules hashes, confirms no binary ships in archive, reports `bitwise_match` or `BINARY_DIFF_REQUIRES_FULL_VALIDATION`.
  - `04_提交准备/O33_交付清单_20260802/run_full_validate_portable.slurm` SHA `d864c079...40b7f`: full 2592/12960 run + official 26/26 gate; top-level `MODEL_ROOT`/`FULL_INPUT`/`INPUTFILES`/`VALIDATOR`/`VAL_WRAPPER`; preserves the verified 64-rank CCX rankfile, HCOLL-off dynamic-rule mpirun and validator wrapper.
  - Both uploaded to `/public/home/fujiake/fjk/delivery/o33_20260802/`; `bash -n` passes; no `fujiake`/personal path string inside either script.
- Committee-format record: `OPTIMIZATION_RECORD_提交版.md` (baseline, final config, measured optimizations, closed directions, reproducibility, compliance, deliverables).
- Technical report PPT: `技术报告_O33_20260803.pptx` (8 slides: cover, task/baseline, final config, optimizations, final result with screenshot placeholders, closed directions, compliance, deliverables).
- Platform recheck (2026-08-03): queue contains only teammate job `118486085` (untouched); `/public` 18P free; official `vali.py` present SHA `97230e0b...878a`; conda env present; shared Inputfiles `SCS/` and `Dongsha60/` present; required modules (`compiler/intel/2017.5.239`, `mpi/hpcx/2.7.4/intel-2017.5.239`, `mathlib/netcdf/4.4.1/intel`, `mathlib/hdf5/1.8.20/intel`) all available.
- Docs updated: BUILD.md (archive is source-only; build gate now references portable script), RUN_AND_VALIDATE.md (portable script variables), README/checklist (v4 done), EVIDENCE_MANIFEST.md (v4 + hashes).
- Remaining at-venue manual steps only: set the five runtime variables, sbatch build then run, insert `time real` and 26/26 screenshots into PPT, verify PPT autoplay.
- No model output created or deleted; teammate trees/jobs untouched.

## Stage 84 - vdiff_invdz candidate build + ABBA submission + quota recovery

- Date: 2026-08-03 +0800. Candidate `o33_vdiff_invdz_20260803`: hoist `1.0_r8/(z_r(i,j,k+1)-z_r(i,j,k))` out of the `itrc` tracer loop in `ROMS/Nonlinear/pre_step3d.F` and `step3d_t.F`; bitwise-identical arithmetic, no FMA/reassociation.
- Static review (three valid passes): `analysis/vertical_diff_invdz_review_20260803/{01_read_summary.md,02_profiling.md,03_validity_check.md}`; candidate sources SHA `pre_step3d.F=71626b5f...2270`, `step3d_t.F=11a0c4a1...60e`.
- Build completed 18:23 +0800 (compute-node `srun` path, 4-node/128-CPU job root `118492146` was the later harness run; build logs `agent_tmp/logs/vdiff_invdz_20260803/build.log`, `build_metadata.txt`).
- Candidate binary `oceanM.O33_vdiff_invdz` SHA-256 `9d1295e7380be4359d859bfab9824c14cf8c83b7e0646c188f80ab447bff0323`; differs from immutable parent `5f1a137e...fcb9`; objects `pre_step3d.o=0fdd4a22...006`, `step3d_t.o=8e1b405e...601`; patch logs `pre_step3d.patch`/`step3d_t.patch`; source-tree diff shows exactly two differing files.
- First ABBA submission `118492146` (18:27) failed pre-model at the harness disk gate: `/public/home/fujiake` quota 100% full (`less than 10 GiB free: 3584020 KiB`). Zero model samples; retained harness.log only; not an ineffective optimization attempt.
- Quota recovery (user-authorized 2026-08-03): removed `fjk/ROMS_CoSiNE15/Inputfiles` (9.37 GB stale input copy, content list identical to shared `/public/home/fujiake/Inputfiles`), `fjk/ROMS_CoSiNE15/test` (0.86 GB stock test suite), `fjk/ROMS_CoSiNE15/plot` (0.22 GB stock plotting scripts), `/public/home/fujiake/.cache` (6.5 GB cache). `/public/home/fujiake` avail rose 0 -> 51.4 GiB. No model output, teammate tree or shared input deleted.
- Re-submission: `run_vdiff_invdz_abba.slurm` SHA-256 `4c133c21273888e63b2da7125cfdee3299df06a436aa4386f26c2e322f89ee49` (remote script identical to local `experiments/vdiff_invdz_20260803/`), submitted as `118495850` with `EXPECTED_SCRIPT_SHA` set; 4 nodes, 64 MPI x2 OpenMP, 8x8/8x8, 144/720, HCOLL off, dynamic-rules mpirun, rankfile 16 CCX pairs/node.
- ABBA design: A1/B1/B2/A2 with trajectory-consistency and both-B-faster gates; `PROCEED_FULL_REVIEW_REQUIRED` only at >=3% mean gain; `STOP_BRANCH` below 2%.
- Status: job `118495850` PENDING (`QOSMaxCpuPerUserLimit`, teammate jobs running); no timing, DONE marker or trajectory evidence exists yet. Result root expected `/public/home/fujiake/fjk/mcc_runs/118495850_o33_vdiff_invdz_abba_sample`.

## Stage 85 - vdiff_invdz ABBA rejected (STOP_BRANCH, -1.57%)

- Date: 2026-08-03 +0800. Matched four-node A-B-B-A `118496066` (replacement of `118495850` which failed the `Inputfiles` symlink gate pre-model; zero samples, harness-only).
- Root cause of the harness failure: `build_vdiff_invdz.sh` did not restore the shared-input symlink after `cp -a` (parent tree has no `Inputfiles` entry), unlike `build_f2c_vtype.slurm` lines 47-53. Corrected the build script locally and remotely and fixed the candidate tree with `ln -s /public/home/fujiake/Inputfiles`; no rebuild was needed (binary unaffected).
- Results (144/720, 64 MPI x2 OpenMP, 8x8/8x8, HCOLL off): A1/A2 = 125.407/126.573 s, B1/B2 = 128.334/127.601 s; mean A 125.990 s, mean B 127.968 s; `gain_percent=-1.5696`; `both_B_faster=False`; `trajectory_consistent=True` (SHA `fa498694...e44b0` across all four runs, bitwise equivalence preserved).
- Profile attribution: predictor `pre_step3d` -0.7% (G01/G02) and tracer corrector `step3d_t` -2.1/-2.9% improved as predicted, but unedited GLS regressed +21.7/+21.6% and 4D halo +10.2/+6.5%, flipping net wall time negative.
- Mechanism hypothesis: the new `(IminS:ImaxS,0:N)` scratch arrays (`DC`/`invdz`) add write-allocate/read-write traffic that displaces the streaming pattern of `z_r`/`Akt` consumed by GLS and halo packing on bandwidth-bound Hygon C86 stencils; consistent with the `pmnreuse` failure (multiplication reuse, -1.80%). Platform cannot measure cache/bandwidth (Stage-76 boundary), so the mechanism remains a load hypothesis; the A-B-B-A wall data are the decision basis.
- Decision `STOP_BRANCH`: second measured scratch-reuse failure; no half-day/full run, no official validation. Three-pass analyses valid at `analysis/vertical_diff_invdz_abba_118496066/` (three analysis files).
- Retained: `118492146` (harness-only), `118495850` (harness-only), `118496066` (full ABBA sample, zero NetCDF); no model output deleted. Quota recovery from Stage 84 remains in effect (51 GiB free).
- Consequence: `pre_step3d`/`step3d_t` scratch-based reuse is now a closed route (both multiplication and division variants measured negative). Remaining credible paths stay at delivery/provenance; reopening performance requires an exact new >=2% mechanism per Stage-77 gate.

## Stage 86 - GLS K-kl pow identity static review (retro-logged 2026-08-04)

- Date of work: 2026-08-03 +0800. Logged retroactively on 2026-08-04: the analyses existed at `analysis/gls_pow_kkl_identity_review_20260803/{01_read_summary.md,02_profiling.md,03_validity_check.md}` but no `OPTIMIZATION_LOG.md`/`progress.md` entry had been written. This gap is recorded rather than silently closed.
- Content: static review only. No source, build, job, input or output was created.
- Mechanism: the scored input runs K-kl turbulence (`ROMS/External/ocean_SCS_Dongsha60_bio15.in` 337-343: `gls_p=0.0, gls_m=1.0, gls_n=1.0` on both grids), so the runtime exponents in `ROMS/Nonlinear/gls_corstep.F` 634-652 reduce to 1.0/1.0/1.5. That permits `gls**gls_exp1 -> gls`, `gls**(-gls_exp1) -> 1/gls`, `tke**(-tke_exp1) -> 1/tke` and `tke**tke_exp2 -> tke*SQRT(tke)`.
- Quantification: VTune (Stage 72, job `118418627`, node `j05r2n11`) attributes 182.439 s CPU to `__libm_pow_e7`, about 6.5-7% of the sample rank-CPU total; the review derived a 3-6% whole-run band before overlap discount.
- Decision recorded by that review: static review VALID; authorize exactly one candidate build and one matched `144/720` A-B-B-A, promotion only at both-B-faster and >=3% mean gain, then full `2592/12960` plus official 26/26.
- Status on 2026-08-04: NOT executed by this workflow, and now overlapped by teammate work (see Stage 87). Two additional facts must be reconciled before any build: the immutable tree contains `ROMS/Nonlinear/gls_corstep.F.O14.bak` whose marker reads `[OPTIMIZATION O14] mathreuse: cache repeated ** powers (lsd v21; no OMP)`, i.e. a pow-caching variant was tried in this lineage and rolled back; and teammate `zya` has been running a `nopow` family since 2026-08-03 19:00.
- Output lifecycle: no model output; deletion not applicable.

## Stage 87 - remote read-only code review; get_contact2d sparse candidate selected

- Date: 2026-08-04 +0800 (remote `login04`, `2026-08-04 10:41 +0800`). Read-only review over SSH alias `MCC`. No remote file was created or modified, no job was submitted, no teammate path was touched. Local scan scripts: `experiments/remote_review_20260804/`.
- Verified immutable parent: `oceanM` SHA-256 `5f1a137e...cfcb9`; `nesting.F` `9d8434c7...795c`; `distribute.F` `e1de89f3...743a`; `set_contact.F` `7ea74f68...4de1`. Evidence profile: `/public/home/fujiake/fjk/mcc_runs/118405320_o33_full_reproduce_64x2/logs/model.log` (full run, `real=2136.310 s`, 26/26 PASS).
- Coordination finding: queue job `118524098` (`o33nopowbio_halfday.sh`, `WorkDir=/public/home/fujiake/zya`, four nodes, started `2026-08-04T10:39:53`) is teammate work whose lineage (`build_ompk_o33nopow_bio.sh`: "nan O33 no-pow + bio all_land early-return + heap-O2") overlaps the Stage-86 GLS pow direction. Observed read-only and left untouched. The teammate variant matrix (`.mcc_opt/scripts/`, v3-v26) additionally covers sparse zweights, fluxsum, contact batching, halo overlap, scatter3d hierarchy, sendrecv, persistent communication, PGO, AVX256, stack/heap policy, NUMA/binding and HCOLL/UCX; none of it covers the I/O, `set_avg` or 2-D contact-assembly paths.
- O33 optimization inventory read from markers: `[O2]` MPI_IN_PLACE assemble, `[O3]`, `[O4]` packed 2/4-vector Allreduce, `[O7]`/`[O20]` `get_Vweights` skip, `[O9]` hierarchical Bcast with intra-node shared-memory communicator, `[O10]` owner-packed fine2coarse plus sparse `get_contact3d`, `[O11]` `collect_bry_fluxes`. `distribute.F` carries 16 markers.
- Selected new direction: port the validated `[O10]` sparse owner-map from `get_contact3d` (`nesting.F` 4884-5274, sparse block 5053-5271) to `get_contact2d` (4725-4880, `mp_assemble` at 4876) and `get_persisted2d` (5277-5475, at 5470), which still issue a full-communicator `MPI_Allreduce(MPI_IN_PLACE, ..., MPI_SUM)` over the whole contact array via `mp_assemblef_2d` (`distribute.F` 1672-1790). Call sites: `get_contact2d` 13, `get_contact3d` 8, `get_persisted2d` 2.
- Quantified pool: timer 49 (`Message Passage: point data gathering`, `mod_strings.F` 81) totals `2900.985 + 734.698 = 3635.683 s` = `2.0366%` of the `178516.604 s` rank-CPU aggregate. Runtime evidence that this pool is dominated by the per-step 2-D path rather than `z_weights`: `model.log` line 393 prints `GET_VWEIGHTS (O20=O7-on-O11): dynamic vertical weights = F`, and `model.log` lines 1736/1784 print `ndtfast = 30, nfast = 42` with the nesting calls placed inside the 2-D loop (`main3d.F` 614/661).
- Compliance: allowed under organizer items 3 (MPI implementation) and 5 (two-way nesting communication, direction preserved). Expected bitwise-equivalent because `Ac` is initialized to `Aspv=0.0_r8` for all `4*Npoints` entries (`nesting.F` 4806-4812) and exactly one tile writes each entry, so the `MPI_SUM` is an owner-selection whose value is reproduced exactly by direct transport; the `-0.0` case is documented as a known non-consequential exception.
- Gate: the candidate sits at, not above, the 2% reopen threshold, and the timer pool has not been decomposed into its individual routines. Authorization is therefore one candidate build plus one matched `144/720` A-B-B-A; promotion needs both B faster, >=3% mean gain, trajectory consistency, then full `2592/12960` and official 26/26.
- Implementation trap recorded: `get_contact2d` declares `Ac(Npoints,4)` in the non-`ASSUMED_SHAPE` branch while indexing `Ac(1:4,m)`; confirm the active branch in `globaldefs.h` and follow the real `(4,Npoints)` access pattern before writing any packing loop.
- Other pools measured and ranked in the same pass (all below gate on their own): t3dmix S-surfaces `4.9332%` (conflicts with the existing teammate OpenMP on the `itrc` axis and repeats the Stage-85 scratch risk), t3dmix geopotentials `1.2569%`, `set_avg` accumulation `1.7680%`, `Writing of output data` `1.4663%` (no `USE_NETCDF4`, master-collect serial write), `Processing of input data` `1.6159%`.
- Three-pass analyses: `analysis/get_contact2d_sparse_review_20260804/{01_read_summary.md,02_profiling.md,03_validity_check.md}`, all valid.
- Output lifecycle: no model output created; deletion not applicable; all retained results remain retained.

## Stage 88 - rule-by-rule PLAN; profile unit corrected; thread headroom identified

- Date: 2026-08-04 +0800. User asked for a new plan independent of Stage 87, checking the organizer's nine permitted items for remaining space. Read-only over SSH alias `MCC`: no source, build, job, input or output was created or modified; no teammate path was touched. Probe scripts: `experiments/remote_review_20260804/probe_{timing_semantics,timing_semantics2,calibrate,omp_coverage,omp_structure,profile_full,runtime_env,final_confirm,step2d_feasibility}.sh`.
- **Unit correction affecting all previous stages.** The ROMS `PROFILE` table measures process CPU time, not wall time. `ROMS/Utility/mp_routines.F` selects `omp_get_wtime` only under `#if defined _OPENMP`; `makefile` line 98 leaves `USE_OpenMP ?=` empty and line 343 hard-errors on `USE_MPI`+`USE_OpenMP`, so `-D_OPENMP` (added only under `ifdef USE_OpenMP` at `Compilers/Linux-ifort.mk` 89) never reaches `CPPFLAGS`. The already-preprocessed `Build/mp_routines.f90` retains literally `CALL cpu_time (wtime(1))`. Conversion: wall share of a single-threaded timer = CPU share x `2789.322 / 2136.310 = 1.305676`.
- **Measured CPU utilisation of the scored run is `65.28%`.** ROMS aggregate `178516.604` core-s against an allocation of `128 x 2136.310 = 273447.68` core-s. Independent cross-check using only shell `time` on the launch node: `user 42638.955 s + sys 1972.130 s = 44611.085 s` against `32 x 2136.310 = 68361.92` core-s = `65.26%`. The two agree to `0.03` percentage points, so `34.72%` (`94931` core-s) of the allocation is idle.
- Cause: `ocean_SCS_Dongsha60_bio15.in` sets `NtileI=8`/`NtileJ=8` and the log prints `tiling: 008x008` for both grids, so each rank owns exactly one tile and ROMS's native `DO tile=first_tile,last_tile` OpenMP loop has a single iteration. The second thread receives work only from the `[O25]` selective-OpenMP design, which `Compilers/Linux-ifort.mk` 64-68 applies to exactly five objects (`biology.o`, `pre_step3d.o`, `step3d_t.o`, `t3dmix.o`, `gls_corstep.o`). A whole-tree directive census confirms `!$OMP PARALLEL DO` worksharing exists only in `bio_UMAINE15.h`, `gls_corstep.F`, `pre_step3d.F`, `step3d_t.F`, `t3dmix4_s.h`.
- Thread-time split: solving `W1+W2 = 2136.310` and `W1+2*W2 = 2789.322` gives `W2 = 653.012 s` two-thread wall and `W1 = 1483.298 s` single-thread wall, i.e. for `69.4%` of the scored wall clock one of each rank's two cores is idle. The five OpenMP objects hold `106002.304` CPU-s = `59.38%` of aggregate = `1656.286 s`/rank over `1003.274 s` of wall, so their achieved average speed-up is `1.651` (efficiency `82.5%`).
- **New primary candidate (organizer item 1):** extend the `[O25]` per-object selective-OpenMP pattern to compute objects that are still single-threaded. Raw pool `652.352 s`/rank = `30.54%` of wall. Mandatory deduction: the two grids' elapsed subtotals (`87.878%`) plus message subtotals (`24.144%`) sum to `112.022%`, so at least `12.022` percentage points of message time is nested inside compute timers; applying that ratio uniformly gives `563.13 s` = `26.36%` of wall. 3-D-only subset (`step3d_uv.F` `2.562%`, `rhs3d.F` `2.456%`, `t3dmix4_geo.h` `1.641%`, `rho_eos.F` `1.599%`, plus coupling/prsgrd/omega/stress) is `231.14 s` = `10.82%` of wall and clears the 2% gate at an achieved speed-up of about `1.25` or better.
- `Model 2D kernel` (`step2d_LF_AM3.h`) alone is `24612.191` CPU-s = `18.001%` of wall, the single largest unparallelised item, but it is purely 2-D (no `N=34` level or `NT=17` tracer dimension), runs `653184` times (`ndtfast=30, nfast=42`, `model.log` 1736/1784), is split by six `mp_exchange2d` sites (563, 691, 697, 859, 895, 2473) and contains the `obc_flux_tile` volume-conservation reduction. Highest upside and highest risk; explicitly excluded from the first candidate.
- Closure re-audit: "broad OpenMP" in the closed lists refers to global `USE_OpenMP`, which `makefile` 343 rejects architecturally, and Stage-75 P3 closed *separated OpenMP producer/exchange/consumer regions* around halo exchange (`analysis/o33_pow_openmp_static_review_20260803/`). Neither tested adding `-qopenmp` to a further object, so this direction is open; equally, no prior result predicts it will succeed.
- Compliance: item 1 permits loops/OpenMP and item 2's 2026-08-03 clarification removed bitwise-identity as a precondition. Parallelising a grid-point-independent outer loop does not change any point's arithmetic order, so bitwise identity is the expectation provided genuine cross-point reductions (`obc_volcons_mod`, global integrals) stay serial. Physical formulae, grids, time step, outputs, ecology and two-way nesting are untouched by directive addition.
- Secondary open space recorded, not opened: intra-node shared-memory halo exchange. `ROMS/Utility/mp_exchange.F` transports every halo with plain `mpi_isend`/`mpi_irecv`; the only `mpi_comm_split_type(OCN_COMM_WORLD, MPI_COMM_TYPE_SHARED, ...)` in the tree is `distribute.F` 5236 serving `[O9]`. Halo pool is `33893.466` CPU-s = `24.79%` of wall with 16 ranks per node (`CPUTot=32`, `Sockets=4`, `CoresPerSocket=8`). Requires an `mp_exchange.F` rewrite previously excluded as a whole-file change.
- Platform inventory: `/opt/hpc/software/compiler/intel` holds only `intel-compiler-2017.5.239` and the `gcc` directory is empty, so item 7 has no alternative compiler. `/opt/hpc/software/mpi/hpcx` holds `v2.4.0`, `v2.4.1`, `v2.5.0`, `v2.7.4`, `v2.11.0`; the binary links `v2.7.4` and `v2.11.0` has never been tested.
- Three-pass analyses: `analysis/thread_headroom_rules_matrix_20260804/{01_read_summary.md,02_profiling.md,03_validity_check.md}`, all valid. Pass 3 applies the nested-timer deduction as a mandatory correction to pass 2's upside table and records that all upside figures are static projections, not measurements.
- Output lifecycle: no model output created; deletion not applicable; all retained results remain retained.

## Stage 89 - static per-object OpenMP audit; four-object candidate defined

- Date: 2026-08-04 +0800. Follow-up to Stage 88 at user request: audit each single-threaded compute object for its parallel axis, full `PRIVATE` list, communication call sites and reductions before choosing a candidate. Read-only over SSH alias `MCC`; no source, build, job, input or output was created or modified; no teammate path was touched. Probe scripts: `experiments/omp_audit_20260804/`.
- The audit was run against `Build/*.f90` (the CPP-resolved files the compiler consumed), not the `.F`/`.h` sources. That immediately invalidated two Stage-88 assumptions.
- **Correction 1 - timer 28 is `hmixing`, not `t3dmix4_geo`.** `ROMS/Include/bye24bio15.h` 33 defines `TS_U3ADV_SPLIT`, 63-65 therefore define `MIX_GEO_TS`, and 66 defines `MIX_S_TS` unconditionally; both modes are defined, but `t3dmix.F` 45-48 tests `#if defined MIX_S_TS` before `#elif defined MIX_GEO_TS`, so only `t3dmix4_s.h` is included. `Build/t3dmix.f90` is 355 lines, contains only `t3dmix4_tile`, holds no `dZdx`/`dZde` geopotential terms, and already carries the `[O25]` directives at 218-219. The time printed against "Biharmonic mixing of tracers, geopotentials" belongs to `ROMS/Nonlinear/hmixing.F` line 86, which reuses region 28. `t3dmix4_geo.h` is removed from the candidate list and replaced by `hmixing`; the `1.641%` wall share is unchanged because it is the same timer.
- **Correction 2 - `gls_prestep` is single-threaded and shares region 19 with `gls_corstep`.** Both `Build/gls_prestep.f90` 64 and `Build/gls_corstep.f90` 67 call `wclock_on (ng, iNLM, 19)`; only `gls_corstep.o` carries `-qopenmp`. Part of the `13.8027%` GLS CPU bucket is therefore still serial, and its share cannot be separated without new instrumentation.
- Per-object audit result. All line numbers refer to `Build/*.f90`:
  - `rho_eos` (`1.599%` wall): a single `DO j=JstrT,JendT` at 223-344 covers the whole computation. PRIVATE must include `bulk, bulk0, bulk1, bulk2, den, den1` (all `(IminS:ImaxS,N(ng))`, no `j`), `C(0:9)` written inside the innermost `i` loop, and 13 scalars. All `exchange_*`/`mp_exchange*` calls are at 350-380, after the loop. No reduction. Per-thread stack about `86 KB`.
  - `hmixing` (`1.641%` wall): axis is `DO k=1,N(ng)` at 243-278 plus eight small boundary blocks. **No local arrays at all** - PRIVATE is four scalars. Communication at 376-386, outside. No reduction.
  - `step3d_uv` (`2.562%` wall): exactly two clean loops, `DO j=Jstr,Jend` 234-461 and `DO j=JstrT,JendT` 513-737, separated by `u3dbc_tile`/`v3dbc_tile` and the point-source block. Every write in both is at the loop's own `j`; the only off-`j` read is `Hz(i,j-1,k)` and `Hz` is `intent(in)`. All seven local arrays (`AK, BC, CF, DC, FC` `(IminS:ImaxS,0:N)`, `Hzk, oHz` `(IminS:ImaxS,N)`) lack `j` and are PRIVATE. Every communication call is at 743-780, after both loops. No reduction. Per-thread stack about `104 KB`.
  - `rhs3d` (`2.456%` wall): two named top-level loops, `K_LOOP` 264-543 and `J_LOOP` 545-672, with nothing else between the timer calls at 91 and 119 - no call, no communication, no reduction. `K_LOOP` writes `ru`/`rv` at its own `k` and needs all fifteen `(IminS:ImaxS,JminS:JmaxS)` temporaries PRIVATE (about `280 KB`/thread); `J_LOOP` writes `ru`, `rv`, `rufrc(i,j)`, `rvfrc(i,j)` at its own `j` and needs `CF, DC, FC` PRIVATE. Two directives, two distinct PRIVATE lists; merging them would be a race.
  - `step2d` (`18.001%` wall): all 21 temporaries carry the `j` dimension and can stay SHARED under a `j` split, but roughly sixty `DO j` loops are cut into about seven segments by interleaved `exchange_*`/`mp_exchange2d`/`set_DUV_bc_tile`/`wetdry_tile`/`zetabc_tile` calls, and `obc_flux_tile` holds the volume-conservation reduction. Overhead model on the dominant Grid-02 tile (`930` points, `77%` of the timer) puts the achievable speed-up at `1.10`-`1.39`, i.e. a whole-run gain of `1.41%`-`4.36%` - the 2% gate sits inside the model's own uncertainty band.
- **Risk reclassification versus Stage 88.** `step3d_uv` and `rhs3d` were listed as medium risk with MPI placement and reductions unconfirmed. Both are confirmed clean: no communication and no reduction inside either timer. All four of `rho_eos`, `hmixing`, `step3d_uv`, `rhs3d` are therefore in the same low-risk class as the already-accepted `[O25]` objects, needing six directives across four files plus four `private FFLAGS += -qopenmp -no-heap-arrays` makefile lines.
- Revised upside, applying the nested-timer deduction per object rather than uniformly (`rhs3d` encloses no communication and needs no deduction): `rho_eos`+`hmixing` = `2.797%` deducted pool, `1.10%` at speed-up `1.651`; adding `step3d_uv` = `5.008%`, `1.97%` at `1.651`; adding `rhs3d` = `7.464%`, `2.94%` at `1.651`, `2.13%` at `1.40`, `1.72%` at `1.30`. The four-object group is the smallest grouping that clears 2% across the plausible speed-up range without touching `step2d` (`15.539%` deducted, `3.58%`-`6.13%`).
- The same run also measures what is currently the dominant unknown: regions 14, 28, 34 and 21 are separately timed, so the achieved OpenMP speed-up on ROMS-shaped loops at this tile size is read directly from the candidate's own profile, replacing the `1.30`-`1.65` projection band that decides whether `step2d` is worth a sixty-site edit.
- Residual uncertainties recorded in pass 3: `1.651` is an average over the five hottest, most regular nests and is the optimistic end for new objects; the `13.68%` overlap deduction is a tree-wide average with roughly `+/-0.3` pp of slack per object; Grid 02's `30x31` tile is derived from `235x245 / 008x008`, not printed; and Intel 2017.5 may lose some vectorisation when automatic arrays become thread-private, which would eat into the thread speed-up.
- Compliance: every proposed directive parallelises an outer loop whose iterations write disjoint memory. No accumulation order changes, no `REDUCTION` clause is introduced, no expression is rewritten, no communication is moved, and rank count/tiling/flags for all other objects are untouched. Bitwise identity is the expectation; `MPI_THREAD_MULTIPLE` is not required because every region sits strictly outside communication.
- Three-pass analyses: `analysis/omp_object_audit_20260804/{01_read_summary.md,02_profiling.md,03_validity_check.md}`. Pass 3 corrects pass 1's risk ranking for `step3d_uv` and `rhs3d` and supersedes pass 1's narrower `rho_eos`+`hmixing` calibration recommendation.
- Output lifecycle: no model output created; deletion not applicable; all retained results remain retained.

## Stage 90 - [O34] four-object selective OpenMP built and measured; STOP_BRANCH

- Date: 2026-08-04 +0800. Executes the Stage-89 candidate. Build job `118529296` (`BUILD_OK`; all six `!$OMP PARALLEL DO` survive CPP; `__kmpc_fork_call` present in `rho_eos.o`, `hmixing.o`, `step3d_uv.o`, `rhs3d.o`), A-B-B-A job `118529765` on `kshcexclu06`, 4 nodes x 16 ranks x 2 threads, `--exclusive`, matched `144/720` input. Private work tree `agent_tmp/isolated/work/o33_omp4_20260804`; no teammate path touched. Every input, binary, candidate source and the validator entered the job through sha256 gates.
- Runtime environment recorded because it governs the interpretation: `KMP_BLOCKTIME=0`, `OMP_PROC_BIND=close`, `OMP_PLACES=cores`, `OMP_STACKSIZE=256M`, rankfile pinning paired physical cores, HPC-X 2.7.4, `coll_hcoll_enable=0` plus the existing `coll_rules.conf`. Idle OpenMP threads therefore sleep and burn no CPU outside parallel regions, while UCX MPI waits busy-poll and are charged in full to whichever `wclock` region is open.
- **Verdict `STOP_BRANCH`.** `mean_A=126.436 s`, `mean_B=125.021 s`, `gain_percent=1.1195`, `both_B_faster=False`, `trajectory_consistent=True`. All four runs produced byte-identical time-step trajectories (`fa498694...e44b0`), confirming the Stage-89 prediction of bitwise identity.
- The `1.12%` apparent gain is an artefact of cold start. `A1=128.416 s` versus `A2=124.457 s`; `Reading of input data` (Grid 01) is `183.356` versus `86.087` CPU-s and `data broadcast` is `249.180` versus `104.854`, together `+241.60` CPU-s `= 3.78 s`/rank, i.e. `95%` of the `3.959 s` gap. The only valid comparison is warm-versus-warm: `A2=124.457 s` against `B2=125.012 s`, so **B is `0.45%` slower**.
- **The OpenMP itself worked, and worked well.** Using `s = 2 / (CPU_B/CPU_A)` for a timer that was single-threaded in A and two-threaded in B: `rho_eos` `122.724 -> 130.539` CPU-s gives `s=1.880`; `hmixing` `124.777 -> 131.569` gives `1.897`; `rhs3d` `186.576 -> 191.638` gives `1.947`; `step3d_uv` `195.547 -> 224.392` gives `1.743`; the four together `629.624 -> 678.138` give `s=1.857`. That is **above** the `1.651` average of the five existing `[O25]` objects, so the Stage-89 worry about thread efficiency was unfounded. Bounded honestly, `s` lies in `1.6-1.9`.
- Predicted saving at `s=1.857`: `629.624/64 = 9.838 s`/rank serial (`7.90%` of wall) drops to `5.298 s`/rank, i.e. `4.540 s`/rank `= 3.65%` of wall. **None of it reached the wall clock.**
- **Where it went.** Total CPU rose `10138.0 -> 10598.5` CPU-s (`+4.54%`); the four targets account for only `+48.5`, so untouched regions grew `+412.0` CPU-s `= +6.44` CPU-s/rank. The growth is selective: `GLS vertical mixing +281.4 (+20.8%)`, `3D halo +72.4 (+22.4%)`, `4D halo +52.4 (+6.0%)`, `2D halo +35.4 (+5.6%)`, `Omega +9.3 (+15.5%)`, `2D/3D coupling +7.3 (+7.4%)`, `pre_step3d +23.3 (+1.3%)`, `step3d_t +6.9 (+0.5%)` - every one of them contains MPI - while pure-compute regions do not move at all (`step2d -0.7%`, `t3dmix4_s -0.1%`, `biology +0.5%`, pressure gradient `-0.4%`). GLS alone absorbs `281.4/64/2 = 2.20 s`/rank, about half the saving. Because message timers are partly nested inside compute timers (Stage 88), the GLS and 3-D halo increases are the same waits counted twice and must not be added.
- **Accounting closure discriminates the two hypotheses.** Converting CPU deltas to wall (already-two-threaded regions `/2`, serial regions `/1`): untouched two-threaded `+157.4` wall-s, untouched serial `+202.7` wall-s. H1 (`s=1.857`) puts the four targets at `678.138/2 - 629.624 = -290.6` wall-s and predicts `+1.09 s`/rank against `+0.555` measured - inside the I/O noise. H2 (second thread idle, no region speed-up) predicts `+5.63 s`/rank, i.e. `B2 = 130.1 s` against `125.0` measured, and is rejected by `5 s`.
- Noise calibration from same-binary repeats (Grid 02): GLS `983.523/974.689` for A and `1178.273/1171.033` for B (`<1%`); 3-D halo `<2%`; `step3d_uv` `<0.2%`. The `5-22%` A-to-B changes are `10-20x` the noise. Mean thread occupancy `CPU/(64*wall)` rose `1.2727 -> 1.3247`. Per-rank CPU spread was `2.7%` in A2 and `2.6%` in B2 - unchanged, because busy-polling keeps waiting ranks at full CPU.
- **Mechanism.** At 64 ranks x 2 threads with `8x8` tiling on this platform, the wall clock is not set by single-threaded 3-D compute. These four regions are off the critical path; the path is set by rank arrival skew at synchronisation points, and that skew is unrelated to them. Ruled out as primary causes: OpenMP fork/join overhead (about `10^4` regions, at most `~1 s`/rank, and it would be charged to the target timers, not to GLS/halo) and node memory-bandwidth contention (the targets reached `s=1.74-1.95`, so bandwidth did not saturate, and untouched pure-compute regions are flat).
- **Not measured, and now the blocking unknown:** the source of the arrival skew. Candidates are rank-0 NetCDF read plus `mp_bcast` (`Processing of input data` Grid 02 rose `110.4 -> 152.5`, right direction but that timer is noisy), nested-grid `mp_assemble`/point gathering, OS/frequency jitter, and per-rank halo-volume differences under `8x8`. Distinguishing them needs a per-rank arrival-timestamp probe that has not been run.
- **Method corrections carried forward.** (1) The "region share x speed-up" upside model is invalidated for 3-D compute regions - Stage 89 predicted `1.5-2.5%` and the compute prediction was right while the delivered gain was zero; future projections must first prove the region is on the critical path. (2) A rise in CPU time does not mean slower work: busy-polling MPI waits are indistinguishable from compute in `cpu_time()`, so a region's MPI content must be checked before reading its delta. (3) Per-rank CPU spread is not a load-balance indicator. (4) The first run of an A-B-B-A is a systematic cold-start outlier; add a discarded warm-up or keep `both_B_faster` as the primary gate - it is what caught this false positive. (5) `run_omp4_abba.slurm` line 174 filters `Corrector 3D momentum` while the log prints `Corrector time-step for 3D momentum`, so one of the four targets was missing from `profile_extract.txt` and had to be recovered from `model.log`; fix the regex in the next harness.
- Compliance: fully compliant. Only `!$OMP PARALLEL DO` directives were added and four objects gained `-qopenmp -no-heap-arrays`; no expression, loop order, reduction, communication, input parameter or output was touched, and bitwise identity was confirmed empirically. The branch is rejected on performance alone.
- Disposition: **[O34] not merged.** The four `.F` edits and the four makefile lines are correct and are retained by hash in the analysis record, so they can be revived if the synchronisation limit is ever removed. This is the second consecutive `STOP_BRANCH` after Stage 85, which triggers the mandatory research cycle defined in `plan.md` (Stages 52, 57). Next action is gated on measuring rank arrival skew before any further candidate is chosen.
- Three-pass analyses: `analysis/omp4_selective_openmp_118529765/{01_read_summary.md,02_profiling.md,03_validity_check.md}`, raw evidence under `raw/` including `profile_full.txt` recovered from all four `model.log` files.
- Output lifecycle: run directory `/public/home/fujiake/fjk/mcc_runs/118529765_o33_omp4_abba_sample` retained, `1.4 MB`, zero NetCDF written (`nc_count=0` for all four runs). Candidate build tree retained pending the cleanup decision recorded below.

## Stage 91 - pause; progress sync; handoff Skill prepared

- Date: 2026-08-04 (local). User requested halt, progress synchronization, and handoff-Skill readiness. No source/build/job/validator work was started; no remote deletion; teammate trees untouched.
- Progress alignment: authoritative Skill state is Stage 90 (`[O34]` STOP_BRANCH; next gate = rank arrival-skew probe). Workspace package had lagged behind installed (progress/plan/evidence-index at Stage 89); installed tree was treated as source of truth and copied into the workspace package and BN mirror. Post-sync compare: `SKILL_DIFF_COUNT=0`, `FILE_COUNT=10`.
- Human entry docs written/refreshed:
  - `CURRENT_STATUS_AND_PLAN_20260804.md` (pause handoff entry; supersedes 20260803 status doc as the resume tip)
  - `SESSION_MEMORY.md` rewritten for 2026-08-04 pause resume
- Skill locations synchronized:
  - workspace: `决赛/03_交接Skill/skill-packages/mcc26-roms-cosine-handoff`
  - installed: `C:\Users\Fu Jiake\.codex\skills\mcc26-roms-cosine-handoff`
  - BN mirror: `BN决赛/决赛/03_交接Skill/skill-packages/mcc26-roms-cosine-handoff`
- Observed remote queue during pause (read-only, do not disturb): job `118533083` `ntile_abba_ompk.sh`, `WorkDir=/public/home/fujiake/zya`. Disk snapshot at check time: home ~71%/89G free; `/public` ~18P free — must be rechecked on resume.
- Active plan remains Stage-90: do not reopen 3-D selective OpenMP; do not start `step2d` OpenMP on the invalidated upside model; skew probe is required before any new candidate. Stage-87 `get_contact2d` sparse remains a retained fallback only.
- Output lifecycle: this stage produced no model output; deletion not applicable. Retained Stage-90 run dir and build tree remain retained.

## Stage 92 - skew probe three-pass design gate APPROVED; binary verified in place

- Date: 2026-08-04 (resume after Stage-91 pause). Executes the Stage-90 gate: the rank arrival-skew probe design passes its three-pass analysis (`analysis/skew_probe_design_20260804/{01_read_summary.md,02_profiling.md,03_validity_check.md}`, all valid). No new build/job was submitted; no model output; no deletion.
- Design `[P1]`: one-file instrumentation of `ROMS/Utility/timers.F` — inside the existing `#ifdef DISTRIBUTE` finalize block in `wclock_off` (once per grid at run end, before the `mp_reduce` SUM), each rank dumps its own per-region `Csum` totals to `skewprobe/rankNNNN.txt`. Zero physics/communication change; trajectory gate `fa498694...e44b0` enforces bitwise neutrality. Discriminates (a) persistent rank-attributable skew, (b) random jitter, (c) rank-0 I/O concentration via per-rank totals of wait pools (`Message Passage: 2D/3D/4D halo exchanges`, `point data gathering`) and startup pools (`Reading/Processing of input data`, `data broadcast`, `data scattering`), 3 repeats (P1/P2/P3) for cross-run Pearson persistence, plus 8x8 tile spatial map and per-node aggregation. Literal arrival timestamps at the GLS 3-D halo entry were consciously deferred to a staged `[P2]` fallback (perturbation risk at the measured sync point); not started.
- Discovery on resume: two build jobs for the probe ran before the pause handoff and both ended in harness gates — `118532196` FATAL "expected exactly one differing ROMS/ file" and `118532486` FATAL "probe string missing from binary" — the result of two overlapping builds on the same tree (same platform pattern as the Allgatherv duplicate build `118206252`). Harness artifacts, not candidate results; no model sample, no timing; do not count as ineffective attempts.
- The settled tree is clean and the probe binary is verified in place (read-only): `oceanM.O33_skew` = `3322eeaf85be7ac7cf5caaa46660d87fe0b030abfa2164855668d1b5a0c17aa7` (6,916,600 B); `strings` shows `skewprobe/rank` (exact grep rc=0) and the `$SKEWFILE` symbol; mtime chain `timers.f90` 14:07:50 → `timers.o` 14:07:50 (29,056 B vs parent 24,552 B) → `libUTIL.a` 14:07:51 → `oceanM` 14:07:51; `source_tree.diff` = 1 line (timers.F only); eight spot-checked untouched objects byte-identical to parent. `build_metadata.txt` was never written (script exits on FATAL before the metadata block); provenance reconstructed read-only.
- Methodology carried forward (Pass 2): per-rank values are process-CPU seconds (`my_wtime` = `cpu_time`, makefile leaves `USE_OpenMP` empty); in busy-poll wait pools 1 CPU-s ≈ 1 wall-s; the least-wait rank is the straggler (arrives last); P1 is a cold-start outlier — persistence uses P2–P3 as the primary pair (corr ≥ 0.7 persistent, ≤ 0.3 jitter).
- Run harness (deployed = local draft, SHA `e8c4f269...9c7ab`): one diagnostic `144/720` job, 4 nodes, 64 MPI × 2 OpenMP, spread_numa16_ccx rankfile, HCOLL off, KMP_BLOCKTIME=0, P1/P2/P3 × `time mpirun`, per-run gates: DONE, `real`, trajectory SHA, step-range headers, exactly 64 probe files, `nc_count=0`; disk gate ≥10 GiB. Submit-time env to inject: `EXPECTED_SCRIPT_SHA=e8c4f269bf81645427299617f5e738d29ccf42328e1b8cb35661700058e9c7ab`, `EXPECTED_PROBE_SHA=3322eeaf85be7ac7cf5caaa46660d87fe0b030abfa2164855668d1b5a0c17aa7`.
- `analyze_skew.py` exercised end-to-end on synthetic data (all five sections run); real region names verified against retained Stage-90 `A2/model.log` (`Message Passage: ...` prefix matches the script filter).
- Coordination snapshot: queue = teammate `118533083` (`zya`, running, j01r2n[08-11]) only, untouched; `/public` 71%/18P free; home quota recheck pending at submit. Output lifecycle: none created; candidate tree `o33_skew_20260804` retained (run harness requires it). Next action: user confirmation, then submit the single diagnostic job; no optimization candidate before the probe's result.

## Stage 93 - skew probe run `118537688` completed; skew is persistent and structural (case a)

- Date: 2026-08-04. Executes the Stage-92-approved `[P1]` probe. Job `118537688` on `j01r2n[08-11]`, 4 nodes, 64 MPI × 2 OpenMP, `144/720`, 8x8/8x8, HCOLL off; probe binary `3322eeaf...` (hash-gated); run script `e8c4f269...`; Inputfiles symlink restored pre-submit (missing from copied tree — Stage-85 mode). Three runs P1/P2/P3: `real` 133.595 / 133.957 / 127.979 s, all rc=0 DONE, trajectory `fa498694...e44b0` identical (probe bitwise-neutral), 64 probe files/run, nc=0.
- **Verdict: skew is (a) persistent and rank-attributable, structural; NOT jitter (b); NOT rank-0 I/O (c).** Cross-run correlation TOTAL 0.95; fine-grid pools 0.81–0.99 (4D halo 0.989); startup pools small and symmetric (input read 2.1, broadcast 3.2–3.8 CPU-s/rank vs halo pools 6–12).
- Magnitude: per-rank TOTAL CPU spread 9.65 CPU-s (5.7%) P1 → 6.07 CPU-s (3.7%) P3 (warm); dominant pool G2 4D halo mean 11.6, spread 6.1 CPU-s (52.6%, stable). Busy-poll wait ≈ wall → conservative full-run ceiling ≈ 3–4% (≈65–85 s of 2136 s); partial (west-column) removal ≈ 2–3%. First measured >=2% mechanism since Stage 90.
- Structure: G2/G1 4D halo — west tile column `Itile=0` waits 20–38% less (62–92% vs 103–115%); G2 2D halo + G1 point gathering — interior center block (Jtile 3–6 × Itile 3–5, r36/r44/r45 family) waits 25–50% less; G2 pre_step3d interior-center +4%; step3d_t flat; node dimension ±6% (Stage-53 mapping closure consistent). Straggler identity is pool-specific → load-structure-driven, not one slow rank/node.
- Direction per plan: **decomposition/tiling aspect ratio** for the fine grid (both grids may use different orientations with equal product). Node mapping and rank-0 I/O demoted; overlap route (b) rejected by persistence. Lateness *reason* (compute vs nesting boundary supply) not proven — `[P2]` arrival-timestamp probe is the designed fallback if needed for tiling choice.
- Gate status: probe complete and valid (`analysis/o33_skew_probe_118537688/`, three passes valid). Mandatory research cycle (Stages 52/57 trigger: consecutive STOP_BRANCH at 85/90) still applies BEFORE any A-B-B-A: next stage is a static tiling enumeration/design pass (legal 64-factor tilings, per-tile widths/halo volumes for 235x245/359x326, skew-redistribution model) with its own three-pass analysis. No build/run/submission authorized by this stage.
- Output lifecycle: result root `/public/home/fujiake/fjk/mcc_runs/118537688_o33_skew_probe` retained (small); candidate tree with probe binary retained; no deletion; teammate queue empty/untouched.

## Stage 94 - tiling design pass: decomposition direction CLOSED by arithmetic

- Date: 2026-08-04. Mandatory research-cycle deliverable after the Stage-93 probe (case-a branch: decomposition/tiling or mapping). Three-pass analysis valid at `analysis/tiling_design_20260804/`. No build/run/submission.
- Grid facts (from diagnostic input `05ceb746...`): coarse `Lm=359, Mm=326`; fine `Lm=235, Mm=245`; NtileI/J = 8 8.
- Perimeter model `V = 2·(NtileI−1)·mean(Mtile) + 2·(NtileJ−1)·mean(Ltile)` over all seven 64-factor tilings: 8x8 is the exact global minimum for both grids; 16x4 → 2.15x/2.29x, 4x16 → 2.35x/2.21x, 32x2 → 8.45x/9.06x, 2x32 → 9.30x/8.69x, 64x1/1x64 → 34–38x (coarse/fine).
- Wall translation with probe pool means (busy-poll ≈ wall): fine 16x4 → +31 CPU-s/rank ≈ +18% of the 128 s diagnostic; coarse 4x16 → +11 CPU-s/rank ≈ +8.5%. Skew budget ≤6 CPU-s (3.7%). The halo-payload increase is ≥5x the entire skew budget; projections are lower bounds (per-call/pack costs omitted).
- Verdict: decomposition/tiling CLOSED (any A-B-B-A is a guaranteed regression); rank-to-node mapping stays closed (Stage 53 + probe node dimension ±6%). Stage-58 note quantified and extended.
- Remaining skew decomposition: (1) G2 2-D halo center-block straggler (spread 3.75–5.0 CPU-s, atoll step2d wet/dry load; no legal mechanism; `[P2]` needed for attribution — decomposition floor); (2) G1 point gathering center-block straggler (spread 2.37 CPU-s) = Stage-87 `get_contact2d` sparse target (timer-49 pool 2.04% rank-CPU ≈ 2.7% wall upper bound, bitwise-safe owner-map port) — now supported by the probe's straggler evidence; only remaining legal ≥2%-edge route.
- Recommendation to user: do not spend an A-B-B-A on tiling; if continuing performance work, revive Stage-87 get_contact2d candidate under its own one-A-B-B-A gate (both B faster; reject <2%; ≥3% + profile support → full run); otherwise delivery remains the active track (O33 26/26, venue-manual steps per Stage 83).
- Output lifecycle: none created; probe root + candidate tree retained; queue untouched.

## Stage 95 - [O34b] get_contact2d/get_persisted2d sparse A-B-B-A: STOP_BRANCH (-2.29%)

- Date: 2026-08-04. Executes the revived Stage-87 candidate (user decision): sparse owner-map port of the validated [O10] 3-D path into get_contact2d + get_persisted2d (nesting.F only, 2 sparse blocks, `#ifdef/#endif` 291/291 balanced). Candidate source `9bf9c9cc...`; builds: r1 failed at CPP (`#endif without #if`, fixed), r2/r3 byte-identical binaries `oceanM.O33_g2d` = `f3d318cd...` (strings gate flaked twice on stale FS reads — string verified present, 3 matches; only nesting.o rebuilt, 4 spot-checked objects byte-identical to parent; manual build record written). Inputfiles symlink restored in build (Stage-85 mode). Builds ran via `srun` workaround (sbatch 0:53 pattern).
- A-B-B-A `118541006` on j05r2n[04-07], 4n/64×2, 144/720, 8x8/8x8, HCOLL off: W0=127.982 (discarded warm-up), A1=126.011, A2=125.943, B1=129.547, B2=128.173. mean_A=125.977, mean_B=128.860, gain=−2.2888%, both_B_faster=False, trajectory `fa498694...e44b0` identical across ALL five runs → candidate bitwise-equivalent.
- Mechanism accounting: target pool fell as designed (point data gathering G1 mean 138.07→107.26 CPU-s, −22.3%; G1+G2 −16.6%), but total rank-CPU rose 10284.5→10569.2 (+284.7, +2.77%) — the regression is the per-call overhead of the sparse path at 2-D record size (10 allocatables/call, 4-double point-to-point messages with 64-rank tag matching, hundreds of call sites per 3-D step) charged inside the enclosing barotropic-loop compute regions. Small-message point-to-point + per-call heap traffic exceed the 64-rank Allreduce they replaced on this HPCX/UCX platform — the inverse of the Stages 25–27 lesson. The 3-D [O10] path (136-double records) is not falsified.
- Verdict STOP_BRANCH (correct but slower; below the Stage-87 gate). No half-day/full run. Stage-87 fallback is now CLOSED BY MEASUREMENT.
- Harness defect: W0 tagged variant=O33 (not WARMUP) crashed the auto-decision block after completion; decision.txt written manually with the note. Never rebuilt.
- Output lifecycle: run root retained (nc=0 all runs); candidate trees r1/r2/r3 retained as evidence; no deletion. Skill/progress/plan/evidence-index updated; three-pass valid at `analysis/o33_g2d_sparse_abba_118541006/`.
- Status after this stage: all legal ≥2% candidate routes are closed (tiling by arithmetic Stage 94, point-gathering sparse by measurement now, OpenMP/scratch/AVX2/halo by prior stages). Active track = delivery (O33 `118405320` 26/26, venue-manual steps per Stage 83). Research gate remains active.

## Stage 96 - performance route re-evaluation (resume); GLS pow axis CLOSED by inherited evidence

- Date: 2026-08-05 (resume from Stage-91 pause + Stage-95 delivery hold, at user request "重新评估性能路线"). Read-only over SSH alias `MCC`; no source/build/job/output change; teammate trees untouched. Three-pass analysis valid at `analysis/gls_pow_route_reeval_20260805/`.
- Queue snapshot at check: teammate `118606516` `pipeline_abba_ompk.sh` (zya, A=`ompk-o33nopow-bio` vs B=`ompk-pipeline`, j04r2n[16-19]) and teammate `118605188` `nan_N1_3day` (j01r2n[03-06]) — both running, read-only, not touched. Disk: `/public` 229G/300G used, 72G free.
- Reconciliation item 1 (`.O14.bak` rollback reason) RESOLVED: `.O14.bak` is `[OPTIMIZATION O14] mathreuse: cache repeated ** powers (lsd v21; no OMP)` — caches 4 hot `gls**/tke**` powers into locals (no exponent-semantics change; diff verified read-only). Teammate nan `failure_analysis_O34_O35.md` (`/public/home/fujiake/nan/report_his/`) records the same-idea O35 measured on O33: GLS PROFILE line 992.5→991.9 (0.999×, zero target-kernel gain), wall 0.935×; attributed to (1) ifort `-O3 -qopenmp -no-heap-arrays` already CSEs same-argument `**` within basic blocks, (2) remaining `__libm_pow` comes from other `**` sites, (3) E071 algebraic pow removal failed precision — semantics cannot be traded for the 8%.
- Reconciliation item 2 (zya nopow results) RESOLVED: read `process.time`/`run_metadata.txt` for zya full3d runs (baseline `base_g_full3d`=40:47.34, binary `ompk-step3d-t-g` — NOT this workflow's O33 parent, percentages not cross-comparable): `o33nopow_full3d` 40:03.90 (−1.8%), `o33nopowO3_full3d` 40:27.14 (−0.8%), `gls_full3d` 40:02.07, `gls_full3d_v2` 39:58.63, `gls_full3d_O2_2` 39:32.65 (−1.9% ~ −3.0% vs teammate's own baseline). Teammate vali scripts are tightened-threshold variants (Dongsha ×1e-5), no official vali.py 26/26 evidence seen.
- Verdict: **Stage-86 GLS K-kl pow candidate CLOSED** — all three implementation forms (mathreuse cache, algebraic identities incl. K-kl `x*SQRT(x)`, mixed) are negated by inherited measurement/static evidence (O35 zero kernel gain; E071 precision fail; zya full-run 0.8–3.0% below this workflow's conservative ≥2% gate with no official validation). This workflow does NOT build it.
- Resulting state: no remaining ≥2% candidate anywhere (Stage 95 closure + GLS pow now closed). Performance route stays closed; active track = delivery (O33 `118405320` 2136.310 s, 26/26, venue-manual steps per Stage 83). Research gate remains active; any future reopening needs a new exact ≥2% mechanism.
- Pending observation (read-only): teammate zya `pipeline_abba_118606516` (`ompk-pipeline` new candidate) result due ~30 min; if ≥2%, treat as inherited evidence only, would need independent A-B-B-A review.
- Output lifecycle: no model output created by this stage; deletion not applicable. All teammate runs/outputs retained and untouched.

## Stage 97 - KMP_HOT_TEAMS runtime-only A-B-B-A submitted (combo candidate)

- Date: 2026-08-05 (continuation of user-requested performance re-evaluation: "combine >0.5% optimizations"). Read-only discovery + one new experiment submission.
- Discovery (inherited evidence, teammate nan sprint line): S10 = `oceanM.S8_gls_source.bak` (md5 `176e7125...`) + runtime `KMP_HOT_TEAMS=1 KMP_HOT_TEAMS_MAX_PARALLEL=2 OMP_STACKSIZE=1G`. Official 3-day run `118576545`: **34m46.339s (2086.3 s)**, official vali 26/26 PASS (`vali_sprint_3day_118576545.log`, Dongsha u=0.000052 identical to O33). vs this workflow's O33 `118405320` 2136.310 s → S10 ≈ 2.34% faster.
- S10 composition vs O33 (verified read-only): (1) compile: `biology.o` + `-fp-model fast=2 -no-prec-div -fp-speculation=fast`, `gls_corstep.o` `-fp-model source` (sprint Linux-ifort.mk [S1] comment: biology has 30+ exp/log/sqrt calls); (2) runtime: KMP_HOT_TEAMS; (3) source: sprint tree vs O33 import differs only in `nesting.F` (O84 whole-layer assemble) + unused `metrics.F`; nan report `N1_S10_O33pack.md` verdicts the nesting change worthless (N1 34:45.2 vs S10 34:46.3) and rolled back → nesting diff inert.
- Teammate negatives confirmed: zya pipeline_abba `118606516` (A=`ompk-o33nopow-bio`, B=`ompk-pipeline` pre_step3d->LOOP_2D fusion): A1/A2 6:00.84/6:01.06, B1/B2 6:04.02/6:07.84 → B slower ~1.3%, negative. nan N2 fno-alias sample 2m7.2s flat. zya bcast ABBA was a variance repeat (same binary/env both legs). zya kmp ABBA (KMP_BLOCKTIME 0/1/5/10) all ~6:00 flat.
- This workflow decision: first isolate the runtime component — **zero-code, zero-rebuild A-B-B-A on the immutable O33 binary** (`5f1a137e...`), A = current runtime (no HOT_TEAMS), B = KMP_HOT_TEAMS=1 + KMP_HOT_TEAMS_MAX_PARALLEL=2 (OMP_STACKSIZE stays 256M to keep the axis single). Gate: trajectory `fa498694...e44b0` must be unchanged (bitwise), both B faster, >=3%.
- Script: local `experiments/hotteams_20260805/run_hotteams_abba.slurm` = remote `/public/home/fujiake/fjk/agent_tmp/isolated/scripts/hotteams_20260805/run_hotteams_abba.slurm` SHA `161efa63ca8f8de4571781d6bf491b287bf90ea85ad5bf6e5c8475680c19ca94`; derived from Stage-95 g2d harness with two fixes (binary=$3 param, W0 tagged WARMUP — the Stage-95 harness defect). Bash -n OK.
- Submitted `118608168` (4n/64×2, 144/720, HCOLL off, queue behind teammate E084 `118607684` j05r2n[10-13] and E085 `118607703` j04r2n[08-11], read-only untouched). Disk 72G free.
- If B wins: next axis = biology fast=2 (requires rebuild of biology.o + official vali; float-order change, must pass full 2592/12960). If B loses: S10's 2.34% is entirely fast=2/gls source + cannot port without rebuild.
- Output lifecycle: no model output yet; deletion not applicable. Teammate trees untouched.

## Stage 98 - literature review (user-supplied paper list); IISc step2d loop fusion identified as portable combo item

- Date: 2026-08-05. User supplied 5-category paper list and asked "搜索这些论文看看有没有可用的". Web search + full-text review; read-only; no build/submission. Three-pass valid at `analysis/literature_review_20260805/`.
- **Only usable item**: Tanya Gautam IISc M.Tech thesis (2025-06), "Roofline-Based Performance Analysis and Optimization of ROMS" (`https://vgl.csa.iisc.ac.in/pdf/pub/Tanya_Mtech_thesis.pdf`). step2d is memory-bound (AI 0.1898 FLOP/byte vs ridge 15.8); fusing the three Drhs/DUon/DVom loops into one (inline IF guards) removed ~290M loads + 144M stores, overall runtime −1.6% (1055x942x40, Param Pravega).
- Portability check (read-only): O33 `step2d_LF_AM3.h` `#else` branch (NESTING defined at `bye24bio15.h:16`) lines 527-548 has the exact same three independent loops. Fusion is per-point arithmetic-order-preserving → bitwise-safe (trajectory `fa498694...` expected unchanged). NEARSHORE_MELLOR off → DUSon/DVSom dead.
- Conservative upside: step2d is ~10% G02 / ~3% G01 rank-CPU; the three loops are a small fraction of ~60 step2d loops; IISc's 1.6% was on a config where step2d dominated (~70%). O33 static estimate ~1% — **below the 2% single-item gate**; value is as a COMBO item (e.g. with HOT_TEAMS) or as a low-risk experiment if user wants.
- Non-portable items: light-field parameterization (physics change — frozen), 4D-Var (Adjoint not enabled), Sunway SW26010 CPE/DMA (arch-specific), GPU (DCU excluded), parameter calibration / GBA nowcast (no kernel mechanism).
- Teammate queue (read-only): nan E084 `118607684`, E085 `118607703` running; our HOT_TEAMS ABBA `118608168` still PD (QOSMaxCpuPerUserLimit).
- Output lifecycle: none; deletion not applicable.

## Stage 99 - HOT_TEAMS ABBA first submission failed at harness gate; fixed and resubmitted `118610383`

- Date: 2026-08-05. `118608168` (Stage 97) FAILED 2:0 in 2s before any model run: `FATAL: Inputfiles is not a symlink`. Root cause: script pointed `root` at the immutable O33 import tree `/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15` which has NO Inputfiles entry (the import is read-only and bare; Stage-85 mode failure). All 5 SHA gates passed before it.
- Fix: `root` repointed to the g2d work tree `/public/home/fujiake/fjk/agent_tmp/isolated/work/o33_g2d_r3_20260804/ROMS_CoSiNE15` (has the shared-Inputfiles symlink; input `05ceb746...` and rules `0ef5b45a...` hash-verified identical). Binary still the immutable parent `5f1a137e...` (A=B, runtime-only axis). Script SHA updated `161efa63...` → `c141991f61a4e018afe1dbbcec351ea5dd8a6481a730cc660dd418c317bf9664`; bash -n OK.
- Deleted failed run root `118608168_o33_hotteams_abba_sample` (5.0K, harness.log only, zero model output; required to be empty for resubmit; deletion gate: no model output, harness-stage artifact). Old slurm logs retained.
- Resubmitted `118610383` 15:53 +0800 on j04r2n[12-15]; W0 warm-up started; all gates HASH_OK. Queue otherwise empty (teammate E084/E085 finished; E087-halfday `118609624` ran and finished).
- Output lifecycle: failed root deleted (harness-only); new run root `118610383_o33_hotteams_abba_sample` in progress.

## Stage 100 - KMP_HOT_TEAMS A-B-B-A `118610383` HITS: +3.04% bitwise-identical; full validation `118616644` submitted

- Date: 2026-08-05. Stage 97/99 experiment `118610383` (j04r2n[12-15], 4n/64×2, 144/720, HCOLL off, immutable O33 binary `5f1a137e...`, A=current runtime vs B=KMP_HOT_TEAMS=1/KMP_HOT_TEAMS_MAX_PARALLEL=2, OMP_STACKSIZE fixed 256M). All 5 runs DONE rc=0.
- **Result: W0 225.744 (warm-up, discarded); A1/A2 227.003/219.951 (mean_A 223.477); B1/B2 218.219/215.150 (mean_B 216.685); gain +3.0395%; both_B_faster=True (max B 218.219 < min A 219.951); trajectory `fa498694...e44b0` IDENTICAL on all 5 runs (bitwise) → verdict PROCEED_FULL_REVIEW_REQUIRED.**
- Profile (G02 rank-CPU s, A2→B2): Model 2D kernel 1796.6→1700.9 (−5.3%), Biology 708.4→669.4 (−5.5%), Tracers 2017.5→1956.7 (−3.0%), 2D halo −5.8%; GLS 1675.3→1850.4 (+10.4%) and Predictor 1724.8→1853.4 (+7.5%) CPU rose but wall fell — busy-poll accounting shift (Stage-90 method), not regression. Mechanism: HOT_TEAMS reuses OpenMP thread groups, eliminating fork/join overhead on the 5 -qopenmp hotspot objects across 12960 steps × 2 grids.
- Analysis: `analysis/hotteams_abba_118610383/` three-pass valid. Also proves S10's 2.34% (nan) is mostly the HOT_TEAMS runtime component; fast=2 compile axis NOT needed for the win (and possibly negative).
- Full validation submitted `118616644` (4n/64×2, full 2592/12960, KMP_HOT_TEAMS=1/MAX_PARALLEL=2, official vali.py 26/26 gate, 16-output gate, 10 GiB disk guard). Script `run_hotteams_full_validate.slurm` SHA `8d82cf6c30b8811ac3bdf566953a59d6d88ccb21462d3c1b7061fc4bc8cb350f` (local=remote). Expected run root `/public/home/fujiake/fjk/mcc_runs/118616644_o33_hotteams_full_64x2`.
- If 26/26 PASS: O33+HOT_TEAMS becomes the new scoring candidate; decision pending on whether to adopt as final (vs pure O33) — pure runtime config, no code, delivery scripts need the two env vars added.
- Output lifecycle: `118610383` run root retained; no deletion.

## Stage 101 - perf diagnostic on HOT_TEAMS candidate submitted `118617130` (PD)

- Date: 2026-08-05. User requested "同时跑一次 perf，看看瓶颈" while the full validation `118616644` runs.
- Design: 4n/64×2, 144/720, same env as the A-B-B-A winner (KMP_HOT_TEAMS=1/MAX_PARALLEL=2, HCOLL off, O33 binary `5f1a137e...`); `perf record -F 99 -e cycles:u -g` attaches to rank 0 only (perf_event_paranoid=2; cache events known zero on Hygon C86 per Stage 76). Generates self and with-children reports into `perf_report.txt`.
- Script: local=remote `run_hotteams_perf.slurm` SHA `481fa7e9fd28b5074b3b9db2a8379f8a2115d83c50ed2f9330e75ce18ba7099d`; all SHA gates + input assert + 10 GiB disk guard + DONE gate + perf.data nonempty gate.
- Queue: full validation `118616644` R (6:47 in, j04r2n[08-11]); teammate E091 `118617124` PD; perf `118617130` PD (will run when nodes free). Diagnostic only — no timing/scoring claim.
- Output lifecycle: none yet; run root `..._o33_hotteams_perf_diag` expected.

## Stage 102 - perf diagnostic done (118617130); memset/slice audit CLOSED; full validation still running

- Date: 2026-08-05. User asked to check jobs and audit two lines: memset→hand-loop zeroing, and slice/pack reorganization.
- perf `118617130` (HOT_TEAMS runtime, 4n/64x2, 144/720, rank-0 only, 15755 samples of cycles:u): top self = pre_step3d_tile 15.32%, uct_dc_mlx5_iface_progress 10.02%, step3d_t_tile 9.48%, __libm_pow_e7 6.73%, step2d_tile 6.35%. Harness died before summary.tsv (set -e after a post-report step) but report is fully in harness.log; run root retained. Diagnostic only, single-rank view (Stage-77 boundary).
- memset audit (static, read-only): whole-array `Asend=0.0_r8/Arecv=0.0_r8` exists only at distribute.F:2734/3072/5767 inside `mp_boundary` (1194), whose only callers are set_data.F/set_tides.F (16 calls, input/initialization phase, NOT per-step hot path). Hot paths (pre_step3d/step3d_t/step2d/biology/GLS) zero only per-point inside conditionals (grad(i,j) in IF, FC(i,0)/FC(i,N) boundaries) — not memset-able blocks. mp_exchange.F has no memset. Upside <<0.5% (input phase ~1.6% wall). norecvzero already measured negative on O33 (+1.33%, 118365261).
- slice/pack audit: mp_exchange.F pack loops are column-wise 1-D ghost copies — v28 proved overlap gain <0.1% and v24b-v28 five failures prove any MPI-call-pattern change breaks UCX progress (−50%..−100%). Stage-44 probe caps ROMS-side overlap at 0.37%. CLOSED, do not reopen.
- Verdict: both lines CLOSED with three-pass analysis at `analysis/memset_slice_audit_20260805/`. Only active route = KMP_HOT_TEAMS (+3.04% ABBA `118610383`); full validation `118616644` running (20+ min, 8/16 outputs).
- Output lifecycle: perf run root `118617130_o33_hotteams_perf_diag` retained; no deletion.

## Stage 103 - fast=2 compile-axis candidate build submitted `118622132`

- Date: 2026-08-05. User approved trying the S10 compile side (biology fast=2) on top of the HOT_TEAMS runtime winner. Full validation `118616644` passed 26/26 earlier today: **real 2109.2 s (35m9.183s) vs O33 2136.310 s → −1.27%**, bitwise trajectory identical, 16/16 outputs, Dongsha u=0.000052 same as O33.
- fast=2 candidate (single causal axis = compile flags on 2 objects, from nan sprint Linux-ifort.mk): `biology.o: private FFLAGS += -qopenmp -no-heap-arrays -fp-model fast=2 -no-prec-div -fp-speculation=fast`; `gls_corstep.o: private FFLAGS += -qopenmp -no-heap-arrays -fp-model source`. Global flags stay O33 (`-heap-arrays -fp-model precise`), source untouched, only Compilers/Linux-ifort.mk differs (parent hash `081b267b...faced`).
- Build script `build_fast2.sh` SHA `ff1c5663b6159b62dfb5b6dfb2feaabbd4de350dc332f8050d2200bf23cb99d2`; slurm wrapper `22be7a61...`; ABBA script `run_fast2_abba.slurm` SHA `f2106940...` (A=O33+HOTTEAMS, B=O33_fast2+HOTTEAMS; trajectory gate REMOVED — float semantics change, wall-time gate + official 26/26 separate).
- Build `118622132` (1 node, PD behind teammate E092 `118619046` R, V091t-3day `118617747` R, E093-build `118619580` PD).
- After build: verify `oceanM.O33_fast2` hash != parent, then run matched 144/720 ABBA; if B faster (>=2-3%), full 2592/12960 + official 26/26 (float-order change allowed per organizer clarification 2026-08-03, requires vali pass).
- Output lifecycle: `118616644` full run root retained (new scoring candidate evidence); no deletion.

## Stage 104 - fast=2 A-B-B-A `118623757` STOP_BRANCH (−1.06%); O33+HOT_TEAMS stays champion

- Date: 2026-08-05. Executed Stage-103 candidate. Build `118622132` OK (bin `90cf5043...`; biology `-fp-model fast=2 -no-prec-div -fp-speculation=fast`, gls_corstep `-fp-model source` verified in compile lines; mk.patch 16 lines, source untouched).
- ABBA `118623757` (4n/64×2, 144/720, both legs +KMP_HOT_TEAMS): W0 127.833; A1/A2 126.151/125.961 (mean_A 126.056); B1/B2 129.422/125.374 (mean_B 127.398); **gain −1.0646%, both_B_faster=False, verdict STOP_BRANCH**. Trajectory 5/5 SAME `fa498694...` (fast=2 changed no printed results on this input).
- Profile G02 (A1→B1): Biology 554.8→451.7 (**−18.6%, design hit**), GLS 988.9→1183.7 (**+19.7%, fp-model source regression**), 2D kernel −1.5%, tracers −0.4%, predictor +1.5%. GLS degradation ate the biology gain; net −1.06% wall. Same pattern as Stage 85/90 (local wins absorbed by GLS region).
- S10 (nan, 2086.3 s) is NOT attributable to fast=2 on O33 — its advantage comes from other sprint differences (global -no-heap-arrays etc.), not reproducible on this baseline.
- **O33+KMP_HOT_TEAMS (2109.2 s, official 26/26) remains the current best scoring candidate.** fast=2 axis CLOSED; optional future: biology-only fast=2 (no gls source) is low-priority (~1% ceiling, GLS absorption risk).
- Analysis: `analysis/fast2_abba_118623757/` three-pass valid. Output lifecycle: ABBA root + build tree retained; no deletion. Queue was empty after completion.

## Stage 105 - global -O2 compile-axis candidate: build `118625251` submitted

- Date: 2026-08-05. User asked to try compile-flag directions after fast=2 STOP_BRANCH (Stage 104).
- Teammate matrix re-check (read-only): zya o2_abba_118480888 (own tree `ompk-step3d-t-g-gls`, different slower baseline) showed B(-O2) mean 6:32.0 vs A(-O3) 6:40.1 ≈ +2% at 144/720; zya gls_full3d_O2_2 (O2+nopow+heap combo) 39:32.65 was their fastest full3d but not pure O2; nan has no pure-O2 evidence; O33 has NEVER been tested with global -O2. IPO ABBA (zya 118461061) flat.
- Candidate: single line `FFLAGS += -ip -O3` -> `-ip -O2` in Compilers/Linux-ifort.mk (global, includes the 5 -qopenmp hot objects); source untouched; parent mk hash `081b267b...faced`; full rebuild (Build/*.o,*.mod wiped).
- Scripts: `build_o2.sh` `0d6aa51e...`; `build_o2.slurm` `28efe3e2...`; `run_o2_abba.slurm` `004f16ca...` (A=O33+HOTTEAMS, B=O33_o2+HOTTEAMS; trajectory gate retained as observation — -O2/-O3 usually share fp-model, trajectory SAME expected but not required; wall-time gate).
- Build `118625251` (1 node, PD behind teammate fast2_abba_ompk `118625108` + E095-halfday `118625090`).
- After build: ABBA; if B faster >=2-3% with acceptable trajectory, full 2592/12960 + official 26/26.
- Output lifecycle: fast2 ABBA root `118623757` + build tree retained (Stage 104 evidence); no deletion.

## Stage 106 - global -O2 A-B-B-A `118657958` STOP_BRANCH (−1.92%); compile-axis fully closed; perf stage-analysis complete

- Date: 2026-08-06. Executed Stage-105 candidate. Build `118625251` (re-built as `118656535` 10:23) OK (bin `f9c97f3d...`; `-ip -O2` verified in compile lines; mk.patch 2 lines, source untouched).
- ABBA `118657958` (4n/64×2, 144/720, both legs +KMP_HOT_TEAMS, j01r2n[06-09]): W0 130.654; A1/A2 126.117/123.488 (mean_A 124.803); B1/B2 126.248/128.156 (mean_B 127.202); **gain −1.9226%, both_B_faster=False, verdict STOP_BRANCH**. Trajectory 5/5 SAME `fa498694...` (−O2 未改变浮点输出，但更慢)。
- Profile G02 (A1→B1): **GLS 972.8→1191.3 (+22.4%)**, 2D −1.5%, bio 0.0%, predictor +0.9%, tracers +1.1%。与 fast2 完全同模式：**GLS 区间对编译选项最敏感，吸收一切编译级收益**（Stage 85/90/104 同因）。
- 用户手动重跑复核 `118658225`（同脚本，11:09 提交）在跑——只读，不干预。
- **编译轴全部关闭**：fast=2（−1.06%）、global −O2（−1.92%）、IPO（zya 持平）。唯一活性候选 = KMP_HOT_TEAMS 运行时（全量 2109.183 s，官方 26/26，比 O33 父本 2136.310 s 快 1.27%）。
- 跨阶段瓶颈迁移分析完成：`analysis/o33_hotteams_perf_20260806/`（perf `118617130` rank-0：pre_step3d 15.3% / uct_dc_mlx5 progress 10.0% / step3d_t 9.5% / pow 6.7% / step2d 6.4%；MPI progress 轮询合计 ≈16.9%；pow 系 ≈7.6%）。结构：GCC 期（correct 14.7%+通信 40%）→ O33 期（5 点均衡 5–14%+通信 15%）→ HOT_TEAMS 期（结构不变）→ perf 揭示跨区间大头（pow+progress）。
- 判决：O33+HOT_TEAMS（2109.183 s）保持当前最优计分候选；无剩余 ≥2% 机制；不构建新候选。
- Output lifecycle: `118657958` run root + `118623757` + build trees retained; no deletion.

## Stage 107 - -O2 复核 `118658225` 一致 STOP_BRANCH（−1.94%）；编译轴关闭固化

- Date: 2026-08-06. 用户手动重跑复核：`118658225`（同脚本 `run_o2_abba.slurm`，11:09）A1/A2 127.156/126.339 (mean 126.748), B1/B2 130.167/128.244 (mean 129.206), **gain −1.9393%, both_B_faster=False, STOP_BRANCH**。与 `118657958`（−1.9226%）一致 → 判决稳固，非节点噪声。
- 队列队友作业（只读）：zya `118658508` gcc731_abba_ompk、nan `118659011` base_ccx。
- 跨阶段瓶颈分析最终版：`analysis/o33_hotteams_perf_20260806/`（01/02/03 三件套，含 -O2 阶段 VI 对照）。
- 判决：O33+HOT_TEAMS（2109.183 s，官方 26/26）为当前最优计分候选；编译轴（fast=2 / global -O2 / IPO）全部关闭；性能路线冻结待交付。
- Output lifecycle: `118658225` run root retained; no deletion.

## Stage 109 - compiler switch: Intel 2021.3.0 HIT (+4.3% full, bitwise-identical); GCC 7.3.1 HIT (+3.7% sample); perf diags running

- Date: 2026-08-06. User request: "尝试更换编译器…不要只看结果,可能热点会发生变化,跑完记得profile具体一点". Compiler axis (previously closed per Stage 106/107) reopened as a DIFFERENT mechanism (new compiler, not flags).
- Platform reality check: only two usable compilers beyond ifort 2017 exist with matching netcdf .mod: (a) Intel 2021.3.0 classic ifort (netcdf intel .mod is Intel-version-compatible; hpcx 2.7.4 intel mpif90 wrapper works), (b) GCC 7.3.1 devtoolset + hpcx 2.7.4 gcc + netcdf gcc-7.3.1-with-nc4 + hdf5 1.8.20 gcc-7.3.1-noparallel. gfortran 9.3/13.3 CANNOT read prebuilt netcdf.mod (strict version check) and no newer netcdf exists → only 7.3.1 feasible.
- Scheduler discovery (log: also useful for future submissions): this cluster kills a batch job at start (signal 53, batch CANCELLED, no stdout) when the `-o`/`-e` log DIRECTORY does not exist at submission time. All job log dirs must be pre-created (`mkdir -p`) BEFORE `sbatch`. Cost 3 failed build attempts.
- Build ifort2021 `118661257` OK: `oceanM.O33_ifort2021` = `7cd46627...`; same Linux-ifort.mk/flags (`-heap-arrays -fp-model precise -ip -O3`, -qopenmp on 5 hot objects), only ifort 2017.5.239→2021.3.0 (oneAPI classic, PATH/LD_LIBRARY_PATH prepend to `/public/software/compiler/intel/oneapi/oneapi-2021.3.0/compiler/2021.3.0`); source untouched; full rebuild.
- Build gcc731 `118660950` OK: `oceanM.O33_gcc731` = `c69fe383...`; pre-customized Linux-gfortran.mk (`-march=znver1 -mtune=znver1 -fstack-arrays -ffp-contract=off` + `-O3 -funroll-loops`, selective -fopenmp on 5 hot objects, O37 rules); `make FORT=gfortran`; source untouched; full rebuild.
- ABBA ifort2021 `118661414` (4n/64×2, 144/720, both legs +KMP_HOT_TEAMS): W0 127.967; A1/A2 125.106/125.630 (mean_A 125.368); B1/B2 120.397/120.000 (mean_B 120.198); **gain +4.1235%, both_B_faster=True, trajectory 5/5 SAME `fa498694...` (bitwise identical)** → PROCEED_FULL_REVIEW_REQUIRED.
- FULL VALIDATION ifort2021 `118662236` (2592/12960, 4n/64×2, +HOT_TEAMS): **real 33m39.809s (2019.8 s) vs O33 2136.310 s → −5.45%; vs O33+HOT_TEAMS 2109.183 s → −4.24%**; official vali.py **26/26 PASS**; Dongsha u RMSE same as O33 (float trajectory bitwise identical).
- **NEW CHAMPION: O33_ifort2021 + KMP_HOT_TEAMS (2019.8 s, official 26/26).** Pure compiler-version swap, zero source/flag change, bitwise-identical output.
- ABBA gcc731 `118662044` (first attempt `118661416` FAILED at B1: undefined symbol `__netcdf_MOD_nf90_open` — gcc binary needs gcc netcdf lib (intel lib uses different Fortran mangling); fixed harness to switch module env per leg: A legs=intel env, B legs=devtoolset+hdf5-gcc+netcdf-gcc+hpcx-gcc): W0 126.897; A1/A2 125.320/125.528 (mean_A 125.424); B1/B2 121.907/119.676 (mean_B 120.791); **gain +3.6935%, both_B_faster=True, trajectory EXPECTED_DIFFERENT** (float order differs) → PROCEED_FULL_REVIEW_REQUIRED; full validation `118663696` submitted (official 26/26 gate).
- gcc731 FULL VALIDATION `118663696` (2592/12960): model DONE, real 34m19.171s (2059.2 s) — slower than ifort2021; **official vali FAILED**: Dongsha60 `u RMSE=0.000061 > threshold 0.000060` (超限 1.7%，轨迹浮点差异所致；SCS 全部正常) → gcc731 CLOSED as scoring candidate (fails 26/26 by a hair AND slower than ifort2021). Sample-level +3.69% not usable.
- perf diags (rank-0, cycles:u, 144/720): ifort2021 `118663698` — hotspots UNCHANGED structure: pre_step3d 13.27% / uct_dc_mlx5 progress 10.55% / step3d_t 10.37% / __libm_pow_e7 9.20% / t3dmix4 5.40% (baseline O33: 15.3/10.0/9.5/6.7/6.4; pow share up, wall down 4.2%). gcc731 `118663699` — hotspots SHIFTED: uct progress 9.95% (#1), t3dmix._omp_fn 6.11%, biology._omp_fn 6.09%, step3d_t._omp_fn 5.85%; pre_step3d/pow out of top-4; G02 PROFILE: gcc731 2D 717.5/GLS 915.3 vs ifort21 845.0/1167.8 (gcc wins step2d+GLS, loses bio 843 vs 585 + predictor + tracers). Harness exit-13 was cosmetic (post-report step); perf.data + report complete. Full tables: `analysis/compiler_switch_20260806/`.
- **FINAL: new champion = O33 source + ifort 2021.3.0 + KMP_HOT_TEAMS runtime: 2019.8 s, official 26/26, trajectory bitwise-identical to O33 → zero numerical risk; −4.24% vs previous champion (2109.183 s), −5.45% vs scoring parent O33 (2136.310 s).** Delivery implications: build env needs oneapi 2021.3.0 PATH/LD_LIBRARY_PATH (2 lines); run env adds KMP_HOT_TEAMS=1 KMP_HOT_TEAMS_MAX_PARALLEL=2.
- Concurrency note: a second active session is running Stage 108 (biology fast=2 STOP_BRANCH −2.82%; step2d three-loop fusion build `118663595`); its jobs (`fjk_O33_BIOFAST_ABBA` 118661763) observed read-only.
- Output lifecycle: `118662236` (champion full root) + `118661414` ABBA + `118662044` ABBA + `118663696` (FAIL evidence) + perf roots + both build trees retained; failed gcc731 ABBA root `118661416_...` deleted (harness artifact, nc=0).

## Stage 108 - P0 组合包实测：biology-only fast=2（−2.82%）与 step2d 三循环融合（−1.74%）均 STOP_BRANCH

- Date: 2026-08-06. 执行用户提议的"小优化组合包"P0 两项（全在 O33+HOT_TEAMS 基线上，144/720 ABBA）。
- **P0-1 biology-only fast=2**（`118661763`，A=O33+HOTTEAMS，B=oceanM.O33_biofast `699ba3d6...`，仅 biology.o 改 flags，gls_corstep 不动）：mean_A 125.594 / mean_B 129.142，**−2.82% STOP**；trajectory 5/5 SAME。Profile：Biology −18.4%（命中）但 **GLS +21.6%（吸收）**。
- **P0-1 关键归因修正**：gls_corstep.o 编译参数与 O33 逐字节相同 → GLS 吸收与 gls fp-model 无关，是 biology fast=2 的 exp/pow 数值变化经耦合传播改变 GLS 浮点路径。这推翻 Stage 104 的"gls source 是元凶"假设，也解释 S10 的 2.34% 不可移植。`-fimf-use-svml` 实测 Intel 2017.5 不支持（warning），SVML 已由 fast=2 路径覆盖。
- **P0-2 step2d 三循环融合**（Drhs/DUon/DVom 三次扫描 → 两段 j-pass，NESTING 分支，每点算术不变）：首版 patch 因 difflib 相对行号生成残缺代码（主体 Drhs 写入+DUon 循环丢失）→ B1 00:15 NaN（`118667477`，诊断发现）；修复为完整文件替换+diff -u（patch `d3b00d2e...`）后重建 `oceanM.O33_s2dfuse` `1957c79c...`。
- **P0-2 修复版 ABBA**（`118672304`）：mean_A 126.088 / mean_B 128.284，**−1.74% STOP**；**trajectory 5/5 SAME（融合算术 bitwise 正确）**；2D kernel timer −1.0% 但墙钟净负。
- **P0-2 机制结论**：8x8 tile 下 Drhs ≈7.5KB 全驻留 L1，三循环本无缓存压力；IISc 论文的 1.6% 前提是大 tile 缓存缺失场景，本布局不适用。数据移动类优化在 8x8 下被 L1 驻留封顶（与 Stage 51 pmnreuse 同族）。
- 判决：**P0 组合包关闭**；O33+KMP_HOT_TEAMS（2109.183 s，26/26）保持唯一计分候选。P1（临界路径 probe / HPC-X 2.11）未被结构性排除，但按 Stage 90 教训预期 <2%。
- 分析：`analysis/stage108_p0_20260806/` 三件套。输出生命周期：run roots `118661763`/`118667477`/`118672304` + 构建树 `o33_biofast_20260806`/`o33_s2dfuse_20260806` 保留；无删除。

## Stage 110 - ifort2021 轴 2：profile 归因 + 双候选提交（HPC-X 2.11 运行态 / fimf 编译开关）

- Date: 2026-08-07 (+0800，本地 2026-08-06)。用户指示："距离比赛还有不少时间，再 profile plan 优化思路并验证"。
  冠军基线不变：O33 源码 + ifort 2021.3.0 + KMP_HOT_TEAMS（2019.8 s，26/26）。
- **新 profile 证据（本阶段归因完成）**：
  1. perf.data `118663698`（ifort2021，rank-0，15755 样本）调用链展开：热点结构不变（pre_step3d 13.27 / uct_dc_mlx5 progress 10.55 / step3d_t 10.37 / __libm_pow_e7 9.20 / t3dmix 5.40）；pow children 全部经 libiomp5 调度入口。
  2. **pow 调用点静态归因（objdump -dr，本阶段新）**：gls_corstep.o = 40 处、biology.o = 47 处 `R_X86_64_PC32 pow`；其余对象（pre_step3d/step3d_t/t3dmix/step2d/gls_prestep/rho_eos/hmixing）0 → pow 100% 在 GLS+biology。
  3. 数学库总账 ≈11.5% CPU（pow 9.20 + exp 1.52 + powr8i4 0.78）。
- **Plan 三件套**：`analysis/ifort2021_axis2_plan_20260806/`（01 摘要/02 profile/03 有效性）。
- **候选 C（运行态，零构建）**：HPC-X 2.7.4 → 2.11.0（libmpi.so.40 soname 兼容已实测，登录节点 module swap + ldd 无 not found）。
  靶点 = uct progress 10.55%。ABBA `118713721`（fjk_HPCX211_ABBA，脚本 SHA `f6f71168...`，A=hpcx274 / B=hpcx211，
  数学库不变 → 轨迹 gate 适用，期望 SAME）。已提交 PD（QOSMaxCpuPerUserLimit 排队）。
- **候选 B1（构建）**：`-fimf-precision=low` on gls_corstep.o + biology.o（ifort2021 工具链，mk 仅两行 append；
  `-fimf-use-svml` 为 2021 专属备选 B2）。靶点 = pow 9.2%。浮点精度变化 → 轨迹必变，精度门禁 = 全量官方 26/26。
  构建 `118713773`（fjk_FIMF_BUILD，脚本 `6082df93...`/`c92864fc...`）；ABBA 脚本 `run_fimf_abba.slurm` `73cb74...` 已部署（EXPECTED_B_SHA 待构建产出后填）。
- 明确不重开：-xCORE-AVX2（znver1 双泵硬件事实，2017 已证 −3.5%）、2017 编译轴（fast=2/-O2/IPO）、
  tiling/映射、OpenMP 对象扩展、halo 模式、step2d 融合、GLS/biology pow 源码改写。
- 队列（只读）：zya `118713074` R、nan `118713326` R + `118713544` PD、`118713740` build_roms PD（zya/nan）、
  `118713415` bash PD（未知归属，疑似遗留交互作业）。`/public` 18P 可用（61P→43P used, 18P free）。
- 输出生命周期：无模型输出产生/删除；新 run root 待作业完成后保留。
- 交付包升级（Stage 109 采纳决策的执行）进行中：`build_from_archive.slurm`/`run_full_validate_portable.slurm`/
  BUILD.md/RUN_AND_VALIDATE.md/SUBMISSION_CHECKLIST.md/SOURCE_PACKAGE_STATUS.md/EVIDENCE_MANIFEST.md 已更新为
  冠军（oneapi 2021.3.0 + KMP_HOT_TEAMS + 新 bin 哈希 `7cd46627...`），OPTIMIZATION_RECORD_提交版.md 待更新。

## Stage 110 中期 - 两个候选的实测结果（HPC-X 2.11 全量 FLAT 关闭；fimf no-op 关闭；fast2_2021 进行中）

- Date: 2026-08-07 (+0800)。冠军基线不变（O33+ifort2021+HOT_TEAMS，2019.8 s，26/26）。
- **候选 C（HPC-X 2.11 运行态）**：
  - ABBA `118713721`（A=2.7.4 / B=2.11，144/720）：mean_A 119.914 / mean_B 117.160，**+2.2962%，both_B_faster=True，trajectory 5/5 SAME**（逐位一致）。
  - 全量 `118714595`（2592/12960 + 官方 26/26）：**real 33m39.174s（2019.174 s），26/26 PASS，但相对冠军全量 2019.809 s 仅 +0.031%（0.63 s）→ 全量级 FLAT**。
  - **判决：STOP。ABBA 的 +2.30%（<3% 门槛）未在全量复现 = 假阳性；3% 门禁正确拦截。** hpcx 2.11 不采纳，交付环境保持 2.7.4。
  - 教训：样本级 both_B_faster + 轨迹一致的 +2.3% 仍可能在全量归零 → 运行态单轴候选同样必须过全量确认。
- **候选 B1（-fimf-precision=low on gls_corstep+biology）**：
  - 构建 `118714423` 完成但 **`fail "candidate binary unchanged"`**：全量重建 272 对象、编译行确认含 `-fimf-precision=low`，
    但 biology.o/gls_corstep.o **逐字节等于冠军树对象**，最终二进制 = 冠军 `7cd46627...`。
  - **实证结论：ifort 2021.3.0 在 `-fp-model precise` 下静默忽略 `-fimf-precision`（无警告、零代码生成影响）→ fimf 轴在本题配置下死亡。**
- **候选 B2（fast2_2021）**：`-fp-model fast=2 -no-prec-div -fp-speculation=fast` on gls_corstep.o+biology.o。
  构建 `118714807` OK：`oceanM.O33_fast2_2021` = `a1e19c4c...`，编译行确认（-fp-model precise -fp-model fast=2 → 后者生效）。
  ABBA `118715857`（j05r2n[00-03]）运行中。
- 队列：ABBA 运行时队列空闲；队友作业只读。
- 输出生命周期：`118714595` 全量根（FLAT 证据，26/26 有效）+ ABBA 根 + 构建树保留；无删除。

## Stage 110 - fast2_2021 全量：速度 −4.54%（1928.08 s）但官方 vali FAIL（Dongsha60 u 0.000062>0.000060）；关闭并按被动示踪假设精炼

- Date: 2026-08-07 (+0800)。全量 `118716467`（2592/12960，hpcx 2.7.4，j01r2n[12-15]）。
- **real 32m8.081s = 1928.08 s，vs 冠军 2019.809 s → −4.54%**（样本级 +5.76% 在全量端真实兑现，机制强大）。
- **官方验证 FAIL**：仅 1 项超限 — **Dongsha60 u RMSE=0.000062 > 0.000060**（超 3.3%）；SCS 全部正常、Dongsha60 其余 12 项全部正常（v=0.000024 远低于阈值；temp 0.000068/阈值 0.000200）。与 gcc731（u=0.000061）同变量同模式 → **该阈值是最紧项（0.000060），浮点扰动集中暴露点**。
- **判决：fast2_2021（双对象）关闭**（任一变量超限 = 无效计分候选，rules.md）。机制保留：u 场微扰最可能来自 GLS（fast=2 改变 tke/GLS 混合 → 垂向黏性 → u）；biology（CoSiNE）为被动示踪，不耦合动力。
- **精炼假设（下一候选 R2）**：biology-only fast=2（仅 biology.o 一行 flags，gls_corstep 保持 precise）→
  u-RMSE 应回到 ~0.000052（biology 被动），速度保留 biology 侧 pow/div 加速（约半）。
  若 R2 全量 u 仍超限 → 推翻被动假设；若时间不足 2% → 关闭编译轴。
- 队列只读：zya `118717082` fast2_allfimf_abba、`118718063` fast2_fastexp_abba（队友同轴实验，勿动）。
- 输出生命周期：`118716467` 全量根（FAIL 证据，完整 16 输出 + vali 明细）保留；`118715857` ABBA 根保留；构建树 `o33_fast2_2021_20260806` 保留。

## Stage 110 - R2 biology-only fast=2 ABBA +1.71%（<2% 地板，关闭）；R3（biology fast=2 + gls 温和旗标）构建中

- Date: 2026-08-07 (+0800)。R2 构建 `118718217` OK（`oceanM.O33_biofast_2021` = `1f33a685...`，仅 biology.o 一行 flags，gls_corstep 逐字节=冠军）。
- **R2 ABBA `118718654`**（j01r2n[14-17]）：mean_A 120.463 / mean_B 118.403，**+1.7097%，both_B_faster=True，trajectory 5/5 SAME `fa498694...`**（144/720 打印场逐位不变 → biology 被动、浮点变化不进入打印场）。
- **判决：R2 关闭（+1.71% < 2% 地板，按门禁不可提升）**。意义：biology 贡献 ≈1.7% 且 vali 安全（被动）；GLS 贡献 ≈3%（双对象 4.54% − biology 1.5%），u 扰动来自 GLS。
- **R3（活动）**：biology fast=2（安全侧）+ gls_corstep `-no-prec-div -fp-speculation=fast`（保留 -fp-model precise，无重关联，仅快除/推测）→ 预期 3-4% 且 u 扰动显著小于 fast=2。
  构建 `118719611` R；ABBA 脚本 `run_r3_abba.slurm` `9660cf7f...` 已部署。
- 队列只读：nan `118719108` sprint_O84；zya `118718063` fast2_fastexp。
- 输出生命周期：R2 构建树/ABBA 根保留；无删除。

## Stage 110 终局 - R2 全量 26/26 PASS 但更慢（2033.079 s, +0.66%）；编译轴（ifort2021 空间）全部闭合；冠军不变

- Date: 2026-08-07 (+0800)。R2 全量 `118720373`（2592/12960, hpcx 2.7.4, j05r2n[14-17]）。
- **real 33m53.079s = 2033.079 s vs 冠军 2019.809 s = +0.657% 更慢**（样本 +1.71% 全量反转）。
- **官方 26/26 PASS，Dongsha60 u=0.000052 与冠军完全相同** → biology 被动假设证实（CoSiNE 不耦合动力）。
- R3 ABBA `118719845`：+1.7790%，B 轨迹 a83e5984 与 fast2_2021 逐位相同 → gls 旗标是唯一可见扰动源；gls 温和旗标无速度（R3−R2≈0.07%）。
- **编译轴（2021 空间）闭合矩阵**：fast=2 双对象 −4.54% 但 u 超限（0.000062）；biology-only 更慢；bio+gls温和 无速度；fimf no-op。
  **结构性结论：GLS 的速度与 u 扰动同源（fast=2 重关联），无"又快又稳"的 GLS 编译配置；单侧编译变化在墙上不赚（2017/2021 两代一致）。**
- **冠军保持：O33 源码 + ifort 2021.3.0 + KMP_HOT_TEAMS（2019.8 s，26/26，位级同 O33）。** 交付包维持 Stage 109 采纳版本。
- 分析三件套：`analysis/fast2_2021_abba_118715857/`、`analysis/r2_r3_biofast_20260807/`。
- 队列只读：nan `118719108` sprint_O84 及后续 sprint 系列；zya fast2 系列实验。
- 输出生命周期：`118720373`（R2 全量，26/26 证据）、`118716467`（fast2 全量 FAIL 证据）、全部 ABBA 根与构建树保留；无删除。
- 下一步候选空间（若用户继续）：oneAPI 版本再换（2022/2023，netcdf .mod 兼容性未验证）、
  step2d 区间针对性优化（Stage 88 高风险项）、或转入交付收尾（PPT/截图/现场清单）。

## Stage 111 - 编译器阶梯扫尾：2021.7.0 全量 +70% 灾难、2021.10.0 STOP、ifx −11.4%；冠军保持 2021.3.0

- Date: 2026-08-07 (+0800)。平台编译器盘点：oneapi 2022.3.0（classic ifort = 2021.7.0）、2023.2.0（= 2021.10.0 + ifx 2023.2.0 LLVM）、2024.0.1。
  平台坑：2023.2+ 的 ifort/ifx 需要 GLIBCXX_3.4.21 → LD_LIBRARY_PATH 前置 `/public/software/compiler/gcc-11.2.0/lib64`（devtoolset-7 太旧 3.4.19）。
- **ifort 2021.7.0**（oneAPI 2022.3）：构建 `118726013→118726936` OK（bin `3d510455...`，编译行含 -ip -O3 同冠军）。
  ABBA `118727208`（j04r2n[02-05]）：mean_A 120.910 / mean_B 118.657，**+1.8630%，both_B_faster=True，trajectory 5/5 SAME（位级）**。
  **全量 `118730406`（j04r2n[14-17]）：real 57m28.841s = 3448.8 s = 冠军 +70.7%！26/26 PASS 但速度灾难。**
  归因：输入阶段 CPU 记账翻倍（Reading 526 vs 243；broadcast 1770 vs 987 CPU-s）→ 2021.7.0 的 mp_bcast/输入路径全规模回归。
  节点因素无法排除（j04r2n14-17 无历史基线），但按全量为准绳 → 关闭（样本 1.86% 未授权重跑全量，即使节点问题也仅 ~1.8% 且低于门槛）。
- **ifort 2021.10.0**（oneAPI 2023.2）：构建 `118729058` OK（bin `689c0bb8...`）。ABBA `118729426`：mean_A 119.904 / mean_B 118.549，+1.1301%，**both_B_faster=False → STOP**。
- **ifx 2023.2.0（LLVM）**：Linux-ifx.mk = Linux-ifort.mk 去掉 -ip（不支持的唯一旗标）+ shim bin/ifort→ifx（mpif90 硬编码 ifort）。
  两次构建被调度取消（日志目录未建 → 信号 53，平台坑复发），修复后 `118731593` OK（bin `3c363617...`）。
  ABBA `118732307`（j01r2n[00-03]）：mean_A 121.966 / mean_B 135.873，**−11.4024% STOP**；B 轨迹 a83e5984（与 fast2/R3 相同的 GLS 扰动类）。
- **编译器阶梯结论：2017→2021.3.0 是唯一大跳（−4.24% 位级）；更晚的 classic 增量（2021.7/2021.10）样本小幅、全量不可用或不足；LLVM ifx 大退步。**
  **冠军保持：O33 + ifort 2021.3.0 + KMP_HOT_TEAMS（2019.8 s，26/26，位级同 O33）。**
- 磁盘清理（用户授权）：5 个已关闭全量根 output/（42.5G）+ 21 个关闭构建树（~10G）→ 339G→285G（97%→82%）。
  work/ 仅剩冠军 + 2022/2023/ifx 活动树；mcc_runs 保留冠军/父本全量 + 全部 ABBA 根。
- 输出生命周期：2022/2023/ifx 构建树与 ABBA 根保留（新近活动）；2021.7.0 全量根 `118730406` 保留（26/26 有效 + 灾难证据）。

## Stage 112 - -align array64byte on 5 hot objects（ifort2021）：−0.78% STOP；旗标轴在 2021 下全闭合

- Date: 2026-08-07 (+0800)。构建 `118732863` OK（`oceanM.O33_align` = `a85a15f1...`，5 对象 + -align array64byte，本次改变代码生成）。
- ABBA `118733013`（j01r2n[12-15]）：mean_A 120.319 / mean_B 121.260，**−0.7817% STOP**，trajectory 5/5 SAME。
- 与 2017 侧一致（Stage 48-49 alignment flat）→ 布局/对齐族在 znver1 + 2021 下无收益。
- **2021 旗标轴全部闭合**：fast=2（u 超限）、biology-only（全量更慢）、gls 温和（无速度）、fimf（no-op）、align（−0.78%）、AVX2（2017 −3.5%）、-O2（2017 −1.9%）。
- **全部轴状态**：编译器阶梯（2021.3.0 最优）、运行库（2.7.4 最优）、OpenMP（5 对象最优）、源码（O33 最优）。
  **冠军保持：O33 + ifort 2021.3.0 + KMP_HOT_TEAMS = 2019.8 s，26/26，位级同 O33。**
- 唯一未试大项：step2d OpenMP（Stage 89 设计；~60 循环 7 段；Stage 90 教训预测计算加速不达墙——四对象 1.7-1.9x 提速墙钟 −0.45%）。
- 输出生命周期：align 构建树/ABBA 根保留；无删除。

## Stage 113 - step2d OpenMP 静态量化关闭（perf self 4.50%，上限 <2%，不构建）

- Date: 2026-08-07 (+0800)。用户指示：先 perf 量化 step2d 再决定。
- 诊断 `118736131`（冠军 rank-0，144/720）：**step2d_tile self = 4.50%**（纯计算）；MPI progress 轮询 ≈18.6%；pre_step3d 13.19 / step3d_t 10.41 / pow 8.90。
- 墙钟转化：4.5% CPU ≈ 5.9% 墙钟窗口（含交换等待）；纯计算 2 线程 1.3-1.5x → 收益 1.2-2.3%，跨门禁下沿。
- 三证据链否决：Stage 90（四对象 1.7-1.9x → 墙钟 −0.45%）、Stage 93（2D 相中心块 straggler 同步受限）、Stage 108（step2d 融合 −1.74%）。
- **判决：step2d OpenMP 不构建。至此全部优化轴（编译器/旗标/运行库/OpenMP/源码/内存页）闭合，冠军保持。**
- 分析三件套：`analysis/step2d_omp_quant_118736131/`。输出：perf 根 `118736131` 保留；无删除。

## Stage 114 - KMP_HOT_TEAMS_MODE=1（+0.33% STOP）与 -march=znver1（no-op）双闭合

- Date: 2026-08-07 (+0800)。
- **KMP_HOT_TEAMS_MODE=1**（零构建，ABBA `118740200`）：mean_A 121.171 / mean_B 120.775，+0.3272%，both_B_faster=False，trajectory SAME → STOP。
- **-march=znver1**（5 热点对象，构建 `118740218`）：二进制哈希 = 冠军 7cd46627 逐字节相同 → ifort 2021.3.0 静默忽略（同 fimf 族）→ no-op 关闭。
- 至此运行态与旗标轴全部耗尽；剩余唯一未测旗标 = 全局 `-ipo`（2017 持平于 zya 树，2021 未测）。

## Stage 114c - 全局 -ipo（ifort2021）：−0.58% STOP；旗标轴 100% 闭合

- Date: 2026-08-07 (+0800)。构建 `118740749` OK（`oceanM.O33_ipo` = `bbd99493...`，FFLAGS 全局 + -ipo，编译+链接均生效）。
- ABBA `118741150`（j04r2n[06-09]）：mean_A 119.724 / mean_B 120.422，**−0.5826% STOP**，trajectory 5/5 SAME（位级一致但更慢）。与 2017 zya IPO 持平/负一致。
- **旗标轴最终清单（2021）**：fast2（vali FAIL）、biology-only（全量更慢）、gls 温和（无速度）、fimf（no-op）、align（−0.78%）、znver1（no-op）、ipo（−0.58%）、AVX2（2017 −3.5%）、-O2（2017 −1.9%）。
- **运行态轴最终清单**：HOT_TEAMS（采纳 +1.27%）、HOT_TEAMS_MODE（+0.33%）、HPC-X 2.11（FLAT）、HCOLL/UCX（关闭）、THP（已全局开启）、巨页（未预留）。
- **编译器最终清单**：2017→2021.3.0（采纳 −4.24%）、2021.7.0（全量 +70%）、2021.10.0（STOP）、ifx（−11.4%）、gcc731（vali FAIL）。
- **冠军最终确认：O33 源码 + ifort 2021.3.0 + KMP_HOT_TEAMS = 2019.8 s，26/26，位级同 O33。**
- 输出生命周期：htmode/znver1/ipo 的 ABBA 根与构建树保留；无删除。

## Stage 115 - libiomp5 运行时版本轴（+1.59% 双B快但轨迹 DIFF，关闭）与 -ftz（no-op）

- Date: 2026-08-07 (+0800)。发现：冠军二进制 RUNPATH 无 oneAPI 路径 → 运行时 libiomp5.so 实为 2017 模块版
  （ldd 实证：A 腿 /opt/hpc/.../intel-compiler-2017.5.239/.../libiomp5.so，B 腿 oneapi-2021.3.0/.../libiomp5.so）。
- **libiomp5 2021 版 ABBA `118742173`**（j04r2n[04-07]）：mean_A 120.584 / mean_B 118.669，**+1.5881%，both_B_faster=True，
  trajectory EXPECTED_DIFFERENT**（e9930af5 vs fa498694——2021 运行时改变了某些并行循环的执行细节 → 浮点结果变化）。
- **判决：关闭**。依据：<2% 门槛；轨迹 DIFF → 需全量官方 26/26 才能可用；HOT_TEAMS 同族机制样本→全量仅 ~40% 兑现
  （预计全量 <0.7%）；u 场扰动风险与 fast2/gcc731 同模式。
- **-ftz**（5 热点对象，构建 `118742183`）：二进制 = 冠军 7cd46627 逐字节 → no-op（-fp-model precise 下忽略或本无 denormal 代码路径）。
- 至此新增两轴亦闭合。冠军不变（2019.8 s，26/26，位级）。
- 输出生命周期：libiomp5/ftz ABBA 根与构建树保留；磁盘已清理至 38G 空（91%）。

## Stage 138 P0 - contact 密度映射（零机时）：POSITIVE 对齐；天花板未证；P1 设计为下一步

- Date: 2026-08-10 (+0800)。
- **任务**：执行 Stage-138 计划的 P0 零机时 contact-density 映射，判定 contact 供给是否位于临界 ranks（不运行模型、不建码、不改网格）。
- **输入**：不可变共享输入 `/public/home/fujiake/Inputfiles/Dongsha60/SCS_Dongsha60_contact.nc`（SHA-256 `bff3d2acfa1bb091d58599d4590dcdf803ce3f677a9f97fcc18de0ccf3889a69`，NETCDF3_64BIT_OFFSET，datum=17026，Ngrids=2/Ncontact=2；粗 359x326 / 细 235x245，refine=5）。region 1 = SCS→Dongsha60 供给（10213 pts，2390 on_boundary）；region 2 = 反馈（6813 pts）。
- **映射（8x8/8x8，rank=Jtile*8+Itile）**：
  - 粗网格 G1：100% contact 流量（供给供体单元 + 反馈接收点）位于中心 6 tile（Jtile 4-5 × Itile 3-5 = ranks 35/36/37/43/44/45）；rank 36 独收 4279/6813 反馈点（63%）。
  - 细网格 G2：100% 供给插值点位于边界环（行列 0/7，西列最重 3643 pts vs 东 2874），内部 0 点。
- **与 Stage-93/127 late ranks 相关（skewprobe P3，同 8x8/8x8）**：
  - recv_g2（细供给） vs G2 4D-halo wait：**Pearson −0.8935 / Spearman −0.8286**（Stage-127 step2d 签名 −0.883 精确复现：本工作复算 −0.8834）。
  - recv_g2 vs step2d CPU：**+0.8239**（contact 装配在 step2d 窗口内执行）。
  - top-8 重合：细供给 ∩ late8 h4(G2) = **6/8**（西列）；粗中心块 ∩ late8 h2(G2) = **6/8**，∩ late8 pg(G1) = **5/8**。
- **机制源验证**：`nesting(ng, n2dPS/n2dCS)` 在 2D fast loop 内每次 `step2d` 后立即调用（`main3d.F` 593/614/640/656+）；接收侧插值/装配 = `get_composite`→`get_contact2d`（`nesting.F` 1983-2236）。
- **判决 `P0_POSITIVE_ALIGNMENT / CEILING_UNPROVEN / NO_MODEL_CANDIDATE`**：对齐通过（双网格均指向 contact 供给 rank）；但静态点量（每 tile 0.3-4.4k pts）对 tile 2D 窗口占比小，contact 纯算术无法静态证明 >2% 可移除墙；墙时间在 halo 等待（完美再平衡上限仅 1.81-2.57%）。**不构建、不提交、零模型机时。**
- **下一步（条件）**：P1 相位时间戳探针设计（一次 144/720；内存累计、单次输出；拆分纯 step2d 算术 / contact 插值装配 / packing / 2D+4D halo 等待 / 嵌套反馈同步；轨迹中性；3 重复按 rank 持续）。门槛：S32 冻结源码分叉、设计三件套 VALID、squeue+df 复查、源谱系核验；仅当命名相位在特定 late ranks 上可移除 >2% 才授权 P2/P3。P2 不得重做 Stage 95 每调用分配+微小 P2P。
- 三件套：`analysis/stage138_p0_contact_map_20260809/`；计划三件套：`analysis/stage138_critical_path_plan_20260809/`（已从 Windows 主目录同步）。脚本 `p0_contact_map.py`/`p0_correlate.py` 本地 + 远端私有 `/public/home/fujiake/fjk/agent_tmp/p0_contact_map_20260809/`（只读共享输入，未复制/修改）。
- 输出生命周期：零模型输出，删除不适用；冠军 S32 `118755216`（1753.876 s，26/26）不变。

## Stage 139 - 队友 sprint 轮进度同步（只读）；S42 1750.1 s → S46 PGO 1714.6 s（均 26/26）；正式提交运行中

- 日期：2026-08-10（本地）。只读同步队友（nan/zya）远端 sprint 轮进度到本地文档；未创建源码/构建/任务/模型输出；无删除。
- 证据：`analysis/teammate_sprint_sync_review_20260810/`（三件套全部有效）+ `source_evidence/teammate_docs_20260810.txt`（nan/README.md 682 行、sprint/README.md、S42 设计文档、S46 计时与 vali 全文的远端原样转储）。
- 队友序列（3day 正式档）：S21 1979.6 s → S25(−ipo) 1941.5 s → **S32（ifort2021.3.0+AVX2 no-fma+ipo）1762.5 s**（提交版 `118769218`，md5 4eee6656...，vali 全过）→ **S42（+S38 vdiff 系数复用 + rho_eos 整例程 OMP）1750.1 s**（`118818711`，vali 全过，u=5.2e-5）→ **S46 PGO（+`-prof-use`）1714.6 s**（`118860553`，**vali 26/26**，Dongsha u=0.000052，nan 二进制 md5 `fcbfa6dc...` = `oceanM.s46_PGO_best_20260810.bak`）。
- zya 正式提交 `118860640`（submit_pgo_full.sh：4 节点 j01r2n[04-07]，64×2，8x8，2592/12960，--exclusive，spread_numa16_ccx_2t，HPCX 2.7.4，intel2017）**已完成**：zya 侧 PGO 二进制 `ompk-s32-pgouse/oceanM` md5 `93d9e574...`（5,947,264 B），real 28m53.33s = **1733.3 s**，`ROMS/TOMS: DONE`，16 输出，exit 0；该作业自身 vali 未由队友产出（zya vali_pgo.py 需 xarray 环境），26/26 由同族 S46 PGO `118860553` 提供。
- 对比我方冠军（O33+ifort2021.3.0+KMP_HOT_TEAMS = 2019.8 s，26/26）：S32 −12.7%、S42 −13.4%、S46 PGO **−15.1%**。
- 关键归因：S32 基座收益在编译器（ifort2021 + `-no-fma` 钉住 FP + 全局 ipo）；S42 收益 = step3d_t vdiff 系数复用（S38）+ rho_eos 整例程 OMP（与我方 Stage-89/90 四对象 OMP 的机制不同：rho_eos 计算密集、PRIVATE 数组小，热对热有真实收益）；S46 收益 = PGO 布局优化（precise+no-fma 下 u 保持 0.000052，非 Stage-110 fast=2 的 u 超限路线）。
- 队友关闭清单（实测，勿重试）：S22/S23 交换重构、S24 GLS 旗标（u=0.000068 超限）、S33/S36 fast2/align、S37 STATIC,1 细粒度调度（+70%）、S43 omega OMP（−73%）、S44b set_depth OMP（+0.34%）、S45b biology 数学提升、coll_rules basic_linear（中性）。与我方关闭面（Stage 90/93/94/95/108/110-115）高度一致——两侧独立收敛到"编译器质量决定墙钟、通信重构无杠杆"。
- 方法修正（携带）：队友 PGO 表明编译轴仍有新空间；我方 Stage-110"编译轴全闭合"结论需限定为 2017/2021 手工旗标族，`-prof-use` 未测。zya `118860640` vali 待补（需 xarray 环境）。
- 输出生命周期：未创建模型输出；删除不适用；队友远端证据只读保留。

## Stage 139 队友进度同步（2026-08-10）：nan s46_pgo 3day 1714.6 s 官方 26/26（PGO 新参考）；zya pgouse 无官方 vali

- Date: 2026-08-10 (+0800)。只读同步 zya/nan 树，未运行/构建/修改任何队友文件。
- **nan s46_pgo（重要，比 S32 冠军快 2.2%）**：源码 = S32 父本谱系（backup_S32_src_20260808.tar.gz SHA `615ee717...` 一致），mk 仅 3 行差异：全局 FFLAGS/LDFLAGS 加 `-prof-use -prof-dir=.../ROMS_CoSiNE15_s46_pgo`，rho_eos.o 加 `-qopenmp`（其余旗标同 S32：-no-heap-arrays -fp-model precise -march=core-avx2 -no-fma -ipo；ifort 2021.3.0，hpcx 2.7.4）。
  - 3day `118860553`：real 28m34.554s = **1714.55 s**（S32 冠军 1753.876 s 的 −2.24%）；官方 vali.py（仅 dir_test 行不同，基准/阈值不变）**26/26 PASS**，Dongsha u=0.000052；16 NetCDF 输出齐全，ROMS/TOMS: DONE。
  - 二进制链（重要修正）：slurm-118860553.out 实证 3day 用的 `bin=./oceanM.s46_pgouse md5=fcbfa6dcd1ac1df4d403f66ccbff22d4`——该二进制现保存为 `oceanM.s46_PGO_best_20260810.bak`（11:58，5,996,616 B，**26/26 已验证版本**）；当前 `oceanM.s46_pgouse`/`oceanM.s46_pgo1d`/`oceanM` = md5 30ea73ac / sha256 b2b73490（12:58 重编，6,017,112 B，**未验证**）。复现 s46_pgo 时应以 `oceanM.s46_PGO_best_20260810.bak`（fcbfa6dc）为验证过的目标，勿用当前 oceanM。
  - 结论：**nan 的 PGO（prof-use，precise 保持位级）成为新的继承证据参考**——与 S32 冠军同源、同验证口径、同 runtime（KMP_HOT_TEAMS=1、OMP_STACKSIZE=1G、64×2、8x8）。按规则为继承证据，采纳前需独立 A-B-B-A + 复现。
  - 训练输入链：build_gen.slurm → `oceanM.s46_pgogen`（prof-gen 阶段）→ pgopti.dpi（2004280 B, 12:53）→ build_use.slurm → s46_pgouse。1day 四连测 118857903/118860122/118862040/118866029 均 26/26。
- **zya pgouse（不采纳）**：`Linux-ifort.intel2017-v24a-omp-g-heap-O2-fast2-pgouse.mk` = `-fp-model fast=2 -fimf-precision=low -prof-use`（ifort 2017）——fast=2+fimf-low 家族，Stage 110 已证 Dongsha60 u 超限（0.000062>0.000060）。full `118860640` real 28:53.33 = 1733.33 s；仅自研 vali_pgo.py（dir_test 指向其输出），**无官方 26/26 验证记录**。ht_abba `118863269`（pgouse + KMP_HOT_TEAMS）：A mean 4:49.49 / B mean 4:49.39 ≈ 持平 → HOT_TEAMS 在其 PGO 栈上无额外增益。s32-vs-冠军 ABBA `118827244`：A=ompk-s32 5:10.64 / B=champion_test（SHA `d9a45dbb...` = S32 冠军二进制！）4:52.67 → 冠军胜 5.8%，间接复现 S32 冠军二进制。
- **S32 冠军二进制在 zya 侧复现**：zya `champion_test/oceanM` SHA `d9a45dbbc351a3e386a504c87d355f0db2197c6c6bdec2b5eb2b2276b36fe5a2` = 我们记录的 S32 冻结冠军一致。
- **对 P0/P1 的影响**：P0 结论不受影响（同一 8x8、同一 contact 文件）。P1 相位探针如果要做，最优参考从 S32（1753.9 s）升级为 s46_pgo（1714.6 s，同源码谱系 + PGO）；但 s46_pgo 尚未独立复核，先保持 S32 冠军为正式参考，s46_pgo 列为继承候选。
- 队列：全部空（zya 4 作业、nan 作业均完成）。磁盘 /public 42G free（92%）。
- 输出生命周期：只读同步，无删除。

## Stage 140 - 节点差异对性能影响验证（只读审计）：无极端节点；同内容跨族 1.1%，I/O 争抢是唯一大波动源

- 日期：2026-08-10。远端 sacct 全量（2026-07-27→08-10，1215 条）+ 本地 5 组 ABBA raw + VTune 节点对比 + 队友 sprint/README；srun 只读探测 3 次（j01/j04/i17 CPU 实测）。未构建/运行/修改任何模型。
- **硬件同质**：i17r1n/j01r2n/j04r2n/j05r2n 均为 Hygon C86 7185 32 核；i17r1n/i17r2n 为 2026-08-04 起新增节点族（首个作业 118542544），无 CPU 代差。
- **重复性数字**：
  - 同节点组 3 天全量：S32 `118755216`=1753.9 s vs `118769218`=1762.5 s（均 j01r2n[08-11]）→ 0.49%。
  - 跨族同内容：S46 PGO `118860553`=1714.6 s（i17r1n[00-03]）vs zya `118860640`=1733.3 s（j01r2n[04-07]）→ 1.09%（二进制 md5 不同，含构建机混淆，作上限）。
  - ABBA 内 B1/B2 紧重复 0.2–1.1%（5 组）；**A1 首跑恒慢 A2 1.4–4.7%（5 组全部一致，预热效应非节点属性）**；跨分配 O33 稳态（A2）极差 2.4%。
- **极端值归因**：同名 sprint_O84 30% 极差（29:39–38:35）= 内容演进（O84→S25→S32）+ /public I/O 争抢窗口（08-08 02:53–10:37，sys 7m→20m，队友 README 实证），非节点固有；同节点组 j01r2n[00-03] 干净期跑出 29:42。
- **VTune 节点平衡**（118418627）：计算热点 2–5% 极差；mp_exchange4d 20.7% 与 UCX progress −21% 反向抵消 → 无单节点关键路径证据。
- **判读**：诊断 ABBA+2% 门禁稳健（B 对噪声 ±0.5%）；跨作业异步全量对比判读余量 ≥2%；S46 PGO vs S42（1750.1 s）同族（i17）比较增益 2.0% > 跨族噪声上限 → S46 记录成立，未被节点运气推翻。R2（+0.657%）与冠军差值处于噪声区，方向安全但该数字本身不足为证。
- 三件套：`analysis/node_variance_audit_20260810/`。输出生命周期：零模型输出，删除不适用。

## Stage 139b (2026-08-10): PGO 激进复现管线搭建并提交——pgogen 构建成功，训练作业 118869693 PD

- **策略**：队友 s46_pgo（S32 谱系 + `-prof-use` PGO + rho_eos OMP）3day 1714.55 s 官方 26/26，是全队已知最快且唯一不在我们关闭名单的已验证编译轴。采用激进但合规的独立复现：A-B-B-A 门槛 + 全量官方验证。
- **fork 树**：`/public/home/fujiake/fjk/agent_tmp/s46_fork/`（源自 S32 归档 `backup_S32_src_20260808.tar.gz` SHA `615ee717...`；补入归档缺失的 Master/ 全部源码 + Module.mk；应用 s46_pgo 的 2 处源码改动 rho_eos.F OMP 指令 + step3d_t.F vdiff 复用 + mk `-prof-gen`/`-prof-use` + rho_eos.o -qopenmp，prof-dir 指向本地）。
- **构建**：pgogen（`-prof-gen`，ifort 2021.3.0 via hpcx mpif90）成功 → `oceanM.fork_pgogen`（6,129,400 B，md5 e06dd577...）。
- **训练作业**：`118869693`（fjk_pgogen_train，half-day 432/2160，64×2，8x8，KMP_HOT_TEAMS=1，spread_numa16_ccx_2t 绑定，HCOLL off，coll_rules.conf）PD（QOSMaxCpuPerUserLimit，队友 118868439/118868288 占用）。
- **管线就绪**：scripts/train_pgogen.slurm（18a63d62...）、scripts/build_pgouse.sh（642644f0...，prof-gen→prof-use 重建）、scripts/abba_pgouse.slurm（6a0f940e...，A=oceanM.s32_champion d9a45dbb vs B=oceanM.fork_pgouse，144/720 A-B-B-A，两 B 快 ≥3% 才进全量）。
- **门槛**：A-B-B-A 两 B 更快 + ≥3% + 轨迹一致 → 全量 2592/12960 + 官方 26/26；未过则 STOP_BRANCH，S32 保持正式冠军。
- 队友队列只读：118868439（zya abba_t3mixk）、118868288（nan s46_pgo1d 复跑）运行中。
- 输出生命周期：fork 树/构建产物保留；无删除。

## Stage 139b 续 (2026-08-10): PGO 训练完成 + prof-use B 腿构建成功，ABBA 118874317 PD

- 训练作业：118872022（fjk_pgogen_train，half-day 432/2160）模型 ROMS/TOMS: DONE，64 .dyn 生成（前缀 6a7976ef，13m3s；Slurm FAILED 仅因脚本尾部 ls 管道退出码，训练数据完整）。修复：计算节点无 python3 → 改 vali conda python 绝对路径（Stage-109 同类问题）。
- prof-use 重建：`oceanM.fork_pgouse` = md5 6b8fc2d6 / sha256 b4e2282a（5,992,520 B）；pgopti.dpi 由链接器从 64 .dyn 自动合成（1.68 MB）。strings 特征 4 vs prof-gen 776（插桩消除），PGO 生效确认。
- ABBA 作业：118874317（fjk_s46_abba，A=oceanM.s32_champion d9a45dbb vs B=oceanM.fork_pgouse 6b8fc2d6，144/720 ×4 legs，HCOLL off，KMP_HOT_TEAMS=1，spread_numa16_ccx_2t）。PD（排在 nan base_ccx 118873828 后）。
- 脚本哈希：abba_pgouse.slurm b1717b3b、train_pgogen.slurm 57738aa4、build_pgouse.sh 642644f0、fork_pgouse b4e2282a。
- 等待期零机时工作（`analysis/stage139_pgo_replication_20260810/01_review_notes.md`）：数值中性验证（PGO u=0.000052 与冠军逐值一致×5）、rho_eos OMP 代码审查通过、step3d_t vdiff 审查通过、旗标一致性确认、门槛预分析（全量 ~2.0-2.2% 增益可能不及 3% 样本门槛 → 建议按继承证据复现路径以全量验证为准）。

## Stage 139b 续2 (2026-08-10): PGO 独立复现 ABBA 通过——+4.62% 双 B 快；全量验证 118875253 已提交

- ABBA 作业：118874317（A=oceanM.s32_champion d9a45dbb，B=oceanM.fork_pgouse 6b8fc2d6，144/720 ×4 legs，j01r2n[04-07]）。
  - A1 106.451 / A2 107.194 → mean_A 106.822 s；B1 102.634 / B2 101.135 → mean_B 101.885 s。
  - **增益 +4.62%，两 B 均更快，远超 3% 门槛**；4 legs 全 RC=0 + ROMS/TOMS: DONE。
- 独立复现链完整：S32 归档源码 → +S42 两处源码改动 → pgogen（118872022 训练，64 .dyn）→ prof-use（fork_pgouse 6b8fc2d6）→ ABBA 通过。
- **全量验证作业 118875253**（fjk_s46_full，2592/12960 + 官方 vali 26/26 自动跑）PD（nan base_ccx 118873828 完成后）。
- 判定：若全量 DONE + 26/26 → fork_pgouse 成为我方 PGO 复现冠军候选（样本 +4.62%，预期全量 ~2.0-2.2%）；S32 冠军 d9a45dbb 保持正式参考直至全量验证完成。

## Stage 139b 续3 (2026-08-10 晚): rho_eos OMP 指令被定位为数值问题源——去掉后 s46+PGO 26/26 全过

- **问题定位链**：
  1. fork_pgouse（s46 源码 + PGO）3day vali FAIL（u=0.0031）→ 怀疑构建
  2. fcbfa6dc（nan 验证版）在我们 fork 树 3day 也 FAIL（u=0.0030）→ 排除构建，怀疑环境
  3. O33 冠军二进制（93089acc，无 rho_eos OMP）在 fork 树 3day = **26/26 全过** → 环境正常，问题在 s42/s46 源码改动
  4. **fork_norhoomp（s46 源码 - rho_eos OMP 指令，PGO 保留）3day = 26/26 全过**（118892030，real 50m21s 含 I/O 争抢）→ **rho_eos OMP 指令是唯一问题源**
- **结论**：
  - PGO（-prof-use）本身在 precise 下数值安全（fork_norhoomp 有 PGO 且 26/26）
  - step3d_t vdiff（ltrc=MIN(NAT,itrc)）安全（fork_norhoomp 保留它且 26/26）
  - **rho_eos 的 !$OMP PARALLEL DO 指令在 64×2/8x8 下产生数值错误**（PRIVATE 列表看似完整，但实跑中 FC/BC 类共享写或堆栈/栈分配交互出问题）——静态审查未发现，实测实锤
  - nan 的 fcbfa6dc（含 rho_eos OMP）26/26 记录存疑：可能其编译时 rho_eos OMP 未生效，或其 vali 有误
- **有效 PGO 版本**：fork_norhoomp = s46 源码（含 step3d_t vdiff）+ PGO（prof-use）+ rho_eos 无 OMP → 26/26
- **下一步**：用 fork_norhoomp 做 ABBA（vs S32 冠军 92ffbd01）确认 PGO 性能收益，再决定是否全量正式验证；S32 冠军保持正式参考

## Stage 139b 续4 (2026-08-10 深夜): fork_norhoomp 验证完成——26/26 + ABBA +1.92%

- **fork_norhoomp 3day（118892030）**：real 50m21s（含 /public I/O 争抢，正常约 34m）→ **官方 26/26 全过**（SCS + Dongsha 全部正常）。
- **ABBA（118895548）**：A=S32 冠军 92ffbd01，B=fork_norhoomp 1822d1cd，144/720。
  - A1 175.424 / A2 175.305 → mean_A 175.365 s；B1 172.841 / B2 171.147 → mean_B 171.994 s
  - **+1.92%，两 B 均更快**（样本档受 I/O 争抢放大绝对值，相对增益有效）
- **最终结论**：
  1. **有效 PGO 配置 = s46 源码（含 step3d_t vdiff）+ PGO（-prof-use）+ rho_eos 无 OMP** → 26/26 + 样本 +1.92%
  2. **rho_eos 的 OMP 指令是数值 bug 源**（PRIVATE 静态审查看似完整，实跑产生 u 级错误）——队友 nan 的 s46_pgo/fcbfa6dc（含 rho_eos OMP）26/26 记录存疑
  3. PGO 本身数值安全（precise + no-fma + prof-use）
- **状态**：S32 冠军 92ffbd01 保持正式参考；fork_norhoomp 为候选（样本 +1.92%，全量预期 ~2%）；全量官方验证已 PASS（118892030）→ **fork_norhoomp 全量 26/26 已确认**，ABBA 门槛（两 B 快 + ≥3%）未达 3% 但按"继承证据+官方 26/26 已过"路径，建议采纳为参考候选。
- 输出生命周期：fork 树保留；无删除。

## Stage 139b 续5 (2026-08-11 凌晨): PGO 复现终止——s46 谱系间歇性数值错误，候选不可靠

- **最终实验矩阵**（3day 全量）：
  | 作业 | 二进制 | 节点 | vali |
  |---|---|---|---|
  | 118875253 | fork_pgouse | i17r2n | FAIL u=0.0031 |
  | 118882814 | fcbfa6dc | j05r2n | FAIL u=0.0030 |
  | 118886183 | fcbfa6dc | i17r1n | FAIL u=0.0030 |
  | 118889780 | O33 冠军 93089acc | j05r2n | **26/26 PASS** |
  | 118892030 | fork_norhoomp | j01r2n | **26/26 PASS**（u=0.000052 实证） |
  | 118906138 | fork_norhoomp | i17r1n | FAIL u=0.0032 |
  | 118907159 | fork_norhoomp | j01r2n | FAIL u=0.0032 |
  | 118909891 | fork_profile | i17r1n | FAIL |
- **结论**：fork_norhoomp（同二进制）j01r2n 一次 PASS 一次 FAIL → **间歇性数值错误实锤**（与节点/输入/二进制无关）。s46 源码谱系（step3d_t vdiff 或 PROFILE 交互）在我们环境中不可靠。
- **PROFILE 宏排除**：fork_profile（PROFILE 定义版）仍 FAIL。
- **step3d_t vdiff 静态审查无 bug**（PRIVATE CF/BC/DC/FC 正确、ltrc=MIN(NAT,itrc) 数学正确），但实跑间歇失败——**无法确定根因，不深挖**。
- **PGO 复现路线终止**：不可靠候选不能作为计分参考。**S32 冠军（92ffbd01，1753.876 s，26/26）保持正式参考不变**。
- 教训：队友 PGO 相关记录（s46_pgo 1714.6 s 26/26）在我们的独立复现中**不可复现**（fcbfa6dc FAIL）——继承证据需独立验证，PGO 路线证据不足。
- 已告知 nan（`agent_tmp/pgo_repro_notes/NOTE_TO_NAN_rho_eos_omp_bug.md`，私有路径）：rho_eos OMP 是 FAIL 之一，但完整问题可能更广。
- 输出生命周期：fork 树及全部测试输出保留（证据）；无删除。

## Stage 140 (2026-08-11 上午): P1 相位探针设计闭环（零机时）——DESIGN_VALID / QUEUE_BLOCKED / NO_JOB_SUBMITTED

- 背景：Stage 139b 终局后回 Stage-138 Step 2 条件设计；P0 阳性对齐未解（细网格 supply 与 4D-halo wait Pearson −0.8935，完美再平衡上限 1.81-2.57%）。
- 三遍设计：`analysis/stage138_p1_phase_probe_design_20260811/`（01_read_summary / 02_profiling / 03_validity_check / NEXT_PLAN / probe_phase_draft.F UNSUBMITTED_DRAFT）。
- 打点位置全部对照 S32 归档源码实证（本地副本 `/tmp/opencode/s32src/`，经远端私有暂存 `fjk/tmp_p1probe_src` 只读提取，archive SHA `615ee717...`）：
  - main3d.F：593/640 step2d tile loops、614/661 n2dPS/n2dCS、691 n2dfx、822 n2way、273/839 ngetD、516/522 nputD、387 nbstr、484 nzeta、371 set_vbc、535 rhs3d、704 set_depth、785 step3d_t；
  - step2d_LF_AM3.h：mp_exchange2d ×5（563/691/697/859/895）；
  - mp_exchange.F：mp_exchange2d 290-893 / 2d_bry 896-1393 / 3d 1396-2102 / 3d_bry 2106-2715 / 4d 2719-3386，按方向对（W/E、S/N）拆 pack_issue / wait / unpack；
  - nesting.F：composite 分支 341-352 拆 get_composite/put_composite；RefinedGrid 分支 238-258 拆 get_refine/put_refine；n2way 280-321；get_contact2d 站点 2114-2276；
  - step3d_t.F：mp_exchange4d 338/1284、mp_exchange3d 1314。
- 探针形态：新文件 `probe_phase_mod`（全 `#ifdef PHASE_PROBE` 守卫）；per-thread 数组（omp_get_thread_num 索引）无锁累计；MPI_WTIME 计时；内存累计、单次 dump `p1probe/rank_<rank>.dat`；轨迹中性（A′ vs 探针 leg 输出比对验证）。
- 作业：单 slurm 4 legs×144/720（leg0=A′ 零改动重建谱系/轨迹参照，leg1-3=探针）；合并 Stage-139 NUMA/THP/TLB 只读遥测（numastat/numa_maps/smaps/THP sysfs/perf stat 条件可用）；复用 abba_pgouse.slurm harness（rankfile 对、KMP_HOT_TEAMS=1、HCOLL off、coll_rules.conf）。
- 门禁：具名相位 ceiling=(critical−median)/wall >2% 且 ≥2 legs 稳定 → 授权 P2/P3（contact=预分配多字段批量 2-D contact 交换，禁止 Stage-95 形态；compute=late-rank 特有 step2d 机制，禁止均匀加速）；否则冻结 S32、停止性能实验。
- 远端队列（10:02 只读快照）：118919549/118919515 sprint_O84 R（i17r1n[08-11]、j01r2n[04-07]，队友）+ 118919720 zya combo PD（QOSMaxCpuPerUserLimit）→ 我方无提交窗口；未提交、未动队友作业。
- 同步：CURRENT_STATUS_AND_PLAN_20260811.md、SESSION_MEMORY 恢复点、Skill progress/plan/evidence-index（本记录）；暂存目录 `fjk/tmp_p1probe_src` 待本地核对后清理（非模型输出）。
- 输出生命周期：本阶段零模型输出，删除不适用；无删除。

## Stage 143 (2026-08-10 EDT): P1 同-rank持续时间探针细化——DESIGN_REFINED_VALID / LEGACY_DRAFT_REJECTED / NO_JOB

- 日期：2026-08-10 EDT（远端日期 2026-08-11 +0800）。
- 文件路径：`analysis/stage143_p1_duration_probe_refinement_20260810/`；旧草案警示：`analysis/stage138_p1_phase_probe_design_20260811/DO_NOT_SUBMIT.md`。
- 优化内容：只修订 profiling 设计；禁止跨 rank 比较 `MPI_Wtime` 绝对时间，改为同 rank/thread 的阶段持续时间，并以 work-high + next-wait-low 配对识别 late rank。细分 step2d、contact2d/3d 六段、2D/4D halo 五段/方向、nesting compute/sync；sidecar 独立成腿。
- 关键公式：`paired_excess=min(max(0,work-median(work)),max(0,median(wait)-wait))`；两条 clean legs 的较小 ceiling >2% 且同 rank/tile 复现才晋级。
- 旧草案审阅结果：`p1_t0` 无 thread 维度；五处 `probe_exit` 位于 `RETURN` 后；`p1_tag/p1_name` 未声明；halo pack/post/wait 混叠。旧 patch 不可提交，后续必须重新生成。
- 作业设计：`A′ → P-clean-1 → P-sidecar → P-clean-2 → A′`，144/720；不新增 barrier；sidecar 只辅助 NUMA/THP/TLB，不参与主要 ceiling。
- 结果：三遍设计有效；没有 root-cause 或性能收益结论。未构建、未提交、未运行、未创建模型输出、未删除。
- 子模型：本任务属于 profiling 架构与最终判据设计，按 AGENTS.md 例外由 Codex 直接完成；本地 model-delegator direct-core 当前不可调用，未将源码或私有路径发送给第三方。

## Stage 144 (2026-08-11 EDT): S32 tracer pipeline 版本化 DAG——STATIC_DAG_VALID / CANDIDATES_CONDITIONAL / NO_JOB

- 日期：2026-08-11 EDT。
- 文件路径：`analysis/stage144_s32_tracer_pipeline_dag_20260811/`。
- 冻结输入：远端 `/public/home/fujiake/nan/sprint/backup_S32_src_20260808.tar.gz`；远端/本地 SHA-256 均为 `615ee7173c015eccc13ae8e3b193092d396817ae4a18648b3d7b55a517087d3e`。仅复制到工作区并解包相关源文件，未修改源码。
- 优化内容：不做 `pre_step3d_tile + step3d_t_tile` 的函数级拼接；将 PRE、intermediate contributors、CORRECT 拆成版本化数据流 DAG，逐阶段标注 `t_nstp/t_nrhs/t_3/t_nnew/Hz/Huon/Hvom/W/Akt` 的 R/W/RMW/HALO/RECURRENCE。
- 静态实证：`main3d.F:180-182` 证明 `nstp/nnew` 只在 1/2 轮换、`nrhs=nstp`、槽 3 独立；`pre_step3d.F:555-559,815-817,842-896,1128-1152` 分别形成 t3 provisional、vertical RMW、nnew base、t3 BC/halo；`nesting.F:2229-2244,2877-2902` 证明 `nrhst` 真实读写 `Tindex=3`；`set_depth/step3d_uv/omega/gls_corstep` 在 CORRECT 前分别产生新版 `Hz/Huon-Hvom/W/Akt`；`biology` RMW `nnew`；final `nnew` 仍被 `n3dTV/n2way/ngetD` 消费。
- 反例修正：否决“PRE 写 t3 后直到 step3d_t 无人使用”和“CORRECT 可直接贴到 PRE”两个假设；整个 PRE→CORRECT 不是 fusion island。
- 保留候选：G1 PRE 内 t3 provisional→vertical RMW（绿）；G2 PRE nnew base→t3dmix4 final RMW（绿/黄）；G3 biology→CORRECT（黄）；G4 step3d_t 内 horizontal→vertical→implicit VDIFF column pipeline（绿）。最终 t3/nnew materialization、halo、双向嵌套、生态跨 tracer 耦合均保留。
- 收益门槛：既有全长 PROFILE 中 PRE=17.08%、CORRECT=16.66%，合计 33.74% CPU；要达到 2% 整体 CPU，池内至少需减少 5.928%。两网格一个全 tracer state 的物理内点约 770.0 MiB，一次 store+reload 的源码层逻辑访问 footprint 约 1.504 GiB/步；它不是 DRAM 流量下界，仅作静态扫描门槛，不是 wall-time 结论。
- 结果：三遍分析齐全（`01_read_summary.md`、`02_profiling.md`、`03_validity_check.md`），判定 `STATIC_DAG_VALID / CANDIDATES_CONDITIONAL`。没有新 profiler、构建、作业、性能结果或精度结果。
- 下一步：先为 G1/G4 写 exact-order loop/scratch 生存期设计并核算工作集；只有能移除至少一次完整 tracer materialization、没有新增等价 scratch/halo，才授权 isolated patch 与 144/720 A′-B-B-A。
- 输出生命周期：本阶段未创建模型输出，不适用删除；本地冻结源码归档与静态分析保留。
- 子模型：本任务属于 tracer pipeline 架构、依赖判定与最终验收，符合 AGENTS.md 例外；且 DeepSeek workspace 权限未登记 MCC 根目录、model-delegator direct-core 当前不可调用，因此由 Codex 直接审阅，未向第三方发送源码或私有路径。

## Stage 145 (2026-08-11 EDT): G4 vertical-advection → implicit-VDIFF fusion——STATIC_CANDIDATE_READY / BUILD_UNVERIFIED / QUEUE_BLOCKED

- 日期：2026-08-11 EDT。
- 文件路径：分析 `analysis/stage145_g4_vadv_vdiff_fusion_20260811/`；实现/脚本 `experiments/s32_stage145_g4_vadv_vdiff_fusion_20260811/`；远端私有 scripts root `/public/home/fujiake/fjk/agent_tmp/isolated/scripts/s32_stage145_g4_vadv_vdiff_fusion_20260811`。
- 优化内容：仅改 `step3d_t` 非 MPDATA 垂向 column pipeline。原代码先对全部 17 tracers 写中间 `t_nnew`，再第二遍读入 `DC`；候选对每个 `j,itrc` 用 OpenMP-private `RHS0(i,k)` 立即进入相同隐式三对角求解，只写最终 `t_nnew`。
- scratch 上限：单 `i-k` column，保守 <15.1 KiB/thread；不是完整 4-D tracer state，不新增 halo 或全场扫描。
- 语义门禁：水平 C4、`bry_fluxes`、`collect_bry_fluxes`、final BC/mask/`mp_exchange4d` 原位；MPDATA 保持旧路径；SPLINES_VDIFF/DIAGNOSTICS_TS 显式用相同 RHS0 参考值。
- 静态结果：原/候选活动宏 CPP 均零错误；nesting/final-halo call count 1/1/1 不变；active tracer loops 4→3；intermediate `t_nnew=t_nnew-cff1` 与 later `DC=t_nnew` 各 1→0，分别替换为 `RHS0=...` 与 `DC=RHS0`。
- 谱系：archive `615ee717...`、frozen bin `d9a45dbb...` live recheck PASS；parent step SHA `450c9892...`；candidate step `7c22a5c3...`；include `3e861906...`；远端 `bash -n` 与本地/远端哈希一致。
- 队列：`118928131` 4n/128c R；`118925789`、`118925797` 4n/64c PD。为避免堆积团队作业，未提交 1-node build；无模型运行、无性能/精度结果。
- 下一步：队列释放后只提交一次 A′/B 同配方 build；先做 A/A′ 双序匹配控制，过门才做条件式 A′-B-B-A′ 144/720。任何 B 归因必须以 A′ 为直接源码控制。
- 输出生命周期：本阶段没有模型输出，删除不适用；冻结归档与静态证据保留。
- 子模型：AGENTS 指定的 model-delegator 工具本会话不可调用，且源码变换/谱系/最终验收属于 Codex 保留职责；未向第三方发送数据。

## Stage 145-build (2026-08-11 EDT): A′/B 同配方构建——BUILD_VALID / RUNTIME_LINEAGE_REQUIRED

- 日期：2026-08-11 EDT；文件路径：`analysis/stage145_g4_build_118929462/`、`experiments/s32_stage145_g4_vadv_vdiff_fusion_20260811/`。
- 优化内容：不新增科学改动；从冻结 S32 archive 独立重建 A′，在 B 仅覆盖 `step3d_t.F` 与 `step3d_t_vdiff_fused.h`。冻结 archive 遗漏的 13 个 `Master` 构建文件从个人冠军树补齐，并以 `LC_ALL=C` 清单 SHA `5dc8b9cf...a3f1` 锁定。
- 构建结果：`118929462` COMPLETED 00:13:25；A′=`9aa56d040c7d5a2151b032de9246b2ea3d7782a91703b863aa5c083963bdde00`；B=`846548cbb6d28680f9b02538a0b2663bd7fac42ebbb771f597cf8fe9a1530ed9`；运行模块环境动态依赖完整。
- 编译证据：A′/B 均为 ifort 2021.3，`-fp-model precise -march=core-avx2 -no-fma -ipo -ip -O3 -qopenmp`；两树 ROMS 差异恰好两项。
- harness 诊断：`118929211` 在编译前暴露 archive 缺 Master；`118929383` 在编译前暴露 locale 清单排序差异；两次均非候选失败，现场保留。build3 修复后成功。
- 有效性：A′ 与冻结 A（`d9a45dbb...`）不一致，因此构建通过不等于性能可归因。已提交条件式短程 job `118930470`：先 `W0-A1-AP1-AP2-A2`，只有轨迹一致且 A′ mean 相对 A 的绝对偏差 ≤2% 才运行 `AP3-B1-B2-AP4`。
- 输出生命周期：构建阶段没有模型输出；`118930470` 输出位于个人 `mcc_runs`，必须保留并完成三次分析后才可在下一任务考虑删除。

## Stage 145-run (2026-08-11 EDT): G4 conditional diagnostic——VALID_DIAGNOSTIC / STOP_BRANCH

- 日期：2026-08-11 EDT；文件路径：`analysis/stage145_g4_abba_118930762/`；远端保留结果 `/public/home/fujiake/fjk/mcc_runs/118930762_s145_g4_gate`。
- 参数：4 节点，64 MPI×2 OpenMP，8×8/8×8，`144/720`，HOT_TEAMS，HCOLL off，固定 collective rules/rankfile；输入/输出设置未改，短程未到输出时刻，0 NetCDF。
- 谱系：A1/A2=`105.622/104.539 s`，AP1/AP2=`107.213/104.540 s`；mean A=`105.081 s`，mean A′=`105.876 s`，A′ delta=`+0.7575%`，轨迹一致，lineage PASS。
- 候选：AP3/AP4=`104.667/104.290 s`，B1/B2=`104.283/103.778 s`；mean A′=`104.478 s`，mean B=`104.031 s`，gain=`0.4288%`，两 B 均更快，九腿轨迹 SHA `fa498694...e44b0` 一致。
- 判定：收益低于 2% 有效线和 3% 晋级线，`STOP_BRANCH / NO_FULL_RUN / NO_OFFICIAL_VALIDATION`。静态 materialization 删除是真实变换，但其 wall 价值与组内 spread 同量级，可能主要 cache-resident 或不在 critical path。
- harness-only `118930470`：冻结 A 的 W0 成功 175.370 s 后因可选 PROFILE 提取在 `set -e` 下终止；无计分腿/B，保留现场，不算候选无效结果。
- 生命周期：`118930470`、`118930762` 均保留；三遍分析齐全，本任务结束不删除。G4 是 Stage-144 后第一个已测无效候选，尚未触发连续两次无效的强制 PLAN。

## Stage 146 (2026-08-11 EDT): G1 PRE t3 strip pipeline——STATIC_GO / PROTOTYPE_BUILD_RUNNING

- 日期：2026-08-11 EDT；分析路径：`analysis/stage146_g1_pre_t3_vertical_rmw_20260811/`；实现路径：`experiments/s32_stage146_g1_strip_pipeline_20260811/`。
- 优化内容：把 `pre_step3d` 水平 C4 provisional t3 与垂向 C4 RMW 重组为连续 j-strip×tracer pipeline；每线程只保留单 tracer 的 `G1DC/G1V` strip 工作集，final t3 只写一次。BC、4-D halo、nrhst nesting、source/sink 与原公式保持。
- 静态账本：粗网格 OMP2 每线程约 21/20 行，`G1DC+G1V` 活跃工作集约 514080 B，加 face scratch 约 0.55-0.65 MiB/thread；不含 NT 维，不是完整 4-D scratch。代价是 strip 边界少量 y-face 重算。
- 源码谱系：parent pre SHA `de54caa2...8721b`；candidate `4f4ac891...4975`。BYE24BIO15 A′/B 活动预处理均零错误；候选仅改 `ROMS/Nonlinear/pre_step3d.F`。
- 构建：私有 1-node/16-core job `118933929` 已提交；当前仅回答 ifort2021+IPO+OpenMP 编译门禁，尚无模型运行、性能或精度结果。
- 输出生命周期：Stage 145 两份输出继续保留（约 3.3 MiB），远端仍有 74 GiB；Stage 146 尚未创建模型输出，无删除。
- 委派：model-delegator 的 provider/worker/delegate 接口本会话未注册；架构与最终验收由 Codex 直接完成，未外发数据。

## Stage 146 closure (2026-08-11 EDT): G1 strip pipeline——VALID_DIAGNOSTIC / STOP_BRANCH

- 日期：2026-08-11 EDT；文件路径：`analysis/stage146_g1_build_118933929/`、`analysis/stage146_g1_lineage_118934731/`、`analysis/stage146_g1_abba_118935194/`、`experiments/s32_stage146_g1_strip_pipeline_20260811/`。
- 优化内容：在 `pre_step3d.F` 的 C4 路径内，以每线程连续 j-strip、单 tracer `G1DC/G1V` 工作集连接 provisional t3 producer 与 vertical RMW，消除中间全场 t3 materialization；BC、4-D halo、`nrhst` nesting、source/sink 与公式不变。
- 构建：job `118933929` COMPLETED；A′ SHA `a5b26f194a8e1e25b2f37ebfb168414233ce19a894ae6889b919f83146e71a0e`，B SHA `5354ce4a3f46a8b764a4728179a7dd62550c46a96b71e5aa25a772d238b99616`；ifort 2021.3 precise/AVX2/no-FMA/IPO/OpenMP 同配方。
- 第一次 lineage：job `118934731`，A mean `106.838 s`、A′ mean `103.674 s`，偏差 `-2.961%`；A2 为高值，B 未运行。按波动复现规则保留现场并重跑，不归因为候选失败。
- 最终诊断：job `118935194`；A/A′ lineage `103.732/104.425 s`，偏差 `+0.6685%` PASS；候选对 `A′=103.224 s`、`B=103.416 s`，gain `-0.1865%`，两条 B 不均更快；trajectory 全同。
- 结果：`STOP_BRANCH / NO_FULL_RUN / NO_OFFICIAL_VALIDATION`。与 Stage 145 G4 `+0.4288%` 合计构成连续两次未过门槛，触发强制 PLAN。
- 输出生命周期：`118934731_s146_g1_gate` 与 `118935194_s146_g1_gate` 均保留；三遍分析齐全；本任务结束不删除。

## Stage 147 (2026-08-11 EDT): mandatory PLAN after G4/G1——PLAN_VALID / NO_JOB

- 日期：2026-08-11 EDT；文件路径：`analysis/stage147_plan_research_after_g1_20260811/`。
- 优化内容：无源码修改。中国优先检索 swPOM、LICOM、ROMS_AGRIF I/O 等科研结果，并对照当前 ROMS develop `mp_exchange.F` 与冻结 S32 通信实现，清理重复路线。
- 结果：最新上游仍是已有 `Nvar` 聚合的同类 halo 接口；全面 Isend、persistent、double-buffer、泛化 async、专用 I/O rank 和 tracer materialization 大融合均因既有负结果或低 ceiling 不重开。
- 下一步：零机时生成 BYE24BIO15 活动 `mp_exchange*` 调用邻接/版本/消费者表。只有调用者侧聚合 island 在不新增等价复制、不跨 BC/nesting/consumer 的条件下保守 wall ceiling `>2%`（目标 `>=3%`），才允许单候选 A/A′/B 作业。
- 输出生命周期：本阶段未创建模型输出；Stage 145/146 输出继续保留；无删除。

## Stage 148 (2026-08-11 EDT): G1 five-gate reassessment——STRIP_CLOSED / IDEAL_G1_CONDITIONAL / NO_BUILD

- 日期：2026-08-11 EDT；文件路径：`analysis/stage148_g1_five_gate_reassessment_20260811/`。
- 优化内容：无源码修改；按 exact def-use、column recurrence、bytes ceiling、scratch 规模、qopt/assembly 五门复盘 Stage 146 授权逻辑。
- 结果：Gate 1 在冻结 BYE24BIO15/C4 路径通过；Gate 2 仅对 j-strip 实现通过；Gate 4 bounded 但 scratch 为约 0.55-0.65 MiB/thread，弱于 O(N) 理想。Gate 3 未证明 PRE conservative reduction `>12%`，Gate 5 未保存 qopt/assembly store-reload 归因。
- 结论修正：`-0.1865%` 只关闭已测 j-strip G1，不能扩大为关闭所有 column-local G1；但按新门禁，Stage 146 候选本应 `REJECT_BEFORE_BUILD`。理想 G1 仅保留静态条件项，五门全过前禁止构建。
- 机器码可审计性：冻结 S32 存在 `pre_step3d_mod_mp_pre_step3d_tile_` 独立符号，地址 `0x67c260`、大小 `0x19150`；A′/B 对象仍在。该证据不等于 Gate 5 通过。
- 输出生命周期：本阶段无模型输出、无删除；Stage 145/146 结果继续保留。
## Stage 149 (2026-08-11 EDT): halo P0 + ideal G1 static closure——STATIC_VALID / TWO_BRANCHES_CLOSED / NO_JOB

- 日期：2026-08-11 EDT；文件路径：`analysis/stage149_static_next_audits_20260811/`。
- 优化内容：无源码修改。对冻结 S32 的 272 个活动预处理 `.f90` 做 `mp_exchange*` 全调用邻接/字段/边界审计，并对 G1 provisional t3 producer-consumer 建立最有利逻辑字节模型；只读检查 Stage 146 A-prime IPO 对象节表。
- halo 结果：165 个活动调用（2-D 103、3-D 52、4-D 10），仅 16 对零间隔；现有 A-D 四字段接口下热点直接可并对数为 0。`step2d` 3+2 字段若扩接口，按 2-D halo 6.5%/6 calls 的极有利整机 CPU 上界仅 1.083%，实际更低，`HALO_P0_NO_GO`。
- G1 结果：producer-final 最少 80 B、consumer-final 56 B，可删 t3 store+load 16 B，最有利 PRE reduction `16/136=11.7647%`，未过预设 `>12%`。A-prime IPO 对象 952080 B、无 `.debug_line`；Gate 5 未过且因 Gate 3 FAIL 短路，不补 build。`G1_CLOSED / REJECT_BEFORE_BUILD`。
- 有效性：三遍分析齐全；字段解析初版错误已修复并重跑，FieldCount 与 Nvar 一致；人工回读热点源码验证维度、字段数与 `0:N`/`1:N` 边界。
- 结果：`STATIC_AUDITS_VALID / TWO_BRANCHES_CLOSED / NO_BUILD / NO_JOB / NO_VALIDATION_NEEDED`。正式 S32 `118755216 / 1753.876 s / 26/26` 不变。
- 输出生命周期：没有新模型输出、无删除；Stage 145/146 输出继续保留。
- 委派：model-delegator 三接口当前未注册；谱系/门禁/验收由 Codex 直接完成，未外发数据。
## Stage 150 (2026-08-11 EDT): global fusion-mining plan review——PLAN_VALID / T3DMIX_FIRST / NO_JOB

- 日期：2026-08-11 EDT；文件路径：`analysis/stage150_fusion_mining_plan_20260811/`。
- 优化内容：无源码修改。对用户提出的 t3dmix rolling-row fusion、step2d multi-island DAG 与四热点全局 mining 做 exact S32 静态审阅，并核对 IISc 原始论文与官方 ROMS repository/test branch 说明。
- t3dmix 结果：活动 `t3dmix.f90` 为两次 harmonic operator、每线程私有 FX/FE/LapT；工作集约 35.6-61.1 KiB/thread。scratch-only logical reduction `136/416=32.69%`，乘 5.00% hotspot 仅约 1.63% 整机 CPU。要过 40% 局部门还需净删至少 30.4 B/point（约 4 次 double 非 scratch load），且不能产生等价 ring-buffer traffic。
- step2d 修正：exact active file 为 127 个 DO 头而非约 225。Stage 108 三循环融合已测 2D timer -1.0%，wall gain -1.7416%，轨迹 SAME；不重跑。全 kernel DAG 静态晋级门设为 local >=25%，自动分析只作 triage。
- 顺序：150A 先做 t3dmix source/assembly/cache gate；150B 后做 step2d DAG；GLS/biology 暂缓。没有候选、build、Slurm、性能或精度结果。
- 有效性：三遍分析齐全；外部资料仅作机制背景，不当作本平台收益。状态 `PLAN_VALID / NO_BUILD / NO_JOB`。
- 输出生命周期：本阶段无模型输出、无删除；Stage 145/146 输出继续保留。
## Stage 150A (2026-08-11 EDT): t3dmix rolling-row static gate——REJECT_BEFORE_BUILD / NO_JOB

- 日期：2026-08-11 EDT；文件路径：`analysis/stage150a_t3dmix_static_audit_20260811/`。
- 优化内容：无源码修改。复用 exact Stage 134 ifort 2021.3 IPO report，审计冻结 S32 `t3dmix4_tile` 两轮 harmonic 的 rolling-row 依赖、边界生命周期、逻辑字节、AVX2 向量化与最终二进制符号。
- 依赖结果：第二轮第 j 行需要 `LapT(j-1:j+1)`；第一/第二轮 eta-face 与边界行均有跨行生命周期。现实流水至少保留三行 LapT 和相邻 face/系数，不能把 FX/FE/LapT 全部寄存器化。
- 流量结果：原始 416 B/点；可实现的 rolling rows + O(I) 系数缓冲最有利为 280 B/点，局部削减 `32.6923%`。乘 t3dmix 5.00% hotspot 为整机 CPU 上界 `1.6346%`，低于 2%；只有超过 AVX2 寄存器预算、容易 spill 的幻想模型达到 2.4038%。
- 机器证据：六个主 i-loop 均有 unit-stride AVX2 VL4 版本；冻结符号 `0x69fa20-0x6a6550` 共 5293 指令，含 packed-double 指令且无 gather/scatter。当前不是“未向量化”的低垂果实。
- 结果：三遍分析齐全，`STATIC_VALID / ROLLING_FUSION_GATE_FAIL / REJECT_BEFORE_BUILD / NO_JOB / NO_VALIDATION_NEEDED`。正式 S32 `118755216 / 1753.876 s / 26/26 PASS` 不变。
- 输出生命周期：本阶段无模型输出、无删除；Stage 145/146 输出继续保留。下一阶段为 Stage 150B step2d 127-loop DAG 静态 mining。
## Stage 150B (2026-08-11 EDT): step2d loop-DAG mining——STEP2D_DAG_NO_GO / NO_JOB

- 日期：2026-08-11 EDT；文件路径：`analysis/stage150b_step2d_loop_dag_20260811/`。
- 优化内容：无源码修改。对冻结 S32 active `step2d.f90` 的 127 个 DO 头生成 loop inventory、CALL 屏障表和 exact IPO section，并人工审计自由面、四阶平流、Coriolis/曲线项、黏性与动量收尾五类 fusion island。
- 结构结果：25 个 CALL/语义边界把 routine 切成多个版本区；DUon/DVom halo、zeta source/BC/halo、四阶边界修补、湿干/体积守恒和最终 ubar/vbar halo 均不可跨越。
- 编译结果：IPO section 5977 行，155 条 vectorized、120 条 not-vectorized、54 条 stride multiversion、13 条 scalar replacement；not-vectorized 包含 outer/cost-model 记录，不是强制 SIMD 的收益证明。
- 门禁结果：所有 island 都只覆盖局部且需要 row buffer、分支、重算或改变 rhs 累加顺序；没有单项或合法组合证明 step2d local >=25%。Stage 108 同类三循环融合 wall `-1.7416%` 继续作为本平台负证据。
- 判定：`STATIC_VALID / STEP2D_DAG_NO_GO / REJECT_BEFORE_BUILD / NO_JOB / NO_VALIDATION_NEEDED`；S32 最佳不变。
- 输出生命周期：无模型输出、无删除；Stage 145/146 结果继续保留。下一阶段为 Stage 150C GLS/biology 最终只读 mining。
## Stage 150C (2026-08-11 EDT): GLS/biology final screen——GLOBAL_FUSION_MINING_CLOSED / NO_JOB

- 日期：2026-08-11 EDT；文件路径：`analysis/stage150c_gls_biology_final_screen_20260811/`。
- 优化内容：无源码修改。对冻结 S32 active GLS/biology 与 exact IPO report 做最终 loop/math/fusion mining，并与 Stage 108/110/135/137、EXP CSE 和官方验证历史逐项去重。
- GLS：899 行、62 DO、57 个 `**` 源码点；IPO 56 vectorized/45 not。pow 为 7.046% CPU 热点但非 4D-halo late-rank critical path；fast=2 虽全长快 4.54%但官方 u 超限，温和 flags 无速度；Thomas 双递推融合需第二 CF 或改变顺序。
- biology：1952 行、40 DO、29 EXP+39 `**`；IPO 40/25。S32 已含 biology fast=2；biology-only 完整 `2033.079 s / 26/26` 比父本慢 0.657%；换序整机上限 0.4416%，EXP CSE 约 0.12%。
- 判定：`STATIC_VALID / GLS_NO_NEW_CANDIDATE / BIOLOGY_NO_NEW_CANDIDATE / GLOBAL_FUSION_MINING_CLOSED / NO_BUILD / NO_JOB / NO_VALIDATION_NEEDED`。
- 最佳与生命周期：S32 `118755216 / 1753.876 s / 26/26 PASS` 不变；本阶段无模型输出、无删除；Stage 145/146 输出继续保留。后续转交付、PPT 与现场复现准备。
## Stage 151 (2026-08-11 EDT): 三个新 P0 方向零机时收口 — ALL STATIC GATES FAIL / NO BUILD / NO JOB

- 文件：`analysis/stage151a_tracer_blocking_audit_20260811/`、`stage151b_nonuniform_partition_audit_20260811/`、`stage151c_permanent_land_audit_20260811/`；入口 `CURRENT_STATUS_AND_PLAN_20260811_STAGE151.md`。
- 151A tracer blocking：审阅 exact S32 `pre_step3d/step3d_t`。B=2 可共享的只是 hydrodynamic loads，不能共享 tracer/scratch recurrence；保守 whole-CPU 约 0.84–1.69%，且双 scratch/register/SIMD 风险无机器码证明，`REJECT_BEFORE_BUILD`。
- 151B 非均匀 tile：只读真实 mask/contact + 既有 P3，非负拟合与离线 cut solver。最强 step2d 模型 G2 R²=0.674，预测 max 仅降 1.164% step2d-local（约 0.15% P3 total）；全物理模型仅 0.206–0.259%，`REJECT_BEFORE_CODE`。
- 151C permanent land：SCS land=34.4737%，Dongsha60=0%。结合 grid-specific P3 GLS/biology 时间，假设粗网格陆地计算可零成本全删的绝对乐观 whole-CPU ceiling 仅 2.12%；stencil、已有 rmask 分支、span 与 SIMD 开销后保守值 <2%，`REJECT_BEFORE_BUILD`。
- 三方向均有 `01_read_summary.md / 02_profiling.md / 03_validity_check.md`，三次复核有效。没有修改 ROMS、没有构建/作业/模型输出/删除/官方验证。S32 `118755216 / 1753.876 s / 26/26 PASS` 不变。
- 子模型例外：按 AGENTS.md 检索 `list_model_providers/run_worker_agent/delegate_many`，当前均未注册为可调用工具；本轮由 Codex 直接执行并审查，没有向第三方发送源码、路径或 profiling 数据。
## Stage 152 (2026-08-11 EDT): S47 P1 late-rank critical-path probe — DESIGN/LINEAGE AUDIT, NO BUILD, NO JOB

- Path: `analysis/stage152_p1_s47_critical_path_probe_20260811/`.
- Content: migrate the final same-rank duration probe from the obsolete S32 reference to the current S47 champion lineage; audit minimal source sites before any build or submission.
- Current parent evidence: job `118946283`, full `1661.816 s`, `NTIMES=2592 12960`, official `26/26 PASS`, runtime MD5 `1fc3be38a746ba1f5f5885eaf98e3bee`.
- Gate: no cross-rank `MPI_Wtime()` timestamp comparison, no added synchronization, repeated clean-leg `paired_excess` ceiling `>2%` required; otherwise FINAL FREEZE.
- Result at stage creation: design/lineage audit only; no binary, job, model output, validation result, or deletion.
- Stage advance: PMPI sidecar probe built in `/public/home/fujiake/fjk/stage152_p1_s47_20260811` (`libp1probe.so` SHA-256 `fa4baa8634c6a7780d342974188537219568b56601ebc3b7144037930e521890`). A 2-rank Fortran smoke test passed Irecv/Send/Wait and in-place Allreduce with zero dropped events.
- Census job submitted: `119001592`, 4 nodes / 64 MPI ranks / 2 OpenMP threads, reduced diagnostic `NTIMES=12 60`, 20-minute hard limit. Purpose is instrumentation feasibility and overhead/address census only, not a performance result.
- Census `119001592` startup gate failed before model integration: relative `ROMS/External/varinfo.dat` was absent in the private run directory. Slurm reported `COMPLETED/0:0`, but ROMS never printed `DONE`, produced zero probe files and no NetCDF result. This is classified `INVALID_STARTUP`, not performance evidence; its empty retained directory is not deleted.
- Census `119001832` passed probe initialize/finalize and wrote 64 rank files with `events=0,dropped=0`, but stopped before integration because `ROMS/External/bio_UMAINE15.in` was absent. ROMS returned shell RC 0 despite `exit_flag=4`; therefore the harness is amended to require the `ROMS/TOMS: DONE` marker. Classified `INVALID_STARTUP`, not performance evidence; retained without deletion.
- Valid census `119002058`: byte-identical S47 champion, 4 nodes / 64 MPI / 2 OMP, `NTIMES=12 60`, `ROMS/TOMS: DONE`, real `19.735 s`. All 64 ranks hit the 100000-event cap and dropped about 129360–242847 events; probe output was about 400 MB while model output was 4 KB. Decision: `EVENT_LOG_IMPLEMENTATION_REJECTED`; no five-leg run. P1 itself remains untested pending fixed-size cohort aggregation.
- Aggregate overhead gate `119002546` failed before launching ROMS because Bash 4 with `set -u` rejected expansion of an empty `extra[@]` array in the A-prime branch. No model leg or performance result; classified `INVALID_HARNESS`. Logs retained and the two mpirun branches are made explicit.
- Clean repeatability gate `119004260` failed before launching ROMS because Bash evaluated `${leg}` inside the same `local` statement before `leg=$1` became visible under `set -u`. No model leg or performance result; classified `INVALID_HARNESS`. Logs retained; local assignments split into separate statements.
- Final clean gate `119004483`: same allocation, byte-identical S47, `NTIMES=144 720`, four legs `101.041 / 99.029 / 98.585 / 97.131 s`, all DONE. Both clean legs have 64/64 rank files, zero overflow, and matching event counts. Repeated maximum is `distribute_mod::mp_assemblef_1d`, count 16796, ranks 34/35: `0.454%` and `0.441%` whole-wall paired-excess ceilings. Conservative repeated ceiling `0.441% < 2%`. Decision: `P1 CLOSED / NO LAST CANDIDATE / FINAL FREEZE`. Outputs retained; no deletion.
- Handoff sync completed 2026-08-12 EDT: workspace skill package, installed skill, and `BN决赛` mirror have matching SHA-256 for `SKILL.md`, `progress.md`, `plan.md`, `evidence-index.md`, and `rules.md`. Final entry is `CURRENT_STATUS_AND_PLAN_20260812_FINAL_FREEZE.md`. No result deletion.
- Stage 153 Round 1 prepared 2026-08-12 EDT: S47 runtime-only medium-message Allreduce ring candidate. Exact path `analysis/stage153_autoloop_round1_medium_ring_20260812/`; delta is tuned algorithm 6 -> 4 for messages >=64 KiB, with source/binary/input/layout unchanged. Planned diagnostic is same-allocation A-B-B-A at `144 720`; no job or result yet. Stage 152 output retained because it is outside the skill's automatic-deletion root.
- Stage 153 Round 1 submitted: job `119037215`, 4 nodes / 64 MPI x 2 OMP, same-allocation `A-B-B-A`, diagnostic `NTIMES=144 720`. Parent rules SHA-256 `0ef5b45a357d06e27f3e5e6865010fdacf24ba0fc9ebd95aae8a5dd6dc4ce473`; candidate rules SHA-256 `8c5ac0b20f8d07d488e3c97b835644222849cbbc526a1bfe3d6bcfdb54be5d00`; script SHA-256 `1727f25c4a902c48109843c93e33c4e2eff944915fb8dbc0c1d552842a716ff9`. Status at submission: pending; no performance or correctness claim.
- Stage 153 Round 1 completed 2026-08-12 EDT: path `analysis/stage153_autoloop_round1_medium_ring_20260812/`; job `119037215` completed on `i17r1n[00-03]`. `time real` A1/B1/B2/A2 = `110.948 / 115.133 / 120.765 / 111.308 s`; all four legs have three ROMS/TOMS DONE records. A mean `111.128 s`, B mean `117.949 s`, ring candidate regressed `6.138%` and B legs were not tightly repeatable. Three-pass analysis is complete. Decision `INEFFECTIVE / MECHANISM_REJECTED / NO_FULL / NO_VALI`; outputs retained, no deletion. S47 best remains `118946283 / 1661.816 s / 26/26 PASS`.
- Stage 154 Round 2 prepared 2026-08-12 EDT: path `analysis/stage154_autoloop_round2_tcmalloc_20260812/`. Distinct runtime-only candidate preloads `/usr/lib64/libtcmalloc_minimal.so.4.4.5` into ROMS ranks; library SHA-256 `35cf7807f74daf2c2860a22c9d65a06994d60c9dec86df8e7cd275f931b97cf4`, `/bin/true` preload smoke passed. Planned same-allocation A-B-B-A uses exact S47, parent collective rules and `144 720`; no source/build/input/layout change. Evidence state `PREPARED / NO JOB YET`; prior outputs retained.
- Stage 154 Round 2 submitted: job `119041830`; remote root `/public/home/fujiake/fjk/stage154_autoloop_round2_20260812`; script SHA-256 `884f8f2e663c77ab8f024defa9fc20b10359698e28253d4ae4fe2757a5cd75d5`; input-template SHA-256 `05ceb746d36522ccdb960ab082b70401d294fd0cc8a393c25bcb9e25365e7b21`. Status pending; no performance/correctness claim.
- Stage 154 harness correction: job `119041830` stopped at A1 in `1.939 s` because the new private run root lacked `ROMS/External/varinfo.dat`; no DONE and no model integration. Classified `INVALID_STARTUP`, not an ineffective optimization or performance result. Failure logs retained. Script now creates `ROMS/External` symlink to the exact S47 private source tree before relaunch.
- Stage 154 Round 2 resubmitted: corrected script SHA-256 `9631280269d7903909b7f360a9abfc478e616e4a18cd8c3df1712252a668b83f`; job `119042912`. Pending; no result claim.
- Stage 154 Round 2 completed 2026-08-12 EDT: effective job `119042912`, nodes `i17r2n[16-19]`, A1/B1/B2/A2 real `114.118 / 139.495 / 151.101 / 101.271 s`, all rc=0/DONE. A mean `107.6945 s`, tcmalloc B mean `145.298 s`, regression `34.917%`; B sys mean `217.598 s` versus A `69.601 s`. Three-pass analysis complete at `analysis/stage154_autoloop_round2_tcmalloc_20260812/`. Decision `INEFFECTIVE / TCMALLOC_REJECTED / NO_FULL / NO_VALI`; all outputs retained. Round 1 + Round 2 are two consecutive ineffective mechanisms, so jobs pause and mandatory web/paper/open-source PLAN research begins before Round 3.
- Stage 155 mandatory research PLAN completed 2026-08-12 EDT: `analysis/stage155_mandatory_research_plan_20260812/`. Chinese-first search covered LICOM hybrid MPI/OpenMP, swPOM, OpenArray/GOMO fusion/communication hiding, and ROMS_AGRIF overlapping storage; international/official evidence covered IISc ROMS Roofline, Intel ifort malloc options, glibc tunables and Open MPI segmented ring. Existing S47 evidence closes hybrid scaling, fusion, UCX overlap, I/O and step2d fusion. Two low-expectation distinct experiments remain: Round 3 glibc `MALLOC_MMAP_MAX_=0` + `MALLOC_TRIM_THRESHOLD_=-1` A-B-B-A; Round 4 exact-134368-byte alg5 segmented-ring microgate with ~70% improvement required before ROMS. Three-pass research validity complete; no research-stage job/output/deletion.
- Stage 156 Round 3 prepared 2026-08-12 EDT: `analysis/stage156_autoloop_round3_glibc_policy_20260812/`. Runtime-only B sets `MALLOC_MMAP_MAX_=0` and `MALLOC_TRIM_THRESHOLD_=-1` for exact S47 ranks; allocator remains glibc 2.17. Planned same-allocation A-B-B-A at `144 720`; no source/build/MPI/input/layout change. Evidence `PREPARED / NO JOB YET`; all earlier outputs retained.
- Stage 156 Round 3 submitted: job `119046362`; remote root `/public/home/fujiake/fjk/stage156_autoloop_round3_20260812`; script SHA-256 `b103b2515a7e624d3fe5b619fb2339b2ea96830bc6f1f801cd8d0848c7883aee`; input SHA-256 `05ceb746d36522ccdb960ab082b70401d294fd0cc8a393c25bcb9e25365e7b21`. Pending; no result claim.
- Stage 156 monitoring checkpoint: A1 completed `101.451 s`, rc=0/DONE; B1 was running. Codex remote-command approval quota then exhausted, so no further SSH read or submission is permitted in this turn. Round 3 remains `PENDING_EXTERNAL_READ`; Round 4 not started; no remote operation/deletion after the block.
## Stage 157 (2026-08-12): 四轮闭环 Round 4——134,368 B Allreduce alg6→alg5 微基准门——已提交

- 机制（独立于 Round 1 的 collective 轴重新开点）：只对精确 134,368 B Allreduce 从算法 6 切到算法 5（候选规则 `coll_rules_134368_alg5.conf` SHA `7cd8faf0...` vs 父本 `0ef5b45a...`）；差异仅一条：规则数 3→4，在 65536 与 4194304 之间插入 `134368 5 0 0`，即 [134368, 4194304) 切 alg5，其余区间与 bcast 段完全不变。
- **微基准门设计**：不跑 ROMS，先用自写微基准 `micro_allred.c`（134,368 B=16796 doubles，MPI_Allreduce(MPI_IN_PLACE, ..., MPI_DOUBLE, MPI_SUM)，WARMUP 20 + ITER 200，rank0 输出 median/mean/min/max us）测 collective 耗时；A=父本规则 ×3、B=候选规则 ×3（各取中位数）。**门槛：B 相对 A 的 collective 中位耗时降幅 ≥70% 才授权 ROMS ABBA；否则 Round 4 直接关闭，四轮闭环结束 → 冻结 S47、停止性能实验。**
- 作业 `119058372`（4n×64 ranks，--exclusive，HPCX 2.7.4 intel2017，HCOLL off，coll_tuned dynamic rules，-t 00:20:00）；slurm 内编译（mpiicc -O2）+ 三对 A/B 微基准 + 哈希记录。
- 门禁通过：队列空、/public 配额 73G 可用、输出路径唯一 `stage157_autoloop_round4_20260812/`。
- 预期：alg5（rabenseifner 族）对中等消息通常不比 alg6 快 70% → 高概率关闭；仍实测，不预判。
- 输出生命周期：全部保留；无删除。

## Stage 157 终局 (2026-08-12): Round 4 微基准门完成——alg5 比 alg6 慢 37.1%，四轮闭环全部无效 → 冻结 S47

- **结果**（119058476，COMPLETED 12 s）：A 族（父本 alg6）median 229.6/227.4/229.8 µs → **229.6 µs**；B 族（候选 alg5）median 314.2/315.8/314.9 µs → **314.9 µs**。**B 比 A 慢 +37.1%**，族间差远超族内离散（A<1.1%、B<0.6%）→ 方向明确回归，非噪声。
- **门禁未过**：要求 collective 降幅 ≥70%（B≤0.3×A），实测为反向 +37.1% → **不授权 ROMS，Round 4 直接关闭**。alg6 在 134,368 B/64 ranks 上即 S47 父本最优选择。
- **harness 修正记录**（不计无效轮）：119058372（mpiicc 不存在，hpcx 仅 mpicc 族，exit 127）、119058433（C99 循环声明不被老后端接受，exit 2）；修正 = `mpicc -std=c99` + C89 声明 → 119058476 一次通过。
- **四轮闭环终局**：
  | Round | 机制 | 结果 | 判定 |
  |---|---|---|---|
  | 1 | Allreduce 64K–4M→ring | A 111.128 / B 117.949 s | −6.14% STOP |
  | 2 | tcmalloc 预加载 | A 107.695 / B 145.298 s | −34.9% STOP |
  | 3 | glibc mmap/trim | A 100.309 / B 100.778 s | +0.47% STOP |
  | 4 | 134,368 B alg6→alg5 | A 229.6 / B 314.9 µs | +37.1% STOP |
- **授权条款触发**：四轮全部无效 → **冻结 S47、停止性能实验、进入交付收尾**（PPT/清单核对；S32 冠军 92ffbd01 1753.876 s 26/26 为正式参考，无需因本四轮变更）。
- 三遍分析：`analysis/stage157_autoloop_round4_20260812/{01_read_summary,02_profiling,03_validity_check}.md`。
- 输出生命周期：运行根 `fjk/stage157_autoloop_round4_20260812/` 全保留（含无效启动证据）；无删除。

## 非热点盘点 (2026-08-12): 用户指示"从非热点看看"——无 ≥2% 可达机制，保持冻结

- 零机时只读盘点（无构建/无提交/无输出）；三遍分析 `analysis/nonhotspot_review_20260812/`。
- **全池清单**：t3dmix4_s 4.93%（队友 OMP 冲突+scratch 风险已关）、point gathering 2.04%（Stage 95 已关）、set_avg 2.31% wall（Stage 129 前科 CONFOUNDED）、rhs3d/step3d_uv/hmixing/rho_eos（Stage 90 四对象已关）、Writing of output 1.47%（输出配置冻结）、set_data 2.11%（OMP MASTER 单线程 I/O）、exp_e7 1.32%（数学库重写族已关）、memset 1.1%（Stage 102 上限 <0.5%）、nesting put_refine3d 2.31%（fine2coarse 家族已关）。
- **唯一接近门禁的 set_avg（2.31% wall）关闭理由**：(1) RMW 带宽受限（零复用，tile 45x40x34≈61KB>L1），线程化加速极限 ~1.0-1.2；(2) Stage 90 教训：非带宽型 1.857x 都不达墙钟；(3) Stage 129 前科方向为负且 CONFOUNDED，真实效果从未被测过，但 OMP 收益上限 1.65x 下 <1.2% <2% 门；(4) NTSAVG=1 禁止跳步。
- **组合论证已否**：set_avg+set_data 4.42% wall @1.65x 乐观上界 1.74% <2%；Stage 88 做过同款组合、Stage 90 实测后整个 OMP 轴关闭。
- **结论**：非热点无 ≥2% 可达机制；四轮终局判定（冻结 S47、停止性能实验、交付收尾）不变。

## 规则更新 (2026-08-12): 新增硬性"继续推进性能实验"规则（用户授权）

- **新规则**（写入 Skill `rules.md` "Performance-experiment continuation policy"，用户明确指示）：
  1. 除非用户明确说"冻结准备交付"（或同等明确的冻结指令），否则继续推进性能实验；
  2. 指示不明确时，进入 profile+plan+search 只读模式，提出新机制候选，用户授权后执行；禁止因历史关闭清单/阶段判决/项目状态模糊地路径依赖判死；
  3. 关闭轴清单是"试过什么"的证据，不是"探索已结束"的许可证；与已测机制不同的新机制仍可提出；
  4. 四轮闭环（Stage 152-157）全无效本身不终止性能工作。
- 已同步：Skill progress/plan/evidence-index（workspace 包）三处 + 本日志。安装版 Skill 的最后一次 checkpoint 待下次会话同步。
- 后续动作：按新规则，下一机制候选 = 待 profile+plan+search 提出并经用户授权。

## Stage 158 (2026-08-12): profile+plan+search 第一轮——BARRIER 队列关闭 + 三个真未测候选

- **P1 census 完整聚合（本次新完成，流式脚本避免远端 OOM）**：640 万行事件；op 映射 1=Irecv 2=Isend 3=Send 4=Wait 5=Waitall 6=Allreduce 7=Barrier。
- **BARRIER（最大 gap 队列 28.7s 聚合）关闭**：128 事件=每 rank 2 次、全部在 3 秒启动窗口、gap 均匀 0.4464s（极差 <0.2ms）→ paired excess=0，启动同步不可移除（全长 <0.05%）。
- 134,368B Allreduce（gap 10.4s/mpi 1.5s/940 行）与 Stage 152 判决（ceiling 0.441%）交叉一致；点对点队列 paired=0。**无任何队列 >2% 可移除上限——同步受限结构三方印证（Stage 93/152 + 队友 README"最慢 rank 决定步调"）。**
- **队友只读同步**：s58_perm tile 置换拒绝（1day +1.3% + vali u=8.5e-5 FAIL）；s57 量化线永久关闭；节点择优关闭（好节点组统计相同）；队友锁定 S47=27m41.8s 且"25min 目标最后结构手段已实测关闭"。
- **三个真未测候选**（三遍分析 `analysis/stage158_new_mechanism_candidates_20260812/`）：
  - **A. THP/大页**：登录节点 THP=[never]；S47 -no-heap-arrays → 大数组全在 .bss anonymous 映射，可被 2MB 页覆盖；TLB 面真实（工作集数十 MB vs L2 TLB 6MB）；理论 0-2.5%（可能过门，必须实测）；零构建零轨迹变化；障碍=sysfs 写需权限（先 1 分钟只读审计）。
  - **B. set_avg OMP 正确谱系复测**：Stage 129 CONFOUNDED 前科（B 树缺 AVX2/no-FMA/IPO）的未测变体，新规则明文合法；位级一致已论证（j 分区累加无竞争）；天花板 0.4-0.9% <2% 门（价值=干净判决）。
  - **C. UCX_RNDV_THRESH eager 化**：零构建传输轴；census 硬上限 1.5% <2% 门；低成本微基准关闭。
- 状态：三遍分析 VALID；候选待用户授权；无构建无提交无输出。

## Stage 159 (2026-08-12): 候选 A 审计关闭 + 候选 B set_avg OMP 正确谱系复测执行中

- **候选 A（THP）审计关闭**：作业 119063529（4 节点 i17r2n[08-11]，2s）——计算节点 THP enabled=**[always]**（与登录节点 never 不同）、defrag=[always]、sysfs 不可写（NO）、AnonHugePages 已活跃（530-570MB/节点）、内核 3.10.0-957。**结论：父本运行状态已是最优设置且无权限对照 → 轴关闭。**
- **候选 B（set_avg OMP）执行**：
  - 构建 119063736（COMPLETED 7:30）：S47 FULL_SRC 解压 → A′ 零 delta（`oceanM.aprime` md5 `eff0e382...`）+ B v1（`oceanM.setavgomp` md5 `38eb793f...`，-qopenmp 编译行实证）。
  - **ABBA v1（119064519，5 legs A/A′/B/B/A′）**：A1 100.321 / Ap1 101.348 / B1 98.288 / B2 99.954 / Ap2 102.702 s——B 比 A′ 快 2.85%。**但代码审定位 patch 打错段**：命中"Initialize time-averaged arrays"（第 1 步只执行一次的赋值初始化），非每步 accumulate 段 → 2.85% 为噪声，v1 无效。
  - **v2 修正**：patch 锚点改 `avgt=avgt+`（仅 accumulate 段存在）→ 构建 119065459（COMPLETED）→ `oceanM.setavgomp_v2` md5 `622bdf69...`，F90 863-879 段实证命中每步 tracer 平均累加循环。
  - **ABBA v2（119066033）已提交**（5 legs，A=官方 1fc3be38、A′=eff0e382、B=622bdf69）；首提 119065997 因脚本仍指 v1 二进制被取消。
- 输出生命周期：v1/v2 构建树、ABBA v1 全保留（证据）；无删除。
- 注意：队友作业（sprint_O84×2 + nan_s62_build + fjk_S161_FMA）占队列，119066033 排队中。

## Stage 159 续 (2026-08-13 凌晨): ABBA v2 完成——B 快 4.79% 双 B 快 + 轨迹位级一致；重复 ABBA 进行中

- **ABBA v2（119066033，i17r1n[00-03]）**：A1 103.591 / Ap1 105.126 / B1 99.522 / B2 97.943 / Ap2 102.268 s。
  - mean_A′ = 103.697，mean_B = 98.733 → **−4.79%，both_B_faster=True**，超 3% 样本门。
  - **数值门通过**：Ap1 vs B1 的 model.log 610 步打印逐位相同（含末尾步 1.768225E-03 等），diff 仅日期/pid/路径行 → set_avg OMP 位级一致（j/it 分区累加无竞争论证实证）。
- **超出池上限的解释**：set_avg timer-5 池 2.31% wall，avgt（NT=17×34 层）为其最大单块，OMP 1.65-1.9x 理论省 0.7-1.2%；实测 −4.79% 超出部分 = i17r1n 节点 + 队友 sprint_O84 并行争抢下的样本波动（5 legs 跨度 97.9-105.1 = 7.2%）。**需重复 ABBA 确认稳定后才可信**（Stage 139b 教训：单次不构成证据）。
- **重复 ABBA（119068033）已提交**（同 5-leg 脚本）。若第二次同样 ≥3% 双 B 快 → 全量 2592/12960 + 官方 26/26；否则判噪声关闭。
- 二进制：A=1fc3be38（官方）、A′=eff0e382（零 delta 重建）、B=622bdf69（v2 accumulate 段 OMP）。

## Stage 159 终局 (2026-08-13 凌晨): set_avg OMP 复测关闭——两次 ABBA 方向相反（−4.79% vs +5.72%），噪声主导

- **重复 ABBA（119068033，j04r2n[00-03]）**：A1 99.219 / Ap1 97.351 / B1 106.251 / B2 100.659 / Ap2 98.371 → mean_A′ 97.861 / mean_B 103.455 → **+5.72%（B 更慢）**——与第一次（119066033）的 −4.79% 方向完全相反。
- **判定关闭**：两次 ABBA 方向相反（±5-6% 幅度远超池上限 1.2%）；样本档波动（leg 跨度 7.2%/9.1%，队友 sprint_O84 同期争抢）主导。机制实现正确（F90 863-879 实证命中 accumulate 段）+ 数值安全（610 步打印位级一致）但无稳定墙钟收益。
- **干净判决意义**：Stage 129 CONFOUNDED 前科由正确谱系 + 正确代码段复测正式排除——set_avg 轴（带宽受限 RMW）由此关闭，不再需要"前科复测"类别救济。
- 三遍分析：`analysis/stage159_setavg_omp_20260812/{01_read_summary,02_profiling,03_validity_check}.md`。
- 输出：构建树（A′/B v1/v2）+ 两次 ABBA 运行根全保留；无删除。
- 下一步：候选 C（UCX_RNDV_THRESH eager 化微基准，硬上限 1.5% 预期关闭，低成本确认该轴）。

## Stage 159 候选 C (2026-08-13 凌晨): UCX_RNDV_THRESH 微基准——零差异关闭

- 作业 119069040（4n×64，13 s）：micro_allred2 双大小（134,368 B + 626,416 B）× A（默认）/B（RNDV=inf）×3。
- **结果**：134,368 B median A 313.1 vs B 314.0 µs（+0.3%）；626,416 B A 845.5 vs B 844.4 µs（−0.1%）——**两大小均零差异** → 该两条消息默认已走 eager，协议切换无收益。
- 判定：70% 门远未达（0%）→ 不授权 ROMS，**候选 C 关闭**。分析 `analysis/stage159_setavg_omp_20260812/04_ucx_rndv_microgate.md`。
- **Stage 158 三候选全部处理完**：A THP（审计关闭：已 always+无权限）、B set_avg OMP（复测关闭：两次 ABBA 方向相反）、C UCX RNDV（微基准关闭：零差异）。全部为新规则下"真未测轴"的干净实测，无一路径依赖判死。
- 输出：`fjk/stage159_ucx_rndv_20260812/` 全保留；无删除。
- 下一步：按新规则继续 profile+plan+search 提下一轮新机制候选。

## Stage 160 (2026-08-13 凌晨): 第二轮 search——census 补全无遗漏 + 队友占领 s62/s63，我方无新候选

- **census 补全**：IRECV 最大 gap 队列（671.5s/212.9 万次，p50=0 长尾等待）——到达失衡结果，P1+s58 双关；ALLREDUCE/SEND/WAIT/WAITALL mpi 合计 31.6s ≈0.5% wall 无攻击面。**全 op 无遗漏可移除队列。**
- **队友同步（只读）**：s49 step2d OMP 实测失败（+19%，交叉印证我方 Stage 113）；s51_O84q 3day 1759.4s（慢 5.9% → S47 中 1m38s 来自 O33 有损嵌套）；s62_nb2d 测试中、s63_allland 构建中（队友占领区，不重复）。
- **我方候选空间排查全关**：3D/4D nb 新基座变体（S22/S23+预期同负）、冷启动优化（<0.3% 全长）、bcast 段（无 per-step 消费者）、OMP_SCHEDULE 变体（STATIC,1 已灾难）、UCX_TLS（<1.5%）、set_data OMP（set_avg 同族已证噪声）。
- **状态**：无新候选，按新规则保持 profile+plan+search 只读模式，监控队友 s62/s63；不判死不冻结。分析：`analysis/stage158_new_mechanism_candidates_20260812/05_second_round_search.md`。

## Stage 160/161 夜间 AAB 自主迭代 (2026-08-13 凌晨，用户授权)

- **授权**：夜间低峰期自我迭代；AAB 模式（两次尝试未果→大代码审查+论文/开源搜索）；成效则新基础上继续；权限仅 `~/fjk/` 可写。
- **profile 深挖**：S47 perf flat（`119071171`，rank_wrapper 只 rank0）+ 8 函数批量 annotate（`119071547`）。S47 分布：pre_step3d 14.58 / uct_dc_mlx5 9.97 / step3d_t 9.69 / pow 6.73+0.92 / biology 5.19 / gls 5.12 / t3dmix 5.11 / step2d 4.06 / mp_ex4d 3.02%。**指令级结论**：pre_step3d/step3d_t/step2d 编译良好无瓶颈；gls_corstep 为标量（-fp-model source）；biology 分支密集；mp_exchange4d 热点=halo gather/scatter（vmovsd/vmovhpd，结构固有）。
- **A1 mpi_yield_when_idle=1**：ABBA×2（119071517 −2.63% 双B快 / 119072082 −1.00% bothB=False）→ **无效**（user CPU 33m→30m 但墙钟被同步吸收，Stage 90 机理第三复现）。
- **A2 gls_corstep source→precise（向量化）**：构建 119072749（4396 向量指令实证生效）；ABBA 119073147 **−0.30% 无效**。
- **B 大审查+搜索**：pre_step3d/mp_exchange 源码审查无空白（两阶段阻塞交换已三方验证最优）；Springer 论文（渤黄东海 ROMS，Vector/IB/Parallel I/O 提升 270%）——**Parallel I/O 为唯一未测方向，但平台 netcdf 4.4.1 串行（NC-4 Parallel: no）+ 池 1.47% CPU <2% + 短诊断不可测 → 关闭**；halo shared-memory 已由 uct_mm 覆盖。
- **A3 mpi_leave_pinned=1**：119073864 **−0.32% 无效**。
- **A4 KMP_HOT_TEAMS_MAX_PARALLEL=1**（进行中，119074429）。
- 三遍分析：`analysis/stage160_aab_night_20260813/01_read_summary.md`。
- 输出全保留：perf 数据/annotate、A1-A3 运行根、stage161 构建树；无删除。

## Stage 160/161 夜间终局 (2026-08-13 凌晨): AAB 五连测全无效——运行时微调轴彻底闭合

- **A4 KMP_HOT_TEAMS_MAX_PARALLEL=1**（119074429）：A 97.640 / B 97.518 → −0.13% 无效。
- **A5 UCX_TLS=rc_x,shm,self**（119075002，IB 传输 DC→RC，uct_dc_mlx5 轮询为 top2 热点 9.97%）：A 98.959 / B 98.584 → −0.38% 无效。
- **夜间尝试矩阵终局**（三遍分析 `analysis/stage160_aab_night_20260813/` 三件套）：A1 yield −1~2.6%（唯一方向性信号：user CPU 33m→30m 但墙钟吸收）/ A2 GLS precise 向量化（4396 向量指令实证生效）−0.3% / A3 pinned −0.32% / A4 −0.13% / A5 −0.38% —— **全无效**。
- **机理统一归因**：任何"均匀加速计算/降轮询 CPU/传输协议替换"都不改变墙钟——同步受限结构铁律第 N 次复现（Stage 90/113 + P1 0.441% + s58 全一致）。
- B 审查+搜索产出：Parallel I/O 关闭（平台 netcdf 串行 + 池 1.47% + 短诊断不可测）；其余无 ≥2% 候选。
- **运行时微调轴四大类（MCA 参数/环境变量/编译旗标/传输协议）全部实测闭合**。
- 剩余路径：等待队友 s62_nb2d/s63_allland 1day 结果（s63 预期 3-8s）；队列已空。
- 输出全保留：六次 ABBA + perf/annotate + 构建树；无删除。

## Stage 162 (2026-08-13 白天): 组合测试（用户指示"收益小的全合并最后一次尝试"）——平静 −1.04% 不晋级，争抢 −45.4% 弹性，轨迹位级一致

- 组合 B = GLS precise（8190973d）+ yield + pinned + KMP_HOT_TEAMS_MAX_PARALLEL=1 + UCX_TLS=rc；A = 官方 1fc3be38 标准配置。
- 三次 ABBA：
  | 作业 | 时段 | delta |
  |---|---|---|
  | 119091612 | 轻争抢（A2 异常 479s 排除） | −7.3%（vs A1 单腿） |
  | 119092452 | 重争抢（队友 nan_new_3day I/O） | **−45.4%**（A 507.2 / B 277.1 s） |
  | 119093415 | 平静 | **−1.04%**（both_B=False） |
- **关键发现**：yield 的争抢弹性首次量化——争抢下 A 的 busy-poll user 33m→142m（轮询满速烧 CPU 且与 I/O 争核），B 的 yield 抑制轮询（user 47m）→ real 差 45%。平静时各子项加和仅 ~1%（同步受限吸收，Stage 90 铁律）。
- **轨迹位级一致**：119093415 A1 vs B1 step 打印 diff=0（含 GLS precise）。
- **判定**：平静 1% <3% 门 → 不晋级；**但 yield 是零风险保险配置**——比赛时多队共享集群争抢概率高，建议正式提交启用 `--mca mpi_yield_when_idle 1`（可选 pinned；rc/HTMP1 贡献 ≈0 可不加；GLS precise 不采纳）。提交前建议一次全量 vali 确认。
- 三遍分析：`analysis/stage162_combo_20260812/`（实际目录名 stage162_combo_20260813）。输出全保留；无删除。
