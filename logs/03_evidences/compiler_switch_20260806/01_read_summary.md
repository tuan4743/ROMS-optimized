# Stage 109 编译器切换实验 — 结果与热点分析（2026-08-06）

## 实验概览

| 候选 | 构建作业 | 二进制哈希 | 144/720 ABBA gain | 全量 real | 官方 26/26 |
|---|---|---|---|---|---|
| O33 父本（ifort 2017.5.239） | — | `5f1a137e...` | — | 2136.310 s | PASS |
| O33 + KMP_HOT_TEAMS（原冠军） | — | `5f1a137e...` | — | 2109.183 s | PASS |
| **O33_ifort2021 + HOT_TEAMS（新冠军）** | `118661257` | `7cd46627...` | **+4.12%**（B 双快） | **2019.8 s（33m39.8s）** | **PASS** |
| O33_gcc731 | `118660950` | `c69fe383...` | +3.69%（B 双快） | 2059.2 s（34m19.2s） | **FAIL**：Dongsha60 u RMSE=0.000061 > 阈值 0.000060 |

- ifort2021：同 Linux-ifort.mk、同 flags、同源码，仅编译器版本 2017.5.239→2021.3.0（oneAPI classic）。
  轨迹 5/5 与 O33 **逐位一致**（`fa498694...`）→ 零数值风险；全量 Dongsha u=0.000052 与 O33 相同。
- gcc731：Linux-gfortran.mk（`-march=znver1 -mtune=znver1 -fstack-arrays -ffp-contract=off -O3 -funroll-loops` + 5 热点对象 -fopenmp）。
  轨迹不同（浮点顺序差异，预期）；全量验证 Dongsha60 u 以 0.000001 之差超限 → **不可作计分候选**。
  且其全量 2059.2 s 慢于 ifort2021 的 2019.8 s → 关闭。

## perf 热点对比（rank-0，cycles:u，-F 99，144/720，perf_event_paranoid=2，仅用户态）

### O33+HOT_TEAMS 基线（Stage 102 / 118617130，15755 样本）
pre_step3d 15.32% / uct_dc_mlx5 progress 10.02% / step3d_t 9.48% / __libm_pow_e7 6.73% / step2d 6.35%

### O33_ifort2021（118663698）
1. pre_step3d_tile 13.27%
2. uct_dc_mlx5_iface_progress 10.55%
3. step3d_t_tile 10.37%
4. __libm_pow_e7 9.20%
5. t3dmix4_tile 5.40%

→ **热点结构不变**（pre_step3d / MPI progress / step3d_t / pow / t3dmix 同为前五）。
pow 占比 6.7%→9.2% 上升，但墙钟下降 4.2% —— 2021 向量化改善主要落在未命名符号区
（总体命名份额相近，剩余地址未符号化部分收益最大）。

### O33_gcc731（118663699）
1. uct_dc_mlx5_iface_progress 9.95%（MPI 排第一）
2. t3dmix4_tile._omp_fn.0 6.11%
3. biology_tile._omp_fn.0 6.09%
4. step3d_t_tile._omp_fn.1 5.85%

→ **热点结构改变**：pre_step3d / pow 跌出前四；gcc OpenMP 区域（biology/t3dmix/step3d_t）
以 _omp_fn 命名直接上榜；pow 未出现（gcc libm 路径不同）。

## ROMS PROFILE 区间 CPU 秒（Grid 02，144/720 单进程计时）

| 区间 | O33(2017) | ifort2021 | gcc731 |
|---|---|---|---|
| 2D kernel | ~845* | 845.0 | 717.5（−15%） |
| Biology | 554.8 | 585.6 | 843.0（+52%） |
| GLS | 988.9 | 1167.8（+18%） | 915.3（−7%） |
| Predictor | ~1130* | 1137.0 | 1299.8（+14%） |
| Tracers | ~1070* | 1074.8 | 1191.6（+11%） |

*O33 列 A-leg 参考值取 Stage 104/107 各 ABBA A 腿区间。CPU 秒含 busy-poll 等待记账（Stage-90 方法），
不等于墙钟归因。gcc731 优势区间 = step2d + GLS；劣势 = biology + predictor + tracers。
ifort2021 各区间与 2017 基本持平（GLS 名义 +18% 被 poll 记账吸收），墙钟净 −4.2% 来自整体代码生成效率。

## 交付含义

- **新计分父本候选 = O33 源码 + ifort 2021.3.0 + KMP_HOT_TEAMS 运行时（2019.8 s，26/26，位级同 O33）**。
  交付侧需要：构建环境加入 oneapi 2021.3.0 的 PATH/LD_LIBRARY_PATH 两行 + 运行脚本加 KMP_HOT_TEAMS 两变量。
- gcc731 关闭（验证不过 + 更慢）。编译器轴结论：**换版本（ifort 2021）有效且零风险；换编译器（GCC）速度有但验证不过**。
- 遗留：2021 的 `-fimf-*` / `-qopt-calloc` 等 2021 专属开关未穷举（本次为单变量最小改动）。

## 输出生命周期

- 保留：`118662236` ifort2021 全量根（新冠军证据）、`118661414` ifort2021 ABBA、`118662044` gcc731 ABBA、
  `118663696` gcc731 全量根（FAIL 证据）、`118663698/699` perf 根、两个构建树。
- 删除：`118661416` gcc731 首次 ABBA 根（harness 阶段产物，nc=0，脚本 bug）。
