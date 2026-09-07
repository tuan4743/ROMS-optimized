# Stage 133 第二遍：profiling 与候选筛选

- 日期：2026-08-09
- 数据源：S32 全长 PROFILE `118784141` 的 G01+G02 原始分池重算
- 证据类型：`PROFILE_OBSERVED + STATIC_SCREEN`

## 全长分池

| 池 | 合并 CPU 占比 | 要贡献 2% 全程收益时所需的最低局部降幅 |
|---|---:|---:|
| 3-D predictor / `pre_step3d` | 17.076% | 11.71% |
| tracer corrector / `step3d_t` | 16.655% | 12.01% |
| GLS / `gls_corstep` | 13.646% | 14.66% |
| 2-D kernel / `step2d` | 10.993% | 18.19% |
| biology | 8.759% | 22.83% |
| `t3dmix` 相关粗略上限池 | 6.493% | 30.80% |
| 全通信 | 25.805% | 7.75% |
| set_avg | 2.021% | 98.96% |
| Writing | 1.571% | 127.31% |
| input | 1.577% | 126.82% |

计算为 `2 / CPU_share`。这是有利于候选的最低要求，不是收益预测：ROMS `PROFILE` 为聚合 CPU 时间，不是全程 wall 关键路径；真实需求只会更高。

## 候选排名

| 优先级 | 方向 | 证据门 | 机时 | 决策 |
|---|---|---|---:|---|
| P0 | S32 六对象精确生产 compiler report | 精确循环+报告 blocker+源码独立性证明 | 0 模型运行 | **保留** |
| P1 | 一处 `OMP SIMD`/`IVDEP`/循环交换或临时量消除 | 只有 P0 证明假依赖/访存 blocker，且局部上限达门时 | 1 个条件 harness | **条件保留** |
| P2 | 通用 cache blocking/循环嵌套 sweep | 无精确 blocker，且需大幅局部收益 | 会转化为穷举 | **不授权** |
| P3 | 更多 MPI/UCX/编译器/I/O 参数 | 已有匹配反证或天花板低于 2% | 无效风险高 | **继续关闭** |
| P4 | 冻结 S32 并交付 | P0 无候选 | 0 | **默认回退** |

## 精确编译报告要求

1. 从 SHA 已冻结的 S32 归档解包到新的私有目录。
2. 使用 S32 冠军的 ifort 2021.3、`-march=core-avx2 -no-fma -ipo`、对象级 fast 选项和 OpenMP/链接配方。
3. 对 `pre_step3d`、`step3d_t`、`gls_corstep`、`step2d`、`biology`、`t3dmix` 生成 `-qopt-report=5 -qopt-report-phase=vec,loop,openmp,ipo` 报告；保存预处理源、对象、编译行、报告和反汇编。
4. 查找的不是“未向量化”这一宽泛标签，而是能由源码证明的：误判依赖、非单位步长、数组临时量、对齐 peel/remainder、调用边界/IPO 阻断。
5. 任何方向必须映射到上表分池并超过相应的最低局部降幅；否则在编译前 STOP。

## 科研与开源交叉验证

- 中国《MASNUM海浪模式的性能特点分析与并行优化》强调先定位通信、I/O、二维分解负载瓶颈，与我们的证据闭环一致，但未提供能重开已关闭通信路线的 S32 特定机制：https://crad.ict.ac.cn/article/doi/10.7544/issn1000-1239.2015.20131415
- 中国《基于“神威·太湖之光”的区域海洋模式并行优化》证明循环/访存优化有价值，但其从核移植属于平台特化，不能直接折算到当前 x86 S32：https://crad.ict.ac.cn/cn/article/doi/10.7544/issn1000-1239.2019.20180791
- ROMS 官方并行资料说明 tile 会影响负载和 cache，但当前 8x8/rank mapping 已有本机匹配反证：https://www.myroms.org/wiki/Parallelization
- Intel 官方资料支持用编译优化报告定位 vector/loop/OpenMP/IPO blocker：https://www.intel.com/content/www/us/en/developer/articles/technical/compiler-optimization-report-news-2025.html
- Intel 官方资料允许用 SIMD directive 告知编译器循环独立，但前提是程序员对依赖安全性负责：https://www.intel.com/content/www/us/en/docs/fortran-compiler/developer-guide-reference/2023-1/user-mandated-or-simd-vectorization.html

