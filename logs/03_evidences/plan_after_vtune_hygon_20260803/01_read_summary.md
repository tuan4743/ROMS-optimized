# Stage 73 - PLAN after VTune/Hygon capability finding

- Date: 2026-08-03 +0800. This is a PLAN/review stage; no source, model job, input, output or remote result was changed.
- Prior retained VTune diagnostic: job `118418627`, immutable O33, diagnostic `144/720`, four nodes, 64 MPI x2 OpenMP. Model completion and software-sampled node-local hotspots are valid; its raw data remain at `/public/home/fujiake/fjk/vtune_runs/118418627_o33_hotspots_64x2`.
- Hardware fact from the same platform: `HygonGenuine`, `Hygon C86 7185 32-core Processor`, four NUMA nodes. Intel VTune cannot recognize this microarchitecture for hardware-event analyses. Thus VTune-derived IPC/CPI/cache/DRAM bandwidth/vectorization claims are unavailable.
- Capability fact: `/usr/bin/perf` exists, lists standard cycles/instructions/cache/TLB events and kernel `perf_event_paranoid=2`; user-level event access/reliability remains unverified.
- Static indication only: loose mathematical-call scan finds 4/8/0/95/5/113 matching lines in `pre_step3d`/`step3d_t`/`step2d`/`gls_corstep`/`t3dmix4_s`/`bio_UMAINE15`. This does not establish dynamic cost or authorize a math rewrite.
- Output lifecycle: Stage-72 raw data and all earlier results remain retained. No deletion is applicable to this plan stage.
