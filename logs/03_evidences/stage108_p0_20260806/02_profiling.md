# Stage 108 P0 机制分析（2026-08-06）

## 02 Profiling / mechanism

### biology-only fast=2：GLS 耦合吸收（结构性问题）

- 单变量：仅 biology.o 编译参数变化。Biology timer −18.4%（fast=2 的向量 libm/SVML 路径确实更快），但 GLS +21.6% 完全抵消。
- **关键归因修正**：gls_corstep.o 的编译参数与 O33 父本逐字节相同（grep mk.patch 验证）。因此 GLS 上升不可能是 gls 编译差异导致，而必然是 **biology 输出的数值变化**（fast=2 的 exp/pow 尾差，1-2 ulp 级）经 tracer/湍流场耦合进入 GLS 的迭代求解，改变了 GLS 的浮点路径与分支。
- 推论：任何改变 biology 内部浮点语义的优化（fast=2、SVML、nopow、CSE）都会触发同类吸收。Stage 48 的 biology exp CSE（+0.12% 全局）与 Stage 104 fast2（−1.06%）同模式。**biology 数学库路线在 O33 树上结构性关闭**，不是实现问题。
- S10 差异解释：nan sprint 树（2086.3 s）含全局 -no-heap-arrays 等系统差异，其 GLS 吸收被其他收益覆盖；该 2.34% 不可移植（Stage 103/104 已证）。

### step2d 三循环融合：L1 驻留无收益

- 修复版 bitwise 一致（trajectory SAME）证明融合算术完全等价，排除正确性因素。
- 2D kernel timer −1.0%（融合省了 Drhs 的 store→reload），但墙钟 −1.74%。
- **为什么负**：8x8 tile 下每 rank 的 tile ≈30×31 点，Drhs ≈7.5KB 完全驻留 L1/L2；原三循环中 Drhs 的跨循环 reload 本就 L1 命中（~10 cycle），融合省掉的这部分被以下开销抵消：
  1. 主体循环 Drhs+DVom 合并后 i-loop 负载增加，寄存器压力上升；
  2. 首行单独循环 + 每行两次 i-loop 的循环控制开销；
  3. 编译器对合并循环的向量化展开可能劣于原三循环（依赖链 Drhs→DVom 同迭代内紧耦合，限制 ILP）。
- IISc 论文的 +1.6% 前提是单 rank 大 tile（Drhs 数百 KB，跨 L2/L3），本配置 64×8x8 使其失效。
- **推论**：所有"数据移动/缓存局部性"类优化在 8x8 tile 下天花板被 L1 驻留封死（与 Stage 51 pmnreuse 的 0.165% 同族）。这是布局固定（8x8 由计分父本确定）带来的系统性限制。

### 对剩余 P1 方向的含义

- P1 临界路径 probe：仍有效（唯一可能 >2% 的源码路线），但目标是 step2d 持久 OpenMP——若 probe 证实 step2d 迟到，其收益来自并行化而非数据移动，不受本次负结果影响。
- P1 HPC-X 2.11/UCX：纯运行时轴，与本两项正交。
- P2 共享内存 halo：工程量大，perf 显示 uct_mm progress 仅 1.88%，上界受限。
- P2 PGO：通用但 stencil 收益有限（用户自评 0-2%），且与 fast=2 同属"编译器变换 biology"风险族——PGO 对 biology 的变换可能再次触发 GLS 吸收，需警惕。

## 结论

P0 两项按用户设计执行完毕，均被 O33 实测否决且各获得一条结构性的关闭理由（GLS 耦合吸收 / L1 驻留封顶）。"小优化组合包"路线关闭；唯一活性 = KMP_HOT_TEAMS（2109.183 s，26/26）。若继续，P1 的临界路径 probe 是唯一未被结构原因排除的方向。
