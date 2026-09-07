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

const shared = [
  "A validated nested MPI/OpenMP scientific model uses precise FP, AVX2, IPO and global no-FMA.",
  "Dynamic software-event sampling finds three compute kernels at 14.175%, 10.205% and 5.238% of selected-rank CPU time.",
  "Their dominant dynamic instructions already use 256-bit YMM multiply/add/subtract paths.",
  "A proposed static-only gate rebuilds an exact zero-change control and a candidate that enables FMA only on those three objects.",
  "No model run is allowed unless final executable disassembly proves real FMA contraction and a conservative whole-wall mechanism above 2%.",
].join(" ");

const tasks = [
  {
    provider,
    task_id: `mcc-stage161-asm-gate-${Date.now()}`,
    objective: "Critique the static assembly comparison gate and name the minimum objective metrics needed before any runtime test.",
    context: shared,
    constraints: ["Do not request source code or paths.", "Distinguish static evidence from measured performance."],
    expected_output: "A concise checklist and reject/promote conditions.",
    temperature: 0,
    max_tokens: 700,
    timeout_ms: 60000,
  },
  {
    provider,
    task_id: `mcc-stage161-fp-risk-${Date.now()}`,
    objective: "Independently review floating-point and attribution risks of selectively enabling FMA on three hot objects.",
    context: shared,
    constraints: ["Assume changed floating-point order is allowed only if official full validation passes.", "Do not claim performance from instruction counts."],
    expected_output: "A concise risk list and required lineage/correctness controls.",
    temperature: 0,
    max_tokens: 700,
    timeout_ms: 60000,
  },
];

const result = await delegateMany(tasks, {
  config,
  logPath: resolve(import.meta.dirname, "delegations.jsonl"),
  concurrency: 2,
});
console.log(JSON.stringify(result, null, 2));
