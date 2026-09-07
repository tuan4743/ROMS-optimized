import { delegateMany, loadConfig } from "file:///C:/Users/Fu%20Jiake/Documents/Codex/2026-08-08/wei/outputs/model-delegator/server/core.mjs";

const config = await loadConfig();
const common = [
  "An anonymized two-way nested MPI/OpenMP ocean-ecosystem model uses 64 MPI ranks x 2 threads on four homogeneous CPU nodes.",
  "The formal validated runtime is 1753.876 seconds.",
  "Full-run aggregate CPU timer shares are: 3D predictor 17.1%, tracer corrector 16.7%, GLS 13.6%, 2D kernel 11.0%, biology 8.8%, 4D halo 10.3%, 2D halo 6.5%, 3D halo 3.8%; all message timers total 25.8%.",
  "Selected-rank sampling means are: pre_step3d 14.78%, step3d_t 12.96%, scalar pow 7.05%, biology 6.37%, mp_exchange4d 6.56%, t3dmix 5.18%, GLS 4.96%, step2d 4.49%, UCX progress 8.07%.",
  "The large 3D, biology, and GLS routines already use two-thread OpenMP. A previous experiment sped four extra compute routines locally by 1.74-1.95x but produced no wall gain because halo/GLS wait grew.",
  "Static contact ownership aligns strongly with the late ranks, but its pure arithmetic is estimated below 1% wall; the perfect rebalance ceiling is only 1.81-2.57%.",
  "Hardware cache/DRAM PMU events are unavailable, so memory-bound claims are hypotheses unless supported by source and page/TLB evidence."
].join(" ");

const tasks = [
  {
    provider: "deepseek-v4-flash",
    objective: "Independently audit the bottleneck classification and Amdahl limits from the supplied sanitized measurements.",
    context: common,
    constraints: [
      "Treat supplied measurements as facts but do not invent wall shares from CPU samples.",
      "Separate compute hotspot, synchronization critical path, communication work, and unproven memory hypotheses.",
      "Do not request paths, source, identities, inputs, credentials, or private data.",
      "Do not make the final experiment decision."
    ],
    expected_output: "Compact JSON with keys classification, strongest_evidence, misleading_metrics, next_measurement, and confidence.",
    temperature: 0,
    max_tokens: 1800,
    timeout_ms: 60000,
    task_id: `mcc-stage142-bottleneck-${Date.now()}`
  },
  {
    provider: "deepseek-v4-flash",
    objective: "Critique candidate implementation directions for the sanitized hotspot code patterns and identify the smallest useful diagnostic.",
    context: common + " Code patterns: tracer kernels use k/tracer/j/i nested loops with OpenMP; vertical splines and GLS contain true k recurrences; biology has per-column EXP recurrences; 4D halo packs strided faces, posts Irecv, uses blocking Send, waits, then unpacks; contact3d already uses sparse peer-only Isend/Irecv/Waitall.",
    constraints: [
      "Preserve every physical formula, grid, timestep, field, two-way nesting value and synchronization time.",
      "Reject generic async, loop fusion, SIMD, cache, or OpenMP advice unless it names the evidence needed before implementation.",
      "Do not request or reproduce source code or private paths.",
      "Do not approve performance claims."
    ],
    expected_output: "Compact JSON with keys candidate_ranking, stop_list, required_instrumentation, risks, and advisory_disposition.",
    temperature: 0,
    max_tokens: 2200,
    timeout_ms: 60000,
    task_id: `mcc-stage142-code-${Date.now()}`
  }
];

const results = await delegateMany(tasks, {
  config,
  logPath: "C:/Users/Fu Jiake/Documents/MCC/决赛/02_优化工作区/ROMS_CoSiNE_final_20260727/analysis/stage142_hotspot_code_bottleneck_20260810/delegations.jsonl"
});
console.log(JSON.stringify({ results }, null, 2));
