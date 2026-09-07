# Stage 143 条件式 P1 相位探针设计门

> 2026-08-10 EDT 修订：精确计时与 late-rank 判据以 `analysis/stage143_p1_duration_probe_refinement_20260810/P1_DURATION_PAIRING_SPEC.md` 为准。禁止跨 rank 比较 `MPI_Wtime()` 绝对时间戳；旧 Stage 140 patch 不可提交。

本文件是设计建议，不是已授权作业或性能结果。

## 目标

用一次最短 `144/720` 诊断回答：late ranks 的延迟究竟来自 pure step2d、contact 计划/分配、contact 插值/pack、halo pack、MPI/UCX wait、unpack，还是 nesting feedback sync。

## 最小计时面

1. `step2d_tile`：纯算术段累计，不在每个小循环打点。
2. `mp_exchange2d/4d`：分别累计 pack、post/send/wait、unpack。
3. `get_contact2d/3d`：分别累计 plan/count/allocate、pack/interp、MPI wait、unpack/writeback。
4. `main3d` 的 `n2dPS/n2dCS` 与 feedback synchronization 总窗口。
5. 64 ranks 都执行同样数量的 `MPI_Wtime`，避免只给 late ranks 增加测量开销；内存累计，结束时一次 gather/write。

## 合并 CPU/cache 遥测

在作业开始及运行中只读采集：THP 状态、huge-page 数、代表性 late/early rank 的 `numa_maps`、`smaps_rollup`、`numastat -p`、page faults；Hygon dTLB 事件仅做 capability check，零值不得当证据。

## 晋级门

- instrumentation 源码与 S32 冻结归档有完整 manifest/diff；不改变任何物理量、调用顺序或通信内容。
- 运行 `ROMS/TOMS: DONE`，轨迹与未插桩 S32 短诊断一致；测量开销单独报告。
- late-rank 相位在重复样本中持续，且某个可修改实现段的保守可移除 wall 上限 >2%。
- 只有满足上项才构建 P2；P2 仍需 A/A′/B、两 B 更快、短测 ≥3%、完整 `2592/12960` 和官方 26/26。

## 停止条件

若时间主要落在不可消除的 MPI wait/halo graph，或可修改的 contact/pack 段 <2%，停止源码优化并冻结 S32 交付。
