# Stage 152 — P1 S47 late-rank critical-path probe：第一次分析

- 日期：2026-08-11 EDT
- 状态：DESIGN_AND_LINEAGE_AUDIT / NO BUILD / NO JOB
- 路径：`analysis/stage152_p1_s47_critical_path_probe_20260811`

## 目标

执行最后一次性能研究实验：只比较同一 rank 内的阶段持续时间，以“局部工作额外耗时 + 紧邻等待减少”识别真正决定 wall time 的 late rank。禁止比较不同 rank 的 `MPI_Wtime()` 绝对时间戳，禁止增加同步。

## 当前父本

Stage 151 文档所列 S32 已不是当前最快父本。只读刷新确认当前计分最好结果为 S47：

- job：`118946283`
- full real：`1661.816 s`
- 完整步数：`NTIMES=2592 12960`
- 官方验证：`26/26 PASS`
- 运行二进制 MD5：`1fc3be38a746ba1f5f5885eaf98e3bee`
- 冻结源码包：`/public/home/fujiake/nan/sprint/backup_S47_FULL_SRC_20260811.tar.gz`

探针必须从冻结 S47 lineage 派生；不得从当前可变 live tree 或 S32 派生。

## 晋级门禁

1. 记录 same-rank durations，不比较跨节点绝对时间戳。
2. 不增加 `MPI_Barrier`，不改变消息次序、模型数组或数学公式。
3. 探针开销目标 `<0.5%`；若 `>1%`，缩减采样点并重做 A-prime 门禁。
4. 以 `paired_excess=min(max(0,work-median(work)), max(0,median(wait)-wait))` 计算保守可移除量。
5. 同一 rank/tile 机制必须在两条 clean probe legs 重复。
6. 两条 clean legs 的保守 whole-wall ceiling 均 `>2%` 才允许最后一个优化候选；否则 `FINAL FREEZE`。

## 计划腿序

`A-prime -> P-clean-1 -> P-sidecar -> P-clean-2 -> A-prime`

该文件是第一次读取与初步总结；本阶段尚无构建、作业、输出或删除。
