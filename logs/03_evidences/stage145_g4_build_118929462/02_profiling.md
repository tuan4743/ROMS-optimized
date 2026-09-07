# 第二次分析：构建谱系与编译路径 profiling

本文件中的 profiling 是构建路径/谱系核对，不是模型运行性能 profiling。

- A′ 与 B 的 ROMS 源码差异恰好两项：`ROMS/Nonlinear/step3d_t.F` 内容不同；B 独有 `ROMS/Nonlinear/step3d_t_vdiff_fused.h`。
- 两腿 `step3d_t` 编译命令一致：`mpif90 -c -no-heap-arrays -fp-model precise -march=core-avx2 -no-fma -ipo -ip -O3 -qopenmp -no-heap-arrays step3d_t.f90`。
- 编译器：ifort 2021.3.0；冻结 makefile SHA-256 `38824c70...94b68`；parent step SHA-256 `450c9892...5b62e`。
- B 源 SHA-256 `7c22a5c3...f6d8`；include SHA-256 `3e861906...e8b`。
- A′ 与 B 二进制大小均为 8,016,472 bytes，但 SHA 不同。
- 构建时模块环境和复核的运行模块环境中，A′/B 均无 `ldd ... not found`。

构建失败的归因已闭合：`118929211` 是 archive 缺 `Master/Module.mk`；`118929383` 是清单排序 hash 漂移；都不是候选代码错误。成功任务采用从私有冠军树补齐的 13 个 Master 文件，并用 `LC_ALL=C` 清单哈希 `5dc8b9cf...a3f1` 固定内容。
