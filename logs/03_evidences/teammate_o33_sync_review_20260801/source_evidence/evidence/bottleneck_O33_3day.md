# 当前瓶颈分析（O33 正式 3 天，组委会口径）

依据：`Prompt/Prompt.txt` §7–§9、`mcc.md` 红线；数据：`118307015`，real **2129.85 s**，vali 全过。

## 1. 成绩位置

| 口径 | 时间 | 相对 baseline 6606 s |
|------|------|----------------------|
| O33 3 天 | **2129.85 s** | **3.10×** |
| 理想 &lt;10 min | 600 s | 需再 **3.55×** |
| feng E063 3 天 | 2452 s | 慢于 nan |
| feng E065 GCC 3 天 | 2377 s | 慢于 nan；Dongsha u=5.7e-5 |

结论：nan O33 已是队内墙钟最优正确父本；继续优化须打 **G02 算核 + 同步税**，勿重复已关微优化线。

## 2. G02 PROFILE（rank CPU 合计，相对 178167 s）

| 区域 | % | 解读 |
|------|---|------|
| 3D predictor (`pre_step3d`) | **13.6** | 最大算核 |
| Corrector tracers (`step3d_t`) | **11.0** | 已 OMP；缓存线 O39–42 无效 |
| Model 2D (`step2d`) | **10.6** | 访存核；扩 OMP 已关（feng E068） |
| GLS | **10.0** | CSE/代数 pow 已关 |
| Biology | **5.6** | 算术核，仍可位级 CSE（非 GLS） |
| 4D+2D halo | **12.6** | O26 改写无效；多为同步等待 |
| point gather (G01 重) | G01 1.6% | 已 sparse/packed |

网格级：G02 计算仍主导；通信占比非零但「缩消息」历史收益有限（feng E040/E061m）。

## 3. 组委会约束下的可动刀

**禁**：物理/网格/dt/输出/强迫/关生态/单向嵌套/DCU；`.in` 仅 Ntile + 调试 NTIMES。

**可**：见最新总表 `retrospective_O43_O46_and_plan.md` §5（biology `exp` CSE、Allreduce 减次数、NBC 重叠等）。

**PROFILE**：优化期保持 `#define PROFILE`；达理想目标/交卷再关（用户 2026-08-01 澄清）。

## 4. 已关闭勿再盲试

UCX、prefetch、tracer 缓存、扩访存 OMP、128 MPI、GLS CSE/代数 pow、陆地跳过、**PROFILE 关（优化期）**、**OMP nowait/融合（O44/O46）**、`-qoverride-limits`（O45）。

## 5. 下一实验

完整候选与优先级：`retrospective_O43_O46_and_plan.md`。建议顺序：回滚 O46 →（可选）O33 PMPI 诊断 → biology `exp` CSE → 换位点合并小 Allreduce。
