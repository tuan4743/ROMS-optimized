# 第二次分析：与现有 profiling 对照

## 关闭的文献方向

| 文献方向 | S47 对照 | 判定 |
|---|---|---|
| 增加 MPI/OpenMP 混合度 | 64×2 已是最佳布局；128 pure MPI、其他线程配比已测 | 不重开 |
| 计算图融核 | 全局 fusion mining、G1/G4、step2d DAG 已完成 | 不重开 |
| 通信隐藏/双缓冲 | UCX 下 Isend/Waitall、persistent、Sendrecv、double buffer 显著回归 | 不重开 |
| I/O 专用进程/PNetCDF | I/O 池约 1–2%，且输出设置不可改 | 不重开 |
| step2d 三循环融合 | Stage 108 wall `-1.7416%` | 不重开 |
| GPU/神威从核 | 决赛不支持 DCU，当前平台为 CPU | 不适用 |

## Round 3：glibc no-mmap/no-trim

- A：S47 当前 glibc 默认。
- B：只给 ROMS ranks 设置 `MALLOC_MMAP_MAX_=0`、`MALLOC_TRIM_THRESHOLD_=-1`。
- 与 Round 2 区别：不替换 allocator，不预加载第三方库；仅改变 glibc 大块分配回收策略，等价于 Intel 官方 `qopt-malloc-options=3` 的两个核心 mallopt 参数。
- 假设：nesting/contact 重复 allocate/free 若触发 mmap/trim，可减少内核态页映射与清零/回收。
- 反证预期：S47 `-no-heap-arrays` 且 Stage 152 allocator ceiling 很低，预计 FLAT；A-B-B-A 失败即关闭。

## Round 4：134,368 B Allreduce segmented-ring microgate

- A：HPC-X tuned alg6 Rabenseifner。
- B：alg5 segmented ring、64 KiB segment，只窄匹配 `16796 doubles = 134368 B`。
- 先做 4 节点/64 rank MPI_IN_PLACE microbenchmark，交错 A-B-B-A，多 blocks，比较 max-rank latency。
- Stage 152 whole-wall ceiling `0.441%`；若希望整机达到 2%，该 collective 需约 70% 降幅。微基准未达到就 `STOP_BEFORE_ROMS`。
- Round 1 是 64 KiB–4 MiB 全区 alg4 ring；本轮是窄尺寸 alg5 segmented ring，机制与规则均不同，但同样属于低预期 collective 轴。

两轮均冻结 S47、并行布局、输入和输出，不删除任何已有结果。
