# Stage 142 热点函数与瓶颈复核：第一次读取

日期：2026-08-10 EDT / 2026-08-11 +0800。

## 任务与证据

- 当前正式参考：S32 作业 `118755216`，`1753.876 s`，官方 `26/26 PASS`；冻结二进制 SHA-256 `d9a45dbbc351a3e386a504c87d355f0db2197c6c6bdec2b5eb2b2276b36fe5a2`。
- 冻结源码：`/public/home/fujiake/nan/sprint/backup_S32_src_20260808.tar.gz`，SHA-256 `615ee7173c015eccc13ae8e3b193092d396817ae4a18648b3d7b55a517087d3e`；本阶段只用 `tar -xOf` 读取，没有解包或修改队友目录。
- 全长阶段计时：PROFILE-on 全量作业 `118784141`，`2592/12960`，`ROMS/TOMS: DONE`，`real=1852.823 s`；PROFILE 开销 `+5.64%`，只用于阶段归因。
- 函数采样：S32 selected-rank perf 作业 `118813105`，8 个匹配 edge/interior ranks；硬件 cache/DRAM 事件不可用，只采信 cpu-clock、cycles、instructions 与符号样本。
- 辅助证据：Stage 90 OpenMP、Stage 93/127 skew、Stage 134 compiler report、Stage 138 P0 contact map、Stage 139 CPU/cache 计划及所有关闭路线。

## 初步结论

主要 CPU 工作集中于 `pre_step3d_tile`、`step3d_t_tile`、GLS/pow、biology、`t3dmix4_tile` 和 `step2d_tile`；主要通信/等待集中于 `mp_exchange4d`、2D/3D halo 与 UCX progress。前五个大计算区多数已经使用两线程 OpenMP，单独加速计算已被实测证明会转化为下游等待。

当前 wall 瓶颈不是“平均 rank 算得慢”，而是细网格 `step2d/contact supply` 在少数 rank 上形成到达偏斜，随后在 halo/UCX progress 中显现。P0 已证明 contact ownership 与 late ranks 对齐，但没有量出可移除秒数。

状态：`STATIC / NO_NEW_MODEL_RUN / NO_PERFORMANCE_CLAIM`。上一任务没有模型输出；本任务也没有创建模型输出，删除不适用。
