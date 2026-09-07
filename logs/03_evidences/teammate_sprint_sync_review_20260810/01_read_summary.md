# 队友 sprint 轮进度同步审阅（2026-08-10）

日期：2026-08-10（本地）。只读同步队友（nan/zya）远端 sprint 轮进度；未创建源码/构建/任务，无删除。

## 证据来源（只读，存于 `source_evidence/teammate_docs_20260810.txt`）

- `/public/home/fujiake/nan/README.md`（O1–O84 全链记录，682 行）
- `/public/home/fujiake/nan/sprint/README.md`（sprint 轮 S21→S46 记录，2026-08-09 19:07 脚本事故清空后重建）
- `/public/home/fujiake/nan/sprint/优化设计文档_S42_vs_原版.md`
- `/public/home/fujiake/nan/sprint/ROMS_CoSiNE15_s46_pgo/`（S46 PGO 计时与 vali 日志）
- `/public/home/fujiake/zya/.mcc_opt/bin/ompk-s32-pgouse/oceanM`（PGO 二进制 md5 `93d9e574...`）

## 关键事实（队友口径，非本工作流测量）

1. **S32（2026-08-08 提交版）**：ifort 2021.3.0 + `-march=core-avx2 -no-fma` + 全局 `-ipo`；干净 3day `118769218` = **1762.5 s（29m22.5s）**，vali 全过（Dongsha u=5.2e-5）。相对组委会 6606 s = 3.75×。
2. **S38（采纳）**：step3d_t 垂直扩散 FC/BC 系数 `ltrc=MIN(NAT,itrc)` 复用（itrc≥3 免重算），1day 592.5 s（−0.67%），vali 过。
3. **S42（2026-08-09 最终最优）**：S38 + rho_eos 整例程 j 循环 OMP；3day `118818711` = **1750.1 s（29m10.1s）**，vali 全过（u=5.2e-5）；1day 587.9 s（−1.44%）。二进制 `oceanM.s42_20260809.bak`（md5 b2a17a27...）。
4. **S46 PGO（2026-08-10，nan 侧验证）**：S32 基座 + `-prof-use`（profile 目录 `/public/home/fujiake/zya/.mcc_opt/pgo/`）；**3day `118860553` = 1714.6 s（28m34.6s）**，vali **26/26 全过**（SCS temp 0.000200/salt 0.000017/u 0.000057/v 0.000041；Dongsha temp 0.000067/u **0.000052**≤0.000060/v 0.000020/zeta 0.000004；NO3 0.000184 等全部正常）。nan 侧二进制 `oceanM.s46_pgouse` = `oceanM.s46_PGO_best_20260810.bak`，md5 **`fcbfa6dc...`**（5,996,616 B，10:21 构建）。1day `118860122` = 581.0 s；ABBA `118859704` 四跑。
5. **zya 正式提交（2026-08-10）已完成**：`submit_pgo_full.sh` `118860640`（4 节点 j01r2n[04-07]，64×2，8x8，2592/12960，`--exclusive`，`spread_numa16_ccx_2t`，HPCX 2.7.4 intel2017 工具链）；zya 侧 PGO 二进制 `ompk-s32-pgouse/oceanM` md5 **`93d9e574c8c04d3b16a528f3e7fe7f8a`**（5,947,264 B，11:02 构建）；`process.time` = real **28m53.33s（1733.3 s）**，`ROMS/TOMS: DONE...12:03:04 PM`，16 个输出文件，run.exit_code=0。该作业自身的 vali 未由队友产出（zya `vali_pgo.py` 依赖 xarray 登录节点不可用）；同族 S46 PGO 的 26/26 证据由 `118860553` 提供。两个 PGO 二进制（nan fcbfa6dc / zya 93d9e574）是分别构建，均为 S32 基座 + prof-use，尺寸/哈希不同。

## 与本工作流冠军对比（我方：O33 + ifort2021.3.0 + KMP_HOT_TEAMS = 2019.8 s，26/26，Stage 109-115）

- S32 1762.5 s：比我方快 **−12.7%**
- S42 1750.1 s：快 **−13.4%**
- S46 PGO 1714.6 s：快 **−15.1%**（已带官方 26/26 证据）

## 初步结论

- 队友 sprint 轮在编译器/旗标/源码三轴上全部超过我方 Stage-109 冠军；S46 PGO 是我方所见全部进度中的最快全量验证成绩。
- 队友 PGO 结果与我方 Stage-110 教训不同（我方 fast=2 全量 1928.08 s 但 Dongsha60 u 超限 0.000062；队友 S46 PGO u=0.000052 正常）——PGO 在我方关闭名单之外，是合法且已验证的新轴。
- 差距主要在编译器基座（ifort2021 + AVX2 + ipo + PGO）与源码微优化（S38 系数复用、rho_eos OMP），未触及网格/输入/物理。
- 局限性：本审阅未重建/复跑队友二进制；队友计时含共享磁盘波动（S32 记录中 29m22s 与 37–38m 的 I/O 争抢差异）；zya `118860640` 自身 vali 未产出，需在具备 xarray 的环境（队友作业环境）补跑或由我方独立复跑。

## 输出生命周期

未创建模型输出；删除不适用；全部保留。
