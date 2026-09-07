#!/usr/bin/env node
import { resolve } from "node:path";
import {
  delegateMany,
  listProviders,
  loadConfig,
} from "../../../../../../Codex/2026-08-08/wei/outputs/model-delegator/server/core.mjs";

const config = await loadConfig();
const provider = "deepseek-v4-pro";
const readiness = listProviders(config).find((item) => item.name === provider);
console.log(JSON.stringify({ readiness }, null, 2));
if (!readiness?.ready) throw new Error(`${provider} is not ready`);

const context = [
  "A validated MPI/OpenMP Fortran ocean model has a scored S47 binary built with Intel ifort 2021.3, precise FP, AVX2, no-FMA and IPO.",
  "A historical earlier-source PGO binary measured about 2.2 percent faster than its non-PGO parent and passed all official checks, but its profile is not exact for S47.",
  "Two recent assembly/compiler candidates were rejected statically: generic SIMD had no new hot vector path, and selective FMA had only about 0.12 percent conservative whole-program ceiling.",
  "Intel documentation says instrumentation PGO can change hot/cold layout, branch prediction, register allocation, vectorization and IPO inlining, and recommends representative, up-to-date profiles.",
  "The decision is whether exact-S47 PGO retraining is a distinct mechanism worth finishing, not whether it is guaranteed to improve performance.",
].join(" ");

const tasks = [
  {
    provider,
    task_id: `mcc-stage162-pgo-mechanism-${Date.now()}`,
    objective: "Independently decide whether exact-workload PGO is mechanistically distinct from selective FMA and generic SIMD, and specify static gates before timing.",
    context,
    constraints: ["Use only the supplied sanitized facts.", "Separate inherited evidence, static evidence and measured evidence.", "Do not request code, paths, credentials or data."],
    expected_output: "A concise accept/reject recommendation with exact lineage, profile-coverage, optimization-report and assembly checks.",
    temperature: 0,
    max_tokens: 1600,
    timeout_ms: 90000,
  },
  {
    provider,
    task_id: `mcc-stage162-pgo-risk-${Date.now()}`,
    objective: "Review attribution and correctness risks of retraining instrumented PGO on the exact S47 diagnostic workload before a matched A-prime/B performance test.",
    context,
    constraints: ["Do not treat training time or binary differences as performance evidence.", "Assume final promotion requires a complete official validation."],
    expected_output: "A concise risk register and stop/promote gates.",
    temperature: 0,
    max_tokens: 1600,
    timeout_ms: 90000,
  },
];

const result = await delegateMany(tasks, {
  config,
  logPath: resolve(import.meta.dirname, "delegations.jsonl"),
  concurrency: 2,
});
console.log(JSON.stringify(result, null, 2));
