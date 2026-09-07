# Stage 160 第二次分析：动态汇编热点与瓶颈

## 静态代码生成

| kernel | instructions | YMM operands | XMM operands | div | pow/exp call feature |
|---|---:|---:|---:|---:|---|
| pre_step3d | 13091 | 273 | 1250 | 18 | 无主要 libm 调用 |
| step3d_t | 8135 | 161 | 560 | 15 | 无主要 libm 调用 |
| t3dmix4 | 3853 | 98 | 302 | 4 | 无主要 libm 调用 |
| gls_corstep | 12170 | 313 | 2058 | 45 | 78 个 `pow` call site |
| biology | 6816 | 572 | 1030 | 55 | 28 个 `exp` call site |
| step2d | 29505 | 996 | 3878 | 55 | 无主要 libm 调用 |

六个内核均未发现 gather 指令。XMM 数量高于 YMM 不能单独证明动态标量瓶颈，因此又对 rank 28/42 做了指令级注释。

## 可重复动态基本块

- PRE：`0x7ca0c5 vmulpd` 8.485%、`0x7c22b0 vsubpd` 7.435%、`0x7c5144 vmulpd` 6.950%、`0x7c7091 vsubpd` 5.675%、`0x7c8df9 vsubpd` 5.310%。均为 YMM 数据路径。
- step3d_t：六个主要 YMM 算术点平均分别占 9.150%、8.435%、6.875%、5.905%、5.710%、5.250%。
- t3dmix4：`0x7b00a6 vmovupd` 9.685%、`0x7af362 vmulpd` 7.925%、`0x7b1aa9 vmulpd` 6.500%，并有多个 3% 左右的 YMM store/loop-update 点；符合流式 load/store + arithmetic 内核。
- GLS：`0x670057 vmulsd` 4.285%、`0x670153 vmulsd` 2.675%、`0x670119 vdivsd` 2.570%，另有 `pow` 调用；这是最明显的标量算术区。
- Biology：动态顶部落在 LEA、标量 load/store/add 和少量 YMM 路径，显示复杂寻址与分支/标量路径并存。
- step2d：样本分散，单一指令平均不超过约 1.3%；没有一个明显可独立拿下整机 2% 的基本块。

## 瓶颈判定

1. `pre_step3d + step3d_t + t3dmix4` 已广泛使用 AVX2，继续加 `IVDEP/SIMD` 不构成新机制；真正机会只能来自减少数据移动、融合乘加或重排不在关键路径上的材料化。
2. t3dmix4 的证据支持 memory-streaming 描述，但 Stage 150 已证明 rolling fusion 的保守整机上限不足 2%；本次没有推翻该门禁。
3. GLS scalar pow 的动态整机份额约 7.35%，但 Stage 137 已有 precise-SVML/微基准与 critical-path 负证据；仅凭本次再次看到 scalar pow 不足以重启。
4. 汇编中全局 `-no-fma` 导致 YMM 热块没有 FMA 收缩。唯一新的 assembly-driven 静态候选是：仅对 PRE、step3d_t、t3dmix4 做 selective-FMA 构建门禁，先比较实际 `vfmadd/vfnmadd` 数量和对象级指令削减；不直接运行模型。

结论：`AVX2_ALREADY_ACTIVE / SCALAR_LIBM_KNOWN / SELECTIVE_FMA_STATIC_GATE_ONLY`。
