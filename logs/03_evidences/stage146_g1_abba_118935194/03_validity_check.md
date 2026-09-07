# 第三次分析：结果有效性

- lineage 在独立复现作业中通过；首次 `118934731` 的 A2 5.76% 慢点未复现且独立保留，未删点或放宽门槛。
- candidate paired controls 紧邻 B，九腿运行参数、输入、rankfile、collective rules 与轨迹一致。
- B 的 `-0.1865%` gain 低于 2% 有效线且方向为负，`both_B_faster=False`；停止结论不依赖精细 profiling 归因。
- 144/720 无输出时刻，只证明短程 trajectory 一致，不能宣称 26/26；因性能门禁失败，不浪费完整 3 天机时是有效决策。
- G4（Stage 145）与 G1（Stage 146）是连续两次已测无效候选，已触发强制 PLAN+联网科研/开源搜索。

结论：`VALID_DIAGNOSTIC / STOP_BRANCH / MANDATORY_PLAN_TRIGGERED`。

