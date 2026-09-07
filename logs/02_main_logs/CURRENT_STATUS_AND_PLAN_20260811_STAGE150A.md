# 当前状态与计划（2026-08-11，Stage 150A）

Stage 150A 已静态关闭 `t3dmix4_tile` rolling-row biharmonic fusion，未写候选、build 或提交作业。

冻结 S32 全长 PROFILE 中 `t3dmix4` 约占 5.00%，2% 整机收益要求局部 >40%。Exact source、Stage 134 IPO report 与冻结二进制审计显示六个主循环均已有 unit-stride AVX2 VL4 路径；现实 rolling-row 必须保留三行 LapT、跨行 eta-face 与系数生命周期。最有利的可实现模型为 416 B/点降到 280 B/点，即局部 32.6923%、整机 CPU 上界约 1.6346%。只有超过 AVX2 实际寄存器预算的 microtile 幻想模型才过 40%，不可作为 build 依据。

判定：`STATIC_VALID / ROLLING_FUSION_GATE_FAIL / REJECT_BEFORE_BUILD`。正式最佳仍为 S32 `118755216 / 1753.876 s / 26/26 PASS`；Stage 145/146 输出继续保留。

下一步进入 Stage 150B：冻结 S32 `step2d_tile` 127 个活动循环的 loop-DAG 静态 mining。先聚合多个 fusion islands，人工复核 conservative local reduction >=25% 后才可能授权 build；Stage 108 已测无效三循环不重跑。

证据入口：`analysis/stage150a_t3dmix_static_audit_20260811/`。
