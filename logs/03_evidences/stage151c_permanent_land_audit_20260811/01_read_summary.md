# Stage 151C — permanent-land wet spans：第一次分析

- 日期：2026-08-11 EDT。
- 真实永久掩膜：SCS interior 359×326，land=40346/117034=34.4737%；Dongsha60 interior 235×245，land=0%。
- SCS 每行平均 3.52 个 wet spans（1149 spans/326 rows），span 中位 48、均值 66.74；存在多个完全陆地的当前 tiles。
- 只允许依据静态 `rmask`；绝不依据动态 `rmask_wet` 跳过。
- 未修改网格、源码或输入，未构建/运行。

初判：粗网格陆地比例大，但细网格没有陆地；必须结合两个 grid 的热点计时份额，而不能直接把 34.47% 乘 GLS+biology 总份额。
