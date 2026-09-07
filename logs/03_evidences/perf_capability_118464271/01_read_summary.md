# Stage 76 - Hygon perf capability: read summary

- Date: 2026-08-03 +0800. Job `118464271` completed `0:0` in five seconds on `j01r2n16`; it is a one-core, two-pass `perf stat` capability probe, not a ROMS model run.
- Raw audit: `/public/home/fujiake/fjk/agent_tmp/isolated/audits/perf_capability_118464271/perf_capability.log`.
- Platform: Hygon C86 7185, four NUMA nodes, `perf_event_paranoid=2`. Both passes collect user-space task-clock, cycles, instructions, branches and branch-misses.
- Each `timeout 2s yes` returns `124` by design; the Slurm script captures it and exits zero. This is not a perf collection error.
- Initial conclusion: user-space core/branch counters are accessible and repeatable enough for a capability gate; cache reference/miss counters report zero and are unusable for cache/bandwidth interpretation.
- Output lifecycle: only a small private text audit exists; retain it. No model output, validator result or deletion is applicable.
