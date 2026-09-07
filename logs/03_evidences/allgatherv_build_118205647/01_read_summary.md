# 第一次分析：Allgatherv 候选构建结果读取

- 日期：2026-07-30（平台时间）
- 成功构建任务：`118205647`
- 节点：`j05r2n10`
- 源码树：`/public/home/fujiake/fjk/ROMS_CoSiNE15_allgatherv_20260730`
- 构建脚本：`/public/home/fujiake/fjk/ROMS_CoSiNE15_allgatherv_20260730/build_allgatherv_gcc731.slurm`
- 构建脚本 SHA-256：`e0e7eb7e2fa90de46816ea443aca3f2f623dce81f7e8e447d139e439675ff42d`

## 原始结果

Slurm accounting 显示 `118205647` 为 `COMPLETED 0:0`，运行 `00:02:50`。`/usr/bin/time -v` 记录 make wall time `2:48.37`、退出状态 `0`。job-specific stdout 明确记录 `build_result=success`。

候选二进制：

`/public/home/fujiake/fjk/ROMS_CoSiNE15_allgatherv_20260730/.mcc_opt/bin/allgatherv_rankordered_gcc731_noomp/oceanM`

SHA-256 为 `55a95f9eb23e6345d34437cd65c136c1d2f5d6555d0e34550c725ad411c19c19`，文件可执行，大小 `3,777,528` 字节，mtime 为 `2026-07-30 13:25:14 +0800`。

构建前关键源哈希为：候选 `distribute.F=d573dcec715b2531c7f15a86a1a30a43c7baa7ff2affd24e01bf3eb94e0561df`，原始通过 `nesting.F=9e9e7f3b2acbcc54ad5199bbb52c0d1e7425c4fdfa946c5f938cb41bea807c12`。构建日志未出现 `-fopenmp`、`-D_OPENMP` 或 `-lgomp`，`ldd` 也不含 `libgomp`。

初始结论：候选使用 GCC 7.3.1/HPC-X 2.7.4、无 OpenMP 成功构建。该结果不包含模型运行、性能或准确性结论。

模型输出删除不适用；本任务未生成模型输出，既有完整 GCC 输出全部保留。
