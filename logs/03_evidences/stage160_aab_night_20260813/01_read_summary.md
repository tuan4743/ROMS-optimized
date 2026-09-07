# Stage 160 夜间 AAB 迭代（2026-08-13 凌晨）——读取总结

用户授权：夜间低峰期自我迭代；AAB 模式（两次尝试未果→大代码审查+论文/开源搜索）；有成效则在新基础上继续；权限仅 `~/fjk/` 可写。

## 1. Profile 深挖（perf annotate，S47 官方二进制 1fc3be38）

- 采集：`119071171`（rank_wrapper 只 rank0 perf record -F 99 cycles:u，144/720，perf_flat.data 588KB）。
- S47 完整分布：pre_step3d 14.58% / uct_dc_mlx5 9.97% / step3d_t 9.69% / pow_e7 6.73% / biology 5.19% / gls_corstep 5.12% / t3dmix4 5.11% / step2d 4.06% / mp_exchange4d 3.02% / put_refine3d 2.95% / get_contact3d 2.29% / set_avg 2.15% / exp_e7 1.84%。
- **指令级 annotate 结论**（8 函数批量）：
  - pre_step3d/step3d_t/step2d：top 指令为 vmulpd/vsubpd 流式 AVX2，分布平坦（top 1.8-10.9%）→ 编译良好，无单点瓶颈。
  - **gls_corstep：top 指令为 vmulsd（标量）**——S47 配方 `-fp-model source` 禁向量化（GLS 5.12% CPU 全部标量）。
  - biology：lea/jmp 循环结构开销（分支密集，fast=2 已测无效）。
- 结论：行级无新候选；唯一发现 = GLS 标量化 → A2 方向。

## 2. A1 尝试：mpi_yield_when_idle=1（零构建运行时轴）

- ABBA-1 `119071517`（j04r2n[16-19]）：A 103.480 / B 100.754 → **−2.63% 双 B 快**；user CPU 33m→30m（−10%）。
- ABBA-2 `119072082`：A 102.221 / B 101.195 → **−1.00%，both_B_faster=False**。
- **判定无效**：方向一致但幅度 <3% 门且第二次不满足双 B 快；user CPU 显著降但墙钟被同步受限结构吸收（Stage 90 同机理）。A1 关闭。

## 3. A2（进行中）：gls_corstep -fp-model source → precise

- 机制：恢复 GLS 向量化（标量→AVX2 128/256bit）；池 5.12% CPU；组织者允许浮点顺序变化（最终 RMSE 达标即可）。
- 风险：GLS 是历史精度敏感点（S24/S26 同文件旗标变化曾 vali 超限）→ 必须 1day+vali。
- 构建 `119072749` 进行中（S47 FULL_SRC fork，仅 mk 一行 source→precise）。

## 4. 输出生命周期

- perf 数据/annotate 输出、A1 两次 ABBA 运行根、构建树全保留；无删除。
