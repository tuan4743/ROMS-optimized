# Skew Probe Design — Pass 2 (Methodology and Profiling Design)

## Measurement semantics (must be stated before reading any number)

1. `my_wtime` is `cpu_time`, not wall time: `Build/mp_routines.f90` keeps `CALL cpu_time (wtime(1))` because the makefile leaves `USE_OpenMP` empty, so `-D_OPENMP` never reaches `CPPFLAGS` and `timers.o` is compiled without `-qopenmp` (Stage-88 unit correction, applies here).
2. Consequence for the probe: every per-rank value in the dump is process-CPU seconds.
   - For single-threaded Message-Passage regions under UCX busy-poll, 1 CPU-s ≈ 1 wall-s of waiting (the waiting thread spins at full rate; `KMP_BLOCKTIME=0` only makes the *other* OpenMP thread sleep outside parallel regions — the MPI-calling thread busy-polls inside the timer).
   - For 2-threaded regions (the five `[O25]` objects), values sum both threads' CPU; the dump does not separate them. Interpretation must use wait-region pools, not mixed regions, as the primary skew signal.
   - Noise floor: same-binary repeats measured <2% on these timers (Stage 90); the 5–22% signals that Stage 90 relied on are 10–20× the noise, and this probe sits far above it (per-rank spread of interest is the whole skew magnitude).
3. Do not read a per-rank CPU delta as "faster rank": busy-poll keeps waiting ranks at full CPU (Stage-90 correction 3). The probe instead uses wait totals: the rank that waits **least** in a wait pool is the rank that **arrives last** (straggler) — its data is already present when it posts receives.

## What the dump contains (verified against retained Stage-90 log `A2/model.log`)

Per rank, per grid (`ng=1,2`), for every region with nonzero `Csum`:
- Compute regions: reading/processing input, writing averaged output, step2d, forcing, omega, rho_eos, biology, GLS vertical mixing, prsgrd, t3dmix S/geo, stress, 3D momentum corrector, tracer corrector, …
- Message-passage regions (names start `Message Passage:` — matches `analyze_skew.py` filter): `2D halo exchanges`, `3D halo exchanges`, `4D halo exchanges`, `data broadcast`, `data reduction`, `data scattering`, `boundary data gathering`, `point data gathering`.
- Format: `rank ng imodel iregion seconds label` (FORMAT `4(i6,1x),f16.6,2x,a`); only `iNLM` (imodel=1) is nonzero in this run; the parser ignores imodel (documented, harmless).

## Region roles in the discrimination

| Pool | Region(s) | What a per-rank pattern means |
|---|---|---|
| Startup / rank-0 I/O | `Reading of input data`, `Processing of input data`, `data broadcast`, `data scattering` | If rank 0's read value is large and all others' broadcast/scatter values are large (they waited), skew is startup-I/O concentrated (case c). The startup totals from Stage 90 (`data broadcast` 104.854 vs 249.180 CPU-s cold/warm) show this pool is where the A1-vs-A2 gap lived. |
| Steady-state sync | `Message Passage: 2D/3D/4D halo exchanges`, `point data gathering` | Per-rank spread = aggregated arrival skew at those sync points; least-wait ranks = stragglers. 3-D halo is the natural first probe per plan (it absorbed half the `[O34]` freed time). |
| Mixed | `GLS vertical mixing` (region 19) | Compute + embedded halo wait; use only as corroboration, not primary. |

## Discrimination procedure and thresholds (design)

1. For each region, compute per-rank mean/min/max/spread% (`(max-min)/mean`) and CV%.
2. Persistence: Pearson correlation of the per-rank vector between runs. Compute over all three runs and, additionally, over P2–P3 only (P1 is the documented cold-start outlier — Stage-90 correction 4; warm-up effect is startup-only but excluding P1 isolates steady-state persistence).
   - corr ≥ 0.7 on the steady-state pools with a spatial/node pattern → persistent, rank-attributable (case a).
   - corr ≤ 0.3 with large spread% → random jitter (case b).
   - rank-0 dominated read/broadcast/scatter pattern → startup I/O (case c); also visible as a large A1-vs-P2/P3 shift in startup pools.
3. Straggler identification: least-wait ranks in the dominant steady-state pool; map them onto the 8x8 tile grid (rank → tile: `Itile=rank mod 8`, `Jtile=rank div 8`; node = rank div 16 via the audited rankfile order) and per-node means.
4. Skew magnitude in wall terms: spread seconds of the dominant wait pool(s) across both grids ≈ wall seconds per sync pattern; multiply by the per-coarse-step repetition count (`144` coarse steps; fine grid 5× per coarse step) only if per-step extrapolation is wanted — the totals are already whole-run.

## Direction selection (plan.md Stage-90 item 4 mapping)

| Outcome | Direction |
|---|---|
| (a) persistent, rank-attributable, spatial | decomposition/tiling aspect ratio or rank-to-node mapping (Stage-53 mapping route reopens only with this evidence) |
| (b) random jitter | communication/computation overlap or fewer synchronization points |
| (c) rank-0 I/O concentration | input/broadcast/scatter path — the one pool the teammate variant matrix does not cover (`Processing of input data`, `data broadcast`, `data scattering` were 147/141/360 CPU-s in A2 and never attacked) |
| ambiguous attribution | `[P2]` staged follow-up: in-memory arrival timestamps at the GLS 3-D halo entry, end-of-run dump — designed but not started |

## Harness gates (validated against the deployed scripts)

- Build (already passed in final state): single-source-diff (`source_tree.diff` = 1 line), Compilers untouched, `timers.f90` contains the probe (CPP survival), binary contains probe (now rc=0; gate is transient-fragile — see Pass 1), binary differs from parent.
- Run: disk gate ≥10 GiB; binary/input/rules/script SHA gates; Inputfiles symlink target check; rankfile 64 ranks mapped to recorded nodes; per-run gates: `ROMS/TOMS: DONE`, `real` parsed, trajectory SHA `fa498694...e44b0` (probe must be bitwise-neutral — it fires only at finalize after all physics), step-range headers, exactly 64 probe files/run, `nc_count=0` expected (144/720 writes no NetCDF).
- Three runs P1/P2/P3 for the persistence statistic; summary.tsv + SHA256SUMS written at the end.
- `analyze_skew.py` was exercised end-to-end on a synthetic 2-run dataset (parse, spread table, cross-run correlation, wait-pool ranking, 8x8 map, node aggregation all run without error); the real region names (`Message Passage: ...`) match the filter.

## Risks and mitigations

- Probe I/O at finalize (2 file opens per rank per run): microseconds after the last time step; cannot affect the measured `time real` or the trajectory. Negligible.
- File-write failure (quota/locale): `IOSTAT` checked; missing probe files fail the run gate with a clear message.
- Busy-poll vs sleep ambiguity (would a waiting rank sleep instead?): with HCOLL off and the UCX default busy-polling on this platform, waits burn CPU; the Stage-90 evidence (CPU rises exactly in MPI-containing regions) confirms this. If the platform ever changed to sleeping waits, the dump would show flat CPU and the probe would be re-interpreted as "no measurable skew" — still an answer, but flagged.
- Cold start: P1 is systematically different in startup pools; persistence conclusions use P2–P3 as the primary pair.

## What this stage does NOT authorize

- No submission yet. The gate in force: submission is authorized only after Pass 3 declares the design analysis VALID, then one diagnostic build/run (the run harness as written, no edits), with `EXPECTED_SCRIPT_SHA=e8c4f269...9c7ab` and `EXPECTED_PROBE_SHA=3322eeaf...7aa7` injected at submit time, after a fresh `squeue`+`df` recheck, and only while the teammate job `118533083` is left untouched.
- No new optimization candidate, no half-day/full run, no `step2d` OpenMP, no `[O34]` revival — all remain gated on this probe's outcome.
