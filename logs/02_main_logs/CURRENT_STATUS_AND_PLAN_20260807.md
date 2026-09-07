# MCC26 ROMS-CoSiNE：恢复后状态入口（2026-08-07）

> Resume snapshot 2026-08-07 (final). Read this first, then Skill `progress.md` / `plan.md`, then `OPTIMIZATION_LOG.md` Stage 110.

## 0. 一句话状态

**冠军不变：O33 源码 + ifort 2021.3.0 + KMP_HOT_TEAMS（全量 `118662236` 2019.8 s，26/26，位级同 O33）。**
Stage 110 完整探索循环闭合：发现 fast=2 双对象 = −4.54% 全量加速（最大单一机制！）但官方验证 Dongsha60 u 超限 3.3% → 无效；
精炼矩阵（biology-only / gls 温和 / fimf）全部不能产生"又快又稳"配置 → 编译轴关闭。

## 1. Stage 110 结论矩阵

| 候选 | 样本 | 全量 | 26/26 | 判决 |
|---|---|---|---|---|
| HPC-X 2.11 | +2.30% | 2019.174 s（+0.03% FLAT） | PASS | 假阳性，关闭 |
| fimf-precision=low | no-op | — | — | precise 下静默忽略 |
| fast=2 双对象 | +5.76% | **1928.08 s（−4.54%）** | **FAIL u 0.000062** | 速度巨大、精度超限 |
| R2 biology-only | +1.71% | 2033.079 s（+0.66% 更慢） | PASS（u=0.000052） | 更慢，关闭 |
| R3 bio+gls 温和 | +1.78% | — | — | 扰动同 fast2、无速度 |

结构性结论：GLS 速度与 u 扰动同源（fast=2 重关联）；biology 被动证实（CoSiNE 不耦合动力）；
Dongsha60 u（阈值 0.000060）为最紧精度暴露点（gcc731 0.000061、fast2 0.000062 同点超限）。

## 2. 关键证据路径

- `analysis/fast2_2021_abba_118715857/`、`analysis/r2_r3_biofast_20260807/`、`analysis/ifort2021_axis2_plan_20260806/`（三件套）
- FAIL 明细：`/public/home/fujiake/fjk/mcc_runs/118716467_o33_fast2_2021_full_64x2/validation/vali_result.txt`
- R2 全量（PASS）：`/public/home/fujiake/fjk/mcc_runs/118720373_o33_biofast_2021_full_64x2/`
- 脚本：`experiments/{hpcx211,fimf,cand}_20260806/` ↔ 远端 `scripts/` 对应目录

## 3. 当前计划

1. 交付收尾（推荐主线）：冠军交付包已更新（build/run 脚本 + 文档）；剩余现场动作 = 冷编译复验、
   PPT 截图、现场清单核对（`04_提交准备/O33_交付清单_20260802/SUBMISSION_CHECKLIST.md`）。
2. 可选新轴（用户决定，各需独立 ABBA+全量）：oneAPI 2022/2023 版本再换（netcdf .mod 兼容性未验）、
   step2d 针对性优化（Stage 88 高风险 ~1.4-4.4% 模型跨门禁）。
3. 队列只读：队友（zya/nan）fast2/sprint 系列实验进行中，勿动。
