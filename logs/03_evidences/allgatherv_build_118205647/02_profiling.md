# 第二次分析：Allgatherv 候选构建与归属审计

- 日期：2026-07-30（平台时间）
- 分析范围：源码、构建命令、链接依赖和并发任务归属；无模型计时

## 隔离边界

候选树与已验证原始 GCC 树分离。相对通过源码，已审计的因果变化只位于 `mp_aggregate2d/3d`：将最大 tile 长度填充的 `MPI_Allgather` 改为保持 rank 顺序的精确计数 `MPI_Allgatherv`，并删除该 aggregate 路径不再需要的 `Arecv` 全缓冲区清零。`nesting.F` 和其余关键热点文件保持通过源码哈希。

编译规则 SHA-256 为 `a2a6feca1b4bb4271c5d7e4810417939bb0812ec0068e3686b364469556b773f`。job-specific make 日志显示 `distribute.f90` 由相同 GCC 7.3.1/HPC-X `mpif90` 以 `-march=znver1 -mtune=znver1 -O3 -funroll-loops` 编译；最终链接成功，无 OpenMP token 或 `libgomp`。

## 异常与证据边界

- `118204040` 在脚本输出文件创建前以零秒 `FAILED 0:53` 结束，没有编译日志；只能判定为脚本执行前失败，不能归因于源码或编译器。
- 同一脚本随后由并发会话提交为 `118205647` 并成功构建。
- 状态刷新与提交并发导致重复任务 `118206252`；发现后在 27 秒时取消。该任务运行过 `make clean` 并开始重建共享 scratch，因此 scratch 目录当前不是成功任务的完整可复现对象集。
- `118206252` 覆盖了非 job-specific `build_metadata.txt`，所以该文件不再可用于成功任务归属。成功证据必须使用 `build_allgatherv_118205647.out`、job-specific make/time 日志、Slurm accounting 和当前二进制 mtime/hash。
- 取消前未重新链接二进制；二进制 mtime 仍为 `13:25:14`，SHA-256 仍与 `118205647` stdout 中记录的 `55a95f9e...` 一致。

构建结果支持进入相同布局的 S0/S1 半日诊断，不支持任何速度或数值结论。未来若需再次构建，必须由构建脚本先执行 clean，不能复用当前部分 scratch 对象。
