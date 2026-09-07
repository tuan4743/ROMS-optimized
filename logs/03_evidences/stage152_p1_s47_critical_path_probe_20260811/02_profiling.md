# Stage 152 — P1 S47 late-rank probe：第二次分析（census profiling）

- 有效 census job：`119002058`
- 父本二进制 MD5：`1fc3be38a746ba1f5f5885eaf98e3bee`
- 探针 SHA-256：`fa4baa8634c6a7780d342974188537219568b56601ebc3b7144037930e521890`
- 规模：4 nodes / 64 MPI / 2 OMP，`NTIMES=12 60`
- 结果：`ROMS/TOMS: DONE`，real `19.735 s`

## Profiling 结论

逐事件 PMPI 记录不适用于该模型：

- 64/64 rank 均达到 `100000` 事件上限；
- 每 rank 仍丢弃约 `129360–242847` 条事件；
- 仅 12/60 的探针 TSV 已占约 `400 MB`；
- 模型输出目录仅 `4 KB`，空间来自探针而非 NetCDF；
- 丢事件意味着 work→next-sync 序列不闭合，不能用于 paired-excess 判定。

因此 `event log` 机制立即停止，不进入五腿正式诊断。下一版只能使用固定大小 cohort 聚合：按 `caller/op/count/tag/peer-class` 在线累计 calls、gap total/max、MPI total/max，并分三时间块落盘；循环中仍不得 I/O、MPI gather、barrier 或 atomic。

本文件只分析已完成结果，没有启动新模型作业或删除结果。

## Fixed-size aggregate clean gate

Job `119004483` used the same allocation for:

`A-prime-pre -> P-clean-1 -> P-clean-2 -> A-prime-post`

All legs used `NTIMES=144 720` and the byte-identical S47 champion.

| leg | real |
|---|---:|
| A-prime-pre | 101.041 s |
| P-clean-1 | 99.029 s |
| P-clean-2 | 98.585 s |
| A-prime-post | 97.131 s |

Both probe legs had 64/64 files, `overflow=0`, identical per-rank event counts,
and 133 exact cohorts comparable on at least 48 ranks.

The repeated maximum was `MPI_Allreduce` caller `0x560e5b`, mapped to
`distribute_mod::mp_assemblef_1d`, count `16796`:

- clean 1: `0.449833496 s / 99.029 s = 0.454%`;
- clean 2: `0.434705025 s / 98.585 s = 0.441%`.

Ranks 34/35 repeat as the leading pair. The next caller `0x560ac0` maps to
`distribute_mod::mp_sum_1d` and is also far below 2%.

No exact cohort approaches the `>2%` whole-wall gate. The conservative repeated
ceiling is the smaller clean-leg value: `0.441%`.
