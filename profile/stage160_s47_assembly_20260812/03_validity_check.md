# Stage 160 第三次分析：前两次结论有效性验证

- 作业 `119063099`：Slurm `COMPLETED 00:01:50 exit 0`；模型 real `1m45.362s`，日志含 `ROMS/TOMS: DONE`，stderr 为空。
- 二进制 MD5 与冻结 S47 一致；collective rules SHA 已记录。
- 八个 rank 各约 24K–25K 样本，`Total Lost Samples: 0`。
- rank 28/42 的动态顶部地址和相对排序重复：PRE、step3d_t、t3dmix4 的主要点均为 YMM；GLS 的 scalar multiply/divide/pow 也重复。
- `addr2line` 只能解析到 IPO 合并单元 `ipo_out.f:?`，因此没有伪造源码行映射；结论严格停留在符号与地址级。
- `cpu-clock` 是采样占比，不是硬件 stall/带宽计数；不得把顶部 load 直接宣称为 DRAM miss，也不得从短程 105.362 s 推导正式性能。
- 首次作业 `119063032` 因 wrapper 无执行权限在模型启动前失败，保留为 harness failure；修权后独立作业 `119063099` 才是有效样本。
- 未修改模型源码、输入、网格或输出设置；未删除任何输出；未运行官方 vali.py，因为本阶段二进制未变且不是计分候选。

最终判定：前两次分析有效，但只授权下一步 selective-FMA 的零模型静态构建门禁，不授权性能或精度结论。
