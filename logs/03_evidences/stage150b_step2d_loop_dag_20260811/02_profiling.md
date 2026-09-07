# 第二次分析：step2d profiling 与收益门禁

既有全长 PROFILE：`step2d_tile` 约占总 CPU 10.99%，2% 整机 CPU 理论门为局部 18.2%；考虑 Stage 108 同类融合 wall 负向，Stage 150 预先规定静态晋级门为局部 >=25%。

Exact IPO report：155 条 vectorized、120 条 not-vectorized、54 条 assumed-stride multiversion、13 条 scalar replacement。大量内层循环已有向量路径；not-vectorized 记录包含外层/成本模型拒绝项，不能用指令强制推导收益。

五类 island 都只覆盖 step2d 的一部分。最激进的四阶平流 streaming 还需多行 scratch、边界修补或重复计算；自由面和 momentum-tail 只删除小型 cache-resident copy。没有候选提供 conservative local >=25% 的机器/字节/phase 证据。

判定：`PROFILE_GATE_FAIL / NO_MEASURED_GAIN`。本阶段未生成动态 profile，未把 compiler remark 或 loop 数量冒充性能结果。
