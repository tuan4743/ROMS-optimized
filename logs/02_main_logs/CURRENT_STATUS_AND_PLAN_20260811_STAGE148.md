# 当前状态与计划（2026-08-11，Stage 148）

Stage 146 的 `-0.1865%` 关闭的是 j-strip G1 实现，不足以关闭所有理想 G1。五门复盘发现原门禁缺口：Gate 3 未证明 PRE conservative reduction `>12%`，Gate 5 未用 qopt report/反汇编确认机器码中的全场 store+reload；因此理想 column-local G1 保留为纯静态条件项，但当前仍 `NO_BUILD`。

最新证据：`analysis/stage148_g1_five_gate_reassessment_20260811/`。

下一步顺序：

1. 先完成 Stage 147 活动 halo 调用聚合 P0，与 G1 静态 Gate 5 可并行做零机时审计。
2. G1 必须逐项通过 exact alias/consumer、column recurrence、完整 bytes 账本、O(N) scratch、qopt+assembly 五门。
3. PRE conservative reduction `<=12%`、需要 strip/tile/NT scratch，或机器码未出现可删除的 full-field store+reload，立即关闭 G1，不构建。
4. 五门全过仍只允许单候选 A/A′/B；晋级标准不降低：`<2% STOP`、`2-3% REVIEW`、`>=3%` 且两 B 均快才考虑 full。

输出生命周期不变：Stage 145/146 结果全部保留，本阶段无模型输出、无删除。
