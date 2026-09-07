# DO NOT SUBMIT

本目录中的 `probe_phase.F`、`probe_phase_draft.F` 和两个 patch 是 Stage 140 的未编译历史草案，已由 Stage 143 审阅否决。

已确认存在共享 start-time 线程竞争、`RETURN` 后 unreachable `probe_exit`、未声明符号和 phase 分类混叠。后续实现必须以：

`analysis/stage143_p1_duration_probe_refinement_20260810/P1_DURATION_PAIRING_SPEC.md`

为规范重新生成，不得在旧 patch 上直接提交。

