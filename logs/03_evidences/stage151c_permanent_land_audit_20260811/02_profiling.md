# Stage 151C — 第二次分析（源码语义 + ceiling）

P3 平均计时：GLS G1=7.235 s、G2=18.372 s，粗网格份额 28.26%；biology G1=3.099 s、G2=8.720 s，粗网格份额 26.22%。全长 PROFILE 份额 GLS=13.65%、biology=8.76%。

假设粗网格所有 GLS/biology 成本都严格按 cell 数线性缩放，并且 34.47% 陆地可以零开销完全消除，绝对乐观 whole-CPU ceiling 为：

`13.65% × 28.26% × 34.47% + 8.76% × 26.22% × 34.47% = 2.12%`。

这个 2.12% 不是保守上界。源码反证包括：

- `gls_corstep` 大量 face/stencil loop 以 `umask/vmask` 乘零，湿点计算仍需邻接陆地点，不能按 rho wet span 直接裁掉。
- `biology_tile` 主 J/k/i kernel 确实先对全 tile 建 scratch，但 O2/CO2 expensive surface routines 已在 `rmask>0` 内分支；可删除比例小于 land fraction。
- span dispatch、短 span、边界扩张与保持 SIMD 都有开销；SCS 平均每行 3.52 spans。
- Dongsha60（更慢的 GLS/biology grid）land=0%，完全没有收益。

保守 ceiling 必然低于 2%，判定 `NO_BUILD`。
