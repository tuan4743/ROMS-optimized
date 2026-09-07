# Stage 151B — contact-aware 非均匀 8×8：第一次分析

- 日期：2026-08-11 EDT。
- 只读输入：`SCS_grd.nc`、`Dongsha60_grd.nc`、`SCS_Dongsha60_contact.nc`；既有 P3 `skewprobe_P3.tsv`。
- 物理网格尺寸、公式和输入均未修改；离线变量仅为每个 grid 的 9 个 I/J cut（仍为 8×8、64 logical ranks）。
- 既有证据：G2 receiver contact 与 G2 step2d Pearson=+0.8239，与 G2 4-D halo wait Pearson=-0.8935，因此 contact 必须进入模型。
- 新审计读取真实 `mask_rho` 与 17026 contact records，并保留当前均匀分块作为 A。
- 未修改 ROMS、未构建、未提交作业、未创建模型输出。

初判：这是与 rank mapping/Ntile factorization 不同的合法实现轴，但必须以“预测 critical-rank reduction >2%”作为 build 门禁。
