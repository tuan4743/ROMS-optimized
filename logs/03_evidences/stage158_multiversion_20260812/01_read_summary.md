# Stage 158 —— 热点对象激进多版本化：读取与初步总结

- 日期：2026-08-12。
- 精确父本：`/public/home/fujiake/nan/sprint/ROMS_CoSiNE15_s47_quant/backup_S47_src_20260810.tar.gz`，SHA-256 `9b87a3a1...cb9`；冻结二进制 MD5 `1fc3be38...bee`。
- 新机制：仅对 `pre_step3d.o` / `step3d_t.o` / `t3dmix.o` / `gls_corstep.o` / `step2d.o` 加 `-qopt-multi-version-aggressive`；不改源码、公式、MPI、网格、输入输出或精度模式。
- 与历史路线的区别：不是 AVX2/znver1/alignment/prefetch/IPO/PGO；它改变的是针对别名和步长条件的运行时版本化激进程度。
- 已有证据显示 ifort 默认已对许多 assumed-shape 循环执行 stride multiversioning，因此不直接认定有收益；必须通过 A′/B 优化报告差异先证明生成代码机制真实改变。
- 五对象覆盖的既有 CPU 池约 63%；要达到 2% 整机墙钟，仍需这些对象合计约 3.2% 的局部改善。

## 结果读取

- 有效构建作业 `119061659`：`COMPLETED / 00:08:38 / exit 0`；A′ 与 B 均完整构建。
- A′ 二进制 SHA-256 `f4a24f7b...1a2fe`（MD5 `6b67c826...023b`）；B SHA-256 `6b25b142...7fc`（MD5 `16391fc9...3489`）。
- 两个可执行文件的 `.text` 节位置和长度完全相同：offset `0xe340`，length `0xe9cd2 = 957650 B`；内容 SHA 不同，说明旗标确实影响了代码生成。
- 五个 IPO 对象每个恰好增加 72 B，但 report 中 multiversion/vectorized/not-vectorized/scalar-replacement 关键记录均为 0；报告只保留编译器及选项头。
