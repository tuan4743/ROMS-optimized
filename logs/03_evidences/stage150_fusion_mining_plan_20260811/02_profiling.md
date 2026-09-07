# 第二次分析：热点与门槛量化

日期：2026-08-11 EDT

t3dmix4 约占整机 CPU 5.00%，要贡献 2% 需局部约 40%。源码级 scratch 访问约 136 B/point，全部逻辑访问约 416 B/point；只删 scratch 的极有利上界 32.69%，映射整机仅约 1.63%。要过门还需净删至少 30.4 B/point，即约四次 double 非 scratch 重载，且不能增加等价行缓冲 traffic。

step2d 约占 10.99%，理论局部门槛 18.2%；考虑历史同类融合 wall 负向，本计划将静态晋级门提高到 >=25%。自动 loop-DAG 只负责筛选，不能把多个 island 的预测收益直接相加。

当前排序：150A t3dmix exact machine/static audit；150B step2d loop-DAG；GLS/biology 暂缓。没有新的 measured gain。
