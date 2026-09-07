import { resolve } from "node:path";
import { pathToFileURL } from "node:url";

const pluginRoot = resolve("C:/Users/Fu Jiake/Documents/Codex/2026-08-08/wei/outputs/model-delegator");
const core = await import(pathToFileURL(resolve(pluginRoot, "server/core.mjs")));
const config = await core.loadConfig(resolve(pluginRoot, "config/providers.json"));
const providers = core.listProviders(config);
const flash = providers.find((item) => item.name === "deepseek-v4-flash");
if (!flash || !flash.enabled) throw new Error("deepseek-v4-flash is unavailable");

const facts = [
  "A 64-MPI x 2-OpenMP, four-node, three-day ROMS-CoSiNE run completed in 1657.908 seconds and passed all 26 official RMSE checks.",
  "Global and physical compilation uses fp-model precise, AVX2, no FMA, IPO, and PGO.",
  "The biology object already uses fp-model fast=2 plus no-prec-div and fast speculation.",
  "Biological 4-D halo messages already use real32 buffers and MPI_REAL.",
  "Fine-grid u RMSE is 0.000052 with a 0.000060 threshold. All other RMSE ratios are at most 33.5 percent of threshold except that u ratio.",
  "An earlier GLS-plus-biology fast=2 build was about 4.5 percent faster but failed only fine-grid u at 0.000062.",
  "Biology-only fast=2 passed all checks but did not improve whole-run wall time and is already active.",
  "Milder GLS no-prec-div plus fast speculation passed but produced no speedup.",
  "Static profiling attributes roughly 7.35 percent of whole CPU samples to scalar pow-like work in GLS; the application is synchronization limited, so CPU-share ceilings may not translate to wall time.",
  "Physical formulas, grids, timesteps, outputs, and bidirectional nesting semantics cannot change. Floating-point execution order and ordinary implementation optimization are allowed only if the full official validation passes."
].join("\n");

const common = {
  provider: "deepseek-v4-flash",
  max_tokens: 4000,
  temperature: 0,
  timeout_ms: 90000
};

const tasks = [
  {
    ...common,
    task_id: `stage163-margin-${Date.now()}`,
    objective: `Return a concise final answer (do not spend the whole response budget on hidden reasoning). Independently audit the numerical error budget and identify which classes of precision relaxation remain defensible. Use only these sanitized facts:\n${facts}`,
    constraints: [
      "Do not assume CPU sample share is wall time.",
      "Do not suggest changing physics, grid, timesteps, outputs, or nesting semantics.",
      "Separate confirmed facts, inferences, and experiment proposals.",
      "Reject ideas whose conservative whole-wall ceiling is below two percent unless they are only diagnostic."
    ],
    expected_output: "A compact table ranking up to five precision-relaxation axes, with validation risk, plausible ceiling, and a GO/NO-GO verdict."
  },
  {
    ...common,
    task_id: `stage163-ladder-${Date.now()}`,
    objective: `Return a concise final answer (do not spend the whole response budget on hidden reasoning). Design the smallest evidence-controlled precision ladder for the one remaining plausible compiler-level experiment, based only on these sanitized facts:\n${facts}`,
    constraints: [
      "Use matched A/A-prime controls and isolate one compiler lever per candidate.",
      "The final decision requires a full three-day run and all 26 official checks.",
      "Account for the narrow fine-grid u margin and prior GLS fast=2 failure.",
      "Do not recommend global fast-math or further physical-field real32 quantization without an explicit argument."
    ],
    expected_output: "A staged static gate, build gate, short-run diagnostic, and full-run acceptance plan, including stop conditions."
  }
];

const results = await core.delegateMany(tasks, {
  config,
  logPath: resolve(import.meta.dirname, "delegations.jsonl")
});

console.log(JSON.stringify({
  provider: { name: flash.name, model: flash.model, enabled: flash.enabled },
  results: results.map((result) => ({
    task_id: result.task_id,
    status: result.status,
    model: result.model,
    output: result.output,
    usage: result.usage
  }))
}, null, 2));
