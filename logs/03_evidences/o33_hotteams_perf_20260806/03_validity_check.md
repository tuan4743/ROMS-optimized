# 有效性核验（2026-08-06）

## 03 Validity check

- 事实复核：
  - perf 报告：`perf.data`（1.56MB，15755 samples）→ 本次重跑 `perf report --stdio`（self + children）直接提取 ✓；与 Stage 102 引用的 top-5 数字一致 ✓
  - 各阶段 PROFILE：从各 run root `model.log` 直接读取（117981144、118405320、118616644、118610383 A1/B1）✓
  - fast2 数字来自 `analysis/fast2_abba_118623757/`（已三审）✓
  - ABBA 结果（118610383 +3.04%、118623757 −1.06%、118657958 −1.92%）来自各自 decision.txt ✓
  - -O2 profile（A1/B1 对比）从 118657958 run root model.log 直接读取 ✓
- 边界声明：
  - perf 仅 rank-0、仅 144/720 采样期、仅用户态 cycles；MPI 等待是 busy-poll 轮询的 CPU 记账，不是纯等待时间；不代表其他 rank。
  - `uct_dc_mlx5_iface_progress` 10% 与 PROFILE 通信 15% 不可直接相减：PROFILE 只计入交换本身，progress 轮询跨区域分布，口径不同。
  - 阶段间 wall time 跨节点组/跨日期（j01/j04/j05），占比结构可比，绝对值不可比。
  - perf 附加在 rank-0 上会轻微拖慢 rank-0（采样开销），但 rank-0 不是唯一瓶颈 rank；诊断只用于热点排序。
- 三份文件一致性：01 事实 ↔ 02 机制 ↔ 03 边界一致；有效。
- 建议下一步：-O2 复核 `118658225` 结果一致（−1.9393%），编译轴关闭固化；性能路线按 Stage 96/106 冻结，交付出 O33+HOT_TEAMS 全量（2109.183 s，26/26）。
- 输出生命周期：无新增模型输出；无删除。
