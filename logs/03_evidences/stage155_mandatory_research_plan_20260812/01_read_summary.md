# Stage 155：两次无效后的强制联网 PLAN

- 日期：2026-08-12 EDT
- 触发：Round 1 ring 回归 `6.138%`；Round 2 tcmalloc 回归 `34.917%`
- 状态：`PLAN_COMPLETE / NO JOB DURING RESEARCH`
- 目标：检索科研结果和开源相似项目，论文优先中国研究；与 S47 已测路径去重后，为 Round 3/4 选择最小新机制。

## 检索到的主要证据

1. 中国 LICOM 并行优化研究：MPI+OpenMP 在小规模测试没有优势，只在天河三号大规模 PE 场景使用。来源：<https://www.mdpi.com/2076-3417/13/4/2690>
2. 中国 swPOM 神威优化：依赖国产异构众核和从核局部存储，不可直接迁移到当前 Hygon CPU/ifort S47。来源：<https://crad.ict.ac.cn/fileJSJYJYFZ/journal/article/jsjyjyfz/HTML/2019-7-1556.shtml>
3. 清华 OpenArray/GOMO：计算图、融核和通信隐藏可达手写 MPI 效率，但这是算子运行时重构；S47 已由 Stage 145–151 对 fusion、halo overlap 和 critical path 定量关闭。来源：<https://www.dess.tsinghua.edu.cn/info/1108/1295.htm>
4. 中国 ROMS_AGRIF 重叠存储：专用 I/O 进程与 PNetCDF 是输出路径重构；S47 I/O 份额低且输出设置不可改，不作为 Round 3/4。来源：<https://crad.ict.ac.cn/fileJSJYJYFZ/journal/article/jsjyjyfz/HTML/2019-4-790.shtml>
5. IISc ROMS Roofline：step2d memory-bound，Drhs/DUon/DVom fusion 删除 load/store；但同类 Stage 108 在当前算例 wall 回归 `1.7416%`，不重跑。来源：<https://vgl.csa.iisc.ac.in/pdf/pub/Tanya_Mtech_thesis.pdf>
6. Intel ifort 官方 `-qopt-malloc-options=3`：通过 `M_MMAP_MAX=0`、`M_TRIM_THRESHOLD=-1` 改用 glibc malloc 策略，文档说明可能改善动态分配速度。来源：<https://www.intel.com/content/www/us/en/docs/fortran-compiler/developer-guide-reference/2023-2/qopt-malloc-options.html>
7. glibc 官方手册确认 `MALLOC_MMAP_MAX_=0` 禁用 mmap，`MALLOC_TRIM_THRESHOLD_` 控制 trim，可在进程启动时设置。来源：<https://sourceware.org/glibc/manual/latest/html_node/Malloc-Tunable-Parameters.html>
8. Open MPI 上游说明 segmented ring 面向很大消息，算法收益依赖消息规模；因此对 134 KiB 必须先微基准，不可直接跑 ROMS。来源：<https://github.com/open-mpi/ompi/issues/4067>

初步结论：研究没有推翻 Stage 152 的 `<2%` 收敛证据。只保留两个低风险、未实测、可快速否决的末端候选。
