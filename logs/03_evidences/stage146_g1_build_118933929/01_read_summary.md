# 第一次分析：Stage 146 G1 构建

- 作业 `118933929`，COMPLETED `00:13:29`，节点 `i17r1n06`。
- 冻结 archive `615ee717...d3e`、frozen S32 binary `d9a45dbb...e5a2`、makefile `38824c70...4b68` 与 A′/B 源码哈希门禁全部通过。
- A′与B的 ROMS 源差异恰好一项：`ROMS/Nonlinear/pre_step3d.F`。
- ifort `2021.3.0`，同一 S32 `-O3 -qopenmp -march=core-avx2 -no-fma -ipo` 配方。
- A′ binary `a5b26f19...71a0e`；B `5354ce4a...99616`，非同一二进制。
- 结果：`BUILD_VALID / RUNTIME_LINEAGE_REQUIRED`。

