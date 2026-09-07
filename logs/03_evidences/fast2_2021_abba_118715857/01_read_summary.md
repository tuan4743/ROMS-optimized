# fast2_2021 ABBA 三件套 — 读摘要（2026-08-07）

## 结果

| 项 | 值 |
|---|---|
| 作业 | `118715857`（j05r2n[00-03]，4n/64×2，144/720，W0 预热） |
| A（冠军 O33+ifort2021+HOT_TEAMS） | A1 123.458 / A2 119.269，mean 121.364 s |
| B（O33_fast2_2021 `a1e19c4c...`） | B1 115.555 / B2 113.197，mean **114.376 s** |
| gain | **+5.7575%** |
| both_B_faster | **True**（B 两样本均快于 A 两样本） |
| trajectory | EXPECTED_DIFFERENT（B 两腿内部一致 `a83e5984...`，浮点语义变化） |
| verdict | **PROCEED_FULL_REVIEW_REQUIRED** |

## 候选内容

- 单因果轴：`Compilers/Linux-ifort.mk` 两行 append（biology.o、gls_corstep.o）：
  `-fp-model fast=2 -no-prec-div -fp-speculation=fast`（在 -qopenmp -no-heap-arrays 之后，覆盖全局 -fp-model precise）。
- 源码零改动；其余对象与全局 flags 不变；ifort 2021.3.0 工具链与冠军相同。
- 靶点：pow 9.2% CPU（gls_corstep 40 + biology 47 个调用点，2026-08-07 静态归因）。

## 背景衔接

- 前序：`-fimf-precision=low` 被证明在 -fp-model precise 下被静默忽略（对象逐字节相同）→ 轴转到 fast=2。
- 2017 侧 fast=2 教训（Stage 104/108：biology fast=2 → GLS 区间 +20% 吸收、墙钟 −1~−2.8%）在 2021 上未复现：
  2021 下两对象同时 fast=2，GLS 自身也被提速，无单侧吸收路径。
- 与 hpcx 2.11（ABBA +2.30% 但全量 FLAT）对比：fast=2 样本级 +5.76% 显著大于 2.3%，但仍以全量为准。

## 下一步（已执行）

- 全量 `118716176`（2592/12960 + 官方 26/26，MOD_HPCX=2.7.4）已提交，PD 排队。
- 通过 26/26 → 新冠军 = O33 源码 + ifort2021 + 两对象 fast=2 + KMP_HOT_TEAMS；交付包需含 mk 两行 patch。
- 失败（gcc731 先例：Dongsha60 u 超限 0.000001）→ 关闭候选，冠军不变。
