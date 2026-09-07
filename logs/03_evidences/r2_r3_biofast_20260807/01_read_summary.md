# R2/R3 biofast 系列三件套 — 读摘要（2026-08-07）

## R2（biology-only fast=2）

- 构建 `118718217` OK（`oceanM.O33_biofast_2021` = `1f33a685...`，仅 biology.o 一行 flags）。
- ABBA `118718654`：mean_A 120.463 / mean_B 118.403，+1.7097%，both_B_faster=True，trajectory 5/5 SAME。
- **全量 `118720373`（2592/12960, hpcx 2.7.4）：real 33m53.079s = 2033.079 s，官方 26/26 PASS（Dongsha60 u=0.000052 = 冠军值）**。
- **但相对冠军全量 2019.809 s = +0.657% 更慢** → 样本 +1.71% 在全量反转（负向）。
- **判决：R2 关闭**（更慢；vali 通过仅证明 biology 被动假设成立：u 场不受 biology 浮点变化影响）。

## R3（biology fast=2 + gls 温和旗标 -no-prec-div -fp-speculation=fast）

- 构建 `119611`? 否 — 构建 `118719611` OK（`oceanM.O33_r3` = `1cb0d086...`）。
- ABBA `118719845`：mean_A 123.271 / mean_B 121.078，+1.7790%，both_B_faster=True，
  **trajectory = a83e5984（与 fast2_2021 完全相同）** → 可见浮点扰动全部来自 gls 旗标；gls 温和旗标无速度（R3−R2 ≈ +0.07%）。
- **判决：R3 关闭**（<2% 地板 + 扰动路径与 fast2 相同 → u 超限风险同源，无价值）。

## 编译轴（ifort2021 空间）闭合总结

| 变体 | 样本 | 全量 | 26/26 | 结论 |
|---|---|---|---|---|
| fast=2 双对象 | +5.76% | **1928.08 s（−4.54%）** | FAIL（u 0.000062） | 速度巨大、精度超限 |
| biology-only | +1.71% | 2033.079 s（+0.66%） | PASS（u=0.000052） | 更慢，无价值 |
| bio fast2 + gls 温和 | +1.78% | — | — | 扰动同 fast2、无速度 |
| fimf 精度族 | no-op | — | — | precise 下被静默忽略 |

- **结构性结论：GLS 的 u 场扰动与速度同源（fast=2 重关联）；分离不出"又快又稳"的 GLS 编译配置。**
- 冠军保持：O33 源码 + ifort 2021.3.0 + KMP_HOT_TEAMS（2019.8 s，26/26，位级同 O33）。
