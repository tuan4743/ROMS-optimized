# 第二次分析：G1 机制判读

候选把全 17-tracer provisional `t3` 的跨 region 物化改成单-tracer strip-local `G1DC/G1V` 工作集，但实测整机 wall 反而慢 `0.1865%`，与组内约 0.5% spread 同量级。

最符合证据的解释是：

1. 原 64-rank 小 tile 的 provisional `t3` reload 已被 cache 较多吸收，静态 1.504 GiB 逻辑 footprint 不是可兑现的 DRAM 流量；
2. 新路径仍需写读 `G1V`，并额外保存 `G1DC`，不是零物化；
3. j-strip 边界重复生成少量 C4 y-face/gradient，抵消潜在 locality 收益；
4. 原水平 `k×tracer` 与垂向 `j×tracer` 两个 OpenMP region 各自已有良好 i-contiguous SIMD；重排没有减少公式工作。

短程未启用可用的细粒度 PROFILE 行，Hygon cache/DRAM PMU 又不可用，因此以上是由静态账本和 matched wall 支持的机理解释，不是硬件计数证明。最终分支决策由 A′-B-B-A′ wall 与轨迹作出。

