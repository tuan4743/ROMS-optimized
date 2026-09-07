# Stage 150B: step2d loop-DAG mining specification

日期：2026-08-11 EDT

状态：`DEFERRED_STATIC_PLAN`。仅在 Stage 150A 关闭或完成后启动。

## Corrected scope

冻结 S32 活动预处理 `step2d.f90` 为 1,283 行、127 个活动 `DO` 头；“约 225 个 loop heads”不是 exact active-build 数字，不能用作工作量或收益分母。

历史 Stage 108 已实际测试 Drhs/DUon/DVom 三循环融合：2D timer 约快 1.0%，但 A-B-B-A wall gain 为 `-1.7416%`，轨迹 5/5 SAME。原因是约 30x31 的主导细网格 tile 中 Drhs 只有约 7.5 KiB，原始中间量已驻留 L1/L2，融合增加的分支、寄存器压力和循环控制抵消收益。因此该 island 不重跑，也不能把 IISc 大 tile 的 +1.6%迁移为本机预期。

## Mining output

对每个活动 loop nest提取：

- exact CPP/IF path、循环域与方向；
- READ/WRITE/RMW 数组及时间层；
- RAW/WAR/WAW、边界/halo/callee/reduction barrier；
- 中间量唯一消费者、复用距离与每 rank 工作集；
- 原始与候选 logical loads/stores、预计寄存器压力和额外分支。

只输出两类候选：唯一 producer-consumer materialization elimination；相同域、无非法依赖的 traversal fusion。自动结果仅是 triage，必须人工审计 alias、条件分支、staggered bounds、wet/dry、source、nesting 与 conservation。

## Promotion gate

step2d 全长份额按 10.99% 计，整机 2% 要求局部 reduction `>18.2%`。考虑 Stage 108 的反向 wall 证据，实际静态目标提高到 `>=25%`，并要求：

- 至少两个独立 island，但作为一次统一的 data-movement mechanism；
- 组合后重新核算公共输入和重复开销，禁止简单相加各 island 百分比；
- 明确删除的 machine instructions/cache traffic，不把小 tile 的 L1 hit 当作 DRAM；
- 不跨 MPI/BC/conservation/nesting 调用，不改时间积分算法；
- 预估新增分支、spill 或向量化退化后仍过门。

未达到 >=25% 局部静态目标则不 build。
