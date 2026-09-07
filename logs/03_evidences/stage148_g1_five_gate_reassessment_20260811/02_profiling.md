# Stage 148 第二次分析：性能证据与剩余条件

## 为什么原始方向合理

- PRE 占全长聚合 CPU 约 `17.08%`；达到 2% 整体效果需 PRE 本体至少减少 `2/17.08=11.71%`，因此静态门取 `>12%`，最好 `>=15%`。
- 活动源码确有一个 provisional t3 producer 与随后 vertical RMW；源码逻辑 footprint 估算为一个完整 store+reload，约 `1.504 GiB/baroclinic step`。
- 与 G4 跨子阶段不同，G1 没有跨越 PRE 末端 BC、4-D halo、`nesting(nrhst)`，数据寿命更局部。

## 为什么 Stage 146 结果很小

已测实现没有真正把所有 provisional 值保持在寄存器/column scratch：它把完整 4-D 全局物化替换为单 tracer j-strip 工作集物化，仍有 scratch store/load，并引入 strip 边界 y-face 重算、索引/分支和调度变化。因而 `-0.1865%` 与“源码看起来删除 1.504 GiB”不矛盾：这部分可能被 cache 吸收，也可能被新增局部流量/重算抵消，或不在 wall critical path。

## Gate 5 现状

只读远端检查确认冻结 S32 二进制保留独立符号：

- `pre_step3d_mod_mp_pre_step3d_tile_` 地址 `0x67c260`，符号大小 `0x19150`。
- Stage 146 A′/B 的 `Build/pre_step3d.o` 仍在，大小约 930/943 KiB。

这只证明机器码可审计，不证明目标 store/reload。没有带源码行映射的 qopt report/反汇编归因前，Gate 5 仍为 NOT_DONE。

## 剩余 G1 的唯一合法形态

理想候选必须是 column/local：最多 `real(r8) col(N)` 或寄存器标量；不含 NT 维、不含完整 tile/field；必须在汇编中确认删除大规模 t3 store+reload，同时静态交通模型给出 PRE conservative reduction `>12%`。如果水平 C4 stencil 迫使重复 y-face 计算或需要 strip/tile scratch，使上限跌破 12%，则直接关闭 G1 家族。
