# Pass 2 - Performance and planning implications

- Date: 2026-07-30
- External reference: `01:50:06 = 6606 s`, four nodes/64 cores.
- Current validated workflow result: `9259.75 s`, two nodes/64 MPI ranks.
- Gap: `2653.75 s`.
- Required reduction from the current result to match the external target: `28.6590%`.
- Required speedup: `1.401718x`; the current result is `40.1718%` slower than the external reference.

## Implications

- Four-node/64-core mapping should be tested before assuming 128 ranks are beneficial. The same total rank count spread across four nodes may reduce per-node memory/NUMA pressure but increase inter-node nesting communication; measurement is required.
- Half-day and one-day integrations can accelerate source bisection and layout screening by nominal factors of six and three. Startup, forcing reads, and output costs prevent exact linear scaling, so only equal-duration diagnostics may be compared.
- Shortened runs can reject crashes, regressions, and early numerical divergence. They cannot establish final three-day runtime, final RMSE, or scoring validity.
- DCU work is removed from the plan.

Profiling conclusion: the next performance-layout priority after the active reproduction is four nodes/64 cores, while shortened `NTIMES` should be used to reduce iteration time for source-level bisection.

