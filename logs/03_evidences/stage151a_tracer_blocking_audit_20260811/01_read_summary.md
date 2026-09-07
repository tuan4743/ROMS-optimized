# Stage 151A — tracer blocking：第一次分析

- 日期：2026-08-11 EDT。
- 冻结输入：S32 预处理源码 `stage149_static_next_audits_20260811/raw/s32_build_f90/{pre_step3d,step3d_t}.f90`；全长 PROFILE 份额 PRE=17.08%、CORRECT=16.66%。
- 当前结构：两个水平 C4 路径均为 `k -> itrc(17) -> j -> i`；垂向路径为 `j -> itrc -> k/i`。`i` 连续访问已保留。
- 可共享字段：水平段的 `Huon/Hvom` 和最终更新中的 `Hz/pm/pn`；垂向段的 `W/pm/pn/Hz/z_r`。tracer 状态和 `FX/FE/grad/FC/BC/DC/CF` 不能共享。
- B=2 不是简单换序：必须同时维护两套 tracer scratch；B=4 风险更高，本阶段不考虑。
- 未修改源码、未构建、未提交作业、未创建模型输出。

初判：存在 load-port/L1 复用机会，但主要共享平面在同一 k 内被 17 次顺序扫描，极可能已经驻留 cache；不能把“少一条源码 load”当成少一次 DRAM load。
