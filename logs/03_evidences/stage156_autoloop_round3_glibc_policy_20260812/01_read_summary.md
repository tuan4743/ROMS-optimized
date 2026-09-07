# Stage 156 自循环 Round 3：glibc no-mmap/no-trim

- 日期：2026-08-12 EDT
- 状态：`SUBMITTED / PENDING`
- 父本：S47 job `118946283`，binary MD5 `1fc3be38a746ba1f5f5885eaf98e3bee`
- A：glibc 2.17 默认 malloc 策略
- B：仅 ROMS ranks 设置 `MALLOC_MMAP_MAX_=0`、`MALLOC_TRIM_THRESHOLD_=-1`

机制：禁止 glibc 用 mmap 服务大块分配，并禁用 heap trim，尝试复用进程 heap、减少重复分配路径中的 mmap/munmap、清零和回收系统调用。该组合对应 Intel ifort `-qopt-malloc-options=3` 的核心 mallopt 参数，但无需重建 S47。

计划：同一 allocation `A-B-B-A`，4 节点/64 MPI × 2 OMP，`NTIMES=144 720`。两个 B 均更快且 mean gain `>=2%` 才晋级；否则关闭。Round 1/2 和 Stage 152 输出继续保留。

提交：job `119046362`；远端脚本 SHA-256 `b103b2515a7e624d3fe5b619fb2339b2ea96830bc6f1f801cd8d0848c7883aee`；输入模板 SHA-256 `05ceb746d36522ccdb960ab082b70401d294fd0cc8a393c25bcb9e25365e7b21`。

监控到 A1 完成：real `101.451 s`、rc=0/DONE；B1 当时正在运行。随后 Codex 远端命令审批额度耗尽，无法继续只读读取作业状态。当前数据不足以判断 Round 3，状态保持 `PENDING_EXTERNAL_READ`；没有启动 Round 4，也没有操作远端作业或输出。
