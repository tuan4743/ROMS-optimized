# fast2_2021 ABBA 三件套 — 性能档案（2026-08-07）

## 1. 数据表（`118715857`）

| label | variant | real s | trajectory | nc |
|---|---|---|---|---|
| W0 | WARMUP | 126.548 | fa498694...（A 轨迹） | 0 |
| A1 | O33_CHAMPION | 123.458 | fa498694... | 0 |
| B1 | O33_FAST221 | 115.555 | a83e5984... | 0 |
| B2 | O33_FAST221 | 113.197 | a83e5984... | 0 |
| A2 | O33_CHAMPION | 119.269 | fa498694... | 0 |

- mean_A 121.364 / mean_B 114.376 → gain +5.7575%；max(B)=115.555 < min(A)=119.269 → both_B_faster=True。
- B 内部可复现：B1/B2 差 2.0%（114.4±0.9 s 量级），小于 A 内部差（3.5%），增益确定性高。

## 2. 机制

- fast=2（+no-prec-div +fp-speculation=fast）覆盖两对象上的 -fp-model precise：
  - pow/exp/div 改走快速路径（libimf 低精度分支 + 更快除/开方）；
  - 允许更激进的指令重排/收缩；
  - 靶点 pow（9.2% CPU）+ div 在 GLS/biology 的直接计算路径上，对象自身提速无串扰（两对象同时切换，无 Stage 104/108 的单侧吸收路径）。
- 2017 对照（Stage 104 fast=2 全对象：−1.06% STOP；Stage 108 biology-only：−2.82% STOP）：
  2021 编译器下 fast=2 的代码生成收益显著大于 2017（GLS 区间 2021 下已名义 +18% 含 poll 记账，fast=2 直接减薄该区间）。

## 3. 风险

- 浮点语义变化（轨迹 a83e5984 ≠ fa498694）：数学库精度与收缩改变 → 官方 26/26 是唯一门禁。
- 阈值裕量：Dongsha60 u=0.000052 vs 0.000060（15%）；gcc731 以 0.000061 超限 1.7% 先例 → 不能预判通过。
- 数值非保序：与 ifort2021 冠军（位级一致）不同，本候选为"速度换精度裕量"，全量 vali 结果决定去留。

## 4. 后续 profile 计划（若全量通过）

- perf 对比 B vs A（rank-0，144/720）：验证 pow/exp 路径切换后的热点变化（__libm_pow_e7 份额应大幅下降）。
- PROFILE 区间对照：GLS 1167.8→? / Biology 585.6→?（CPU-s 含 poll 记账，仅看相对变化）。
