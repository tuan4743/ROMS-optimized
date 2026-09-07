# ifort2021 轴 2 计划 — 读摘要（2026-08-06/07）

## 背景

- 冠军 = O33 源码 + ifort 2021.3.0 + KMP_HOT_TEAMS（全量 `118662236` 2019.8 s，26/26，位级同 O33）。
- 用户指示："距离比赛还有不少时间，再 profile plan 优化思路并验证"。
- 未探明空间（Stage 109 遗留）：ifort2021 专属编译开关（`-fimf-*` 等）与运行态未试项（HPC-X 2.11）。

## 本阶段新 profile 事实

1. **perf 调用链展开**（`118663698` perf.data，rank-0，15755 样本）：热点结构不变，
   pre_step3d 13.27 / uct_dc_mlx5 progress 10.55 / step3d_t 10.37 / **pow 9.20** / t3dmix 5.40；
   pow 的 children 采样全部经 OpenMP 调度器入口（8.86%+4.37%+4.48%），无串行 pow。
2. **pow 调用点静态归因**（objdump -dr 各热点对象，本阶段新证据）：
   - `gls_corstep.o`：**40** 处 `R_X86_64_PC32 pow`（GLS 湍闭合 634–652 K-kl 指数）
   - `biology.o`（含 bio_UMAINE15.h）：**47** 处 `R_X86_64_PC32 pow`（CoSiNE 生态源汇）
   - pre_step3d / step3d_t / t3dmix / step2d / gls_prestep / rho_eos / hmixing：**0**
   - → pow（9.2% CPU）100% 集中在 GLS+biology 两个对象，`-fimf-*` 只需打这两个对象。
3. 数学库合计：pow 9.20 + exp 1.52 + powr8i4 0.78 ≈ 11.5% CPU（rank-0 cycles，含等待记账）。

## 候选清单（单因果轴，按成本排序）

| # | 候选 | 轴 | 靶点 | 成本 | 轨迹门槛 |
|---|---|---|---|---|---|
| C | 运行态 HPC-X 2.7.4 → 2.11.0 | MPI 运行库 | uct progress 10.55% | 零构建 | 应逐位一致（可保留 trajectory gate） |
| B1 | `-fimf-precision=low` on gls_corstep.o+biology.o | ifort2021 编译开关 | pow 9.2% | 一次构建 | 轨迹必变 → 全量官方 26/26 |
| B2 | `-fimf-use-svml` on 同两对象 | 同上 | pow/exp 向量化路径 | 一次构建 | 同上（2021 支持，2017 不支持） |

## 门槛与纪律

- 每个候选一个 A-B-B-A（144/720，4n/64×2，8x8，W0 预热）；双 B 快 + ≥3% 才授权全量。
- B1/B2 浮点顺序必变：官方 26/26 是唯一精度门禁（2026-08-03 组委会澄清允许数学等价浮点变化）。
- C 为纯运行态：数学库不变 → 轨迹 gate 可用，先过轨迹再谈墙钟。
- 明确不重开：`-xCORE-AVX2`（znver1 AVX2 256-bit 为 2×128 双泵，吞吐减半硬件事实；2017 已测 −3.5%）、
  编译轴 fast=2/-O2/IPO（2017 全部 STOP）、tiling/映射、OpenMP 对象扩展（Stage 90）、halo 模式（v24b-v28）、
  step2d 融合（Stage 108 −1.74%）、GLS/biology pow 源码改写（Stage 96 关闭族）。

## 输出生命周期

- 本阶段无模型输出被删；队列队友作业（zya `118713074`、nan `118713326`）只读。
- 结果入库：`OPTIMIZATION_LOG.md` 新 Stage + Skill 三件套同步。
