# step2d OpenMP 量化 — 有效性核验（2026-08-07）

## 1. 实验有效性

- 单诊断作业：冠军二进制（哈希门禁 7cd46627 通过）、144/720、4n/64×2、KMP_HOT_TEAMS、rank-0 采样。
- 模型 DONE（RUN_RC=0）；perf.data 1.5MB（~16k 样本）与既往 perf 数据量同量级。
- harness exit-13 已在 Stage 109 定性为报告生成后置步骤的化妆品故障；perf.data 完整可用（手动 perf report 复现）。
- perf_report.txt 缺失由 harness 故障导致，已用手动报告补齐（同数据源）。

## 2. 结论独立性

- step2d self 4.50% 是直接采样事实（非推断）。
- "计算加速不达墙"由 Stage 90 实测（四对象 1.7-1.9x → 墙钟 −0.45%）独立支撑，非本诊断推断。
- "2D 相同步受限"由 Stage 93 skew probe（G2 2D halo 中心块 straggler，跨运行相关 0.81-0.99）独立支撑。
- 三证据链（perf self / PROFILE 分解 / 既往实测）互相一致。

## 3. 门禁纪律

- 本阶段无候选构建、无模型输出删除；perf 诊断根 `118736131` 保留。
- step2d OpenMP 以静态量化关闭（未消耗构建/ABBA/全量配额），符合"先量化再决定"的用户指示。
