# Stage 159 set_avg OMP 正确谱系复测（2026-08-12/13）——读取总结

## 1. 实验定义（候选 B）

- 机制：S47 冻结源码（`backup_S47_FULL_SRC_20260811.tar.gz`）fork，set_avg.F 的 **accumulate 段** tracer it-loop（`avgt(i,j,k,it) = avgt + rmask*t`，每步执行）加 `!$OMP PARALLEL DO DEFAULT(SHARED) SCHEDULE(STATIC) PRIVATE(i,j,k,it)` + mk 加 `set_avg.o: private FFLAGS += -qopenmp -no-heap-arrays`。
- 谱系：A=官方 1fc3be38（26/26 验证）；A′=零 delta 重建（md5 eff0e382）；B=622bdf69（v2）。
- 前科：Stage 129 同机制 CONFOUNDED（B 树缺 AVX2/no-FMA/IPO）；v1 还打错段（init 段一次性赋值）→ 本阶段 v2 修正。

## 2. 结果

| 作业 | 节点 | A1 | Ap1 | B1 | B2 | Ap2 | mean_A′ | mean_B | delta |
|---|---|---|---|---|---|---|---|---|---|
| 119066033 | i17r1n[00-03] | 103.591 | 105.126 | 99.522 | 97.943 | 102.268 | 103.697 | 98.733 | **−4.79%** |
| 119068033 | j04r2n[00-03] | 99.219 | 97.351 | 106.251 | 100.659 | 98.371 | 97.861 | 103.455 | **+5.72%** |

- **两次方向相反**（−4.79% vs +5.72%）；第二次 B 腿内离散 5.6%（106.3 vs 100.7）。
- 数值门：Ap1 vs B1 model.log 610 步打印逐位相同（diff 仅日期/pid/路径）→ 位级一致成立（机制数值安全）。

## 3. 判定

- **关闭（噪声）**：预期收益 0.7-1.2%（池 2.31% wall × 1.65-1.9x 加速的扣除）远小于样本档波动（两次 ABBA 内 leg 跨度 5.5-7.2%）；两次方向相反直接证明无稳定墙钟收益。
- 这是**干净判决**：Stage 129 的 CONFOUNDED 前科已由正确谱系 + 正确代码段复测排除——机制本身数值安全、实现正确，但性能上无效。
- 新规则执行完整：真未测变体 → 构建 → 双 ABBA → 关闭 → 三遍分析，未路径依赖判死。

## 4. 输出生命周期

- 构建树 `fjk/stage159_setavg_omp_20260812/`（A′/B v1/v2 二进制 + 构建日志 + patch 前源码）全保留；ABBA 两次运行根全保留；无删除。
