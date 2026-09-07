# 跨阶段瓶颈迁移分析（2026-08-06）

## 02 Profiling / mechanism

### 阶段 I：GCC 基线（117981144/118169717，real≈10384/9260 s）
- 结构：**2D 3.5% / GLS 3.6% / predictor 4.4% / biology 1.4% / tracer corrector 14.7%**；MP 总 40%+（G02 7.4% + G01 32.1%）。
- 瓶颈判读：计算被 GCC 标量代码压制，tracer corrector 是最大单项（14.7%）；通信占 G01 的 32% —— 通信/负载不均衡与标量计算并列主导。此阶段尚未引入分层 Bcast、稀疏规则、OpenMP 对象、映射。

### 阶段 II：O33 全量（118405320，2136.310 s）
- 结构：2D 10.65% / bio 5.61% / GLS 9.96% / pred 13.66% / tracers 11.00%；MP 合计 15.32%。
- 迁移判读：ifort+O3、5 对象 OpenMP、通信优化把 tracer corrector 从 14.7% 摊开 → **predictor 13.7% 成为第一大项**；biology/GLS/2D/tracers 全在 5–11%，通信压到 15%。瓶颈从"单一 corrector + 通信主导"转为"五个计算区 + 通信的多点均衡"。

### 阶段 III：O33+HOT_TEAMS 全量（118616644，2109.183 s，−1.27%）
- 结构：2D 10.46% / bio 5.64% / GLS 9.94% / pred 13.66% / tracers 10.70%；MP 14.98%。
- 迁移判读：HOT_TEAMS 只砍 fork/join 线程组重建开销，**不改变 PROFILE 结构**（各占比 ±0.2pp）；收益均匀分布于所有 OpenMP 区。瓶颈仍是多点均衡，无单点 >14%。

### 阶段 IV：perf rank-0（118617130，144/720 采样期）
- 与 PROFILE 的差异是本次的核心：PROFILE 是进程 cpu_time 累计（64 rank 求和），perf 是 rank-0 单点 cycles。
  - 计算侧：pre_step3d 15.3% / step3d_t 9.5% / __libm_pow_e7 6.7% / step2d 6.4% / t3dmix4 4.8% / biology 4.6% / gls_corstep 4.3% —— 与阶段 III 的 G02 PROFILE 排序一致（predictor 第一、corrector 第二），**rank-0 无异常偏斜**。
  - **通信侧（新信息）**：UCX/UCp/OpenMPI progress 轮询 ≈ **16.94% 用户态 cycles**。这是 busy-poll 等待（Stage 90 方法论），不是计算变慢；但在 rank-0 上是真实 CPU 占用，与 PROFILE 通信 15% 相互印证（口径不同，见 03）。
  - `__libm_pow_e7` 系 ≈ 7.6% 数学库 pow —— GLS/biology 的 pow 仍是大头；但 Stage 96 已证明代数去 pow / mathreuse CSE 在 O33 上零收益或精度不过，**本数据不改变该关闭判决**。
- 迁移判读：瓶颈从"可被编译级优化打击的计算热点"（阶段 II 打掉 tracer corrector 后）变成"**pow 7.6% + MPI progress 16.9% + 五个 4–15% 均衡计算区**"。无单点机制能在不改语义、不改通信模式的前提下给出 ≥2% 全局收益 —— 与 Stage 95/96 判决一致。

### 阶段 V：fast2 ABBA（118623757，−1.06% STOP_BRANCH，机制对照）
- biology −18.6%（设计命中）但 GLS +19.7%（fp-model source 回归）吸收；净 −1.06%。结构上 biology 仅 5.6%，18.6% 局部 ≈ 1.0% 全局；GLS 9.9% 上的 19.7% 回归 ≈ −2.0% 全局。**这是"多点均衡结构"下局部优化的通用天花板**：任一 ~5–10% 区间的 20% 级优化只有 ~1–2% 全局收益。

### 阶段 VI：global -O2 ABBA（118657958，−1.92% STOP_BRANCH）
- B1 G02 vs A1 G02：**GLS 972.8→1191.3（+22.4%）**，2D −1.5%，bio 0.0%，predictor +0.9%，tracers +1.1%。轨迹 5/5 SAME（-O2 与 -O3 同为 fp-model precise，位级一致但更慢）。
- 迁移判读：**GLS 区间是全项目对编译选项最敏感的区域**（fast=2 的 fp-model source +19.7%、-O2 +22.4% 两次独立实证）——ifort 对 GLS 的 gls_corstep 内嵌 pow/浮点序列在 -O3 上已近最优，降级只损不益。compile-axis 至此全部关闭：fast=2（−1.06%）、global −O2（−1.92%）、IPO（zya 持平）。

### 小结
瓶颈结构按时间轴变化：GCC 期（correct 14.7% + 通信 40%）→ O33 期（5 点均衡 5–14% + 通信 15%）→ HOT_TEAMS 期（结构不变、均匀提速）→ perf 揭示（pow 7.6% + MPI progress 17% 潜在大头）→ 编译轴双败实证 GLS 为吸收器。任何后续候选必须瞄准 pow 或 progress 轮询这类"跨区间"机制，单区间编译优化天花板约 1–2%。
