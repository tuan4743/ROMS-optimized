# Stage 150C：GLS 与 biology 最终静态筛选

日期：2026-08-11 EDT。冻结 S32 active source 与 exact IPO report；无源码修改、build 或模型作业。

## Exact inventory

| Kernel | 全长 CPU 份额 | 源码 | DO | 数学调用 | IPO vectorized / not | 已有关键证据 |
|---|---:|---:|---:|---:|---:|---|
| GLS pool | 13.6465% | 899 行 | 62 | 57 个 `**` 源码点 | 56 / 45 | pow 7.046% CPU，但 Stage 137 证明不在 4D-halo late-rank critical path |
| biology | 8.76% | 1952 行 | 40 | 29 EXP + 39 `**` | 40 / 25 | S32 已含 biology fast=2；Stage 108/110/135 与 exp CSE/换序均已有负证据 |

编译器 remark 数量仅用于结构定位；外层、递推和成本模型拒绝项不能自动转化为 SIMD 候选。

## GLS

1. `tke` 与 `gls` 各有 Thomas-like 前扫/回扫。二者复用同一个 `CF(i,k)` scratch；若在相同 k-loop 融合，需要第二套 CF 或改变先后求解/浮点顺序，不能消除等量 materialization。
2. `wall_fac/BCK/BCP` 的运行时非整数幂是真 CPU 热点。Stage 137 八-pow 微核达到 1.719831x、最大 2 ULP，但 GLS-heavy ranks 与 4D-halo late ranks 不重合；它没有形成 >2% wall critical-path 机制。
3. 稳定函数、限制器与 `Akv/Akt/Akk/Akp/Lscale` 写回已经处于同一 `i,k` 主段，属于现有大 fusion island；再融合会扩大活跃集而非删除完整场。
4. GLS fast=2 双对象全长曾快 4.54%，但官方 Dongsha60 `u=0.000062 > 0.000060`；温和 GLS flags 没有速度，不能复开。

结论：没有新的、区别于 pow/fast-flags/Thomas 重排的 >2% wall 机制。

## Biology

1. 外层 `j` 已 OpenMP；光照 `PIO(i,k)=PIO(i,k+1)*EXP(...)` 沿 k 有真实递推。Stage 135 的 i/k 组织只得到编译器约 1.070x，过度乐观作用于全部 biology 也仅约 0.4416% 整机。
2. S32 冠军配方已含 biology `fast=2`，不能重复计为新优化。biology-only fast=2 的完整结果 `2033.079 s`、26/26 PASS，但比父本慢约 0.657%；短程也出现负向/GLS 吸收。
3. 重复 EXP CSE 已测目标 region 约快 1.55%，按 biology 份额只约 0.12% 整机；不重跑。
4. 反应/源汇主段已在单个列/层数据生命周期中组织；跨 tracer 进一步融合会增加 17 tracer 活跃集和寄存器/缓存压力，并可能把微小数值变化传入 GLS。

结论：没有新的、区别于 fast-math、EXP CSE、loop permutation 的 >2% wall 机制。

## 最终判定

`STATIC_VALID / GLS_NO_NEW_CANDIDATE / BIOLOGY_NO_NEW_CANDIDATE / GLOBAL_FUSION_MINING_CLOSED / NO_BUILD / NO_JOB`。

Stage 150A、150B、150C 已执行完。当前不再有通过静态门禁的优化实验；冻结 S32，后续工作转为交付、技术报告与现场复现准备。
