# Stage 59 后续计划

## 当前决策

`WAIT_THEN_ONE_ABBA`

当前只有一个候选：使 O33 `fine2coarse` 的交换区与 ROMS 官方当前 `vtype` 分支一致。队友 job `118396521` 正在使用四节点，不读它的输出、不修改它的目录、不取消它，不在它结束前提交候选。

## 实验前门禁

1. 刷新 `squeue/scontrol`，确认队友作业已离开运行态。
2. 校验不可变 O33 父源码、`nesting.F`/binary 哈希和 `/public/home/fujiake/Inputfiles` 只读链接。
3. 检查私有文件系统空间。不删除最新有效结果；Stage 59 本身无模式输出，删除不适用。
4. 用精确 SHA 门禁新建私有候选；禁止在 `/public/share` 或队友目录写入。

## 唯一候选的改动范围

- 只改 `ROMS/Nonlinear/nesting.F` 交换区。
- `r2dvar` 分支保留当前二维周期/MPI 交换。
- `r3dvar` 分支保留当前三维/17 示踪物周期/MPI 交换。
- 不改 `correct_tracer`、`fine2coarse2d/3d`、`set_depth`、任何输入、网格、时间步、输出、生态变量、MPI 划分或编译参数。

## 最少运行方案

- 一次 Slurm allocation，A1-B1-B2-A2。
- 诊断 `NTIMES=144,720`，64 MPI x2 OpenMP，8x8/8x8。
- 相同父二进制/候选二进制、输入、rankfile、MPI 规则、节点和运行顺序日志。
- 必须收集 `time real`、DONE、trajectory hash、两个 grid profile，并生成三次分析。

## 停止/晋级条件

- `<2%`：关闭分支，不复现。
- `2%-3%`：只在两个 B 均快且 halo profile 同向下降时，允许一次不删最新结果的复现。
- `>=3%`：两个 B 均快、轨迹一致、halo 下降后，先解决“64 核”是 64 ranks 还是 64 physical cores 的评分口径，再做官方全程 26/26 验证。
- 任何 trajectory/DONE/profile 异常：立即停止，不宣称性能收益。
