# Stage 161 checkpoint — 2026-08-12 EDT

- Objective: exact-S47 A′/B static build and final-executable assembly comparison; B enables `-fma` only on `pre_step3d.o`, `step3d_t.o`, and `t3dmix.o`.
- No ROMS model run is part of this stage.
- DeepSeek V4 Pro parallel review returned two empty outputs after token use; both are `REJECTED_EMPTY_OUTPUT` and contribute no conclusion.
- Harness-only job `119063996`: rejected before work-tree creation by an invalid live-parent makefile check.
- Harness-only job `119064127`: extracted r1 trees, then rejected before build because the flag-count check included global `-no-fma`.
- Corrected job `119064292`: submitted on one node / 16 cores; private work root `/public/home/fujiake/fjk/stage161_selective_fma_20260812_r2`; status RUNNING at checkpoint.
- Script SHA-256: `391ef1f10592f92334ad82c71a4c6b0c5649308fd48d995a489d762883d52279`.
- Previous Stage 160 profiling output remains retained. No output deletion.
