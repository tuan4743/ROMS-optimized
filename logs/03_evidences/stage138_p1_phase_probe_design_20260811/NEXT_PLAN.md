# Stage 138 P1 probe — submission and execution plan (conditional on design approval)

## Phase A. Design approval (current)

- [x] 01/02/03 design passes written (this directory).
- [ ] User confirms the single diagnostic job (4 legs × 144/720: A′ + probe×3) is authorized.

## Phase B. Build (zero-machine-time-until-job-submit)

1. Extract `backup_S32_src_20260808.tar.gz` (SHA-256 `615ee717...`) into new private tree `/public/home/fujiake/fjk/agent_tmp/p1_probe_20260811/`.
2. Build A′ zero-delta with the S32 recipe (build_pgouse.sh pattern, no prof flags) → record md5; keep binary as `oceanM.a1prime`.
3. Apply probe patch (guarded `#ifdef PHASE_PROBE`) to the same tree; rebuild → `oceanM.probe_p1`; record md5. Verify `probe_phase.o` compiles under identical flags (watch `-ipo`; fallback documented in 02 §7).
4. Sanity: `oceanM.probe_p1 -h` style help/version runs on login node (no model run).

## Phase C. Pre-submission gates (re-check immediately before submit)

- [ ] `squeue -u fujiake`: no teammate R/PD jobs blocking account quota (currently sprint_O84×2 R + zya combo PD hold `QOSMaxCpuPerUserLimit`).
- [ ] `df -h /public/home/fujiake` free space OK (4 legs × ~1-2 GB output + probe files).
- [ ] Output paths unique: `output_p1_<jobid>_<leg>`, `p1probe_<jobid>/`, logs in `agent_tmp/p1_probe_20260811/logs/`.
- [ ] Source-lineage hashes recorded (archive SHA, tree diff vs archive = probe patch only).
- [ ] Clean up private staging dir `fjk/tmp_p1probe_src` (local copies verified; it is not a model output).

## Phase D. Job (single submission, ~30 min budget, `-t 01:30:00`)

```
Leg 0: oceanM.a1prime  144/720  → lineage + trajectory reference (u diagnostic)
Leg 1-3: oceanM.probe_p1  144/720 ×3, telemetry sampler on
```

## Phase E. Analysis (three-pass, mandatory)

1. `01_read_summary.md`: parse per-rank files; per-rank per-phase tables; leg-0 vs leg-1 trajectory/u compare (`PROBE_NEUTRALITY` verdict).
2. `02_profiling.md`: critical rank, top-8 late ranks (vs Stage-93/127 + P0 ranks 35/36/37/43/44/45 + west column), named-phase ceilings `(critical−median)/wall`, Pearson correlations (replicate −0.88 halo4d-wait vs step2d-compute), NUMA/THP/TLB telemetry readout.
3. `03_validity_check.md`: independent re-derivation; persistence across ≥2 legs required.
4. Decision:
   - Named phase ceiling >2% on specific late ranks → P2/P3 design (contact: preallocated multi-field batch 2-D contact exchange — never per-call alloc/tiny P2P per Stage 95; compute: late-rank-specific step2d mechanism).
   - Else → **freeze S32, stop performance experiments**, delivery-only mode.
5. Sync OPTIMIZATION_LOG (new stage), Skill progress/plan/evidence-index.

## Standing constraints (unchanged)

- Any P2/P3 candidate: A/A′/B matched lineage, ≥3% two-B-faster short gate (or inherited-evidence path with ≥2 stable full validations), full 2592/12960 + official 26/26, fine-grid `u` checked first.
- Outputs retained (no deletion; probe artifacts are evidence).
- Do not touch teammate trees/jobs.
