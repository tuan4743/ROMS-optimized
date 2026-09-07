# 答辩准备（2026-08-10）

针对决赛答辩的赛题回顾与源码原理整理。源码基于远端
`/public/home/fujiake/fjk/ROMS_CoSiNE15_codex_20260727`（ROMS 3.6 + CoSiNE 定制）逐例程阅读。

## 文档清单

1. [01_赛题回顾与计算原理.md](01_赛题回顾与计算原理.md)
   - 赛题回顾、模型架构三要素（模式分裂/S坐标/C网格/时间层）
   - main3d 主循环 16 段逐步流程（含嵌套同步节奏）
   - 11 个核心内核计算原理：step2d 快模、rhs3d、prsgrd/rho_eos、pre_step3d、
     step3d_uv、step3d_t、GLS、CoSiNE 生态、nesting、distribute、mp_exchange
   - 并行结构总览 + 与性能优化结论的对应

2. [02_源码流程速查.md](02_源码流程速查.md)
   - 主驱动链、各文件职责速查表（含关键行号）
   - 通信热点与优化对照（halo/嵌套收集/串行路径）
   - 数值精度要点、常用答辩数字表

3. [03_内核实现展开_程序员视角.md](03_内核实现展开_程序员视角.md)
   - 每个内核按统一框架展开：数据布局/循环结构/实际运算量/访存与 cache 行为/
     向量化/线程与 MPI 行为/热点实测/优化历史
   - 覆盖 step2d、rhs3d、pre_step3d、step3d_uv、step3d_t、rho_eos/prsgrd、
     omega、GLS、CoSiNE、nesting、mp_exchange/distribute
   - 末尾附热点总表与优化决策对应

## 建议阅读顺序（答辩前 30 分钟版）

1. 先看 02 速查表的第 1、5 节（驱动链 + 数字表）
2. 再读 01 的第 3 节（main3d 流程）与第 4 节（内核原理）
3. 重点演练 Q&A：模式分裂为什么省时间？为什么通信重构全失败？
   为什么编译器是最大杠杆？no-fma 为什么必须？嵌套每 5 步交换一次为什么？
