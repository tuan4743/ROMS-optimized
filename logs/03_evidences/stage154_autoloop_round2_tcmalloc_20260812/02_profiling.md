# 第二次分析：机制与性能归因

## 对照与计算

- 有效 job `119042912` 使用同一 allocation、同一 S47 二进制、同一输入、同一 collective rules、同一 64 MPI × 2 OMP 和 `144 720`。
- 唯一变量：B 腿通过 `mpirun -x LD_PRELOAD=...` 给 ROMS ranks 预加载 SHA 锁定的 tcmalloc minimal。
- A mean = `(114.118 + 101.271) / 2 = 107.6945 s`
- B mean = `(139.495 + 151.101) / 2 = 145.298 s`
- 相对变化 = `(145.298 / 107.6945 - 1) × 100% = +34.917%`
- 最有利于候选的单腿比较 B1 vs A1 仍回归 `22.238%`。

## 资源时间信号

- A sys mean = `(70.071 + 69.131)/2 = 69.601 s`
- B sys mean = `(218.412 + 216.784)/2 = 217.598 s`，为 A 的 `3.126×`
- A user mean = `2004.880 s`
- B user mean = `2283.428 s`，增加约 `13.895%`

因此回归不是只有 wall 抖动：两个 B 腿都重复出现显著更高的 system time 和 user time。最合理的实现层解释是旧版 tcmalloc 与该 MPI/OpenMP/NUMA 内存行为不适配，替换 glibc allocator 反而增加分配或线程同步/页管理开销。这里不把这一推断提升为精确微架构结论，因为本轮未采 allocator 栈或 PMU。

判定：`TCMALLOC_REJECTED`。不测试全长，不改变冻结 S47。
