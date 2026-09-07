# 非热点区域盘点（2026-08-12，四轮闭环后用户指示"从非热点看看"）

日期：2026-08-12。零机时只读盘点，无构建/无提交/无输出。目标：验证非热点（<2.5% wall 的计时池）是否存在被遗漏的 ≥2% 机制。

## 1. 非热点池完整清单（O33 全长 118405320 排名计时 + perf 118617130 交叉）

| 池 | timer | CPU share | wall share | 历史状态 |
|---|---|---|---|---|
| t3dmix4_s S-surfaces | 27 | 4.933% | ~5.4% | 与队友 itrc OMP 冲突 + Stage 85 scratch 风险 → 关闭 |
| point data gathering | 49 | 2.037% | 2.66% | Stage 95 稀疏化实测 −2.29% STOP |
| **set_avg（输出均值累积）** | **5** | **1.768%** | **2.308%** | **Stage 129 前科 CONFOUNDED（未正确测过）** |
| rhs3d | 21 | 1.881% | 2.456% | Stage 90 四对象 OMP 已测 STOP |
| step3d_uv | 34 | 1.962% | 2.562% | 同上 |
| t3dmix4_geo（hmixing） | 28 | 1.257% | 1.641% | 同上 |
| rho_eos | 14 | 1.224% | 1.599% | Stage 90 已测 + Stage 139b rho_eos OMP=数值 bug |
| Writing of output data | — | 1.466% | ~1.5% | master-collect 串行写；输出配置冻结 |
| **set_data（输入处理）** | **4** | **1.616%** | **2.110%** | 未测；OMP MASTER 单线程 I/O |
| 2D/3D coupling | 12 | 0.969% | 1.265% | 未测；池 <2% |
| prsgrd | 23 | 0.831% | 1.084% | 未测；池 <2% |
| omega | 13 | 0.601% | 0.785% | 未测；池 <2% |
| harmonic stress | 30 | 0.507% | 0.662% | 未测；池 <2% |
| tidal forcing | 48 | 0.297% | 0.388% | 未测；池 <2% |
| vertical BC+integrals | 31 | 0.071% | 0.093% | 池极小 |
| __libm_exp_e7 | — | 1.32% | ~1.4% | exp 在 biology/gls；数学库重写族已全关 |
| memset/memcpy | — | ~1.1% | ~1.2% | Stage 102 审计：上限 <0.5% |
| nesting put_refine3d | — | 2.31% | ~2.5% | 插值+通信混合；fine2coarse 家族已关 |

## 2. 唯一接近门禁的候选：set_avg（2.308% wall）

- **实现**：`set_avg.F`（4502 行）无 `!$OMP`（grep=0）；每步对全部 Aout 变量做 tile 级 RMW 累加（读 AVERAGE(ng)%xxx + 新场 → 写回），带宽受限。
- **Stage 129 前科**（`agent_tmp/staging_belowgate/setup_build_setavg.sh`）：给 tracer it-loop 加 `!$OMP PARALLEL DO DEFAULT(SHARED) SCHEDULE(STATIC)`，样本 −7.84%/全长 −8.12%——但 B 从错误树重建（缺 AVX2/no-FMA/IPO），**CONFOUNDED，数字不可用**；且方向为负（B 更慢）与 OMP 化预期相反，提示该尝试本身（tile 级小数组 OMP + 带宽受限 RMW）不成立。
- **机制再评估**：8x8 tiling 下每 tile 45x40（G1）/30x31（G2）点，RMW 累加为纯带宽型，2 线程共享 L2 → Stage 90 教训（计算加速不达墙钟，KMP_BLOCKTIME=0 时空闲线程休眠、UCX busy-poll 等）直接适用。**无新机制可改变带宽受限本质。**
- **结论：关闭**（前科方向为负 + 带宽受限 + OMP 轴 Stage 90 整体关闭）。

## 3. 其他被排除理由

- **set_data（2.110% wall）**：`set_data.F` 输入处理，OMP MASTER 单线程 I/O+时间插值；池接近 2% 但 OMP 化会与 I/O 串行语义冲突，且同属 Stage 90 关闭轴。未列为候选。
- **Writing of output data**：输出配置冻结（组织者：不改输出配置）；master-collect 串行写为 ROMS 默认，改并行写=改实现不改配置，但池 1.47% CPU <2% 且全长才可测（NAVG=864 > 144/720，短诊断不写文件）→ 成本/收益不成立。
- **t3dmix4_s 4.93%**：是"次热点"而非非热点；与队友 OMP 冲突 + Stage 85 scratch 风险，已关。
- **nesting put_refine3d**：4D halo 54% 由 nesting 驱动（perf 118617130 实证），但 fine2coarse 家族（Stage 60b）已实测关闭。

## 4. 结论

**非热点无 ≥2% 可达机制**：唯一接近门的 set_avg 因带宽受限 + OMP 轴整体关闭 + 前科方向为负而关闭；其余全部 <2% 或已有历史关闭理由。四轮闭环终局判定（冻结 S47、停止性能实验、交付收尾）**不受影响**。
