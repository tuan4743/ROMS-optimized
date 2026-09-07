import { delegateTask, loadConfig } from "file:///C:/Users/Fu%20Jiake/Documents/Codex/2026-08-08/wei/outputs/model-delegator/server/core.mjs";

const config = await loadConfig();
const result = await delegateTask({
  provider: "deepseek-v4-flash",
  objective: [
    "Rank the next low-machine-time optimization actions for an anonymized nested MPI ocean-model workload.",
    "Measured aggregate CPU pools are: predictor 17.076%, tracer corrector 16.655%, GLS 13.646%, 2-D kernel 10.993%, biology 8.759%, communication 25.805%, and all I/O-related pools individually about 1.6-2.0%.",
    "Already closed or non-promising routes are rank/tile sweeps, rank mapping, step2d OpenMP, generic nonblocking/persistent MPI, UCX tuning, compiler-version swaps, relaxed precision/fast-math, I/O, set_avg, and NOFILL.",
    "The leading proposal is a report-only exact-production build for six hotspot objects, looking for false loop dependencies, non-unit stride, temporary arrays, alignment blockers, missed vectorization, and IPO limits; only then consider one proven-safe SIMD directive or loop transformation.",
    "Compare that route against generic cache blocking, more MPI changes, more compiler flags, or freezing the current winner."
  ].join(" "),
  constraints: [
    "Do not request source code, paths, datasets, identities, or proprietary details.",
    "Physical formulas and discrete semantics cannot change; validation has 26 accuracy checks.",
    "Final promotion requires at least 2% end-to-end real-time potential, reproducible A/A-prime/B evidence, and minimal machine time.",
    "Do not revive a listed closed route without a new specific mechanism.",
    "Separate evidence from hypotheses and recommend stopping when evidence is insufficient."
  ],
  expected_output: "A compact ranked table with mechanism, evidence needed, optimistic whole-run ceiling, minimal test, and stop condition; finish with one recommended decision.",
  temperature: 0.1,
  max_tokens: 3200,
  timeout_ms: 60000,
  task_id: `mcc-stage133-plan-${Date.now()}`
}, {
  config,
  logPath: "C:/Users/Fu Jiake/Documents/MCC/决赛/02_优化工作区/ROMS_CoSiNE_final_20260727/analysis/stage133_next_optimization_plan_20260809/model_delegator_audit.jsonl"
});

console.log(JSON.stringify(result, null, 2));
