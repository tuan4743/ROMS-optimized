# 论文与开源实现映射

## 直接支撑

1. **Debreu, Marchesiello, Penven, Cambon (2012)**，*Two-way nesting in split-explicit ocean models: algorithms, implementation and validation*，Ocean Modelling 49-50, DOI: https://doi.org/10.1016/j.ocemod.2012.03.003  
   对本题的意义：双向嵌套的快模态处理、selective update 以及用 refluxing 保持体积/示踪物守恒是算法边界。所以 `correct_tracer`、细→粗反馈和同步时序不能删；只能删除不对应当次更新的重复交换。

2. **ROMS 官方 `develop` 实现**，https://github.com/myroms/roms/blob/develop/ROMS/Nonlinear/nesting.F  
   对本题的意义：官方同名 `fine2coarse` 已把交换区按 `r2dvar/r3dvar` 分开。这是当前候选最强的交叉验证，也说明该处理具有通用性，不是针对某一算例的精度投机。

3. **ROMS Phase III nesting 说明**，https://www.myroms.org/forum/viewtopic.php?t=2912  
   对本题的意义：官方开发说明把 boundary fluxes、`correct_tracer`、`fine2coarse`、put/get contact 角色区分开，支持按生产/消费者审阅交换，而不是把嵌套简化为单向。

## 性能方法支撑

4. **Irrmann et al. (2022)**，*Improving ocean modeling software NEMO 4.0: benchmarking and communication efficiency*，GMD 15, 1567-1582，https://doi.org/10.5194/gmd-15-1567-2022  
   对本题的意义：先仪器化具体通信站点，再删除或分组经证明不必要的通信；论文报告在具体压力梯度路径中可显著降低通信。它支持“站点级删除”，不支持无归因地调 MPI 环境变量。

5. **周生昌、刘卫国、宋振亚、杨晓丹 (2021)**，《海洋环流模式 NEMO 的代码现代化》，https://www.ams-journal.org.cn/website/article/doi/10.3969/j.issn.1671-6647.2021.01.007  
   对本题的意义：中国平台相关研究强调 Intel 工具定位热点后，再做编译、标量、SIMD、内存带宽和多进程扩展优化。这支持对 GLS/混合/生态做证据筛选；本次审阅没找到足以跨过 2% 的具体临时量或 SIMD 阻塞，因此不能把论文的 31% 整体结果外推到 O33。

## 不纳入当前实验的方向

- 混合精度/GPU/DCU：超出本题物理计算和平台边界。
- 通用 `MPI_I*` 异步化：没有已证明的可重叠计算窗口，且嵌套反馈存在紧密顺序依赖。
- 更多 MPI ranks 或非方形 tile：O33 直接实验已显示 128x1 回归 32.0999% 且 halo 桶增长 322.6454%；8x8 已是 64 ranks 的近方形分解。
- 单独生态 `exp` 提取、混合系数缓存、GLS 代数改写：当前上界或既有失败证据不支持一次新作业。
