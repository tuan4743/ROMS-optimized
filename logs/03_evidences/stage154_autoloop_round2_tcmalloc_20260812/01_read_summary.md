# Stage 154 自循环 Round 2：tcmalloc minimal

- 日期：2026-08-12 EDT
- 状态：`COMPLETE / INEFFECTIVE / STOP`
- 父本：S47 job `118946283`，binary MD5 `1fc3be38a746ba1f5f5885eaf98e3bee`
- 候选：只给 ROMS MPI ranks 预加载 `/usr/lib64/libtcmalloc_minimal.so.4.4.5`
- 库 SHA-256：`35cf7807f74daf2c2860a22c9d65a06994d60c9dec86df8e7cd275f931b97cf4`
- 烟雾测试：`LD_PRELOAD=... /bin/true` 返回 0

机制假设：替换 glibc 2.17 allocator，降低 nesting/contact 等路径中重复 allocate/free 的运行时代价。S47 已全局使用 `-no-heap-arrays`，因此预期较低，但该 runtime-only 轴尚无 A/B 证据。

计划：同一 allocation `A-B-B-A`，`NTIMES=144 720`。A 不设置 `LD_PRELOAD`，B 仅通过 `mpirun -x LD_PRELOAD=...` 给 ranks 预加载 tcmalloc。`>=2%` 且两个 B 腿均更快才晋级；否则停止。短诊断不作为计分或精度证据。

Round 1 和 Stage 152 输出继续保留；开始本任务未删除结果。

提交：job `119041830`；远端脚本 SHA-256 `884f8f2e663c77ab8f024defa9fc20b10359698e28253d4ae4fe2757a5cd75d5`；输入模板 SHA-256 `05ceb746d36522ccdb960ab082b70401d294fd0cc8a393c25bcb9e25365e7b21`。

首次提交 `119041830` 在 A1 启动时因私有运行目录缺少 `ROMS/External/varinfo.dat` 停止，real `1.939 s`、无 DONE、无模型结果。归类 `INVALID_STARTUP / NOT PERFORMANCE EVIDENCE`，失败日志保留。脚本已补充指向 S47 私有源码树 `ROMS/External` 的链接，待重新提交。

修正脚本 SHA-256 `9631280269d7903909b7f360a9abfc478e616e4a18cd8c3df1712252a668b83f`；重提交 job `119042912`。

## 有效作业原始结果

Job `119042912` 在 `i17r2n[16-19]` 完成，四腿均 rc=0 且通过 DONE 硬门。

| 腿 | 配置 | real (s) | user (s) | sys (s) | 输出占用 |
|---|---|---:|---:|---:|---:|
| A1 | glibc | 114.118 | 2008.796 | 70.071 | 4 KiB |
| B1 | tcmalloc | 139.495 | 2281.462 | 218.412 | 4 KiB |
| B2 | tcmalloc | 151.101 | 2285.394 | 216.784 | 4 KiB |
| A2 | glibc | 101.271 | 2000.963 | 69.131 | 4 KiB |

A mean `107.6945 s`，B mean `145.298 s`；tcmalloc 相对回归 **34.917%**。两条 B 腿均慢于两条 A 腿；候选 sys 均值约为 A 的 3.13 倍。

初步判定：`INEFFECTIVE / NO FULL RUN / NO VALIDATION`。有效输出与首次无效启动日志均保留，未删除。
