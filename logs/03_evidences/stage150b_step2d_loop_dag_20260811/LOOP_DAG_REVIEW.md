# Stage 150B：step2d loop-DAG 人工复核

日期：2026-08-11 EDT。范围：冻结 S32 active `step2d.f90`，静态分析，无源码修改、build 或作业。

## Exact inventory

- 源码：1283 行，SHA-256 由证据清单记录。
- 127 个活动 `DO` 头；其中约 60 个为主要外层/独立循环，余者是内层 i-loop、边界一维 loop 和 source loop。
- 25 个 CALL 边界，包括 halo、BC、湿干、体积守恒与 source 处理。
- exact IPO section 5977 行：155 条 vectorized、120 条 not-vectorized、54 条 stride multiversion、13 条 scalar replacement。not-vectorized 计数包含外层/不盈利 loop，不能解释成 120 个 SIMD 机会。

## DAG 屏障

1. `DUon/DVom` 产生后立即经过 periodic/MPI exchange 和 `set_DUV_bc_tile`；后续平均、自由面和动量计算必须消费同步后的版本。
2. `zeta(knew)` 在自由面计算后经过 source、`zetabc` 与 halo，之后才进入动量 RHS；不能跨越该边界融合。
3. 四阶平流的 `grad/Dgrad` 有西东南北边界修补，四种 staggered flux 域不同；全段不是一个合法无缓冲 fusion island。
4. 最终 `ubar/vbar(knew)` 后有 BC、体积守恒、source 和 halo，不能把下一 fast step 的计算提前越过。

## 候选 island

| Island | 行号 | 可删除内容 | 硬约束 | 判定 |
|---|---|---|---|---|
| S2-A 自由面临时量 | 486–577 | `rhs_zeta/zeta_new` 的后续 copy sweep | 三个时间分支、predictor-only `rzeta`、source/BC/halo | 小范围；无 >=25% step2d 证据 |
| S2-B 四阶平流 rolling | 667–822 | 部分 `grad/Dgrad/UFx/UFe/VFx/VFe` materialization | 四个 staggered stencil、四侧边界、跨行生命周期 | 需多行 buffer/recompute，风险与 t3dmix 类似 |
| S2-C Coriolis + curvilinear | 828–878 | 两组 `UFx/VFe` scratch sweeps | 两次对 `rhs` 的先后累加；直接合并会改变加法顺序 | exact-order 需保留 scratch 或额外 row buffer |
| S2-D harmonic viscosity | 884–944 | `Drhs_p` 与四通量 scratch | wet mask、PSI/R/U/V 不同域和二维 stencil | 小子段，无法单独过门 |
| S2-E momentum tail | 1069–1208 | `Dstp` 与 predictor `rubar/rvbar` copy | 邻点 Dstp；直接展开增加 `zeta+h` 重载 | copy 可融合但收益很小 |

历史 Stage 108 已实测 S2 的最简单三遍遍历融合：2D timer 约快 1%，wall 反而慢 1.7416%。主导 8x8 decomposition 下单 rank 二维临时量通常只有数 KiB 到几十 KiB，已驻留 L1/L2；因此把多个 source-level sweep 的“删字节”当作 DRAM 节省会严重高估。

## 门禁结论

没有任何单 island 能证明 step2d 局部削减 >=25%。把 S2-A 至 S2-E 相加也不合法：它们处在不同物理段、不同分支和不同 staggered domain，且融合带来的寄存器压力、边界分支与 row-buffer traffic 会重叠。自动 DAG 只提供候选，不提供可加和收益。

判定：`STATIC_VALID / STEP2D_DAG_NO_GO / REJECT_BEFORE_BUILD`。
