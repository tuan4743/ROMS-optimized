# Stage 153 自循环 Round 1：medium-message Allreduce ring

- 日期：2026-08-12 EDT
- 状态：`COMPLETE / INEFFECTIVE / STOP`
- 作业：`119037215`，节点 `i17r1n[00-03]`，4 节点、64 MPI ranks × 2 OpenMP threads
- 父本：S47 job `118946283`，binary MD5 `1fc3be38a746ba1f5f5885eaf98e3bee`
- 诊断规模：`NTIMES=144 720`；同一 allocation 内 `A-B-B-A`
- 唯一变量：HPC-X tuned Allreduce 对 64 KiB–4 MiB 消息由算法 6 Rabenseifner 改为算法 4 ring

## 原始结果

| 腿 | 配置 | real (s) | DONE 记录 | 输出占用 |
|---|---|---:|---:|---:|
| A1 | 原规则 | 110.948 | 3 | 4 KiB |
| B1 | ring | 115.133 | 3 | 4 KiB |
| B2 | ring | 120.765 | 3 | 4 KiB |
| A2 | 原规则 | 111.308 | 3 | 4 KiB |

A 均值 `111.128 s`，B 均值 `117.949 s`；B 相对 A **回归 6.138%**。B1、B2 都慢于两个 A 腿，且 B 腿之间相差 5.632 s，未显示稳定收益。

初步判定：`INEFFECTIVE / NO FULL RUN / NO VALIDATION`。短诊断不构成计分性能或精度证据。

结果目录 `/public/home/fujiake/fjk/stage153_autoloop_20260812` 保留；本阶段未删除任何输出。
