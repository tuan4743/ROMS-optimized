# Stage 131 - S32 selected-rank perf: validity check

## Independent checks

1. **Job identity:** Slurm reports job `118813105`, four nodes `i17r1n[00-03]`, elapsed `00:03:42`, state `COMPLETED`, exit `0:0`.
2. **Lineage gates:** the harness would abort on script, wrapper, binary, input or collective-rule hash mismatch. The frozen S32 binary hash is the previously recorded champion hash `d9a45...e5a2`; the debug input and collective rules match their recorded hashes.
3. **Runtime completion:** local raw logs independently contain one `ROMS/TOMS: DONE` each and shell real times `105.505 s` (stat) and `108.195 s` (record). No `Blowing-up` or model error is present.
4. **Profiler capability:** preflight stat and record both returned zero under `perf_event_paranoid=2`. All eight stat and record artifacts exist; all perf reports returned zero and report zero lost samples.
5. **Counter arithmetic:** the pairwise percentages were recomputed from the raw CSV files. Interior instructions are lower in all four pairs, while interior task-clock is slightly higher in all four stat pairs. The reported IPC values equal instructions/cycles.
6. **Symbol arithmetic:** category sums were re-parsed from the raw reports. The UCX/MPI-progress difference has the opposite sign from model compute and ROMS exchange in all four pairs. Reported symbols cover about 96%, so the category decomposition is approximate and not asserted as a complete time budget.
7. **Prior-route cross-check:** Stage 53 independently closed the 4x4 node-block mapping; teammate S26 closed step2d parallelization; existing S32/O33 records close generic overlap, persistent communication, broad OpenMP and aggressive math flags. The present evidence does not contradict those results.

## Limits

- Only eight ranks were instrumented. Selected-rank profiling perturbs MPI synchronization; neither instrumented wall time is a scoring result.
- `perf stat` and `perf record` are separate passes. Absolute category CPU seconds come from the record pass's own event counts; no cross-pass CPU-time multiplication is used in the final table.
- Software `cpu-clock` sampling attributes active user time but does not prove network latency, bandwidth, cache, DRAM or NUMA behavior.
- The debug input writes no NetCDF output at this scope, so official `vali.py` was not run. Correctness is inherited only from the unchanged, hash-gated S32 binary's earlier full 26/26 result; this diagnostic itself is `SMOKE_VERIFIED`, not `CORRECTNESS_VERIFIED` or `MEASURED` for scoring.
- The small total rank differences and the record-pass sign flip for pair 48/53 prevent a strong critical-path claim. The valid result is the repeated compute-versus-progress trade-off, not a quantified whole-run speedup ceiling.

## Model-delegator review

- Provider/model: `deepseek-v4-flash` through the local model-delegator plugin; only sanitized aggregate profiling data were sent.
- A simple pre-run choice task returned action A (selected-rank perf) with useful reasons. Codex disposition: `REVISION_NEEDED`, because its proposed cycle-to-wall threshold mixed per-rank CPU counters with whole-run wall time.
- Two more complex classification requests returned empty output after consuming reasoning tokens. Codex disposition: `REJECTED`; no conclusion from those calls was used.
- Redacted audit: `experiments/s32_next_20260808/model_delegator_audit_20260809.jsonl`.

## Final verdict

Pass 1 valid: **yes**. Pass 2 valid within its diagnostic scope: **yes**. The earlier direct interpretation of interior PROFILE time as extra retired computation is invalidated. The current decomposition is already close in total active time because interior model work trades against edge-side UCX/MPI progress. No source or runtime candidate is promoted from this run.

Output lifecycle: retain the complete local and remote result. No deletion is performed in this task.
