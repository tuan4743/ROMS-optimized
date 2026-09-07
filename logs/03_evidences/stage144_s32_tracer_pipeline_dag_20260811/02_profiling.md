# 第二次分析：profiling 与收益门槛

本阶段没有启动新 profiler；复用已完成的 S32 全长 PROFILE 池化结果，并用冻结源码解释数据流。

- `pre_step3d`：17.08% CPU。
- `step3d_t`：16.66% CPU。
- 二者合计：33.74% CPU。
- 达到 2% 整体 CPU 收益的池内必要降幅：5.928%；wall critical-path 需求只会更严格。
- 一个两网格全 tracer state 的物理内点约 770.0 MiB；一次完整 store+reload 的源码层逻辑访问 footprint 约 1.504 GiB/步。它不是 DRAM 流量下界，cache 可能吸收部分访问。

瓶颈解释：值得追求的是减少 4-D tracer 中间状态的完整扫描/写回，而不是减少 call。G1、G2、G4各自存在砍掉一次 materialization 的结构可能；但 halo、C4 stencil、vertical recurrence、cross-tracer biology 和新字段版本是硬约束。

证据边界：CPU 份额不是 wall time，逻辑字节 footprint 也不是实测 DRAM 带宽收益。本阶段只产生候选与必要条件，不宣称性能提升。
