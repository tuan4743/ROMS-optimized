# 论文调研：ROMS 性能优化文献（2026-08-05）

## 01 Read summary

- 任务：用户提供 5 类论文清单（光场参数化、数据同化、计算性能与并行、参数校准、实时预报），要求搜索并评估"有没有可用的"。本文件为文献调研 + 可移植性评估；只读，不授权构建。
- 搜索执行：DuckDuckGo + 下载全文。重点获取 2 篇计算性能类原文：
  1. **Tanya Gautam, "Roofline-Based Performance Analysis and Optimization of ROMS: Scalability, Bottlenecks, and Arithmetic Intensity"**（IISc M.Tech thesis, 2025-06）— 全文 PDF 已下载并通读（`/tmp/opencode/papers/Tanya_Mtech_thesis.pdf`）。
  2. **Liu et al., "Parallel Implementation and Optimization of ROMS Based on Sunway SW26010 Many-Core Processor"**（IEEE Access 2019）— 摘要已获取。
- 其余类别评估（无需全文）：
  - 光场参数化（Frontiers 2019、IOCCG 2012）：改物理光衰减/辐射传输模型 → **违反冻结物理方案规则**，不可用。
  - 4D-Var（Ocean Modelling 2011/2023）：数据同化系统 → 赛题不启用 Adjoint/Tangent，不可用。
  - 参数校准/敏感性（长江口缺氧 2018、秘鲁鳀鱼 2013、亚中尺度 2022、台风水质 2024）：科学应用类，无 CPU 性能机制，不可用。
  - 大湾区实时预报系统（2023）：系统架构（6h 输出、可视化），无计算内核优化机制，不可用。
- **唯一可用项：IISc 论文的 step2d 循环融合**：
  - 原文优化：`step2d` 中 Drhs/DUon/DVom 三个独立循环融合为单循环（内嵌 IF 条件），消除 2.9 亿 load + 1.44 亿 store（每点 2 load + 1 store），整体执行时间降 **1.6%**（1055×942×40 网格，Param Pravega，Intel Xeon Gold 8268）。
  - 可移植性核验（只读）：本工作流 O33 `step2d_LF_AM3.h` 在 `#else` 分支（`#define NESTING` 已确认在 `bye24bio15.h` 第 16 行）中仍是**三个独立循环**（Drhs 计算 → DUon → DVom，行 527-548），与 IISc 优化前的代码模式逐字一致。融合是纯循环结构变换，数值逐点等价 → **bitwise-safe**（预期轨迹 hash `fa498694...` 不变）。
  - 边界差异：IISc 融合后 DUon 内嵌 `IF(i.NE.IstrU-2)`、DVom 内嵌 `IF(j.NE.JstrV-2)`；O33 的 `#else` 分支用 IstrUm2/JstrVm2 边界，需按 O33 实际边界适配。
- 队列快照（只读）：nan E084 `118607684`（j05r2n[10-13]）、E085 `118607703`（j04r2n[08-11]）在跑；本工作流 HOT_TEAMS ABBA `118608168` 排队中（QOSMaxCpuPerUserLimit）。
- 输出生命周期：只读调研，无模型输出；删除不适用。

## 02 Profiling / mechanism

- IISc 机制链：step2d 是内存带宽受限内核（AI=0.1898 FLOP/byte，远低于 ridge 15.8）。Drhs 数组被三个循环各扫一遍（写 1 次 + 读 2 次从 DRAM），融合后 Drhs(i,j) 计算后立即在 L1/寄存器复用 → DRAM 流量下降。
- O33 对应部位：`step2d_LF_AM3.h` 行 527-548（`#else` 分支，NESTING 配置实际编译此段）：
  - 循环 1：`Drhs(i,j)=zeta(i,j,krhs)+h(i,j)`
  - 循环 2：`DUon(i,j)=ubar*0.5*on_u*(Drhs(i,j)+Drhs(i-1,j))`（NEARSHORE_MELLOR 未定义，DUSon 段不编译）
  - 循环 3：`DVom(i,j)=vbar*0.5*om_v*(Drhs(i,j)+Drhs(i,j-1))`
- 收益预估（保守）：
  - step2d 在 O33 中占比：G02 约 10%（9.9252% rank-CPU，N1 报告），G01 约 3%；
  - 融合只影响 step2d 的三个开头循环（step2d 有 ~60 个循环，此三段约占 step2d 时间的个位数百分比）；
  - IISc 全程序 1.6%（其 step2d 占比 ~70% 且 NTIMES=540/NDTFAST=120 更重）。O33 场景保守上界 ~1%，低于 2% 门禁。
- 与已有失败教训的关系：
  - Stage 61 step2d no-heap（编译器堆栈）失败——不同机制（编译器存储策略 vs 源码循环融合），不冲突；
  - Stage 88-89 step2d OpenMP（线程并行）失败——不同机制（并行化 vs 访存削减），不冲突；
  - Stage 51/85 scratch 复用（pre_step3d/step3d_t 除法 hoisting）失败——同为"算术缓存"，但本候选是**数组级访存融合**且位于 step2d（关键路径上 2D 循环 653184 次调用），不完全同类；仍需 A-B-B-A 验证。
- 结论：IISc 融合是"低风险、bitwise-safe、但单点收益 ~1%（低于 2% 门禁）"的候选；其价值在于**作为组合项**（与 HOT_TEAMS 运行时、或其它小项叠加），而非单点突破。单独构建不满足本工作流 ≥2% 门禁。
- 神威 ROMS（Liu 2019）：从核 CPE 卸载、DMA、SIMD——SW26010 架构专用；本平台（Hygon C86 x86）无对应机制，仅"2D 数组切片"思想有参考价值，不构成候选。

## 03 Validity check

- 事实复核：
  - IISc 论文全文下载并逐段阅读（1.6% 数值、三循环代码、AI 数据、系统配置）✓；论文为 2025-06 IISc 官方项目报告，来源可靠。
  - O33 `step2d_LF_AM3.h` 行 527-548 三循环结构直接读取 ✓；`#define NESTING` 在 `bye24bio15.h` 第 16 行确认 ✓（决定走 `#else` 分支）。
  - 融合数值等价性：三循环各自独立计算、无跨循环归约、DUon/DVom 仅依赖 Drhs 的相邻点（i-1/j-1 已算）→ 融合后每点算术顺序不变，bitwise-safe 论证成立 ✓。
  - 收益预估：IISc 1.6% 为其平台/配置值；O33 的 step2d 占比（G02 ~10%）来自 nan N1 报告 g02_hotspot 文本 ✓；预估为保守上界，非测量。
- 边界声明：
  - 本调研未构建/运行任何候选；"~1%"为静态预估，需 A-B-B-A 才有测量意义。
  - IISc 用 gfortran/-ffast-math，本工作流用 ifort/-O3/-fp-model precise——编译器差异可能改变融合的实际收益方向（ifort 可能已做部分缓存优化；融合引入的 IF 分支可能干扰向量化），必须实测。
  - 用户清单中其余 4 类论文评估为"无 CPU 性能机制"是基于摘要/常识的判断，未全文精读（科学应用类论文不涉及内核优化）。
- 三份文件一致性：01 事实 ↔ 02 机制 ↔ 03 边界一致；有效。
- 建议（未授权）：将 IISc step2d 融合列入组合候选池（与 HOT_TEAMS 结果一起评估）；不单独构建。
- 输出生命周期：无模型输出；删除不适用。
