# MCC 2026 决赛 ROMS-CoSiNE 优化日志（中文版）

> 本文件为 OPTIMIZATION_LOG.md 的中文翻译版本。作业 ID、SHA-256 哈希、路径、节点名、命令、编译选项及 ROMS/MPI/NetCDF 等专有名词按原文保留；数字与时间数据未作任何改动。

## 2026-08-01 - O33 热点对象 ifort 优化报告审计

- 日期：`2026-08-01 19:34 +0800`。
- Slurm 步骤：`118367159`，`COMPLETED 0:0`，节点 `j05r2n10`；仅编译的 wall time `20.770 s`。
- 本地脚本：`C:\Users\Fu Jiake\Documents\MCC\决赛\02_优化工作区\ROMS_CoSiNE_final_20260727\experiments\ifort_optrpt_20260801\run_o33_hotspot_optrpt.sh`。
- 远程脚本：`/public/home/fujiake/fjk/agent_tmp/isolated/scripts/ifort_optrpt_20260801/run_o33_hotspot_optrpt.sh`；SHA-256 `ffe1ea86bc6b5029d797ce2d88cf3bc33a5eff3a87bbc9846d9cc1073793ac61`。
- 不可变输入：精确的 O33 预处理文件 `Build/pre_step3d.f90` SHA-256 `e6b99adffc14988208a0a81c2a47b9a2b13b14474ecdc5baafc57c6ee9cdaf25`；`Build/step3d_t.f90` SHA-256 `2d5466f0f1d3da088777d4590a38eaad7d31e427e84081555b8eecb1b7903d93`。
- 优化内容：无源码改动。仅用 O33 基线编译选项外加 `-qopt-report=5 -qopt-report-phase=vec,loop,openmp` 重新编译这两个精确的预处理文件；不链接、不运行模型。
- 远程审计路径：`/public/home/fujiake/fjk/agent_tmp/isolated/audits/o33_ifort_optrpt_20260801`。
- 报告结果：`pre_step3d.optrpt` SHA-256 `8260409fbf08d6ed2edb8a05a49cf2134918e7d921ac5bfd6eafccd9417430d8`（2367 行）；`step3d_t.optrpt` SHA-256 `163ea750b33517625aecc0a70b0363c759865242ad686cefc65c53daa71b4c8f`（1591 行）。
- 非变换性检查：重新生成的 `pre_step3d.report.o` SHA-256 `735e892c57e476a3bae392773091b2492ddf722fa6c82a2765271bc0d793d71d` 与 `step3d_t.report.o` SHA-256 `d37d883a06545c7cc1738debe3d6204947c533bf5376766b144233ec26efe1da` 与归档的 O33 对象逐字节一致。
- 初步结果：当前代码已对许多内层循环做了向量化，但向量长度为 2，报告显示大量非单位步长/未对齐访问以及保守的依赖假设。这仅是静态证据；不声称任何加速或精度结论。
- 输出生命周期：本阶段未产生模型输出或 NetCDF 文件。之前各诊断日志仍予保留；不涉及删除。
- 下一关卡：解析循环级证据，然后对一小批合法编译选项做编译筛选。只有当某候选方案合理地超过既定的全程序 2% 静态门槛时，才允许运行模型任务。

### 编译筛选 harness 修正

- 失败的预检任务：`118367480`，节点 `j05r2n10`，在第一次编译之前以退出码 `1` 结束。
- 原因：节点上的 Bash 配合 `set -u` 拒绝了脚本第 62 行对空基线附加选项数组的展开。
- 修正：为零附加选项的基线显式分支，仅在数组非空时才追加可选选项。
- 结果边界：未产生任何候选对象、链接、模型执行或 NetCDF 输出；此 harness 失败不属于无效优化结果。
- 后处理说明：第一次汇总调用被登录节点的 Python 3.6 拒绝，因为解析器使用了较新的注解语法。解析器已转换为 Python 3.6 兼容语法；已编译对象与报告未重新生成或改变。

## 2026-08-01 - 两个 O33 热点对象的有界 ifort 编译选项筛选

- 日期：`2026-08-01 19:49 +0800`。
- 成功的任务：`118367570`，`COMPLETED 0:0`，节点 `j04r2n00`，耗时 `00:01:30`；报告/编译脚本 shell real time `94.197 s`。
- 硬件：Hygon C86 7185，32 个物理核，四个 NUMA 节点；CPU 特性包含 AVX2 和 FMA。
- 脚本：`/public/home/fujiake/fjk/agent_tmp/isolated/scripts/ifort_optrpt_20260801/run_o33_flag_screen.sh`；修正后 SHA-256 `d09192174511f32b31f68b9873520d8ea9358cba3329c75e6f2d70271f162de0`。
- 输出路径：`/public/home/fujiake/fjk/agent_tmp/isolated/audits/o33_ifort_flag_screen_20260801`。
- 优化内容：对精确的 O33 `pre_step3d.f90`/`step3d_t.f90` 进行仅编译的筛选，覆盖基线、`-align array64byte`、`-vec-threshold0`、流式存储 `never/always`、`-march=core-avx2`，以及 AVX2+对齐组合。无源码修改、链接或模型运行。
- 证据：`manifest.tsv` SHA-256 `496a7e3a78fbf3ccc937904fa9321deb24c42650c33f24ab7a2986d3bf251b41`；`candidate_summary.tsv` `1e605fa2b9c5f2b6795c8d0584d8689d3e8c8a10ee2175290bfac741d7c65729`；`flag_screen_summary.json` `df7185c6d7e60f7644e04666e1854b1435eef25be382bb64a3a99bf9ea181a45`。
- 否决项：流式存储 `never` 与基线逐字节一致；对齐不改变报告/反汇编指标；向量阈值仅新增 2/3 条向量化说明且无 256 位代码；强制流式存储向时间上复用的数组新增 79/61 条非临时存储，且无安全的 2% 静态场景。
- 晋升候选：仅对这两个对象使用 `-march=core-avx2`。它使向量长度从 2 主要变为 4，产生 1179/728 条 YMM 指令行和 180/113 条 FMA 行，并将仅报告的平均潜在循环加速从 `1.603/1.676` 提升到 `2.440/2.512`。
- 解释边界：ifort 的潜在加速估计不是实测运行时间。Hygon 原生 256 位吞吐率以及此前对精度敏感的全局 O1 组合使得实际收益不确定。
- 决策：以 `-fp-model precise` 构建一个孤立的双对象 AVX2 二进制，不做对齐/预取/全局编译选项改动，然后只允许一次诊断性 A-B-B-A 分配。若匹配的诊断收益未达到既有门槛，则不运行半天/全天任务。
- 输出生命周期：本筛选未创建或删除任何模型输出或 NetCDF 文件。

### AVX2 候选构建因果性关卡

- 初始构建任务 `118367813` 到达私有复制树并核验了全部父级/已筛选哈希，随后在 dry-run 关卡处以退出码 `2` 结束，发生在 `make` 或链接之前。
- 原因：旧 make 依赖图除更新归档/链接外还想重新编译 `rhs3d.f90` 和 `main3d.f90`，这会混淆双对象实验。
- 保留的私有部分路径：`/public/home/fujiake/fjk/agent_tmp/isolated/work/o33_avx2hot_abba_20260801/ROMS_CoSiNE15`；138M。其 `oceanM` 与 `Build/libNLM.a` 与 O33 保持逐字节一致，只有独立的 pre/step 对象包含已筛选的 AVX2 代码。
- 纠正计划：仅替换复制出的 `libNLM.a` 中这两个既有成员，核验归档成员列表不变，并执行精确审计过的链接命令。不得编译任何 Fortran 源码。
- 结果边界：任务 `118367813` 未产生候选二进制或模型输出；此构建预检失败不属于无效优化结果。

### 双对象 AVX2 候选重新链接完成

- 任务 `118368020`，`COMPLETED 0:0`，节点 `j05r2n10`，耗时 `00:00:03`。
- 脚本：`/public/home/fujiake/fjk/agent_tmp/isolated/scripts/ifort_optrpt_20260801/relink_o33_avx2hot.sh`；SHA-256 `4c0951cb9b0c8bd9e755cd5860ceb574b503464d4e699b490185a837da9c3d8d`。
- 候选树：`/public/home/fujiake/fjk/agent_tmp/isolated/work/o33_avx2hot_abba_20260801/ROMS_CoSiNE15`。
- 候选二进制：`oceanM.O33_avx2hot`，SHA-256 `c061e82aca104828416f35bfd42b1b1a38a30ffdd40f5be3532347b6d73e7973`。
- 因果性：仅替换了既有归档成员 `pre_step3d.o` 和 `step3d_t.o`。`libNLM.a` 成员列表为 67 行，作为名称/顺序列表在替换前后逐字节一致（SHA-256 `23de44b3...dd`）；未编译任何 Fortran 源码。
- 构建证据：元数据 SHA-256 `2ee3b2a3add99df0596f254ed5ad0e2cad20734badfd058b4174ba94e24e6055`；变更对象列表 `610f7ffab1911e9e739a139c912d0a0e2a3f1024c78d160eaef967ca732e386b`，恰好两行。
- 静态/运行时分界：二进制可链接、所有库均可解析；尚无模型运行、性能结果、NetCDF 或精度结果。
- 下一步：对父级 O33 做恰好一次布局不变的 144/720 A-B-B-A 诊断。

### 双对象 AVX2 A-B-B-A 已提交

- 任务 `118368098`（`fjk_O33_AVX2_ABBA`）无依赖提交。
- 资源/布局：队列 `kshcexclu06`，四个节点，64 个 MPI rank × 2 个 OpenMP 线程，每节点 16 rank，独占 128 CPU，8x8/8x8 分块不变。
- 诊断范围：物理/网格/时间步/输出设置不变；组织者允许的缩短 `NTIMES 144/720`；A1-B1-B2-A2 在一次分配内完成；预期无 NetCDF 输出。
- 运行脚本：`/public/home/fujiake/fjk/agent_tmp/isolated/scripts/ifort_optrpt_20260801/run_avx2hot_abba.slurm`，SHA-256 `83b358ffbb740c1df91d09ded8658098e289a1ff99f45a2449385ae9dbecf82f`。
- 提交包装脚本 SHA-256 `addea3ab03bc221ef44052dc93b57b357c8f3af22f50391fc37985fc88199488`。
- 预期保留的运行根目录：`/public/home/fujiake/fjk/mcc_runs/118368098_o33_avx2hot_abba_sample`。
- 关卡：低于 2% 则停止；2%-3% 需要审查；只有两次 B 运行更快且打印轨迹一致并达到至少 3% 时，才允许考虑一次完整运行。当前未授权任何完整运行。

### 诊断输入链接修正与重新提交

- 任务 `118368098` 在 A1/模型启动之前于 `j05r2n[14-17]` 上 4 秒后以 `2:0` 失败，因为复制的候选树缺少 `Inputfiles`。
- 只读检查确认该路径不存在（既不是目录也不是保留输出）。仅添加了所需的私有树符号链接 `/public/home/fujiake/fjk/agent_tmp/isolated/work/o33_avx2hot_abba_20260801/ROMS_CoSiNE15/Inputfiles -> /public/home/fujiake/Inputfiles`。
- 失败根目录 `/public/home/fujiake/fjk/mcc_runs/118368098_o33_avx2hot_abba_sample` 作为预检证据保留；其中没有模型计时或 NetCDF 输出，不属于无效优化尝试。
- 修正后的任务 `118368170` 使用完全相同的脚本/哈希、二进制哈希、资源、分块与诊断范围提交。未授权完整运行。

## 2026-08-01 - O33 双对象 AVX2 诊断关闭

- 任务 `118368170`，`COMPLETED 0:0`，耗时 `00:08:42`，节点 `j05r2n[00-03]`；四节点/64 MPI × 2 OpenMP/8x8 分块/诊断 144/720。
- 保留运行根目录：`/public/home/fujiake/fjk/mcc_runs/118368170_o33_avx2hot_abba_sample`，`1.4M`，零 NetCDF 文件。
- 计时：A1 `129.238 s`，B1 `131.404 s`，B2 `132.009 s`，A2 `125.155 s`；A 均值 `127.1965 s`，B 均值 `131.7065 s`。
- 结果：收益 `-3.545695%`；两次 B 运行均慢于两次 A 运行；所有运行均到达 DONE 且轨迹 SHA-256 相同 `fa498694...e44b0`。
- 剖析结果：rank 总时间退化 `3.719-3.720%`。直接目标 `pre_step3d + step3d_t` 计时器在两个网格上仅改善 `0.389%`，远低于 `8.2%` 静态门槛。GLS 计时器增加约 `22%`；这是交互/计时观察，并非 GLS 代码被改动的证据。
- 决策：`STOP_BRANCH`。提交二进制中不使用 AVX2 对象；不做半天/全天运行，不做官方验证。
- 原始证据：`summary.tsv` SHA-256 `5fa2aee113e022269f4c9d224bcd45ba7a5b7a86c81ef4add60d20be3abb132e`；`decision.txt` `135b7f7cd6562f38639254afa86af069170051fa4e4d78b95956423809b54ab2`；`harness.log` `6455f924e9e2c39785c270545eb9af8e8ae7d4a869dd6e4a713c2568dbc79cf1`。
- 三份有效分析：`analysis/o33_avx2hot_abba_118368170/01_read_summary.md` SHA-256 `3707b475...d4b6`；`02_profiling.md` `8dd85610...5c02`；`03_validity_check.md` `889a35e2...78a8`。
- 生命周期：第 1、2 项分析独立有效；这是 PLAN 重置后的一个无效运行方向。最新结果与预检失败根目录均保留；未删除任何内容。
- 下一步方法：仅做受约束的参数 DOE——静态/哈希消除、单因素诊断 A-B-B-A，且仅当通过 3% 门槛后才做完整验证。本筛选中的 AVX2、仅对齐、向量阈值与流式存储变体均关闭。
- 技能同步：主工作区与已安装的 `mcc26-roms-cosine-handoff` 各含相同的 10 个相对文件，哈希差异为零；progress/plan/evidence/project-structure 哈希一致。Frontmatter 名称/描述检查通过。
- 技能校验器边界：默认与打包的 Python 均缺少 PyYAML，`quick_validate.py` 无法执行。记录为校验器依赖限制；文件集/哈希/frontmatter 验证成功。
- 最终分析时的队列边界：队友任务 `118368357`（`nan_O48_1day`）正在运行；未触碰，且未再提交任务。

本日志仅记录本决赛题。初赛 MCC26 C++/HIP 项目的性能数据和验证结果不得作为本题证据。

## 2026-07-30 - 组织者资源、基准、NTIMES 与 DCU 澄清

- 收到日期：2026-07-30
- 来源：用户提供的逐字群通知；作为组织者级别的规则/目标证据保留。
- 资源规则：队列 `kshcexclu06`；每节点 32 核；每队最多四节点/128 CPU 核；不强制使用全部 128 核。
- 组织者参考：当前最佳报告为四节点/64 核，`01:50:06`。确切时长约 110 分钟，因此不把用户简称"90min左右"用作精确记录。
- 归属边界：该通知未附带任务 ID、源码/二进制哈希、输入哈希或校验器工件。将 `01:50:06` 视为外部目标，而非本流程测得的/已验证的结果。
- 调试规则：允许按比例的 `NTIMES` 变更用于调试——完整三天 `2592 12960`、一天 `864 4320`、半天 `432 2160`，或其他成对比例。
- 最终边界：最终评分仍要求完整三天的 `2592 12960` 积分与官方验证；缩短运行仅作诊断。
- 加速器规则：本决赛不支持 DCU，因为物理计算方案不可更改。
- 共享参考路径：`/public/share/mcc2026_final/mcc2026_source`，在本流程下只读。
- 技能同步：规则、项目结构、进度、计划与证据索引均已随本通知更新。
- 技能安装检查：同步期间初始复制了 5 份引用到 Skill 根目录；随即移到 `references/`，移除 5 份错位副本，并验证最终根/文件哈希与 frontmatter。未影响任何项目源码、运行或模型输出。
- 三份分析：`analysis/organizer_notice_20260730/{01_read_summary,02_profiling,03_validity_check}.md`；全部有效。外部 `6606 s` 目标要求相对已验证任务 `118169717` 再缩减 `28.6590%`（`1.401718x`）。
- 模型输出删除：无；无关的有效/复现输出均保留。

## 2026-07-30 - 复现已验证的原始源码 GCC 结果

- 日期：2026-07-30
- 任务：`118196481`（最后检查时正在运行）。
- 脚本：`/public/home/fujiake/fjk/ROMS_CoSiNE15_codex_20260727/experiments/toolchain_bisect_20260729/rerun_original_gcc731_64.slurm`。
- 脚本 SHA-256：`e822d80c4f1a094051cfc9b6bb274c058be25bc77fe93be7974cbece64434144`。
- 运行路径：`/public/home/fujiake/fjk/mcc_runs/118196481_original_gcc731_noomp_64_8x8_repro`。
- 变更：无；使用相同二进制、输入、模块、两节点/64 MPI/8x8 布局、完整冷启动与输出计划，精确复现已验证任务 `118169717`。
- 起始状态：在 `j05r2n[12-13]` 运行；模型日志与元数据已创建，无即时错误。
- 存储关卡：提交前可用 `87G`，足以容纳额外预期的 8.5G 输出。
- 输出生命周期：先前有效输出 `/public/home/fujiake/fjk/mcc_runs/118169717_original_gcc731_noomp_64_8x8/output` 有意保留用于方差比较；未删除任何内容。
- 技能同步：提交后记录复现任务、路径与现行计划。

## 2026-07-30 - 原始源码 GCC 完整运行完成；第 1 项分析

- 日期：2026-07-30
- 任务：`118169717`
- 运行路径：`/public/home/fujiake/fjk/mcc_runs/118169717_original_gcc731_noomp_64_8x8`
- 变更：仅编译器/工具链，原始通过源码，GCC 7.3.1 + HPC-X 2.7.4，无 OpenMP；两节点，64 MPI，8x8 分块，完整冷启动输入。
- 结果：Slurm `COMPLETED 0:0`；`ROMS/TOMS: DONE`；16 个 NetCDF 文件，`8.5G`；shell `real 9259.75 s`。
- 可比 Intel 基线：`10383.89 s`；临时缩减 `1124.14 s`（`10.8258%`，`1.121401x`）。精度尚未验证。
- 第 1 项分析：`analysis/toolchain_run_118169717/01_read_summary.md`。
- 输出生命周期：保留；在剖析、官方验证、第 3 项分析及后续任务开始之前不允许删除。
- 技能同步：新增永久规则：每个阶段推进后更新 `$mcc26-roms-cosine-handoff`；将完成状态、计划与证据索引同步到工作区包与已安装 Skill 并做哈希检查。

### 第 2 项分析：剖析

- 文件：`analysis/toolchain_run_118169717/02_profiling.md`。
- 可比完整运行结果：相对 Intel 任务 `117981144`，shell 时间与 ROMS 合计 CPU 均改善约 `10.8%`。
- 主要缩减：Grid 01 点数据收集 `-18.54%`；Grid 02 `step2d -31.20%`、GLS `-29.04%`、tracer corrector `-21.47%`、点数据收集 `-18.23%`。
- 剩余瓶颈：Grid 02 数据收集基本不变（`+0.11%`），约 `162807` rank-秒。
- 退化：Grid 02 生态 `+48.13%`、4 维 halo 交换 `+4.12%`、输出写入增加；总运行时间仍改善。
- 证据边界：每个编译器仅一次运行；性能尚未复现，精度仍未验证。
- 输出生命周期：保留；不删除。

### 官方验证与第 3 项分析

- 验证任务：`118196173`，`00:00:17` 内 `COMPLETED 0:0`。
- 官方校验器 SHA-256：`97230e0b0dd4533a4000155bd691c81d243bdc45c24e6ceaeb09ffa6b1bb878a`。
- 结果：全部官方检查通过。东沙 `u RMSE=0.000057 <= 0.000060`。
- 第 3 项分析：`analysis/toolchain_run_118169717/03_validity_check.md`。
- 三项分析结论：第 1、2、3 项分析有效；官方精度有效；性能方差尚未刻画。
- 根因决策：仅 GCC 7.3.1 不足以复现继承的 `u=0.000067` 失败。转入原始源码 GCC 复现，然后做源码级二分，从稀疏嵌套的 donor 侧平均与浮点 `mp_sum` 开始。
- 输出生命周期：保留 8.5G 输出，因为它是复现所需的最新有效结果。下次任务开始时不做删除。

## 2026-07-29 - 项目交接 Skill 包

- 日期：2026-07-29
- 已安装 Skill：`C:\Users\Fu Jiake\.codex\skills\mcc26-roms-cosine-handoff`
- 工作区包：`C:\Users\Fu Jiake\Documents\MCC\skill-packages\mcc26-roms-cosine-handoff`
- 内容：强制性规则、项目/源码结构、已确认的进度与证据、现行决策计划、任务/哈希索引、三项分析模板、只读远程状态脚本、只读输出删除关卡。
- 结果：`skill-creator` 标准 `quick_validate.py` 返回 `Skill is valid!`；全部 10 个已安装文件在相对路径与 SHA-256 上与工作区包一致。
- 脚本测试：`status.ps1` 成功检查运行中任务 `118169717`；`check-output-deletion-gate.ps1` 因当前任务的三个分析文件尚不存在而以退出码 `72` 正确拒绝删除。
- 安全：Skill 不含删除命令。验证后移除临时 PyYAML 验证依赖；已安装 Skill 与工作区包保留。
- 运行时边界：打包时任务 `118169717` 仍在进行。`references/progress.md` 是带时间戳的快照，并指示后续代理在做出断言前刷新动态状态。

## 2026-07-29 - 最新团队日志保留与证据审计

- 日期：2026-07-29
- 源日志：`C:\Users\Fu Jiake\Documents\MCC\MCC26决赛.md`
- 源 mtime：`2026-07-29T09:41:10`
- 源大小：`16725` 字节
- 源 SHA-256：`a54163834d21ea1d861c6c698009823516ca686149d314d23485819f7a7711e9`
- 动作：只读保留与证据审计；本次审计未造成源码编辑、模型提交、取消或输出删除。

### 保留的优化思路与观察

- NUMA/CCX 感知的 MPI 放置被报告为历史上最大的运行时间杠杆。
- 团队日志将双向嵌套集合通信、`RESHAPE`/临时数组流量、MPI progress/wait、分块负载不均、17-tracer 三维工作与内存带宽列为主要瓶颈。
- 保留做受控测试的候选族包括：稀疏嵌套通信、z-weight/通量工作复用、接触点批处理、层级广播、HCOLL，以及 biology/GLS/`pre_step3d`/`step3d_t` 中的分阶段 OpenMP。
- 保留的负结果警告：`Sendrecv`、不完整的 `Isend` 转换、带保存 allocatables 的 persistent request，以及交换双缓冲在报告的短测试中均发生退化。

### 证据冲突与必要的状态修正

- 团队日志称 v24a 的完整 RMSE 验证成功，同时记录东沙 `u` 超阈值。在竞赛校验器下这是失败而非通过。
- 本流程确认的官方结果：v22、v24a 与 v31 均未通过同一东沙 `u` 检查（`0.000067 > 0.000060`）。它们是快速候选，不是有效评分基线。
- 团队日志将 `38:15.90` 归给 v24a，而保留的 v24a 完整结果为 `38:48.79`；独立观察到的 v31 LTO 结果为 `38:16.69`。版本/时间归属在复用前必须按任务 ID 与哈希解决。
- HCOLL 报告的 2-3% 收益来自源日志中缩短的 ABBA 证据；那里没有建立已完成、官方验证的完整运行。
- "原始 `Irecv -> Send -> Wait` 模式更优"与"当前基线已使用 `Isend + Waitall`"的说法需要精确版本限定；不得合并为一个基线声明。
- 团队日志中空的剖析表段落不能独立支撑所述的 Bcast、Allreduce 或热点百分比。

### 保留结论

- 将优化方向与负结果教训保留为假设/历史。
- 没有精确源码/二进制哈希、完整官方输入、`time real`、完整输出与官方校验器通过，不得将任何候选晋升为 `valid`。
- 当前隔离任务仍是任务 `118169717`：原始通过源码、GCC 7.3.1、无 OpenMP、64 个 MPI rank。其目的是区分工具链效应与优化源码效应。
- 输出生命周期：本次保留任务未删除任何输出。

## Stage 0 - 只读接管与合规审计

- 日期：2026-07-27
- 本地工作区：`C:\Users\Fu Jiake\Documents\MCC`
- 远程 SSH 别名：`MCC`
- 远程账户：`fujiake@cancon.hpccube.com:65023`
- 动作类型：只读清点；无远程编辑、构建、任务提交、取消或删除

### 审计的路径

- 公共归档镜像：`/public/share/mcc2026_final/ROMS_CoSiNE15.tar`
- 公共运行脚本副本：`/public/share/mcc2026_final/sub.sh`
- 公共验证脚本副本：`/public/share/mcc2026_final/vali.py`
- 公共验证参考：`/public/share/mcc2026_final/output/`
- 稳定的解压源码候选：`/public/home/fujiake/fjk/ROMS_CoSiNE15`
- 并发修改的队友副本：`/public/home/fujiake/nan/ROMS_CoSiNE15`
- 历史剖析器工件：`/public/home/fujiake/nan/mcc_perf/perf_out/`

题目声明中公布的路径 `/public/home/mcc2026_final/mcc2026_source` 在审计期间对本账户不可读，因为 `/public/home/mcc2026_final` 的模式为 `0700`。可读的 `/public/share/mcc2026_final` 镜像仅用作当前审计锚点；若两处内容预期一致，仍需组织者确认。

### 基线锚点与哈希

| 工件 | SHA-256 | 结果 |
|---|---|---|
| 归档成员 `ROMS_CoSiNE15/ROMS/External/ocean_SCS_Dongsha60_bio15.in` | `e80a59934cedeeb828aaba6e1361eb8789712b1333ea32f8ecd07b83d388d602` | 与 `fjk` 解压副本一致 |
| 归档成员 `ROMS_CoSiNE15/makefile` | `468daaebbd4e392de3aeb63abb292cf46eb0288c1bf3f9d073f11aed4721ce9c` | 与 `fjk` 解压副本一致 |
| 归档成员 `ROMS_CoSiNE15/Compilers/Linux-ifort.mk` | `a583989b72332e261b604daa8d63918d017677ff163213df8ec68ff7c14d1a8b` | 与 `fjk` 解压副本一致 |
| `/public/share/mcc2026_final/vali.py` | `97230e0b0dd4533a4000155bd691c81d243bdc45c24e6ceaeb09ffa6b1bb878a` | 与 `nan` 副本逐字节一致 |
| `/public/share/mcc2026_final/sub.sh` | `a6c3d2645b2db769f351c891919b79b2e543e589ac42b20d926dcc109f604893` | 示例脚本；尚未被接受为合规计时脚本 |

原始归档输入分块为两网格 `NtileI == 4 4`、`NtileJ == 8 8`。这是赛题声明中唯一明确允许修改的配置区域。

### 历史运行证据（非当前有效基线）

- 任务 ID：`117845239`
- 工作树：`/public/home/fujiake/nan/ROMS_CoSiNE15`
- 节点：`j05r2n14,j05r2n15`
- 分配：64 个 MPI rank，64 CPU，2 个 Slurm 节点
- Slurm 耗时：`02:55:12`
- Shell `time real`：`175m10.521s`
- 模型完成：日志以 `ROMS/TOMS: DONE` 结束
- 模型输入：冷启动（`nrrec = 0`）
- 输出大小：约 8.5 GiB
- 验证：`UNVERIFIED`；复制的 `vali.py` 仍含占位符 `dir_test`
- 剖析注意事项：该运行包含对单 rank 的 120 秒 `perf` 附加，并在两个节点上执行

该运行的 ROMS 内部聚合剖析报告 Grid 01 消息传递合计约 32.35%，Grid 02 约 40.32%。PMPI 摘要报告了较大的 Allreduce/Allgather 开销。这些数字仅是该精确双节点运行的剖析证据；不是单节点基线，也不构成源码级优化结果。

### 并发工作与存储发现

- `nan` 参数文件在本只读审计期间被修改（mtime `2026-07-27 16:01:02 +0800`），因此该树不是稳定基线。运行中的副本使用 `NtileI == 8 8`、`NtileJ == 8 8` 与缩短的 `NTIMES == 432 2160`；归档基线为 `NtileI == 4 4`、`NtileJ == 8 8` 与完整 `NTIMES == 2592 12960`。缩短的 `NTIMES` 仅适用于剖析，禁止用于评分或精度运行。`/public/home/fujiake/nan/mcc_perf/.mcc_opt/inputs/ocean_64_8x8.in` 处还保存了一份完整输入快照。
- 活动任务属于 `/public/home/fujiake/feng/...` 与 `/public/home/fujiake/lsd/...` 下的独立工作树；未修改或中断它们。
- 可见分区 `kshcexclu06` 每个 Slurm 节点暴露 32 CPU，无 GRES/DCU。2026-07-27 用户确认组织者"单机"措辞有误：本分区有效 CPU 上限为四个 Slurm 节点，即 128 个 CPU 核。因此 2 节点与 4 节点运行均允许；早先关于违反节点数规则的疑虑撤回。本次审计期间当前账户未见 DCU 分区。
- 审计时 `/public/home` 可用约 6.7 GiB，不足一套完整 8.5 GiB 输出。没有存储计划不应在该处启动新的完整输出实验。

### 源码审计与首批候选

`nan` 与哈希一致的 `fjk` 归档解压在 `ROMS/Nonlinear`、`ROMS/Utility`、`ROMS/Modules`、`ROMS/Drivers`、`ROMS/Programs`、`ROMS/Include`、`User`、`Master`、`Projects` 上一致。审计的热点文件也一致：

| 文件 | SHA-256 |
|---|---|
| `ROMS/Nonlinear/nesting.F` | `9e9e7f3b2acbcc54ad5199bbb52c0d1e7425c4fdfa946c5f938cb41bea807c12` |
| `ROMS/Utility/distribute.F` | `f03d0175a421510bcb237351dd8c9cef04e1cf95f1713680921423f111342977` |
| `ROMS/Utility/mp_exchange.F` | `c66ab7bb6a855ab319a886f6ace110429b204efb26aa1aaf0785ff28a38e577a` |

当前代码为纯 MPI。`makefile` 拒绝同时启用 MPI 与 OpenMP，因此混合 MPI+OpenMP 不是立即可用的配置开关。

基于剖析的机械式候选，按建议顺序：

1. 移除 `ROMS/Utility/distribute.F` 中 `MPI_Allgather` 之前冗余的整缓冲区 `Arecv=0`；该集合通信会覆写完整接收范围。保留 `Asend` 中的零填充。
2. 在证明本模型的 donor 深度单调并保留原始算术表达式后，为 `ROMS/Nonlinear/nesting.F` 三个 `z_weights` 搜索中唯一的垂直区间匹配添加 `EXIT`。
3. 在每次 `fine2coarse3d` 调用内，对每个接触点只预计算一次 wet-mask 计数，而不是在每个垂直层重复计算。因启用了 `WET_DRY`，不得跨时间步缓存。

尚未实现、编译、计时或验证任何候选。替换全局 gather 算法、添加仅接触点通信、改变浮点结合性或启用 fast-math，均不在本第一阶段低风险范围内。

### Stage 结果

- 已实现优化：无
- 已建立性能结果：无
- 已建立精度结果：无
- 安全下一步：从公共归档基线（或哈希一致的 `fjk` 源码）创建唯一命名的隔离源码/构建目录，保持输入只读，并以不超过四个节点运行一次完整基线。
- 已澄清事项：最多允许四个 Slurm 节点。`/public/share` 保持只读；任何不可避免的写入请求必须事先得到用户明确批准。

## Stage 1 - 隔离基线源码与构建

- 日期：2026-07-27
- 远程变体根目录：`/public/home/fujiake/fjk/ROMS_CoSiNE15_codex_20260727`
- 共享逻辑只读输入：`/public/home/fujiake/Inputfiles`
- 动作：创建新的私有源码/构建树，不复制 `Inputfiles`、旧 `Build`、旧 `output`、旧 `oceanM` 或旧运行日志
- `/public/share` 下的远程写入：无

### 构建隔离变更

仅修改了私有根目录 `makefile` 中的构建簿记路径：

```diff
-MAKE_MACROS := $(shell echo ${HOME} | sed 's| |\\ |g')/make_macros.mk
+MAKE_MACROS := $(CURDIR)/make_macros.mk
```

这防止共享 Unix 账户下的并发团队构建互相覆盖 `$HOME/make_macros.mk`。它不改变生成的模型方程或运行时行为。

- 原始 `makefile` SHA-256：`468daaebbd4e392de3aeb63abb292cf46eb0288c1bf3f9d073f11aed4721ce9c`
- 隔离 `makefile` SHA-256：`219747441f5ec0dbfbeff3cb8b683bfd6eadd014beb7bfd6652cb891bf39d8a8`
- `Linux-ifort.mk` 保持 SHA-256 `a583989b72332e261b604daa8d63918d017677ff163213df8ec68ff7c14d1a8b`

### 构建结果

- Slurm 任务：`117981097`
- 节点：`j05r2n10`
- 分配：1 节点，32 CPU，独占
- 状态 / 退出：`COMPLETED`，`0:0`
- Slurm 耗时：`00:00:54`
- 编译器命令计时：`real 52.62s`，`user 248.67s`，`sys 22.00s`
- 二进制：`/public/home/fujiake/fjk/ROMS_CoSiNE15_codex_20260727/oceanM`
- 二进制 SHA-256：`903360ee3b94db17a628ee9332fd72ddb97bd15cd7e492ae04cda4db22deaf5c`
- 构建 stdout：`/public/home/fujiake/fjk/ROMS_CoSiNE15_codex_20260727/logs/build_baseline_117981097.out`
- 构建 stderr：`/public/home/fujiake/fjk/ROMS_CoSiNE15_codex_20260727/logs/build_baseline_117981097.err`
- 结果：构建成功；编译本身不隐含任何性能或精度结果

## Stage 2 - 完整 64-rank 基线及官方验证

- 提交日期：2026-07-27
- 确认日期：2026-07-28 +0800（2026-07-27 America/New_York）
- Slurm 任务：`117981144`
- 分配：2 节点，64 个 MPI rank，每节点 32 rank，独占
- 节点：`j05r2n13,j05r2n14`
- 运行目录：`/public/home/fujiake/fjk/mcc_runs/117981144_baseline_64_8x8`
- 输入候选：`/public/home/fujiake/fjk/ROMS_CoSiNE15_codex_20260727/experiments/inputs/ocean_full_64_8x8.in`
- 候选输入 SHA-256：`a3e8a5dbee769ced1e097cd22d9e0424eb326b0a7b1006451fe6609dd14779a8`
- 配置：`NtileI == 8 8`，`NtileJ == 8 8`，完整 `NTIMES == 2592 12960`，冷启动
- 合规差异：相对归档输入恰好一行，仅将 `NtileI == 4 4` 改为 `NtileI == 8 8`
- 容量防护：任务开始时可用空间低于 11 GiB 则以退出码 `73` 中止
- 状态 / 退出：`COMPLETED`，`0:0`
- Slurm 耗时：`02:53:08`
- `/usr/bin/time -p`：`real 10383.89`，`user 282698.47`，`sys 47377.91`
- 模型完成：Grid 01 完成步骤 `1-2592`，Grid 02 完成步骤 `1-12960`，`logs/model.log` 以 `ROMS/TOMS: DONE` 结束
- 错误扫描：无 `error`、`blowup`、`abort`、`failed` 或段错误标记；顶层 Slurm stdout 与 stderr 均为空
- 输出：16 个 NetCDF 文件，`9,048,194,368` 逻辑字节（`du` 约 `8.5G`）
- 结果边界：这是一次当前完整基线测量，不是优化结果，也不是重复运行统计

### 官方验证结果

- 用户授权：2026-07-27 授予对 `/public/share/mcc2026_final/vali.py`、`/public/share/mcc2026_final/output/` 与 `/public/share/mcc2026_final/miniforge3/envs/vali/` 的只读访问
- `/public/share` 下的写入：无
- 验证任务：`117981681`
- 依赖：`afterok:117981144`，启用无效依赖取消
- 状态 / 退出：`COMPLETED`，`0:0`
- Slurm 耗时：`00:00:29`；校验器 `real 25.47s`
- 官方校验器 SHA-256：`97230e0b0dd4533a4000155bd691c81d243bdc45c24e6ceaeb09ffa6b1bb878a`
- 私有内存内路径包装 SHA-256：`242b8f831d087da6451dc6d9d14d0f45e8fe0fcb9bc4136ef95faa7212a70ced`
- 验证脚本 SHA-256：`70ef0a1b67f635bc554cc800feb892756abbc238621c370f153d64ad0ea1c484`
- 验证结果路径：`/public/home/fujiake/fjk/mcc_runs/117981144_baseline_64_8x8/validation/vali_result.txt`
- 包装器逐字节执行组织者脚本，仅在内存中替换其占位符 `dir_test` 赋值。它不创建或修改 `/public/share` 下的文件。
- 结果：`SCS_avg_0001.nc` 与 `Dongsha60_avg_0001.nc` 的全部 13 个被测变量 RMSE 均为 `0.000000` 并通过阈值；官方最终消息为"两组文件所有变量RMSE均在阈值范围内，优化结果无异常"。
- 精度边界：官方校验器只检查这两个 `avg_0001` 文件。其余 14 个 avg/history/restart 文件不在此脚本检查范围，且六位小数的 `0.000000` 输出不建立逐位一致性。

## Stage 3 - 初步剖析与程序结构审计

- 日期：2026-07-28 +0800（2026-07-27 America/New_York）
- 源码根目录：`/public/home/fujiake/fjk/ROMS_CoSiNE15_codex_20260727`
- 当前剖析来源：`/public/home/fujiake/fjk/mcc_runs/117981144_baseline_64_8x8/logs/model.log`
- 历史辅助 PMPI/perf 来源：任务 `117845239`，位于 `/public/home/fujiake/nan/mcc_perf/`
- 动作：只读源码与日志审计；无源码编辑、重建、基准提交、取消、删除或 `/public/share` 下写入

### 程序结构确认

活动构建为纯 MPI：`USE_MPI=on`、`USE_MPIF90=on`，OpenMP 禁用。makefile 显式拒绝同时启用 MPI 与 OpenMP。每个 MPI rank 拥有一个分块，每个网格要求 `NtileI*NtileJ == MPI rank 数`；因此完整基线两个网格均使用 `8*8=64`。

主调用链：

```text
Master/ocean.h: PROGRAM ocean
  -> ROMS_initialize (并行设置、参数解析、分配、网格/初始/强迫输入)
  -> ROMS_run
     -> ROMS/Drivers/nl_ocean.h
        -> ROMS/Nonlinear/main3d.F
           -> 两个嵌套层与两个网格
           -> rhs3d / GLS / 分裂显式 step2d
           -> step3d_uv / omega / biology / step3d_t
           -> 双向 fine2coarse 反馈与 MPI 聚合
           -> history / average / restart NetCDF 输出
  -> ROMS_finalize
```

Grid 01 为 `359x326x34`，`2592` 步，`DT=100`；Grid 02 为 `235x245x34`，`12960` 步，`DT=20`。两者按嵌套层调度由同一 MPI communicator 推进；不是独立 rank 组。`BIO_UMAINE15` 启用，含 15 个生态 tracer（含碳、氧分支）。`NESTING` 启用，`ONE_WAY` 禁用，故双向反馈保持活动。

### 初步剖析结果

当前完整基线的 ROMS 内部计时器报告如下聚合 rank 时间占比：

| 网格 | 主要通信/计算条目 | 聚合占比 |
|---|---|---:|
| 01 | 消息传递合计 | 32.0680% |
| 01 | 点数据收集 | 29.0448% |
| 01 | 计算合计 | 10.7536% |
| 01 | Corrector tracers | 3.8127% |
| 02 | 消息传递合计 | 40.2845% |
| 02 | 数据收集 | 24.6331% |
| 02 | 计算合计 | 32.4793% |
| 02 | Corrector tracers | 14.7225% |
| 02 | 点数据收集 | 8.1799% |
| 02 | 4-D halo 交换 | 3.8502% |
| 02 | Biology | 1.4281% |

这些计时器是嵌套/重叠的聚合 rank-秒；各行不得按互斥 wall-clock 百分比求和。NetCDF 读写条目单个均低于 1%，因此一阶瓶颈不是输出 I/O。

与主导签名匹配的源码路径是 `ROMS/Nonlinear/nesting.F` 与 `ROMS/Utility/distribute.F` 中的 `fine2coarse3d -> mp_aggregate3d -> MPI_Allgather`。独立插桩任务 `117845239` 的历史 PMPI 数据还显示 `MPI_Allreduce` 占平均 rank 耗时的 26.683%、`MPI_Allgather` 占 11.139%；这只是辅助证据，因为该任务使用了不同的二进制、节点与插桩。

### Stage 结果与下批候选

- 确认主目标：双向嵌套 gather/组装与 MPI 集合同步。
- 确认次目标：Grid 02 tracer corrector 及相关物理内核。
- Biology 单独仅占当前聚合计时器的 1.4281%，因此只加速 CoSiNE 不太可能产生最大的首批收益。
- NetCDF I/O 不是初始优化重点。
- 低风险候选不变：在保留发送填充的前提下移除 `MPI_Allgather` 前冗余的完整接收缓冲区清零；为垂直区间搜索添加证明安全的提前退出；在每次 `fine2coarse3d` 调用内只计算一次每接触点 wet-mask 计数。
- 本阶段未实现、编译、计时或验证任何候选。不声称任何加速。
- 存储警告：确认快照时 `/public/home` 已用 97%，可用约 `5.3G`，不足一套额外完整输出。未经批准的存储计划不得再提交完整运行。

## Stage 4 - 接管既有 `~/lsd` 优化谱系

- 日期：2026-07-28 至 2026-07-29
- 经验文档：`C:\Users\Fu Jiake\Desktop\想法册\.SXUHPC\MCC26\Final_Com\MCC26决赛.md`
- 只读源码谱系：`/public/home/fujiake/lsd/mcc2026_final/ROMS_CoSiNE15`
- 新隔离工作树：`/public/home/fujiake/fjk/ROMS_CoSiNE15_lsd_v24a_20260728`
- 共享输入：`/public/home/fujiake/Inputfiles`
- `/public/share` 下写入：无

### 谱系审计

`lsd` 树约 `35G`，包含源码变体、二进制、短 ABBA 测试、完整运行、验证输出、PMPI/perf 数据以及 `.mcc_opt` 下的失败实验。陈旧的 `.mcc_opt/bin/current-best` 链接指向 v10，而 v22 与 v24a 存在更新的证据。失败的 v24b/v25/v26/v27/v28 通信变体未被选中。

找到的最强已完整运行候选：

| 变体 | 任务 | 布局 | 模型 wall time | 完成情况 |
|---|---|---:|---|---:|
| v22 | `117916577` | 4 节点，64 MPI × 2 OpenMP | `38:58.50` | `COMPLETED 0:0`，`ROMS/TOMS: DONE` |
| v24a | `117977216` | 4 节点，64 MPI × 2 OpenMP | `38:15.90` | Slurm 完成，但私有运行包装器在模型输出写出后记录退出码 `127` |
| v24a 无 HCOLL 重跑 | `118062810` | 4 节点，64 MPI × 2 OpenMP | `38:48.79` | `COMPLETED 0:0`，`ROMS/TOMS: DONE` |

HCOLL 未被接受为基座：完整任务 `118059543`、`118062295`、`118062837` 与 `118063144` 被取消，且已完成的短 HCOLL 日志反复出现 UCX `cannot add ... lane - reached limit` 错误。

### 隔离 v24a 导入

只复制了约 `231M` 到新私有树。排除了历史 `Build`、`.mcc_opt/runs`、输出、二进制、Inputfiles、plot、matlab 与 test 树。以下精确 v24a 组件被持久安装到隔离源码中：

| 目标 | SHA-256 |
|---|---|
| `ROMS/Utility/distribute.F` | `9ecb0059e493dc6b33fae4b117c0148e7d568ecbbecdd064dda5719bc248512b` |
| `ROMS/Nonlinear/nesting.F` | `b28e430cfd9c6e4c7ca7779d26c7a5505c0f023f912028ab67925add95b1edb4` |
| `ROMS/Nonlinear/step3d_t.F` | `cb1bc8fb01e226ecd4c0b51eaddd34d3b6d890d418924abe9d952c66d3febf90` |
| `ROMS/Nonlinear/pre_step3d.F` | `54cc6ac728760b50ae0f3db93ba5963cc5610b1d500e6d039360564d7a41a409` |
| `ROMS/Nonlinear/t3dmix4_s.h` | `3a7f3f29d11695f3c81462b2f4975b6afc4c8d4f239db0a7ea0ac0c164d7a14b` |
| `ROMS/Nonlinear/gls_corstep.F` | `b94b75c871d853e157c1c267223f9e5e1eba2a89f296f8e54f9eb577c2be229a` |
| `ROMS/Nonlinear/Biology/bio_UMAINE15.h` | `8d579a85cad39249f5d136922c90dc14ea51624623ad8c4b08659141658e4378` |

隔离 makefile 使用 `$(CURDIR)/make_macros.mk` 而非账户级 `$HOME/make_macros.mk`，防止并发团队构建互相覆盖。

### 继承完整输出的精度审计

- 验证任务：`118068696`
- 官方校验器 SHA-256：`97230e0b0dd4533a4000155bd691c81d243bdc45c24e6ceaeb09ffa6b1bb878a`
- 被测输出：`lsd` v24a 无 HCOLL 完整运行 `118062810`
- 结果：`FAILED 1:0`
- SCS：全部 13 个变量通过
- Dongsha60：12 个变量通过；`u` RMSE 为 `0.000067`，超过 `0.000060` 阈值
- v22 保存的官方结果有同样的 25 过/1 败签名
- 结论：尽管 v22 与 v24a 运行时间短得多，均不是有效评分基座

### 复现构建

- 首个构建任务 `118068693`：因 `MCC_MAKE_JOBS=32` 触发 Fortran 模块文件竞争（`step3d_uv_mod.mod0` 重命名失败）而失败。这是实验脚本错误，不是源码编译错误。
- 修正后的构建任务 `118126939`：以继承的 `MCC_MAKE_JOBS=1` 完成 `COMPLETED 0:0`；make wall time `2:52.00`。
- 复现二进制：`.mcc_opt/bin/codex-v24a-repro-gcc731/oceanM`
- SHA-256：`e1f2cb7fcd9f531a77dbe76c87901841235449cf418e084468cf774c9b8b4df1`
- 二进制哈希与 `lsd` v24a 二进制不同，因为 ROMS 在可执行文件中嵌入绝对源码根目录；运行时行为仍需同节点短比较。

### 精度恢复候选

- 变更：仅向 v24a 编译器规则添加 GCC `-ffp-contract=off`；不改变模型方程、网格、时间步、强迫、输出或输入。
- 目的：测试禁用融合乘加收缩是否能把边缘的 Dongsha60 `u` 结果移回官方阈值内。
- 无效首次构建任务：`118127158`，`COMPLETED 0:0`，但编译器配置被上传到 `scripts/` 而 `build_variant.sh` 收到的是 `.mcc_opt/scripts/`。因继承的辅助脚本使用 `set -uo pipefail` 而非 `set -euo pipefail`，失败的配置复制未中止构建。其二进制与标准 v24a 复现逐字节一致（`e1f2cb7f...`），不是精度候选。
- 无效首次三方短比较：`118127234`。三段 180 秒模型段均运行，但后处理器因计算节点环境缺少 `python3` 以 `127` 退出。之后的官方环境比较显示 Intel 基线与标准 v24a 之间 12 个共同检查点完全相等，v24a 与所谓精度候选之间 35 个完全相等；这与候选实际是同一二进制一致。这些检查点仅作诊断，不建立最终输出 RMSE。
- 修正配置：`.mcc_opt/scripts/Linux-gfortran.gcc731-znver1-ompbio-precise.mk`，`FFLAGS := -march=znver1 -mtune=znver1 -ffp-contract=off`。
- 修正构建任务：`118128434`，`COMPLETED 0:0`，耗时 `00:02:38`。
- 修正二进制：`.mcc_opt/bin/codex-v24a-fpcontractoff-v2-gcc731/oceanM`。
- 修正二进制 SHA-256：`55890f2a9470d08c659173c647d3a9d776abcc8aea7363e46e820006a53ed732`；与标准 v24a 复现 SHA-256 `e1f2cb7fcd9f531a77dbe76c87901841235449cf418e084468cf774c9b8b4df1` 不同，确认编译选项改变了生成代码。
- 提交工件：`C:\Users\Fu Jiake\Documents\MCC\ROMS_CoSiNE_final_20260727\lsd_v24a\build_v24a_fpcontractoff.slurm`。
- 修正后的依赖四节点三方短比较：任务 `118128460`，使用显式校验器 Python `/public/share/mcc2026_final/miniforge3/envs/vali/bin/python`；本次日志更新时正在运行。
- 提交工件：`C:\Users\Fu Jiake\Documents\MCC\ROMS_CoSiNE_final_20260727\lsd_v24a\compare_precision_short.slurm`。
- 一次非预期的重复构建提交，任务 `118128423`，在生成二进制前 21 秒后以退出码 `2:0` 失败。随后的干净构建 `118128434` 重写变体构建日志并正常完成；无重复任务仍在运行。
- 修正后的短比较任务 `118128460`：`COMPLETED 0:0`，耗时 `00:09:16`；三个顺序 180 秒 `srun` 步骤在同一个四节点分配上均以 `0:0` 完成。
- 短比较结果：Intel 基线对标准 v24a 12/12 共同检查点完全一致。Intel 基线对真实 `-ffp-contract=off` 候选 11/12 完全一致，首次差异在 Grid 02 第 225 步。标准 v24a 对候选 32/35 完全一致。最大打印诊断差异为绝对值 `1.0e-9`（相对 `5.81e-7`）。
- 解释：该选项确实改变数值轨迹，但短诊断未显示向 Intel 基线的靠拢，也无法预测最终 Dongsha60 `u` RMSE。
- 2026-07-29 完整运行关卡：`/public` 仅剩 `9.7G` 可用，而一套已知完整输出约 `8.5G`；既有 11 GiB 容量防护会中止。未提交任何完整候选运行。

### Intel-precise v24a 隔离候选

- 日期：2026-07-29
- 变更：保持导入的 v24a 源码与通信路径不变，将 GCC 工具链替换为 Intel 2017 `-fp-model precise`，并仅对 `biology.o`、`pre_step3d.o`、`step3d_t.o`、`t3dmix.o`、`gls_corstep.o` 启用 Intel OpenMP（`-qopenmp`）。
- 目的：在保留继承的选择性热点 OpenMP 设计的同时，把编译器浮点语义与 v24a 源码/通信变更分离。
- 本地编译器规则：`C:\Users\Fu Jiake\Documents\MCC\ROMS_CoSiNE_final_20260727\lsd_v24a\Linux-ifort.intel2017-v24a-omp.mk`，SHA-256 `b1819cadf9f04ee6c46dcef7f096e72eecb2e932eac9738b8d5d2e22e7fbdbe6`。
- 本地构建脚本：`C:\Users\Fu Jiake\Documents\MCC\ROMS_CoSiNE_final_20260727\lsd_v24a\build_v24a_intelprecise_omp.slurm`，SHA-256 `e866b66a7cdef6d1633efa5f2bde5748da021d29b3dd503391a240475dee3ca4`。
- 构建任务：`118129636`，`COMPLETED 0:0`，耗时 `00:04:51`。
- 二进制：`.mcc_opt/bin/codex-v24a-intelprecise-omp/oceanM`，SHA-256 `c33a2b5d2ab93a85d783b122f228be3f86a53432f616712f7a3d477bdad8e2a9`。
- 最终链接命令包含 `-fp-model precise -O3 -qopenmp`，确认精度模型与选择性 OpenMP 运行时链接均激活。
- 依赖的 180 秒四节点诊断任务 `118129663`：`COMPLETED 0:0`，耗时 `00:03:06`。
- 诊断结果：原始 Intel 基线对 v24a Intel-precise 11/12 共同检查点完全一致；v24a GCC 对 v24a Intel-precise 32/34 完全一致。两者均在 Grid 02 第 225 步首次出现 `1.0e-9` 差异，且 Intel-precise 值在打印精度上与 `-ffp-contract=off` 候选一致。
- 解释：仅更换编译器不能保留原始早期打印轨迹；"Intel precise 自动恢复最终阈值"的简单假设不受支持。
- 本地比较脚本：`C:\Users\Fu Jiake\Documents\MCC\ROMS_CoSiNE_final_20260727\lsd_v24a\compare_intelprecise_short.slurm`。
- 首次线程隔离提交 `118130484`：在模型启动前 1 秒内被 `profile_job.sh` 以退出码 `2:0` 拒绝，因为 `spread_numa16_ccx_2t` 要求 `MCC_OMP_THREADS=2`。这是测试脚本映射错误，未产生模型结果。
- 修正 OMP1 映射：`spread_numa16_ccx`，即既有 4 节点/64 rank 每 rank 一核布局。
- 修正后的线程隔离诊断任务 `118130688`：`COMPLETED 0:0`，耗时 `00:03:07`，使用既有 `spread_numa16_ccx` 每 rank 一核映射。
- OMP1 结果：原始 Intel 对 v24a Intel-precise OMP1 11/12 共同检查点完全一致，并在 Grid 02 第 225 步有相同首次 `1.0e-9` 差异。Intel-precise OMP2 对 OMP1 全部 32 个共同检查点完全一致。
- 线程结论：观察到的早期数值分歧不是由使用两个 OpenMP 线程造成。在 180 秒内 OMP1 产生 32 个检查点，OMP2 为 34 个，因此禁用线程还使这些分配上的短运行进度减少约 6%。
- 本地 OMP1 比较脚本：`C:\Users\Fu Jiake\Documents\MCC\ROMS_CoSiNE_final_20260727\lsd_v24a\compare_intelprecise_omp1_short.slurm`。
- 在候选完成构建、运行、完成完整冷启动并通过官方校验器之前，不声称任何精度或性能改进。

### 私有构建驱动可靠性修复

- 日期：2026-07-29
- 文件：`/public/home/fujiake/fjk/ROMS_CoSiNE15_lsd_v24a_20260728/.mcc_opt/scripts/build_variant.sh`。
- 本地工件：`C:\Users\Fu Jiake\Documents\MCC\ROMS_CoSiNE_final_20260727\lsd_v24a\build_variant.sh`。
- 变更：使用 `set -euo pipefail`；在创建构建工件前拒绝不可读的编译器规则；移除旧的 `.time` 文件；每次新构建前截断各变体 make 日志。
- 原因：继承的辅助脚本在编译器规则复制失败后继续执行，并追加多次构建的输出，这使任务 `118127158` 失效并污染了重复的 v2 计时文件。
- 保留备份：`.mcc_opt/scripts/build_variant.sh.pre_codex_20260729`，SHA-256 `5d1f36198b062e2d152f9754182aa8711a0f8e8472a780a5a86c57cb7a8f6fc0`。
- 修补后脚本 SHA-256：`1907b21c638f5629d30c456439750d578383fa81de05ee7620508dfeb09d7e92`。
- 验证：本地/远程上传完成，`bash -n` 通过，预期的 fail-fast 与日志重置行存在。未仅为该脚本修复启动模型构建。
- 范围：仅私有隔离树；未修改 `/public/home/fujiake/lsd` 与 `/public/share`。

### 存储与协调关卡

- 日期：2026-07-29
- 检查期间 `/public` 可用空间从 `9.7G` 降至 `9.1G`。
- 队友拥有的 `~/lsd` 完整运行，任务 `118129811`（`v31_lto_full3d`），正在 `j05r2n[10-13]` 运行；快照时其输出约 `557M`。
- 动作：仅只读状态检查。未修改或取消该任务、其文件或其节点。
- 结果：未提交任何 Codex 完整输出任务；已知输出大小（约 `8.5G`）叠加持续增长的文件系统使新完整运行不安全。

### 获授权的基线输出清理

- 日期：2026-07-29
- 授权：用户明确表示三项确认已通过。
- 精确删除路径：`/public/home/fujiake/fjk/mcc_runs/117981144_baseline_64_8x8/output`。
- 删除前验证：`readlink -f` 与预期绝对路径完全一致；目录含 16 个 NetCDF 文件，占用 `8.5G`。
- 保留路径：`/public/home/fujiake/fjk/mcc_runs/117981144_baseline_64_8x8/logs` 与 `/public/home/fujiake/fjk/mcc_runs/117981144_baseline_64_8x8/validation`。
- 删除后结果：`output_removed=yes`，`logs_preserved=yes`，`validation_preserved=yes`；剩余基线运行目录占用 `653K`。
- 可恢复性：16 个 NetCDF 文件已永久删除，无法从此目录恢复。任务日志、官方验证记录、哈希、计时与优化日志仍然可用。
- 紧随其后的文件系统结果：`/public` 报告可用 `9.7G`（`94%` 已用），仍低于 11 GiB 完整运行安全防护，因为队友拥有的 v31 完整运行持续产生输出。
- 范围：未修改 `/public/home/fujiake/lsd` 或 `/public/share` 下的任何文件。

## Stage 5 - 多次无效精度候选后的 PLAN 研究

- 日期：2026-07-29
- 触发：真实 GCC `-ffp-contract=off` 候选与 Intel-precise v24a 候选均未提供精度恢复证据；新永久规则要求连续两次无效尝试后停止。
- 动作：未提交新实验。对相关科学工作与类似开源 ROMS 实现进行互联网研究，优先中国海洋模式研究。
- 官方 ROMS 发现：ROMS 4.2 报告在 PR #40 中实现了使用 `MPI_GATHERV/MPI_SCATTERV` 的收集/分发。
- 中国研究发现：MASNUM 优化强调通信聚合、I/O 与均衡的二维分解；swPOM 剖析显示通信占比随核数上升并警告盲目强扩展，同时支持外循环并行与剖析后的连续内存访问。
- 本地综合：回归官方通过的 Intel 基线，设计一条按 rank 排序的可变计数 gather/scatter 路径，不做任何浮点运算。不要从 owner-reduce、fluxsum 重排、广泛非阻塞 halo 交换、HCOLL 或仅 biology 优化开始。
- 第一项分析：`analysis/plan_research_20260729/01_read_summary.md`。
- 第二项分析：`analysis/plan_research_20260729/02_profiling.md`。
- 第三项有效性分析：`analysis/plan_research_20260729/03_validity_check.md`。
- 三项结果：三项分析作为规划证据均有效；不声称测得的速度或精度。
- 输出删除：不适用，因为本任务未产生模型输出目录。

## Stage 6 - 源码级精度退化二分审计

- 日期：2026-07-29
- 动作：对基线、v22 与 v24a 源码哈希、构建脚本与渐进分阶段差异做只读审计。未启动模型实验。
- 关键发现：v22 使用的暂存 `distribute_owner_reduce.F` 与暂存 `distribute.F`（`9ad6370e...`）逐字节一致，但第三项检查发现该暂存文件已与通过的基线 distribute（`f03d0175...`）不同。它包含边界批处理、就地组装归约、`mp_sum` 与一条条件式原生统一归约路径。
- 激活检查：在检查的应用头文件或 v22/v24a 编译日志中未发现 `REDUCE_ALLGATHER` 或 `COLLECT_ALLREDUCE` 定义。因此条件式 rank 序到原生归约的变更不计为已证实的活动成因。
- v24a 分层 distribute 变更仍无法解释 v22 已存在的失败。
- 共享高风险变更：`nesting_sparse_contact3d.F` 将 `fine2coarse2d/3d` 从"全局场聚合后接收侧有序平均"改为"donor 侧平均后对打包接触值做浮点 `mp_sum`"。
- 较低风险子变更：owner 到 receiver 的接触复制不经过算术传递值，日后可与平均/归约变更分离。
- 未决替代方案：GCC 7.3.1 与热点 OpenMP/数学复用源码替换仍为可能成因；历史树中没有完整的原始源码 GCC 验证。
- 第一项分析：`analysis/source_bisection_20260729/01_read_summary.md`。
- 第二项分析：`analysis/source_bisection_20260729/02_profiling.md`。
- 第三项有效性分析：`analysis/source_bisection_20260729/03_validity_check.md`。
- 三项结果：三项分析均有效；根因尚未证明。
- 下一候选：用 GCC 7.3.1 编译原始通过源码，不做热点 OpenMP 源码替换，随后完整官方验证。
- 输出删除：不适用，因为审计未产生模型输出目录。

# 2026-07-29 - 原始源码 GCC 7.3.1 工具链隔离构建

- 日期：2026-07-29
- 任务：`118169519`
- 脚本：`/public/home/fujiake/fjk/ROMS_CoSiNE15_codex_20260727/experiments/toolchain_bisect_20260729/build_original_gcc731.slurm`
- 源码路径：`/public/home/fujiake/fjk/ROMS_CoSiNE15_codex_20260727`
- 工件：`/public/home/fujiake/fjk/ROMS_CoSiNE15_codex_20260727/.mcc_opt/bin/original_gcc731_noomp/oceanM`
- 优化/变更：在原始通过模型源码上隔离 GCC 7.3.1 + HPC-X 2.7.4；无 OpenMP，无通信/源码替换。
- 结果：构建在 `2:47.26` 完成；二进制 SHA-256 `8c4bc0ae48330f3041ab9f223315fd9aa5fc4f0ca926cb67d5d65f4b767de9cf`；原始 Intel 二进制保留为 `903360ee...`。
- 三项分析：`analysis/toolchain_build_20260729/{01_read_summary,02_profiling,03_validity_check}.md`。
- 验证边界：编译与隔离已确认；模型精度与运行时间尚未测量。
- 删除：无；本任务与先前源码审计任务均未产生模型输出。

# 2026-07-29 - 原始源码 GCC 7.3.1 完整运行时隔离

- 日期：2026-07-29
- 任务：`118169717`（最后检查时正在运行）
- 脚本：`/public/home/fujiake/fjk/ROMS_CoSiNE15_codex_20260727/experiments/toolchain_bisect_20260729/run_original_gcc731_64.slurm`
- 运行路径：`/public/home/fujiake/fjk/mcc_runs/118169717_original_gcc731_noomp_64_8x8`
- 优化/变更：仅编译器/工具链；原始通过源码，GCC 7.3.1，HPC-X 2.7.4，无 OpenMP；2 节点，64 个 MPI rank，8x8 分块，未修改的完整积分。
- 2026-07-29 21:40 +0800 结果：运行正常；到达细网格第 135 步，输出 557 MiB，无即时错误；最终时间与精度待定。
- 输出生命周期：任务开始时无删除，因为前一构建任务未产生模型输出。此运行输出保留至全部三项分析及下一任务，除非用户要求保留更久。
- 验证边界：仅启动/进度；尚无性能或精度结论。

### 只读进度同步

- 状态时间：`2026-07-29T23:21:46+0800`。
- Slurm 状态：`RUNNING`，耗时 `01:43:24`，节点 `j05r2n[11-12]`，活动时 accounting 退出字段 `0:0`。
- 模型进度：粗网格 Grid 01 第 `1725/2592` 步；细网格 Grid 02 第 `8640/12960` 步；状态扫描未返回致命错误标记。
- 当前输出：`7.5G`，已有 12 个 NetCDF 文件；restart 文件仍在写入，故这不是最终输出清单。
- 存储：`/public` 大小 `250G`，可用 `89G`，使用 `65%`。
- 待定证据：shell `time` 输出尚不可用；验证目录为空；本运行的 `01_read_summary.md`、`02_profiling.md`、`03_validity_check.md` 尚不存在。
- 协调：用户队列只显示任务 `118169717`；这不代表先前可见的队友任务 `118167715` 的结果。
- 任务边界：本次同步未启动实验、未删除输出。活动输出保留至完成、官方验证与全部三项分析。

## Stage 7 - 四节点/128 核扩展性假设审计与剖析计划

- 日期：2026-07-30（平台时间）。
- 任务：验证"四节点/128 核执行受带宽限制、15 GiB 输入树意味着更多并行潜力"的说法；在启动另一实验前定义正确的剖析。
- 既有 128-rank 证据：团队树任务 `118167715`，脚本 `/public/home/fujiake/lsd/mcc2026_final/ROMS_CoSiNE15/.mcc_opt/slurm/intel128_full3d_v2.sh`，运行目录 `/public/home/fujiake/lsd/mcc2026_final/ROMS_CoSiNE15/.mcc_opt/runs/full3d_intel128_118167715`。
- 结果：包装器在 5400 秒后超时（`process.time` 退出码 `124`），粗网格 `1380/2592`、细网格 `6930/12960`；无 `ROMS/TOMS: DONE` 或最终 ROMS 剖析。八个部分 NetCDF 文件约占 4.0 GiB。
- 推算而非结果：`10098.70 s`（`02:48:18.70`）。相对完整 Intel 64-rank `10383.89 s`，rank 翻倍仅得到 `1.02824x` 推算加速与 `51.4120%` 强扩展效率。
- 可比性限制：128-rank 二进制 SHA-256 `b5cfb381...`；其团队树 `distribute.F` 为 `9ad6370e...`，而通过的原始源码为 `f03d0175...`。该样本不是严格的同源码 64 对 128 比较。
- 输入证据：`/public/home/fujiake/Inputfiles` 约 15 GiB，但完整 Intel/GCC ROMS 剖析将每个网格的输入读取归因于不足 0.05%，消息传递占 30%-43%。大文件并不意味 128-rank 强扩展有用。
- 剖析结论：当前证据支持严重饱和并强烈指向 MPI/嵌套网格通信，但未直接测量 DRAM 带宽。`MPI_Allreduce` 终止堆栈是超时快照，不是 Allreduce 瓶颈的证据。
- 计划中的受控诊断：原始源码验证 GCC 二进制，半天 `NTIMES=432,2160`，OMP1 与相同运行环境；比较 A=`2 节点/64 rank/8x8`、B=`4 节点/64 rank/8x8`、C=`4 节点/128 rank/16x8 与 8x16`，按 `A-B-C-C-B-A` 顺序做两次无插桩重复，另加一个独立 PMPI/硬件计数器队列。
- 必需测量：ROMS 计算/消息计时器、每 rank PMPI 调用/时间/负载与不均、精确绑定/拓扑、Slurm 资源记账、启动 I/O，以及（若支持）直接内存控制器带宽。单 rank `perf record cycles` 不足以声称内存带宽。
- 第一项分析：`analysis/scaling_profile_plan_20260730/01_read_summary.md`。
- 第二项分析：`analysis/scaling_profile_plan_20260730/02_profiling.md`。
- 第三项有效性分析：`analysis/scaling_profile_plan_20260730/03_validity_check.md`。
- 三项结果：第 1、2 项分析作为规划证据有效。不声称直接内存带宽根因、完整 128-rank 时间、加速或评分有效结果。
- 输出生命周期：仅文档；未生成或删除模型输出。既有有效与复现输出均保留。
- 技能同步：更新工作区包引用 `progress.md`、`plan.md`、`evidence-index.md`，随后复制到 `C:\Users\Fu Jiake\.codex\skills\mcc26-roms-cosine-handoff\references`。递归比较发现每棵树 10 个文件，路径/哈希差异为零。
- 技能验证：frontmatter、目录/名称匹配、六个直接引用链接、安装/包文件哈希通过人工确定性检查。打包的 `quick_validate.py` 因默认 Python 缺少 `PyYAML` 无法运行；未安装任何包，该工具限制被记录而非误报为校验器通过。

## Stage 8 - 扩展剖析计划的网格冻结修正

- 日期：2026-07-30（平台时间）。
- 用户修正：所有网格相关设置不可变。对本项目，`NtileI` 与 `NtileJ` 也冻结，尽管早先的一般解释认为分块数可变。
- 失效内容：`analysis/scaling_profile_plan_20260730/02_profiling.md` 提出的 128-MPI `16x8`/`8x16` 分解。该矩阵现明确标记为被取代，其第三项"Pass 2 valid"结论撤回。
- 永久规则：保留 Grid 01/Grid 02 的 `8x8`/`8x8`；未经新的明确用户授权，不得提出替代分块数或朝向。
- 修正后的资源比较：A=`2 节点，64 MPI，OMP1`；B=`4 节点，64 MPI，OMP1`；C=`4 节点，64 MPI，OMP2`。全部保持相同 `8x8`/`8x8` 分解。C 需要一个 A/B/C 共享的 OpenMP 可用二进制以及单独的完整精度验证。
- 第一项修正分析：`analysis/scaling_profile_correction_20260730/01_read_summary.md`。
- 第二项修正分析：`analysis/scaling_profile_correction_20260730/02_profiling.md`。
- 第三项修正分析：`analysis/scaling_profile_correction_20260730/03_validity_check.md`。
- 结果：三项修正分析作为规划证据均有效。未产生实验、加速、内存带宽证明或精度声明。
- 输出生命周期：仅文档；未生成或删除输出，既有结果未触碰。
- 永久记忆：新增 `C:\Users\Fu Jiake\.codex\memories\extensions\ad_hoc\notes\2026-07-30-mcc-freeze-all-grid-settings.md`，含网格/Ntile 冻结与无效计划警告。
- 技能同步：在工作区包与已安装 Skill 中更新 `SKILL.md`、`rules.md`、`project-structure.md`、`progress.md`、`plan.md`、`evidence-index.md`。递归比较每棵树 10 个文件，路径/哈希差异为零。
- 技能验证：frontmatter、目录/名称匹配、六个直接引用链接、陈旧的宽松 Ntile 措辞缺失均通过人工确定性检查。打包的 Python 校验器仍不可用，因为默认 Python 缺少 `PyYAML`；未安装依赖。
- 附加用户澄清：MPI 可以更改。允许的工作现明确包含 MPI 通信实现、集合通信、MPI/UCX/HCOLL 运行时配置、映射、放置与绑定，同时所有网格与分块设置保持冻结。
- 永久记忆新增：`C:\Users\Fu Jiake\.codex\memories\extensions\ad_hoc\notes\2026-07-30-mcc-mpi-changes-allowed.md`。
- MPI 澄清技能重新同步：将更新后的 `rules.md`、`progress.md`、`plan.md` 重新复制到已安装 Skill；工作区与已安装树再次各含 10 个文件，路径/哈希差异为零。

## Stage 9 - 通过源码检查与优化计划

- 日期：2026-07-30（平台时间）。
- 检查路径：`/public/home/fujiake/fjk/ROMS_CoSiNE15_codex_20260727`、只读团队暂存 `/public/home/fujiake/lsd/mcc2026_final/ROMS_CoSiNE15/.mcc_opt`、本地导入编译器规则 `ROMS_CoSiNE_final_20260727/lsd_v24a`。
- 优化内容：仅检查与规划；无源码实现、构建、运行、取消、输出删除或共享目录写入。
- 代码结果：全局 ROMS `USE_MPI+USE_OpenMP` 被 makefile 阻止。合规混合方式必须保持 MPI 驱动单线程，仅用 OpenMP 编译显式并行化的热点对象。继承的 biology 外层-J 源码仅含指令，而继承的延迟 `step3d_t` 变体还改变通信，不是隔离候选。
- 剖析结果：有效 GCC 计时器仍选择嵌套 gather/MPI 为主目标。Grid 02 biology 约 `1.4281%`，因此仅 biology 的 OpenMP 是可行性关卡，全程序上限很小，不是首要性能目标。
- 精确 MPI 复查：通过的 `distribute.F`（`f03d0175...`）显示 `mp_aggregate2d/3d` 计算每分块最大 `Npts`，对 `Asend` 零填充，执行填充的 `MPI_Allgather`，并在每个 rank 解包。`mp_gather2d/3d` 已对 master 使用精确计数点对点传输；scatter 使用 Bcast。
- 复现后的活动顺序：固定网格 2 节点/4 节点放置 ABBA；精确二进制 PMPI/计数器队列；仅移除聚合路径 `Arecv=0`；用按 rank 排序的 `MPI_Allgatherv` 替换填充聚合 `MPI_Allgather`；然后一次一个热点做选择性 OpenMP。
- 精度约束：保留两个 `8x8` 分块网格与 64 个 MPI rank；保留打包/rank/解包顺序与浮点运算顺序；任何源码/集合候选在采用前须完整官方验证。
- 第一项分析：`analysis/code_audit_plan_20260730/01_read_summary.md`。
- 第二项分析：`analysis/code_audit_plan_20260730/02_profiling.md`。
- 第三项有效性分析：`analysis/code_audit_plan_20260730/03_validity_check.md`。
- 三项结果：三项作为检查/规划证据均有效。不声称加速、带宽根因或精度结果。
- 输出生命周期：仅文档；未生成或删除模型输出。既有有效与复现输出均保留。
- 技能同步：更新工作区引用 `project-structure.md`、`progress.md`、`plan.md`、`evidence-index.md`，随后复制包到 `C:\Users\Fu Jiake\.codex\skills\mcc26-roms-cosine-handoff`；两棵树各含 10 个文件，递归 SHA-256 比较报告零差异。
- 技能验证：frontmatter 与六个直接引用目标通过人工确定性检查。`quick_validate.py` 因默认 Python 缺少 `PyYAML` 无法运行；未安装依赖。

## Stage 10 - 时间受限的最小运行计划

- 日期：2026-07-30（平台时间）。
- 用户指示：剩余比赛时间有限，尽量少跑模型。
- 路径：`analysis/run_minimization_plan_20260730/` 与 Skill 引用 `progress.md`、`plan.md`、`evidence-index.md`。
- 优化内容：仅计划修订；无源码编辑、构建、任务提交、取消、验证任务、输出创建或删除。
- 结果：将默认 ABBA/剖析/OpenMP 矩阵替换为至多两次新的半天运行与一次完整候选运行。S0 为不变的四节点/64-MPI 短基线；S1 仅将 `mp_aggregate2d/3d` 改为按 rank 排序的 `MPI_Allgatherv` 并移除其冗余接收零填充；仅当 S1 通过自适应方差阈值并保持数值一致时才运行 F1。
- 条件工作：PMPI、确认短运行、第二次完整运行、HCOLL/UCX 与 OpenMP 仅在证据含糊或时间允许时触发，而非预先排程。
- 第一项分析：`analysis/run_minimization_plan_20260730/01_read_summary.md`。
- 第二项分析：`analysis/run_minimization_plan_20260730/02_profiling.md`。
- 第三项有效性分析：`analysis/run_minimization_plan_20260730/03_validity_check.md`。
- 三项结果：第 1、2 项分析作为减少运行的执行策略有效；不声称测得结果。
- 输出生命周期：仅文档；未生成或删除模型输出。既有有效与复现输出均保留。
- 技能同步：更新工作区 `progress.md`、`plan.md`、`evidence-index.md`，复制包到已安装 `mcc26-roms-cosine-handoff` Skill，确认每棵树 10 个文件、SHA-256 差异为零。
- 技能验证：frontmatter 与全部六个直接引用目标通过人工确定性检查；已知本地 `quick_validate.py` PyYAML 限制不变。

## Stage 11 - 异步 MPI 可行性评估

- 日期：2026-07-30（平台时间）。
- 检查路径：通过的 `ROMS/Utility/distribute.F`（`f03d0175...`）、`ROMS/Nonlinear/nesting.F`（`9e9e7f3b...`）、`ROMS/Utility/mp_exchange.F`（`c66ab7bb...`），保留于 `analysis/code_audit_plan_20260730/source_evidence/`。
- 优化内容：只读评估；无源码编辑、构建、模型运行、验证、取消或删除。
- 结果：直接 `MPI_Iallgatherv` 后紧跟 `MPI_Wait` 几乎不暴露有用重叠，因为聚合输出立即被解包并消费。begin/end 流水线只能将主场集合通信与打包/发送 `Adx`、`Ady` 与掩码集合通信重叠；halo 重叠需要更侵入式的内部/边界拆分。
- 决策：保持阻塞式按 rank 排序的 `MPI_Allgatherv` 作为 S1。默认不添加异步运行。仅当 S1 精度正确、仍通信受限且时间允许时，才允许至多一次额外的半天异步流水线比较。
- 第一项分析：`analysis/async_mpi_assessment_20260730/01_read_summary.md`。
- 第二项分析：`analysis/async_mpi_assessment_20260730/02_profiling.md`。
- 第三项有效性分析：`analysis/async_mpi_assessment_20260730/03_validity_check.md`。
- 三项结果：第 1、2 项分析作为可行性证据有效；不声称加速或精度结果。
- 输出生命周期：仅文档；未生成或删除模型输出。保留输出未触碰。
- 技能同步：更新工作区 `progress.md`、`plan.md`、`evidence-index.md`，复制到已安装 MCC Skill，确认每棵树 10 个文件、SHA-256 差异为零。
- 技能验证：frontmatter 与全部六个直接引用目标通过确定性人工检查；未为已知 PyYAML 限制安装依赖。

## Stage 12 - 组织者澄清：允许 MPI 网格划分

- 日期：2026-07-30（平台时间）。
- 证据：`analysis/partition_rule_update_20260730/organizer_grid_partition_clarification.png`，SHA-256 `8242eb06422fcdcd509403e4940b8e423e60650bb1d75970adf79d51601b7bde`。
- 规则变更：物理网格点数、维度、分辨率、层数与文件不可变；内部 MPI 划分可以改变。当 `NtileI/NtileJ` 乘积等于 MPI rank 数且分解有效时允许使用。
- 取代规则：先前项目特定的 `NtileI/NtileJ` 冻结被撤回。其物理网格保护继续生效。
- 规划结果：允许 128 纯 MPI rank 与合法的 `16x8`/`8x16` 因子分解。历史任务 `118167715` 仍不完整、源码不匹配且未验证，故不晋升为有效结果。
- 时间预算结果：默认保持 S0/S1 为 64 rank。仅在有效的 S1 之后添加至多一次条件半天 S2，初始为 Grid 01 `16x8`、Grid 02 `8x16`；不做穷举朝向矩阵。
- 第一项分析：`analysis/partition_rule_update_20260730/01_read_summary.md`。
- 第二项分析：`analysis/partition_rule_update_20260730/02_profiling.md`。
- 第三项有效性分析：`analysis/partition_rule_update_20260730/03_validity_check.md`。
- 三项结果：第 1、2 项分析有效；这是规则/计划更新，无测得加速或精度结果。
- 输出生命周期：仅文档；未生成或删除模型输出。保留输出未触碰。
- 永久记忆：新增 `C:\Users\Fu Jiake\.codex\memories\extensions\ad_hoc\notes\2026-07-30-mcc-mpi-grid-partition-allowed.md`，仅显式取代先前的 `NtileI/NtileJ` 冻结。
- 技能同步：更新 `SKILL.md`、`rules.md`、`project-structure.md`、`progress.md`、`plan.md`、`evidence-index.md`；已安装/工作区树各含 10 个文件，SHA-256 差异为零。
- 技能验证：frontmatter、六个直接引用目标与陈旧的活动分块禁止措辞缺失均通过人工确定性检查；已知本地 PyYAML 限制不变。

## Stage 13 - 按 rank 排序的 MPI_Allgatherv 候选准备

- 日期：2026-07-30（平台时间）。
- 本地源码：`experiments/allgatherv_20260730/ROMS/Utility/distribute.F`。
- 远程隔离源码：`/public/home/fujiake/fjk/ROMS_CoSiNE15_allgatherv_20260730/ROMS/Utility/distribute.F`。
- 源码哈希：通过版 `f03d0175a421510bcb237351dd8c9cef04e1cf95f1713680921423f111342977`；候选版 `d573dcec715b2531c7f15a86a1a30a43c7baa7ff2affd24e01bf3eb94e0561df`。
- 优化：在 `mp_aggregate2d/3d` 中，用精确计数、按 rank 排序的 `MPI_Allgatherv` 替换最大分块填充 `MPI_Allgather`；使用前缀位移解包，并仅移除现在不再需要的聚合 `Arecv=0.0_r8`。保留 `Asend` 初始化、打包/rank/解包顺序、接触点覆写顺序与全部浮点运算。
- 诊断输入：`experiments/allgatherv_20260730/inputs/ocean_halfday_64_8x8.in`，SHA-256 `4b0087cb692ccff9a2298b85470ee4ad0c23b44a8aefb9d4021454a9537cacb7`；它仅在组织者批准的 `NTIMES=432,2160` 上与完整验证输入不同。
- 映射准备：S0 与 S1 脚本使用四节点、64 个 MPI rank、两个物理网格均为 8x8 分块、OMP1 与审计过的 `spread_numa16_ccx` rankfile 放置。两个脚本均通过远程 `bash -n`；尚未提交运行。
- 构建任务：`118204040`，脚本 `/public/home/fujiake/fjk/ROMS_CoSiNE15_allgatherv_20260730/build_allgatherv_gcc731.slurm`；阶段检查点处于 `QOSMaxCpuPerUserLimit` 挂起。
- 结果：隔离候选准备静态有效；编译、速度与精度仍为 `UNVERIFIED`。
- 三项分析：`analysis/allgatherv_candidate_preparation_20260730/{01_read_summary,02_profiling,03_validity_check}.md`。
- 输出生命周期：上一阶段仅文档，因此没有可删除的上一阶段输出。在复现验证挂起期间，全部完整 GCC 基线/复现输出均保留。未删除任何输出。
- 技能同步：更新 `progress.md`、`plan.md`、`evidence-index.md`；工作区与已安装 Skill 树各含 10 个文件，递归 SHA-256 差异为零。

## Stage 14 - GCC 复现验证与方差收尾

- 日期：2026-07-30（平台时间）。
- 完整复现任务：`118196477` 于 `j05r2n[10-11]`，shell `real 9311.09 s`；`118196481` 于 `j05r2n[12-13]`，shell `real 9263.08 s`。两者均为 `COMPLETED 0:0`、到达 `ROMS/TOMS: DONE`、产生 16 个文件/8.5G。
- 精确谱系：原始通过源码，GCC 7.3.1/HPC-X 2.7.4，无 OpenMP，二进制 SHA-256 `8c4bc0ae...`，输入 SHA-256 `a3e8a5db...`，2 节点/64 MPI，两个网格 `8x8`，完整冷启动 `NTIMES=2592,12960`。
- 方差结果：与已验证任务 `118169717`（`9259.75 s`）一起，中位数为 `9263.08 s`，极差 `51.34 s`，极差/中位数约 `0.554%`，样本 CV 约 `0.310%`。
- 官方验证：合并任务 `118203698`，`COMPLETED 0:0`，位于 `j05r2n00`。两个精确输出目录全部 26 项检查通过；东沙 `u RMSE=0.000057 <= 0.000060`。
- 确定性边界：被检查的两对 `SCS_avg_0001.nc` 与 `Dongsha60_avg_0001.nc` 的 SHA-256 哈希不同。官方评分有效性与可重复计时已建立；逐字节一致性未建立。
- 三项分析：`analysis/toolchain_reproduction_118196477_118196481/{01_read_summary,02_profiling,03_validity_check}.md`；全部有效。
- 输出生命周期：无删除。保留最新运行 `118196481`；较旧输出需在后续任务开始时走完整删除关卡。

## Stage 15 - Allgatherv 候选构建与重复任务遏制

- 日期：2026-07-30（平台时间）。
- 首次尝试 `118204040`：在 stdout/stderr 创建前以零秒 `FAILED 0:53`；无法推断源码/编译器失败。
- 成功构建 `118205647`：`COMPLETED 0:0`，位于 `j05r2n10`，Slurm 耗时 `2:50`，make 耗时 `2:48.37`，退出码 `0`。
- 候选谱系：`distribute.F=d573dcec...`，通过版 `nesting.F=9e9e7f3b...`，GCC 7.3.1/HPC-X 2.7.4，无 OpenMP 标记或 `libgomp`。
- 候选二进制：`/public/home/fujiake/fjk/ROMS_CoSiNE15_allgatherv_20260730/.mcc_opt/bin/allgatherv_rankordered_gcc731_noomp/oceanM`，SHA-256 `55a95f9eb23e6345d34437cd65c136c1d2f5d6555d0e34550c725ad411c19c19`。
- 重复任务遏制：延迟/并发提交可见性产生 `118206252`；27 秒后被取消。它部分重建了共享 scratch 并覆写了非任务特定的 `build_metadata.txt`，但未重新链接成功二进制：mtime 保持 `13:25:14`，哈希保持 `55a95f9e...`。归因请使用 `118205647` 任务特定日志；任何未来重建前先清理。
- 三项分析：`analysis/allgatherv_build_118205647/{01_read_summary,02_profiling,03_validity_check}.md`；三项均作为构建证据有效。运行时间、速度与精度尚未测试。
- 输出生命周期：构建未产生模型输出。既有有效/复现输出均保留；未删除。
- 技能同步：在 S0 提交前刷新工作区包与已安装 Skill 中的 `progress.md`、`plan.md`、`evidence-index.md`。

## Stage 16 - S0 四节点/64-MPI 半天基线提交

- 日期：2026-07-30（平台时间）。
- 任务：`118206571`，`2026-07-30T13:43:41+0800` 在 `j05r2n[14-17]` 启动。
- 运行路径：`/public/home/fujiake/fjk/mcc_runs/118206571_s0_original_gcc731_4n64_halfday_8x8`。
- 脚本：`/public/home/fujiake/fjk/ROMS_CoSiNE15_codex_20260727/experiments/allgatherv_20260730/run_s0_original_4n64_halfday.slurm`，SHA-256 `a765b7630bd6de22618018e81aa19cf1e400d7e9718ff5cfe5146c0a30f962a9`；远程 `bash -n` 通过。
- 因果变更：相对已验证两节点 GCC 运行仅为布局诊断；原始二进制 SHA-256 `8c4bc0ae...` 不变，四节点/64 MPI，每节点 16 rank，OMP1，两个网格 `8x8`，审计过的 `spread_numa16_ccx` rankfile SHA-256 `b35a88a9...`。
- 输入：组织者批准的半天 `NTIMES=432,2160`，SHA-256 `4b0087cb...`。此运行不能建立最终评分时间或精度。
- 存储关卡：模型启动前可用 `42741220 KiB`；脚本要求至少 `15728640 KiB`。
- 输出生命周期：前一构建未产生模型输出。完整 GCC 有效/复现输出有意保留；未删除。
- 当前边界：模型运行中；无完成、运行时间、速度或精度声明。S1 在 S0 获得三项有效分析前不提交。
- 技能同步：提交后立即刷新工作区与已安装 Skill 的 `progress.md`、`plan.md`、`evidence-index.md`。

## Stage 17 - S0 完成、包装器诊断与 S1 关卡

- 日期：2026-07-30（平台时间）。
- 任务/运行：`118206571`，`/public/home/fujiake/fjk/mcc_runs/118206571_s0_original_gcc731_4n64_halfday_8x8`。
- 模型结果：Grid 01 `432/432`，Grid 02 `2160/2160`，完整 ROMS 剖析，`ROMS/TOMS: DONE`；shell `real 922.61`，`user 13233.79`，`sys 1478.87 s`。mpirun 步骤以 `0:0` 完成。
- 包装器结果：模型完成后顶层 `FAILED 1:0`，因为未变的输出间隔产生零个 NetCDF 文件，旧最终命令展开为字面量 `output/*.nc`。唯一顶层 stderr 为 `sha256sum: output/*.nc: No such file or directory`。
- 证据边界：接受 `922.61 s` 为同范围 S0 诊断基线；不称 Slurm 任务完成，不声称完整运行时间或评分精度，也不仅为后处理重跑 S0。
- 剖析锚点：Grid 01 消息合计 `17233.008` rank-s，点收集 `14304.201`；Grid 02 消息合计 `20932.275`，数据收集 `12937.395`，点收集 `3955.980`。
- S1 关卡：直接 F1 资格要求 `real <= 894.93 s`（3%）；2%-3% 为含糊，低于 2% 延后。
- S1 脚本修复：加入精确二进制哈希 `55a95f9e...`；用零文件安全的 `find -exec sha256sum` 替换空 glob。本地/远程脚本 SHA-256 `31aca99f...`；`bash -n` 通过。
- 三项分析：`analysis/s0_118206571/{01_read_summary,02_profiling,03_validity_check}.md`；全部有效。
- 输出生命周期：零 NetCDF 文件，删除不适用。保留 S0 日志/元数据供 S1 比较。
- 协调关卡：`14:04` 检查点未提交 S1，因为同账户无关四节点任务正活动/挂起。未修改任何队友任务。
- 技能同步：S0 关闭后刷新工作区与已安装 Skill 的 `progress.md`、`plan.md`、`evidence-index.md`。

## Stage 18 - S1 依赖安全提交

- 日期：2026-07-30（平台时间）。
- 任务：`118208199`，`2026-07-30T14:06:01+0800` 提交。
- 脚本：`/public/home/fujiake/fjk/ROMS_CoSiNE15_allgatherv_20260730/run_s1_allgatherv_4n64_halfday.slurm`，SHA-256 `31aca99f5b7f5e923030376c1fdc08cff1faba7cbf9172c6e1dff743c1ec2c79`；本地/远程哈希一致且 `bash -n` 通过。
- 候选关卡：二进制 SHA-256 `55a95f9e...`，`distribute.F=d573dcec...`，半天输入 `4b0087cb...`，四节点/64 MPI，OMP1，两个网格 `8x8`，`spread_numa16_ccx`。
- 协调：以 `afterany:118206688:118206764:118206766:118207238` 提交，因为这些无关同账户四节点任务正运行或挂起。本检查点 S1 为 `PENDING (Dependency)`，不消耗资源。
- 输出生命周期：S0 未产生 NetCDF 文件；其运行日志保留。未执行删除。
- 结果边界：尚无模型启动、计时、速度、输出或精度结果。启动后刷新完整队列与精确 S1 元数据。
- 技能同步：提交后立即刷新工作区与已安装 Skill 的 `progress.md`、`plan.md`、`evidence-index.md`。

## Stage 19 - 本地工作区整理与入口指南

- 日期：2026-07-30。
- 工作区：`C:\Users\Fu Jiake\Documents\MCC`。
- 变更：将所有本地 MCC 材料归类到 `初赛/` 与 `决赛/`，再将初赛文件拆分为主源码/脚本、实验/性能数据、提交/归档、报告；将决赛文件拆分为赛题规则、ROMS-CoSiNE 优化工作区、交接 Skill。
- 移动结果：同一文件系统内移动 45 个顶层项目。无源码项缺失，无目标已存在，未删除或覆写任何文件或输出。
- 入口指南：`README.md`、`初赛/README.md`、`决赛/README.md`；全部本地 Markdown 链接通过 UTF-8 感知存在性检查，零坏链。
- 活动路径更新：当前项目根目录为 `C:\Users\Fu Jiake\Documents\MCC\决赛\02_优化工作区\ROMS_CoSiNE_final_20260727`；当前工作区 Skill 包位于 `决赛\03_交接Skill\skill-packages`。
- 兼容性：Git 根目录与既有未提交用户变更均保留；未发生 staging/commit/reset。远程源码、输入、运行与 Slurm 路径不变。
- 结果：整理有效，现行决赛交接可从新路径继续使用。
- 三项分析：`analysis/local_workspace_organization_20260730/{01_read_summary,02_profiling,03_validity_check}.md`。
- 输出生命周期：整理未产生模型输出；删除不适用。既有本地与远程结果未触碰。
- 技能同步：在迁移后的工作区包与已安装 Skill 中更新 `SKILL.md`、`project-structure.md`、`progress.md`、`plan.md`、`evidence-index.md`；递归包比较确认每棵树 10 个文件、路径/哈希差异为零。

## Stage 20 - 远程会话 k3 恢复与 4 节点布局突破

- 日期：2026-07-31（平台时间）。
- 动作：恢复会话 `k3_20260731` 的远程进度（`13:54` 中断，controller.lock 心跳冻结；无代理进程存留）。远程状态文件 `KNOWLEDGE_DIGEST.md`/`AGENT_STATE.md`/`HYPOTHESIS_BACKLOG.md` 为空；`final/` 与 `EXPERIMENT_LEDGER.jsonl` 为空；`knowledge/README.md` 缺失。
- EXP-0001（任务 118284636）：4 节点/64 个 MPI rank，每节点 16 rank，`spread_numa16_ccx`，原始 GCC 7.3.1 无 OMP 二进制 `8c4bc0ae...`，完整输入 `a3e8a5db...`，`NTIMES=2592,12960`。Shell `real 5471.77 s`。官方验证任务 118291691：26/26 通过。
- EXP-0003（任务 118291659）：确认重跑，条件相同。Shell `real 5412.96 s`，`ROMS/TOMS: DONE`。两次运行极差 1.08%；稳健。
- 结论：四节点/64-rank 布局是当前最佳，约 5412-5472 s，比两节点中位数 9263.08 s 快 41%，并低于组织者目标 6606 s。远程 `CURRENT_BEST.md` 仍记录陈旧的 9263.08 s 条目，必须刷新。
- EXP-0004（norecvzero）：补丁脚本已写，未应用/构建。注意：`work/current/ROMS/Utility/distribute.F` 哈希 `2ee1b555...` 与补丁预期 `f03d0175...` 不同，含 4 处 `Arecv=0.0_r8`；按原样应用会中止。使用前须调和目标文件。
- EXP-0002（hcoll）：运行脚本已写，未提交。
- 观察到的先前代理队列任务（均为 4 节点/128 rank，脚本在 k3 日志外）：`intel_pack1_1d`（118297792，运行中）、`nan_O31_1day`（118298602，完成）、`nan_O32_half`（118298605，运行中）；更早的 `nan_O29_half`（118295702）已离开队列。未经用户指示不得取消/调整优先级。
- 永久记忆规则加入 `rules.md`：每个阶段结束（提交、构建、运行、正确性、审查、暂停）保存工作日志，以便任何中断可从最后保存阶段恢复。
- 知识库：组织者 PPT 转录（优化策略 + 验证规则，保留〔模糊〕标记）加入 `决赛/01_赛题与规则/官方PPT_优化策略与验证规则.md`；进度快照刷新到 `progress.md`。

## Stage 21 - 旧输出清理（用户授权）

- 日期：2026-07-31。
- 用户授权仅删除 5 个历史运行目录中的 `output/` 子目录（NetCDF，每个 8.5G × 5 = 42.5G）；`logs/`（含 ROMS 剖析的 model.log）、`metadata/`、`validation/` 保留。
- 删除的输出目录：mcc_runs/{118169717_original_gcc731_noomp_64_8x8, 118196477_original_gcc731_noomp_64_8x8_repro, 118196481_original_gcc731_noomp_64_8x8_repro}/output；agent_k3_20260731/{EXP-0001,EXP-0003}_f0_original_gcc731_4n64_full_8x8/output。
- 理由：`/public` 可用 13G（96%）；当前最佳 4n64 5412.96s 已验证 26/26 并记录；剖析保留在 model.log。
- 保留的剖析路径：118169717/118196477/118196481：`<dir>/logs/model.log`；EXP-0001/EXP-0003：agent_tmp/logs/benchmarks/k3_20260731/EXP-{0001,0003}/logs/model.log。
- 清理已验证：5 个目录现各为 158-658K（保留 logs/metadata/validation/analysis/ROMS）；`/public` 使用率 96% -> 71%（可用 13G -> 18G）。全部 `output/` 已移除。

## Stage 22 - EXP-0004 norecvzero 补丁修复与构建提交

- 日期：2026-07-31。
- 经 diff 找到根因：`work/current/ROMS/Utility/distribute.F`（2ee1b555，207604B）被先前代理手工修改（第 5526/5733 行移除 2 行 `Arecv=0.0_r8`），而补丁脚本预期纯净稳定版 f03d0175（207642B，2 处）。全树 `diff -rq imports/stable work/current` 确认 distribute.F 是唯一差异文件。
- 修复：将 work/current distribute.F 备份为 `distribute.F.pre_exp0004_bak`；从 imports/stable 恢复纯净副本；运行 apply_EXP-0004_norecvzero_patch.py -> `PATCH_OK sites=2 after_sha256=940405d8c9a69b38fa9481a91ed20c550b02132bd1527cfff054370c710e9520`。
- 构建任务 118313069 已提交（kshcexclu06，N=1），使用 build_EXP-0004_norecvzero.slurm（哈希关卡：distribute != f03d0175 现通过；存在 nesting.F == 9e9e7f3b 关卡；OpenMP 标记检查；binary_sha256.txt 输出；变体 norecvzero_gcc731_noomp 位于 WS/builds/）。
- 经 sbatch 构建两次以相同方式失败（任务 118313069/118313150/118313186，约 1 秒内 CANCELLED 退出 0:53，Reason=None，位于 j05r2n00 与 j05r2n04；节点健康——srun 在相同节点可工作）。改用 `srun -N 1 -n 1 -c 8 -t 40 --exclusive --oversubscribe bash build_EXP-0004_norecvzero.slurm` 绕行（任务 118313221，节点 j05r2n00）。
- 构建成功：变体 norecvzero_gcc731_noomp，oceanM SHA-256 ff4711744737ec31bc529c9c8d007723398d1e1bbd48f0ae09c86e110008d5af，distribute_sha256=940405d8（已打补丁），build_result=success 已记录。
- run_EXP-0004_norecvzero_4n64_halfday.slurm 占位符 `__EXPECTED_BIN_SHA256__` 已填入 ff471174...；输入哈希关卡 4b0087cb（ocean_halfday_64_8x8.in）已在位验证。
- EXP-0004 半天诊断作为任务 118313359 提交（4 节点 j05r2n[00-03]，64 rank，spread_numa16_ccx）；检查点时状态 RUNNING。
- EXP-0004 半天运行（任务 118313359，4n j05r2n[00-03]，64 rank，spread_numa16_ccx，输入 4b0087cb，二进制 ff471174）：COMPLETED 14:37，模型 DONE 23:31:12 -> 23:45:46。
- 计时：real 876.37s（user 12553.42 sys 1419.52）对比 S0 基线 922.61s（任务 118206571）= -5.01%；关卡 -3%（894.93s）通过。半天未产生 NetCDF 输出（4.0K 目录），符合预期。
- run_metadata.txt 通过 cp 到登录节点 /tmp 获取（FS 读取不稳定）；model_result=done；metadata 中验证 binary/input/rankfile sha256 关卡。
- 结论：移除 mp_aggregate2d/3d 中冗余的 Arecv 零填充在半天规模有效。下一步决策：完整 3 天运行 + 官方 26 项校验器以晋升 EXP-0004（若 -5% 保持，预计约 5150s），等待用户授权。

## Stage 23 - EXP-0002（hcoll）半天提交；EXP-0004 结果记录

- 用户决策：在将 EXP-0004 晋升完整运行前先跑 EXP-0002（hcoll）半天。
- EXP-0002 脚本经 /tmp 复制技巧完全审查：仅运行时变更 `export OMPI_MCA_coll_hcoll_enable=1`；二进制关卡 8c4bc0ae（基线），输入关卡 4b0087cb（半天）；关卡对比 S0 922.61s -> 有效 <=894.93s；同一 spread_numa16_ccx rankfile 与 `/usr/bin/time -p` 计时。
- EXP-0002 作为任务 118315497 提交（4n j05r2n[00-03]，64 rank）；检查点时 RUNNING。

## Stage 24 - EXP-0002 hcoll 结果；EXP-0005 完整运行提交

- EXP-0002（hcoll，任务 118315497，4n64 半天，基线二进制 8c4bc0ae + OMPI_MCA_coll_hcoll_enable=1）：COMPLETED 14:14 退出 0；real 851.83s 对比 S0 922.61s = -7.67%；关卡 -3%（894.93s）通过。迄今最佳半天结果（EXP-0004 876.37s -5.01%）。
- 用户决策：先将 hcoll 晋升完整验证运行。
- 本地创建 run_EXP-0005_hcoll_gcc731_4n64_full.slurm（完整输入 a3e8a5db，完整 BIN 8c4bc0ae，hcoll 运行时标记，关卡对比 EXP-0003 5412.96s -> <=5250.57s，ntimes=2592,12960，--time=2:30:00，新 ID EXP-0005 以保持 EXP-0002 半天日志完整）；经 scp 上传；验证哈希关卡在位。
- 作为任务 118333863 提交（4n64 完整）；ETA 约 85-90 分钟。之后适配验证脚本 val_EXP-0001.slurm。

## Stage 25 - EXP-0005（hcoll 完整）失败：MPI-IO 写入路径挂起

- 任务 118333863 在 2:30:00（限制 --time=2:30:00）超时，步骤 FAILED 退出 1。模型在写 SCS_his_0001.nc 时挂起：文件时间戳 Aug 1 08:55（374,548,724 B），2.5 小时未增长；SCS_rst.nc 32 B；model.log 在 `WRT_HIS wrote history fields (Index=1,1)` 之后停住，391604 B。
- 根因：OMPI_MCA_coll_hcoll_enable=1（HCOLL 硬件集合通信）挂起 MPI-IO/NetCDF 集合写路径。半天运行从不触发输出（NTIMES=432 < NHIS=864），因此挂起不可见；其 -7.67% 仅适用于计算阶段。
- EXP-0005 结果无效（无 DONE，输出不完整）。完整运行不得复用 hcoll 标记。输出目录保留待检；用户授权后删除。
- 下一候选：EXP-0004（norecvzero 源码变更，半天 -5.01%）——无 MPI-IO 交互；提议完整运行。

## Stage 26 - EXP-0006（norecvzero 完整）成功；hcoll 完整失败；发现队友 E063

- EXP-0005（hcoll 完整，任务 118333863）在 2:30:00 超时：模型挂在 WRT_HIS（SCS_his_0001.nc 时间戳 08:55，374,548,724 B，从不增长）。根因：OMPI_MCA_coll_hcoll_enable=1 挂起 MPI-IO/NetCDF 集合写路径。半天运行从不触发输出（NTIMES=432 < NHIS=864），掩盖了挂起。EXP-0005 无效；输出目录（358M）暂保留。
- EXP-0006（norecvzero 完整，任务 118349988，4n64 spread_numa16_ccx，完整输入 a3e8a5db，二进制 ff471174）：COMPLETED 01:26:10 退出 0；real 5126.75s（user 73423.10 sys 8520.77）对比 EXP-0003 5412.96s = -5.29%；关卡 -3%（5250.57s）通过。16 个输出文件 8.5G 完整。半天（-5.01%）与完整（-5.29%）一致。
- val_EXP-0006 首次提交（118359408）1 秒内失败：RUN_DIR sed 替换不匹配，因为脚本使用 `${EXP}_f0_original_gcc731_4n64_full_8x8`（变量前缀，字面替换未命中）。远程 `sed -i s/_f0_original_gcc731_4n64_full_8x8/_norecvzero_gcc731_4n64_full_8x8/` 修复；作为任务 118361271 重新提交。
- 队友（feng）证据：任务 118308549 `feng_E063_3day` COMPLETED 00:41:25（完整三天约 40 分钟，4 节点/128 rank 区域），WorkDir=/public/home/fujiake/nan/...；队友工作区 /public/home/fujiake/nan/ 的 README.md（41,324 B，更新于 2026-08-01 14:49）尚未读取（FS 停滞）。团队笔记本 MCC26决赛.md 记录了 v24a 分层 Bcast 与 step3d_t/pre_step3d OpenMP itrc->k 交换（完整 3 天 46:19 -> 40:42，-12.0%）。
- 检查点队列为空；`/public` 71%（可用 18G）。

## Stage 27 - EXP-0006 官方验证通过（26/26）；新最佳 5126.75s

- val_EXP-0006（任务 118361271）19 秒内 COMPLETED 0:0。官方 vali.py（sha256 97230e0b）对 EXP-0006 输出：SCS_avg_0001 全部 13 个变量通过；Dongsha60_avg_0001 全部通过（u RMSE=0.000057 <= 0.000060）；最终结论"两组文件所有变量RMSE均在阈值范围内，优化结果无异常"。
- 新当前最佳：EXP-0006 norecvzero 4n64 完整 = 5126.75s，官方有效，对比 EXP-0003（5412.96s）为 -5.29%，对比组织者目标 6606s 为 -22.4%。
- 待办：刷新远程 CURRENT_BEST.md；同步 progress.md + SESSION_MEMORY.md。

## Stage 28 - BN 决赛快照同步进整理后的本地工作区

- 日期：2026-08-01（桌面任务日期）。
- 来源：C:\Users\Fu Jiake\Documents\MCC\BN决赛\决赛。
- 目标：C:\Users\Fu Jiake\Documents\MCC\决赛。
- 合并前清单：来源 98 个文件，目标 96 个文件；93 个文件相对路径与 SHA-256 一致，2 个仅来源有，0 个仅目标有，3 个同路径文件不同。
- 审查结果：三处差异均为仅追加的新记录（OPTIMIZATION_LOG.md、Skill progress.md、Skill rules.md）；未发现冲突或倒退编辑。
- 导入两个新文件：01_赛题与规则\官方PPT_优化策略与验证规则.md 与 SESSION_MEMORY.md。导入三处仅追加更新，随后刷新根/决赛 README、Skill plan/progress/evidence-index 与本阶段日志。
- 从 BN 谱系记录的实质结果：EXP-0006 任务 118349988，完整 real 5126.75 s，官方校验器任务 118361271 记录 26/26 通过。EXP-0005 HCOLL 任务 118333863 无效，因为在 WRT_HIS 中超时。
- 验证边界：本阶段执行本地内容/哈希同步，未重跑或实时刷新任一远程任务。提交前必须刷新动态远程事实。
- 三项分析：analysis/bn_snapshot_sync_20260801/{01_read_summary,02_profiling,03_validity_check}.md。
- 输出生命周期：未创建、移动或删除模型输出；BN 来源快照完整保留。删除关卡不适用。
- 技能同步：项目包与已安装 Skill 已同步。四个变更引用为 evidence-index.md、plan.md、progress.md、rules.md；最终递归 SHA-256 验证每个 Skill 树 10 个文件、零差异。

## Stage 29 - 64 核措辞修正；队友最佳远程审计开启

- 日期：2026-08-01。
- 规则修正：用户确认转录 PPT 中"固定 64 核"是局部最优/参考配置描述，而非硬性资源约束。现行上限仍为四节点/128 核。
- 更新路径：决赛/README.md、01_赛题与规则/官方PPT_优化策略与验证规则.md、Skill 引用 rules.md、progress.md、plan.md、evidence-index.md。
- 实验状态：未启动新构建或模型运行。上一任务未产生模型输出，删除不适用。
- 新阶段目标：从 /public/home/fujiake/nan 只读审计并同步队友 E063 最佳结果谱系到用户私有 fjk 隔离路径；审查代码并产出最小运行计划，不修改队友文件、不提交任务。

## Stage 30 - 队友 O33 最终包同步进 fjk 隔离

- 日期：2026-08-01；远程审计时间约 17:16–17:30 +0800。
- 只读源码包：/public/home/fujiake/nan/backup/tarballs/ROMS_CoSiNE15_O33_final.tar.gz。
- 用户私有目标：/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801。
- 复制范围：精确的 132,615,082 字节源码归档、解压源码/构建包、计时汇总、Slurm/运行日志、官方校验器包装/日志、源码清单、最终提交脚本、队友 README 与瓶颈/计划文档。8.5G NetCDF 输出未复制。
- 完整性：来源与复制归档 SHA-256 均为 7aa2b2a871dc95e5079ff7dcc6ecf0e1baba82ccfa9686aa66c965b5475e47e8；解压的 oceanM 与 oceanM.O33_final 均为 SHA-256 5f1a137e42252c9b978ad50ab344b9d6493f5e5afeeb71ed2d83f0a4228cfcb9。
- 目标占用：复制后初读 624M，8603 个文件。17:40 +0800 最终复查报告 632M，同样 8603 个文件，归档/二进制哈希匹配。未修改任何队友文件。
- 精确队友结果锚点：任务 118346383，四节点，64 MPI × 2 OpenMP，8x8/8x8 分块，完整 NTIMES 2592/12960，time real 2142.793 s，ROMS/TOMS DONE，16 个 NetCDF 文件共 8.5G，官方验证 26 项检查全部通过，东沙 u RMSE 0.000052。
- 输出生命周期：队友输出保留于 /public/home/fujiake/nan/backup/results/3day_118346383，对本流程只读。fjk 未创建新模型输出；删除不适用。
- 下一步：将隔离的 O33 源码与已验证的 EXP-0006/norecvzero 树比较，并在提议任何运行前审查合法、数值与构建风险。

## Stage 31 - O33 代码审查与最小运行计划完成

- 日期：2026-08-01。
- 本地证据：analysis/teammate_o33_sync_review_20260801/source_evidence 含 16 个 O33 文件（13 个可比源码/配置路径 + 3 个运行时/构建配置文件）、13 个匹配的 EXP-0006 文件、10 个精确运行/验证文档。
- 源码比较：13 个活动 ROMS/配置路径不同；mp_exchange.F 逐字节一致。主要差异为 nesting.F +557/-64、distribute.F +284/-44 与五个选择性 OpenMP 热点。
- 剖析：O33 将 EXP-0006 的 G01 点收集 25.9982% 降至 1.5615%，G02 数据/点收集 18.2708%/7.2548% 降至 0.2830%/0.4335%。剩余 G02 热点为 predictor、tracer corrector、step2d、GLS、halo 交换与 biology。
- 审查结果：无阻断性模型代码缺陷；O33 是合法且反复验证的父级。私有复用前必须强化运行器。
- 补丁安全：O33 有六处 Arecv 零填充。只有 mp_aggregate2d/3d 中的两处符合 EXP-0006 norecvzero 叠加；其余四处必须保留。
- 计划：一个私有强化/构建阶段，随后至多一次 A-B-B-A 样本分配与一次条件完整运行。相对两次 O33 运行均值 2136.323 s 的 3% 完整目标为 2072.233 s。
- 工件：analysis/teammate_o33_sync_review_20260801/CODE_REVIEW.md、NEXT_PLAN.md 与 01_read_summary.md、02_profiling.md、03_validity_check.md。
- 三项结论：Pass 1 有效、Pass 2 有效、最终有效性有效。
- 输出生命周期：无新模型输出；删除不适用。保留私有导入（8603 个文件；当前 `du -sh` 632M），不触碰队友输出。
- 交接：更新工作区交接 Skill 的 plan、progress、project structure、evidence index 引用；最终同步检查中验证已安装 Skill 一致性。
- 最终同步检查：工作区与已安装交接 Skill 各含 10 个文件，清单差异为零。2026-08-01 17:40:35 +0800 远程复查确认归档 SHA-256 7aa2b2a8...，两个解压二进制 SHA-256 5f1a137e...，保留队友输出 16 NetCDF/8.5G，`kshcexclu06` 队列为空。未提交任务。

## Stage 32 - 私有 O33 双位点 norecvzero 候选准备

- 日期：2026-08-01；远程准备约 17:47-18:09 +0800。
- 不可变父级：`/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15`；父级 `distribute.F` SHA-256 `e1de89f3a01974084a91b09bb6064b7e4ff0d67be8276aee7e8d10ef0dcb743a`。
- 私有候选：`/public/home/fujiake/fjk/agent_tmp/isolated/work/o33_norecvzero_abba_20260801/ROMS_CoSiNE15`。
- 本地实验文件：`experiments/o33_norecvzero_20260801/{o33_two_site_norecvzero.patch,build_candidate.sh,run_abba_sample.slurm,README.md}`。
- 变更：仅移除 `mp_aggregate2d` 与 `mp_aggregate3d` 中的 `Arecv=0.0_r8` 赋值。父级六处变为候选四处，位于第 2735、3073、4931 与 5212 行。候选 `distribute.F` SHA-256 为 `c91c138ec6b912647f7d0c1d616cd6babc4d3250b7ae7c4e43efd61a8313d704`。
- 静态结果：排除构建产物、旧 MATLAB/plot/Lib 树、SVN 元数据、输入符号链接与继承二进制后，模型树比较仅报告 `ROMS/Utility/distribute.F`；其余 15 个审计活动源码/配置路径与 O33 逐字节一致。两个上传脚本均通过远程 `bash -n`。
- harness 关卡：精确 A/B/源码/输入/规则/校验器/脚本哈希，四节点/64 MPI/2 OpenMP，8x8 分块，DT/NDTFAST/144-720 断言，HCOLL 禁用，唯一输出，失败安全 RC 捕获，DONE/最终步骤检查与轨迹/剖析提取。
- 事件：第一次长 `cp -a` SSH 调用最初被误读为完成并留下部分私有副本。确认精确 PID 与路径后停止复制；共享文件系统上的删除未干净收敛，剩余 1170 文件碎片被可恢复地移到 `/public/home/fujiake/fjk/agent_tmp/isolated/failed/o33_copy_partial_20260801_1752`。父级与队友树未触碰。
- 输出生命周期：尚无模型输出与 Slurm 任务。上一任务输出删除仍不适用；不可变父级与队友结果保留。
- 下一步：在单个计算节点上增量重建仅 `distribute.F` 并重新链接，然后在任何诊断提交前记录精确候选二进制哈希。

## Stage 33 - O33 双位点 norecvzero 候选构建完成

- 日期：2026-08-01 18:14:12-18:14:56 +0800。
- 构建分配：交互 Slurm 步骤/任务 `118364775`，`COMPLETED 0:0`，节点 `j05r2n14`，1 任务 × 8 CPU，Slurm 耗时 41 s。
- 源码：`/public/home/fujiake/fjk/agent_tmp/isolated/work/o33_norecvzero_abba_20260801/ROMS_CoSiNE15`；`distribute.F` SHA-256 `c91c138ec6b912647f7d0c1d616cd6babc4d3250b7ae7c4e43efd61a8313d704`。
- 二进制：`oceanM.O33_norecvzero`，SHA-256 `3f9aa42af02861d205b85a3b73ae1c72eef13a4875a4b8b5584cc813d7a75b4c`。
- 构建命令/结果：归档 Intel/HPC-X/NetCDF/HDF5 模块，`make -j16`，shell `real 38.548 s`，`MAKE_RC=0`，`BUILD_OK`；模块加载后所有运行库均解析。
- 依赖边界：改变 `distribute` 模块触发 145 条编译命令加归档/重新链接工作，而非仅单对象构建。未发现编译器警告。三处朴素的 `error|fatal` 文本匹配仅为文件名 `wrt_error`、`def_error`、`checkerror`，不是诊断。
- 精确日志：`/public/home/fujiake/fjk/agent_tmp/logs/o33_norecvzero_abba_20260801/build_20260801_181416.log`（SHA-256 `93b7a7f9...3613`）、`build_metadata.txt`（`561ab9d6...7f5e`）、`make_dry_run.txt`（`a0c81685...5b9`）。
- 验证边界：仅构建/静态证据；不声称运行加速或评分有效性。未产生模型输出。
- 最终提交前 harness 更新恢复父级运行限制（`ulimit -s unlimited`，`ulimit -l unlimited`）并带显式失败关卡。最终远程/本地脚本 SHA-256 为 `f54484790205b324d0a34dc2db834dd2bbd77005bbf500c56ed760af67e1d8d1`；远程 `bash -n` 通过。
- 下一步：提交恰好一次四节点 A-B-B-A `144/720` 诊断任务，候选二进制/源码/脚本哈希作为 Slurm 环境关卡提供。

## Stage 34 - O33 双位点 norecvzero A-B-B-A 诊断提交

- 日期：2026-08-01 18:19:28-18:19:29 +0800。
- 任务：`118364863`，名称 `fjk_O33_NRZ_ABBA`，分区 `kshcexclu06`，初始状态 `PENDING`，无依赖。
- 资源：四节点，128 个分配 CPU，64 个 MPI 任务，每节点 16 任务，每任务两个 CPU/OpenMP 线程，独占分配，30 分钟限制。
- 脚本：`/public/home/fujiake/fjk/agent_tmp/isolated/work/o33_norecvzero_abba_20260801/run_abba_sample.slurm`，SHA-256 `f54484790205b324d0a34dc2db834dd2bbd77005bbf500c56ed760af67e1d8d1`。
- 提交包装器：本地/远程 `experiments/o33_norecvzero_20260801/submit_abba.sh`，SHA-256 `0cb70d09732d5c713b9b11d52c9c0bb17853f00ae306f61431da50908989eecb`。
- 哈希关卡输入：A 二进制 `5f1a137e...fcb9`，B 二进制 `3f9aa42a...5b4c`，候选源码 `c91c138e...d704`，诊断输入 `05ceb746...b21`，集合规则 `0ef5b45a...473`，官方校验器 `97230e0b...78a`。
- 计划顺序/范围：A1-B1-B2-A2 在一次分配内，各自 `NTIMES=144,720`，相同四节点/rankfile/8x8 分块/运行时。这是诊断，不能建立评分完整运行结果。
- 预期保留运行根目录：`/public/home/fujiake/fjk/mcc_runs/118364863_o33_nrz_abba_sample`；harness 不允许已存在路径。
- 提交事件边界：第一条长内联 SSH 命令在返回前关闭。即时 `squeue` 与 `sacct` 检查证明它未创建任务；短包装器随后仅创建任务 118364863。无重复提交。
- 输出生命周期：任务挂起/运行期间无可删除结果。父级、队友输出、候选与全部诊断日志保留。
- 下一步：监控精确节点/哈希关卡与四次运行完成；然后在决定是否允许完整运行前完成强制三项分析。

## Stage 35 - 任务 118364863 被输入 harness 预检拦截；未执行模型即修复

- 日期：2026-08-01 约 18:19:33-18:23 +0800。
- Slurm：任务 `118364863` 在 `j05r2n[10-13]` 运行，分配 128 CPU，四秒后以 `FAILED 1:0` 结束。
- 全部资源与来源关卡通过：4 节点/64 MPI/2 线程、磁盘、ulimits、A/B/源码/输入/规则/校验器/脚本哈希。
- 根因：生成的绝对输出路径本身含子串 `output/`，因此断言 `assert 'output/' not in actual` 逻辑无效。模型尚未启动；不存在 A 或 B 段、shell 计时、ROMS 输出或性能结果。
- 修复：将该断言替换为精确替换计数检查。最终运行脚本 SHA-256 为 `0b380157465c3a9dcff05621a864df2b49a0b3dc378c54071ca5dd924f4b8208`；更新后的提交包装器 SHA-256 为 `1cf823c6e59c054d88b9cc4f5af1e2d05fd1c0c1bae4ebe3c218cba0a238102b`。
- 精确提取 heredoc 预检现对真实基础输入通过：18 处路径替换，NTIMES 144/720，两个分块 8x8，生成输入 SHA-256 `e396b1c9...3493`，`PREFLIGHT_INPUT_OK`。
- 失败预检证据保留于 `/public/home/fujiake/fjk/mcc_runs/118364863_o33_nrz_abba_sample`；仅含 harness/预检文件，不得视为模型输出。
- 分类：harness 失败，不是无效优化结果，不是已完成的诊断提交。不计入两次无效尝试规则。
- 下一步：确认无活动队列条目与更新脚本哈希后提交一次修正的 A-B-B-A 任务。

## Stage 36 - 修正后的 A-B-B-A 诊断任务 118365058 运行中

- 日期：2026-08-01 18:25:31 +0800 提交；18:25:47 +0800 观察到 RUNNING。
- 任务：`118365058`，`fjk_O33_NRZ_ABBA`，无依赖，节点 `j05r2n[10-13]`，四节点/128 CPU，64 任务 × 2 CPU/线程，独占。
- 修正脚本 SHA-256 `0b380157...8208`；提交包装器 SHA-256 `1cf823c6...102b`；全部提交前队列、可用空间、源码/二进制/脚本与语法关卡通过。
- 预期唯一运行根目录：`/public/home/fujiake/fjk/mcc_runs/118365058_o33_nrz_abba_sample`。
- 失败预检任务 118364863 单独保留，未复用。无完整运行。
- 下一步：监控 A1/B1/B2/A2 完成、精确 `time real`、最终步骤、DONE、轨迹哈希与剖析；然后在任何分支决策前写出全部三个分析文件。

## Stage 37 - 任务 118365058 完成 A1，但运行后终端步骤检查过严

- 日期：2026-08-01 18:26:17-18:29:14 +0800。
- Slurm：任务 `118365058` 在 `j05r2n[10-13]` 以 `FAILED 2:0` 于 2:57 结束；其 mpirun 步骤在 2:09 内以 `0:0` 完成。
- 有效 A1 模型证据：精确 O33 二进制，NTIMES 头 `1-144` 与 `1-720`，`ROMS/TOMS: DONE`，两个网格完成剖析，shell `real 129.380 s`，轨迹/剖析工件。此短输出间隔预期无 NetCDF。
- harness 根因：脚本要求编号为 144 与 720 的字面进度行。ROMS 完成了两个配置范围，但不保证在打印间隔出现终端进度行，因此 A1 在成功完成后被拒绝。B1/B2/A2 从未启动。
- 修复：要求精确配置的步骤范围头、DONE 与两个最终耗时剖析，而非终端进度行打印。修正脚本 SHA-256 为 `a28ad4f7bdb98288f671d5bad74ce55d7b82133091b4cffd6e5e2715223486a2`；提交包装器 SHA-256 `f657e23d632fb7ad41108fdab48c4bbc7b9ab2268c8ddc05e85d449557373ea4`；两者均通过远程 `bash -n`。
- 分类：A1 是有效辅助诊断样本，但计划的 A-B-B-A 比较不完整，无候选有效性结果。这是 harness 失败，不是无效候选尝试。
- 保留证据：`/public/home/fujiake/fjk/mcc_runs/118365058_o33_nrz_abba_sample` 与 Slurm 日志。不会删除或静默并入主匹配分配。
- 下一步：提交一次最终修正的 A-B-B-A 分配。若再发生仅 harness 失败，则停止提交并回到 PLAN/审查，而不是继续重试。

## Stage 38 - 最终修正的 A-B-B-A 分配提交

- 日期：2026-08-01 18:31:54-18:31:57 +0800。
- 任务 `118365261`，`fjk_O33_NRZ_ABBA`，初始 `PENDING`，无依赖，四节点/128 CPU，64 MPI × 2 OpenMP，独占，30 分钟限制。
- 脚本 SHA-256 `a28ad4f7...86a2`；提交包装器 `f657e23d...3ea4`。队列、20-GiB 可用空间下限、源码/二进制/脚本哈希与远程语法全部通过。
- 预期运行根目录：`/public/home/fujiake/fjk/mcc_runs/118365261_o33_nrz_abba_sample`。
- 范围仍为 A1-B1-B2-A2，`144/720`；仅诊断。无自动完整提交。
- 重试边界：这是最终 harness 修正分配。任何进一步 harness 失败将停止提交并触发审查。

## Stage 39 - O33 双位点 norecvzero 诊断完成；分支停止

- 日期：2026-08-01；任务结束后完成最终远程复查。
- 被测优化：在已验证队友 O33 父级之上仅移除 `mp_aggregate2d/3d` 中两条聚合路径 `Arecv=0.0_r8` 赋值。父级源码为 `/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15`；候选源码为 `/public/home/fujiake/fjk/agent_tmp/isolated/work/o33_norecvzero_abba_20260801/ROMS_CoSiNE15`。
- 任务 `118365261` 以 Slurm 耗时 `00:08:38` 在 `j05r2n[12-15]` 完成 `0:0`，四节点/128 CPU，64 MPI × 2 OpenMP，8x8/8x8 分块，HCOLL 禁用，诊断 `NTIMES=144,720`。
- 匹配的 A-B-B-A shell 时间：A1 O33 `129.687 s`；B1 候选 `129.371 s`；B2 候选 `128.699 s`；A2 O33 `124.995 s`。A 均值=`127.341 s`，B 均值=`129.035 s`，报告收益=`-1.3303%`；3% 晋升关卡与 2% 含糊下限均未达到。
- 四次模型运行均到达 `ROMS/TOMS: DONE`、打印两个网格剖析、产生相同轨迹 SHA-256 `fa498694...e44b0`。此短间隔预期无 NetCDF，因此未运行官方校验器，不声称评分/精度结果。
- 剖析结果：候选剖析合计两个网格约 `+2.90%`。直接相关的 `Message Passage: data gathering` 行在全部四个短剖析中缺失；点收集变化混杂。O33 已折叠历史聚合/gather 瓶颈，因此没有支持完整运行的剖析证据。
- 决策：`STOP_BRANCH`。不提交半天或完整三天候选。这是当前序列中的一次无效优化尝试；两次无效尝试的 PLAN/研究规则尚未触发。
- 三项分析完整有效，位于 `analysis/o33_norecvzero_abba_118365261/{01_read_summary.md,02_profiling.md,03_validity_check.md}`。证据清单为 `analysis/o33_norecvzero_abba_118365261/EVIDENCE_MANIFEST.md`。
- 远程保留结果：`/public/home/fujiake/fjk/mcc_runs/118365261_o33_nrz_abba_sample`，`1.4M`，20 个文件。复查哈希：`summary.tsv=f163db0e...a0aa`，`decision.txt=c8086df4...3e2`，`harness.log=ea51442e...c1a8`，`rankfile=2e7353e8...6b89`。
- 输出生命周期：无删除。保留任务 `118364863`、`118365058`、`118365261`、不可变 O33 父级与私有候选。任何未来删除仅允许在后续任务开始时重新检查精确私有路径与三项分析关卡后进行。
- 下一任务计划：对 `ROMS/Nonlinear/Biology/bio_UMAINE15.h` 中重复参数的指数公共子表达式机会做仅静态审查；未提交新模型任务。

## Stage 40 - O33 biology exp CSE 在构建前被否决

- 日期：2026-08-01；约 19:02 +0800 远程状态/删除审计。
- 上一结果生命周期：在私有运行根目录内解析 `/public/home/fujiake/fjk/mcc_runs/118365261_o33_nrz_abba_sample`；本地 `01_read_summary.md`、`02_profiling.md`、`03_validity_check.md` 存在且有效。四个段 `output` 目录含零个 NetCDF 文件，因此没有模型输出可删除。1.4M 日志/证据根目录保留。
- 审查不可变源码：`/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15/ROMS/Nonlinear/Biology/bio_UMAINE15.h`，本地/远程 SHA-256 `f4fb45d7...9abe`。
- 既有对象证据：`Build/biology.o`，SHA-256 `1db6cb47...fdd6`，含 42 个 `exp` 重定位。编译器已把源码第 630 行浅水 `exp(cff2)` 提升到编译后的 K 循环之前；Q10、pnh4s1、alts1、pnh4s2、alts2 的独立热路径调用保留在 `0x8af2/0x8b68/0x8c40/0x8cd2/0x8dc0`。
- 两个网格均用 `BioIter=1`、`parsats1=parsats2=80`，因此通用守卫式复用可在参数不同时保留原始公式的前提下移除第二个光限制 `exp`。不得硬编码任何值。
- 完整 O33 剖析：Grid 01 biology `1.9939%`，Grid 02 `5.5896%`，合计占同一总量 `7.5835%`。一处可移除调用只是每个格点/层至少六个强制指数中的一个。
- 刻意不可能的上界：`7.5835%/6=1.2639%`，约 O33 `2142.793 s` 的 `27.083 s`；低于 2%（`42.856 s`）含糊下限与 3%（`64.284 s`）晋升关卡。扣除非 exp 工作、碳/氧路径、分支与溢出开销后实际收益必然更低。
- 决策：`REJECT_BEFORE_BUILD`。未创建源码变体、构建、Slurm 任务、模型输出、加速或精度结果。
- 三项分析：`analysis/biology_exp_cse_review_20260801/{01_read_summary.md,02_profiling.md,03_validity_check.md}`；Pass 1 有效、Pass 2 有效、最终有效性有效。
- 无效序列计数：两个连续方向（`O33 norecvzero`，然后 `biology exp CSE`）。停止实验，进入带论文与类似开源项目的 PLAN 研究，优先中国平台相关性。
- 输出生命周期：删除不适用；先前短诊断无 NetCDF，本次静态审查也无。
- 技能同步：工作区与已安装 Skill 各含 10 个文件，递归路径/哈希差异为零；`progress.md`、`plan.md`、`evidence-index.md`、`project-structure.md` 记录本阶段。

## Stage 41 - 两次无效尝试后的 PLAN 研究完成

- 日期：2026-08-01。
- 文件路径：`analysis/plan_research_after_two_ineffective_20260801/`。
- 优化内容：在两个无效方向后停止模型实验，审查海洋模式循环/数据移动优化、通信移除/分组与真实计算-通信重叠的首要论文/开源来源。优先中国的 swPOM、swNEMO、LICOM 与 OMARE/JASMIN 工作，然后对照 NEMO 通信优化、官方 ROMS develop/ticket 839 与 Intel ifort 优化报告文档核查。
- O33 源码锚点：`step3d_t.F` SHA-256 `450c9892...e5b62e`，1325 行；`pre_step3d.F` SHA-256 `de54caa2...98721b`，1158 行。O33 已用 `mp_exchange4d` 批处理活动 MPDATA tracer，已有 O25 K 外层 tracer 重排，O46 `nowait` 无效；无上游整体移植或通用异步编辑的正当理由。
- 剖析关卡：已验证完整 O33 任务 `118346383`，real `2142.793 s`，26/26 官方检查。至少 24.6% 的 `pre_step3d + step3d_t` 热点需要 8.2% 联合缩减才能获得 2% 端到端结果。精确的 15.7796% 两网格 2-D+4-D halo 桶需要至少移除或隐藏 12.7% 才能获得 2% 端到端。
- 结果：选择 P0，即对精确 O33 预处理热点源码做零运行 ifort `vec,loop,openmp` 优化报告与活动路径数据流/汇编审计。P1 调用者侧 halo 依赖分析为条件项。在静态 2% 可行性关卡通过前禁止模型候选。
- 三项分析：`01_read_summary.md` SHA-256 `5788b1ca...473e0`；`02_profiling.md` `6ef53446...5d636`；`03_validity_check.md` `bf43f1bf...03e44`。Pass 1 有效、Pass 2 有效、最终有效性有效；不声称性能或新精度结果。
- 输出生命周期：无源码编辑、候选构建、Slurm 任务、模型输出或删除。任务 `118365261` 日志保留，其四个输出目录仍含零个 NetCDF 文件。
- 技能同步：工作区包与已安装 `mcc26-roms-cosine-handoff` 各含 10 个文件；递归路径/SHA-256 比较报告零差异。更新 `progress.md`、`plan.md`、`evidence-index.md`、`project-structure.md`；`SESSION_MEMORY.md` 记录 P0 交接。

## Stage 42 - P0 编译选项筛选完成；双对象 AVX2 运行时分支否决

- 日期：2026-08-01；最终任务与分析检查在 20:41 +0800 前完成。
- 文件路径：脚本位于 `experiments/ifort_optrpt_20260801/`；分析位于 `analysis/o33_avx2hot_abba_118368170/`；远程候选 `/public/home/fujiake/fjk/agent_tmp/isolated/work/o33_avx2hot_abba_20260801/ROMS_CoSiNE15`；保留运行 `/public/home/fujiake/fjk/mcc_runs/118368170_o33_avx2hot_abba_sample`。
- 优化内容：生成精确 O33 ifort 优化报告，筛选七个仅编译变体，然后用 `-march=core-avx2` 仅重新链接 `pre_step3d.o` 与 `step3d_t.o`，同时保留精确浮点选项与全部源码/输入/运行时设置。
- 任务 `118368170` 在四节点、64 MPI × 2 OpenMP、8x8/8x8、诊断 `144/720` 上完成 A1-B1-B2-A2；real 时间 `129.238/131.404/132.009/125.155 s`。
- 结果：A 均值 `127.1965 s`，B 均值 `131.7065 s`，AVX2 退化 `3.5457%`。两个目标计时器仅改善 `0.389%`，而总剖析时间退化约 `3.72%`。
- 四次运行均到达 DONE 并共享一个打印轨迹哈希；预期零 NetCDF，因此不声称官方精度。
- 决策：`STOP_BRANCH`。无半天/完整运行。这是 PLAN 重置后的无效尝试 1。
- 三项分析在 `analysis/o33_avx2hot_abba_118368170/{01_read_summary.md,02_profiling.md,03_validity_check.md}` 有效。下一任务开始时重新检查上一结果删除关卡：三个文件均存在且有效，远程路径解析在私有根目录内，运行零 NetCDF；日志保留，未删除。

## Stage 43 - 队友 O48 一天结果只读同步；biology CSE 未晋升

- 日期：2026-08-01 20:41-20:48 +0800。
- 只读审查文件路径：`/public/home/fujiake/nan/ROMS_CoSiNE15/{sub_o48_fusion_1day.sh,oceanM.O48_fusion.bak,log_SCS_Dongsha60_2021_daily_O48_1day_20260801_202231_J118368357.txt,TIMING_O48_1day_118368357.txt,vali_O48_1day_118368357.log,output_O48_1day_118368357}` 与 `/public/home/fujiake/nan/report_his/O48_fusion_sprint.md`。
- 优化内容：仅 `bio_UMAINE15.h`；在通用相等守卫下提升一个重复垂直循环指数并复用光限制指数。父级/O48 源码 SHA-256 `f4fb45d7...9abe` / `b4f9b821...585e4`；二进制 `ff1bdd5e...f3b04`。
- 任务 `118368357` 在 `j05r2n[00-03]` 上 `00:13:17` 内完成 `0:0`；一天 `real=739.184 s`；八个 NetCDF 文件，约 4.0 GiB；官方校验器 26 个变量全部通过，东沙 `u=0.000052`。
- 结果：相对继承的 O33 一天 `725.47 s`，O48 慢约 `1.89%`（`0.98145x`）。预期 biology 计时器仅下降 `1.554%`，相当于全程序 rank 时间约 `0.12%`；大的 GLS/halo 变动属非目标变异性。
- 决策：精度接受，性能 `DO_NOT_PROMOTE` 且 `DO_NOT_REPEAT`；O33 仍是父级。因这是只读队友证据，不计入我们 PLAN 后的无效尝试计数。
- 三项分析：`analysis/teammate_o48_sync_review_20260801/{01_read_summary.md,02_profiling.md,03_validity_check.md}`；全部有效。
- 输出生命周期：队友输出既未复制也未修改。私有任务 `118368170` 保留，零 NetCDF；未删除。
- 下一优化步骤：完成条件性 P1 调用者侧 halo 依赖/可行性审计。整文件非阻塞交换 O26/O26b、Ntile 扫描、128 纯 MPI、反向 KMP 调优、递归加倍强迫、HCOLL 与 UCX 均被实测证据关闭。除非真实的 begin/interior/end 重叠通过静态 2% 关卡，否则不允许新模型任务。

## Stage 44 - P1 MPI 重叠探针证明有进展但按上界否决 ROMS 分支

- 日期：2026-08-01 20:48-21:01 +0800。
- 文件路径：本地 `experiments/mpi_overlap_probe_20260801/`；远程脚本根目录 `/public/home/fujiake/fjk/agent_tmp/isolated/scripts/mpi_overlap_probe_20260801`；保留审计 `/public/home/fujiake/fjk/agent_tmp/isolated/audits/mpi_overlap_probe_118369338`；分析 `analysis/mpi_overlap_probe_118369338/`。
- 优化内容：无 ROMS 编辑。四节点/64-rank/2 线程 8x8 微基准测试真实的 `MPI_Irecv/Isend -> oHz 式独立互反循环 -> MPI_Waitall` 流水线，使用 Grid02 式 512-KiB 与 Grid01 式 704-KiB 邻居消息。
- 源码/脚本 SHA-256：`6855a75a...b1a90` / `f7af245b...ad924`；探针二进制 `65a85841...a4748`。
- 平台事件：任务 `118369309` 与 `118369327` 均在进入脚本前以 `JobLaunchFailure 0:53` 结束；无审计根目录或结果。未改脚本通过显式分配 `118369338` 运行，11 秒内在 `j05r2n[14-17]` 完成 `0:0`；探针 real `5.172 s`。
- 结果：rep=1 Grid02/Grid01 通信 `0.483780/0.666417 ms`，计算 `0.080481/0.179383 ms`，重叠后合计 `0.482584/0.708238 ms`，节省 `0.081677/0.137562 ms`。平台确实产生异步进展。
- 完整运行推算：测得的干净窗口节省 `1.415095 s`（`0.06604%`）；乐观 100% 隐藏网络上限 `7.997142 s`（`0.37321%`）。O33 需要 `42.85586 s` 才达 2%；上限差距超过 5 倍。
- 决策：`REJECT_BEFORE_ROMS_BUILD`。无候选源码/构建/模型运行。更深的内部/边界拆分无法隐藏更多网络时间，且增加语义/OMP 开销。
- 三项分析在 `analysis/mpi_overlap_probe_118369338/{01_read_summary.md,02_profiling.md,03_validity_check.md}` 有效；原始证据保留在该目录下。
- 无效序列：AVX2 与 P1 调用者重叠是 PLAN 后连续两个低于门槛的方向。停止实验，在另一个任务前进入带互联网/开源/中国优先证据的 PLAN 研究。
- 输出生命周期：保留 166-KiB 审计；无 NetCDF/模型输出，未删除。

## Stage 45 - 强制 PLAN 研究选择当前 O33 集合通信直方图

- 日期：2026-08-01 21:01 后。
- 文件路径：`analysis/plan_research_after_overlap_20260801/`。
- 优化内容：无代码/运行；两次无效规则触发后进行互联网与实时平台审查。主要来源包括中国 swPOM 与 LICOM 研究、官方 ROMS MPI 材料、Open MPI `tuned` 文档与上游 `open-mpi/ompi-collectives-tuning`。
- 实时环境：Open MPI `4.0.4rc3`；`coll_tuned` Allreduce 与 Allgather 各暴露算法 0-6。当前 `coll_rules.conf` SHA-256 `0ef5b45a...473` 使用 Allreduce 阈值 64 KiB/4 MiB、Allgather 阈值 1 MiB。
- 结果：选择 P0，即对当前 O33 在诊断 `144/720` 下的集合消息大小/时间做私有 PMPI 直方图。暂不改规则。
- 量化关卡：在有界算法微基准后，要求 `实测集合占比 * 加权时间缩减 >= 2%`；临时筛选为至少 13.33% 集合占比与 15% 加权缩减。否则在模型 A-B-B-A 前否决。
- 否决/重关闭：异步 halo、输出 I/O、Ntile/rank 数、反向 KMP、广泛 OpenMP、HCOLL/UCX、O15a 全局递归加倍、AVX2/编译器微选项、GLS/biology CSE 与先前通信源码变体。
- 三项分析在 `analysis/plan_research_after_overlap_20260801/{01_read_summary.md,02_profiling.md,03_validity_check.md}` 有效。未创建源码、构建、任务、输出、性能或精度结果。
- 上一结果关卡：重叠分析存在且有效；保留的 166-KiB 审计无模型输出，删除不适用。

## Stage 46 - 当前 O33 PMPI 集合直方图否决盲目集合规则扫描

- 日期：2026-08-01 21:15-21:26 +0800。
- 文件路径：本地 `experiments/pmpi_collective_hist_20260801/`；远程脚本根目录 `/public/home/fujiake/fjk/agent_tmp/isolated/scripts/pmpi_collective_hist_20260801`；保留成功审计 `/public/home/fujiake/fjk/agent_tmp/isolated/audits/o33_collective_hist_118370068`；分析 `analysis/o33_collective_hist_118370068/`。
- 优化内容：无 ROMS/源码/网格/规则编辑。`LD_PRELOAD` PMPI 插桩在诊断 `144/720`、4 节点、64 个 MPI rank × 2 个 OpenMP 线程、8x8 分块下记录不可变 O33 的每 rank Allreduce/Allgather/Allgatherv/Bcast 消息大小与调用时间。
- 最终哈希：剖析器 `89f7fe7d...e132`，分析器 `ca7da9c...dda3`，harness `8ca3136f...6584`；启动前不可变 O33 二进制/输入/规则哈希通过。
- 附带 harness 失败：分配 `118369921` 缺少隔离相对路径 `ROMS/External/varinfo.dat`；`118370031` 在计算节点找不到 `/usr/bin/python3`。两者均在模型结果前退出。只读 ROMS 符号链接与组织者 Miniforge 绝对路径修复了这些问题；其小型私有审计保留。
- 成功分配 `118370068` 在 `j04r2n[16-19]` 上 `00:02:19` 内完成 `0:0`；插桩下模型 `real=130.730 s`，DONE，64/64 rank 直方图，预期零 NetCDF。
- 结果：计时集合平均 `15.217087 s/rank`，占 rank 生命期 `12.053999%`。Bcast 为 `9.820224 s`/`7.778950%`；Allreduce 为 `5.396863 s`/`4.275049%`；未观察到 Allgather/Allgatherv。
- 关卡：全程序 2% 收益需要缩减全部测得集合时间的 `16.5920%`。15% 加权缩减仅给出 `1.80810%`；即使乐观的全调用规模完全归一化也只给出 `1.91741%`。大型 communicator-16 Bcast 部分是一次性启动流量，因此实际完整运行占比更低。
- 决策：`STOP_AT_PROVISIONAL_SCREEN`；不启动集合算法扫描或 ROMS A-B-B-A。O33 规则不变。这是最近一次 PLAN 重置后的第一个低于门槛方向。
- 三项分析在 `analysis/o33_collective_hist_118370068/{01_read_summary.md,02_profiling.md,03_validity_check.md}` 有效；完整原始证据保留。未删除。
- 交接同步：工作区、已安装与 BN Skill 包各含 10 个文件，清单差异为零；Skill frontmatter 开头正确。BN 分析含相同 76 个文件、哈希差异为零，四个实验脚本全部一致。本条目后同步主日志。

## Stage 47 - O33 3-D Allreduce 批处理被不可能有利上界否决

- 日期：2026-08-01 21:26 后。
- 文件路径：精确 O33 源码证据位于 `analysis/teammate_o33_sync_review_20260801/source_evidence/o33/`；新分析 `analysis/o33_3d_allreduce_batch_review_20260801/`。
- 优化内容：仅零运行源码/PMPI 映射。未创建源码、二进制、MPI 规则、输入、任务、输出、运行时或精度结果。
- 源码锚点：`nesting.F` SHA-256 `9d8434c7...95c`；`distribute.F` `e1de89f3...43a`。17-tracer 循环加 u/v 各自到达 `fine2coarse3d -> Packed -> mp_sum -> MPI_Allreduce(MPI_SUM)`。
- PMPI 映射：626,416 字节 × 2,448 次调用=`17x144`；613,088 与 613,632 字节 × 各 144 次调用=u/v。合计 `2,736=19x144` 次调用与 `1.650180496 s/rank`。
- 结果：即使完全删除全部 19 次调用并按 18 倍缩放其时间，也只占已验证 O33 完整 `2142.793 s` 的 `1.386193%`。真实 11,875,792 字节批处理 Allreduce 保留负载工作并增加打包/生命期开销，因此收益必然更低。
- 决策：`REJECT_BEFORE_BUILD`；不编辑/构建/运行。三项分析在 `analysis/o33_3d_allreduce_batch_review_20260801/{01_read_summary.md,02_profiling.md,03_validity_check.md}` 有效。
- 无效序列：盲目集合规则扫描与 3-D Allreduce 批处理是最近一次 PLAN 重置后连续两个低于门槛方向。停止实验，在任何进一步实验前进入强制互联网/开源/中国优先 PLAN 研究。
- 输出生命周期：重新检查先前直方图分析；成功与附带失败审计均含零 NetCDF 并保留。未删除。
- 交接同步：工作区、已安装与 BN Skill 包各含 10 个文件，清单差异为零；三个 Stage-47 分析与 BN 镜像完全一致。本条目后同步主日志。

## Stage 48 - 强制 PLAN 研究选择位点解析的 step2d 交换计时

- 日期：2026-08-01 21:26-21:52 +0800。
- 文件路径：`analysis/plan_research_after_collectives_20260801/{01_read_summary.md,02_profiling.md,03_validity_check.md}`；不可变源码 `/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15`。
- 优化内容：不编辑/构建/任务。两次低于门槛触发后，审查中国 NEMO/swPOM 工作、NEMO 通信分组、官方 ROMS MPI 变更、官方 Open MPI 集合指南与精确 O33 `step2d`/nesting 数据流。
- 源码锚点：预处理 `Build/step2d.f90` SHA-256 `9806a56e...ff5`；`step2d_LF_AM3.h` `0f03de31...a7`。O33 已在每个交换位点分组字段，但在每次实际 predictor/corrector 调用中保留开头的 `DUon/DVom` 与结尾的 `ubar/vbar` 交换。
- 依赖边界：下一次调用在首次 stencil 使用 `ubar/vbar` ghost 之前计算 `DUon/DVom`，提示延迟分组可能可行；但活动双向嵌套在调用之间消费 predictor/corrector 接触字段，因此没有位点计时与接触语义证明就不能照搬 NEMO 调度。
- 剖析关卡：完整 O33 2-D halo 池为 `1.1851% + 5.6573% = 6.8424%`。移除七个快步骤调用中两个的等调用算术仅给出 `1.95497%`；负载字节仍存在，总计时器无法将同步不均归因于结尾位点。
- 结果：授权一个零输出诊断，仅对精确开头与结尾 `step2d` 交换位点计时，不改变行为。若测得的完整运行缩放可移除结尾位点上限低于 `42.85586 s`/2%，则在调度变更构建前否决。尚未授权候选/完整运行。
- 三项分析：Pass 1 有效、Pass 2 有效、最终有效性有效。无源码、二进制、任务、输出、加速、精度结果或删除。
- 下一任务开始必须重新检查先前私有 PMPI 审计路径与其三项分析。所有先前审计零 NetCDF，因此删除不适用，日志保留。

## Stage 49 - O33 step2d 结尾交换位点剖析关闭延迟分组路线

- 日期：2026-08-01 21:52-22:22 +0800。
- 文件路径：本地脚本/源码 `experiments/step2d_siteprof_20260801/`；分析 `analysis/o33_step2d_siteprof_118371327/`；私有变体 `/public/home/fujiake/fjk/agent_tmp/isolated/work/o33_step2d_siteprof_20260801/ROMS_CoSiNE15`；远程构建日志 `/public/home/fujiake/fjk/agent_tmp/logs/o33_step2d_siteprof_20260801`；保留审计 `/public/home/fujiake/fjk/agent_tmp/isolated/audits/o33_step2d_siteprof_118371327`。
- 优化内容：仅剖析，围绕未变的开头 `DUon/DVom` 与结尾 `ubar/vbar` `mp_exchange2d` 调用加 `SYSTEM_CLOCK` 计数器。源码 diff 增加 57 行、删除零行，保留全部六个交换调用与参数。
- 构建哈希：父级/插桩源码 `0f03de31...a7` / `8a46eb11...f87f`；父级/插桩二进制 `5f1a137e...fcb9` / `ca88a5e0...a4d`。
- 准备事件：首次编译拒绝已初始化本地 `SAVE` 数组的运行时 `Ngrids`；修复为冻结双网格诊断的两个剖析槽。成功重试最初被 `strings | grep -q`/`pipefail` 关卡在二进制符号正确的情况下拦下；关卡已修复，未再编译。两个日志均保留，两次事件均未产生模型结果。
- 任务 `118371327` 在 `j05r2n[14-17]` 上 `00:02:20` 内完成 `0:0`，四节点/128 CPU，64 MPI × 2 OpenMP，8x8/8x8，诊断 `144/720`；插桩下模型 `real=132.302 s`，DONE，两个剖析，128/128 位点文件，零 NetCDF。
- 覆盖：每个 rank 有 Grid01/Grid02 结尾调用 `12096/60480`，恰好 `84*144` 与 `84*720`；开头计数每长步多一次辅助调用。
- 结果：两网格结尾位点均值 `1.662375719 s/rank`；完整缩放均值 `29.922762938 s`=`1.396437404%`。最大合并 rank 63 为 `2.256610 s`；即使删除其完整时间也只推算到 `40.61898 s`=`1.895609142%`，低于 2% 关卡 `2.23688 s`。
- 决策：`REJECT_BEFORE_SCHEDULE_BUILD`。真实延迟分组保留负载传输且必须节省更少；无调度候选、A-B-B-A、半天或完整运行。
- 三项分析：Pass 1 有效、Pass 2 从全部 128 个 TSV 文件独立复现、最终有效性有效。这是 Stage-48 PLAN 重置后的无效方向 1。
- 输出生命周期：远程审计 `451K`/137 文件与构建日志 `474K` 保留；零 NetCDF，无删除。一次递归证据下载事件跟随远程 Inputfiles 符号链接；远程未触碰，四个部分本地副本（`659,113,840` 字节）可恢复地移到 `C:\Users\Fu Jiake\Documents\MCC\_quarantine\20260801_step2d_scp_inputfiles_partial`，在分析包之外。
- 下一最小运行方向：零运行精确 O33 `pre_step3d` 跨 tracer 不变式/数据复用审计。除非证明源码级完整 O33 2% 上限，否则不构建/不任务。

## Stage 50 - 精确 O33 pre_step3d 不变式审计授权一次诊断

- 日期：2026-08-01，Stage 49 之后。
- 文件路径：`analysis/pre_step3d_invariant_review_20260801/`；精确源码 `/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15/ROMS/Nonlinear/pre_step3d.F`。
- 优化内容：零运行源码/编译器报告审计。O33 已有水平 K 外层/T 内层重排。但在垂直 `T_LOOP2` 中，`cff*pm(i,j)*pn(i,j)` 对全部 17 个 tracer 与 34 层重复计算，尽管它横跨两个循环不变。
- 候选范围：一个 OpenMP 私有 1-D `real(r8)` 暂存，每 `j,i` 计算一次，仅替换重复的垂直 `cff1` 表达式。算术顺序、平流方案、网格、时间积分、MPI 布局、生态、嵌套与输出不变。
- 静态结果：合并完整 O33 predictor 占比 `18.1701%`；2% 整体需要 predictor 缩减 `11.0068%`。刻意有利的计算计数上限为全程序 `3.0284%`，而乐观内存流量推算仅约 `1.3977%`。目标循环已向量化（ifort 估计路径 `1.66/1.36`）。
- 决策：`BUILD_ONE_DIAGNOSTIC_CANDIDATE`。仅授权一次四节点 A-B-B-A，`144/720`，64 MPI × 2 OpenMP，8x8/8x8。低于 2% 否决；静态证据未授权半天/完整运行。
- 三项分析在 `analysis/pre_step3d_invariant_review_20260801/{01_read_summary.md,02_profiling.md,03_validity_check.md}` 有效。本阶段无模型输出、加速、精度结果或删除。

## Stage 51 - pre_step3d 度量复用无效；实验停止

- 日期：2026-08-01 22:49-23:10 +0800。
- 文件路径：本地脚本/源码 `experiments/pre_step3d_pmnreuse_20260801/`；分析 `analysis/o33_pmnreuse_abba_118372618/`；私有候选 `/public/home/fujiake/fjk/agent_tmp/isolated/work/o33_pmnreuse_abba_20260801/ROMS_CoSiNE15`；保留运行 `/public/home/fujiake/fjk/mcc_runs/118372618_o33_pmnreuse_abba_sample`。
- 优化内容：`pre_step3d` 中一个 OpenMP 私有 r8 `pmn_dt(i)` 向量，每 `j,i` 计算一次，仅替换垂直 tracer 更新中重复的 `cff*pm*pn` 加载/乘法。源码树 diff 恰好一个文件，七增三删。
- 构建结果：父级/候选二进制 `5f1a137e...fcb9` / `eabad62d...f4f72`；候选源码/对象 `93472d10...15dfd` / `8dfdddc9...b3463`。目标循环保持向量化，报告路径 `1.71/1.38`。
- 准备事件：私有 505-MiB 克隆在文件系统争用下缓慢，但 `make` 在 41.712 s 内成功。任务 `118372547` 在模型启动前五秒停止，因为私有 `Inputfiles` 符号链接缺失；仅在候选内添加链接并重新提交未改脚本。两个事件都不是性能样本。
- 任务 `118372618` 在 `j05r2n[00-03]` 上 `00:08:49` 内完成 `0:0`，四节点，64 MPI × 2 OpenMP，8x8/8x8，诊断 `144/720`。
- A1/B1/B2/A2 real 时间 `132.956/132.446/132.174/126.991 s`；A 均值 `129.9735`，B 均值 `132.3100`，候选退化 `1.797674%`，`both_B_faster=False`。
- 直接 predictor 计时器：合并 A/B 均值 `1813.8980/1810.8990`，仅 `0.165335%` 候选改善，对比 2% 完整运行所需的 `11.0068%` predictor 缩减。
- 四次运行均 DONE，打印轨迹相同 `fa498694...e44b0`，零 NetCDF。官方精度仍未验证。
- 决策：`STOP_BRANCH`；无半天/完整/复现。这是 Stage 48 后的无效方向 2，因此停止模型实验，进入强制 web/开源/中国优先 PLAN 研究。
- 三项分析在 `analysis/o33_pmnreuse_abba_118372618/{01_read_summary.md,02_profiling.md,03_validity_check.md}` 有效。全部远程证据保留；未删除。

## Stage 52 - 强制 PLAN 选择方节点 rank 映射

- 日期：2026-08-01，Stage 51 之后。
- 文件路径：`analysis/plan_research_after_pmnreuse_20260801/`。
- 优化内容：无源码/构建/任务。强制中国优先与开源研究审查 NEMO 代码现代化、swPOM、swNEMO、NEMO 通信/分解与官方 ROMS GATHERV/SCATTERV 工作，对照精确 O33 关闭路线证据。
- 研究结果：神威 CPE/DMA 与混合精度不适用；随机编译器/数据复用、gather/scatter、通用异步与通信删除路线仍关闭。NEMO 的方节点 rank 放置可直接映射到 O33，无需改变源码或数值设置。
- 精确 O33 `mp_exchange.F=c66ab7bb...e577a` 分配 `rank=j*8+i`。当前 rankfile 将连续 16-rank 块放在节点上，产生四个 8x2 条带。
- 精确边审计：当前每个 8x8 网格 24 条跨节点/88 条节点内基数边；四个 4x4 节点块给出 16/96。跨节点对在两个网格上均下降 `33.3333%`。
- 完整 O33 2-D+4-D halo 占比 `15.7796%`；2% 整体需要 halo 缩减 `12.6746%`。有利映射上限 `5.25987%`；若至少 `38.0238%` 的 halo 时间对跨节点敏感，则可通过 2%。
- 决策：`AUTHORIZE_ONE_MAPPING_ONLY_A-B-B-A`，`144/720`，不可变 O33，四节点，64 MPI × 2 OpenMP，8x8/8x8。无源码构建或完整运行。晋升要求 >=3%、两次 B 更快、halo 计时器支持与轨迹一致。
- 三项分析在 `analysis/plan_research_after_pmnreuse_20260801/{01_read_summary.md,02_profiling.md,03_validity_check.md}` 有效。边审计脚本/JSON 哈希 `a7e19c46...c4848` / `481e9ffb...aed79`。无输出/删除。

## Stage 53 - 方节点 rank 映射低于门槛；分支关闭

- 日期：2026-08-01 23:27-23:36 +0800。
- 文件路径：脚本 `experiments/rankmap_square_20260801/`；无源码私有运行时 `/public/home/fujiake/fjk/agent_tmp/isolated/work/o33_rankmap_abba_20260801/runtime`；保留运行 `/public/home/fujiake/fjk/mcc_runs/118373369_o33_rankmap_abba_sample`；本地三项分析 `analysis/o33_rankmap_abba_118373369/`。
- 优化内容：仅映射。不可变 O33 二进制 `5f1a137e...fcb9`、输入、MPI 集合规则、64 rank × 2 线程与 8x8/8x8 分块不变。当前 8x2 条带 rankfile 对比方节点 4x4 块 rankfile 将审计的跨节点基数边从每网格 24 降至 16（33.3333%）。
- 结果：任务 `118373369` 在 `j04r2n[08-11]` 完成 `0:0`；real A1/B1/B2/A2=`128.132/125.746/124.383/123.998 s`，ABBA 均值 A=`126.065 s`、B=`125.0645 s`，表观 B 收益=`0.7936%`，`both_B_faster=False`。
- 剖析：合并两网格 2-D+4-D halo 均值 A=`1528.751 s`、B=`1548.159 s`；B 高 `1.2695%`。小 wall 差异不受相关剖析支持，运行顺序漂移具实质影响。
- 有效性：四次运行均 DONE，打印轨迹 SHA 相同 `fa498694...e44b0`；诊断 144/720 预期零 NetCDF。官方校验器/完整输入评分有效性仍未验证。
- 决策：`STOP_BRANCH`；无复现、半天、完整运行、源码构建或删除。这是 Stage-52 强制 PLAN 后的无效方向 1。剩余可信工作收窄为有界运行时/编译器参数 DOE；无矛盾拓扑证据不得重开该映射。
- 生命周期：三项分析有效，原始证据保留；下一任务删除关卡仅可在路径/分析复查后考虑。本条目后交接同步。
- 交接同步验证：工作区、已安装与 BN Skill 包各含 10 个文件，哈希差异为零；Stage-53 分析镜像 29 个文件、实验镜像 3 个文件，哈希差异为零。BN 主日志在此最终日志行更新前 SHA-256 匹配 `DEEDB8E0CCFFC0E9374DF13138C9B854693D5F93675225EA889C85D65732771B`；本记录后立即重新复制。

## Stage 54 - 亲和性变量 DOE 在队列使用前被否决

- 日期：2026-08-01，Stage 53 之后。
- 文件路径：分析 `analysis/o33_affinity_doe_screen_20260801/`；绑定/rankfile 证据 `analysis/o33_rankmap_abba_118373369/raw/118373369_o33_rankmap_abba_sample/`；精确启动脚本 `experiments/rankmap_square_20260801/run_rankmap_abba.slurm`。
- 优化内容：对可能的单参数 OpenMP 亲和性/运行时 DOE 做零运行审查。未创建源码、二进制、输入、任务、模型输出或校验器结果。
- 结果：rankfile 将每个 2 线程 MPI rank 绑定到恰好两个物理核。每节点 16 rank 在 Hygon 32 核/四 NUMA 节点上已按每 NUMA 域四个均衡。`OMP_PROC_BIND=close`、`OMP_PLACES=cores` 与继承的 Open MPI 亲和性意味着 `close/spread` 只能交换相同两个线程；`KMP_BLOCKTIME` 缺乏实测 >=2% 空闲自旋机制。
- 决策：`REJECT_BEFORE_JOB`；不把队列槽花在 OpenMP 亲和性拼写/blocktime 上。三项分析有效，无输出存在，删除不适用。这是静态筛选，不是新的无效运行时实验。
- 交接同步验证：工作区、已安装与 BN Skill 包各含 10 个文件，哈希差异为零；Stage-54 三项分析镜像三个文件，差异为零。BN 主日志在本行后重新复制。

## Stage 55 - O33 64x2 对比 128x1 合法扩展诊断提交

- 日期：2026-08-01。脚本：`experiments/o33_128mpi_scaling_20260801/run_64v128_abba.slurm`，SHA-256 `905f7eac4af218b2ec231a7da36dc84d4d3975f339f23c5d4059ff068795a049`；私有远程副本 `/public/home/fujiake/fjk/agent_tmp/isolated/scripts/o33_128mpi_scaling_20260801/run_64v128_abba.slurm` 通过远程 `bash -n` 与哈希检查。
- 优化内容：无源码或物理网格变更。A 控制使用不可变 O33 二进制 `5f1a137e...fcb9`、64 MPI × 2 OpenMP 与合法 8x8 分块。B 使用相同二进制/输入/规则，128 MPI × 1 OpenMP，两个未变网格上合法内部 16x8 分块。128-rank 2x2 节点块 rankfile 保留每节点 8x4 逻辑块；不修改共享目录。
- 理由：测试 128 个物理核是否足以抵消更小分块/额外 halo 流量带来的计算主导 O33 工作量。这是新的 rank 数/分块扩展方向，不是已关闭的 64-rank 方/条带或亲和性变量分支。
- 任务：`118394943`，队列 `kshcexclu06`，四个独占节点，分配 128x1；诊断 `NTIMES=144,720` 的 A-B-B-A。运行时无源码上下文为 `/public/home/fujiake/fjk/agent_tmp/isolated/work/o33_128mpi_scaling_20260801/runtime`，仅链接不可变 O33 ROMS 与只读 `/public/home/fujiake/Inputfiles`。
- 状态：已提交；尚无模型结果、性能声明、NetCDF 或精度结果。保留的 Stage-53 输出零 NetCDF，未删除。

### Stage 55a - 模型前 harness 断言修复

- 任务 `118394943` 在 `mpirun` 前四秒失败：`prepare_input` 断言生成的输入不含字面量 `output/`，但故意的私有目标目录本身以 `output/` 结尾。无模型日志、时间、轨迹、剖析、NetCDF 或性能样本存在。
- 变更：在同一私有/本地脚本中用精确写/读相等断言替换该错误断言。无模型、源码、二进制、rankfile 设计、输入参数或运行时设置变更。重新上传，远程 `bash -n`/哈希检查，然后恰好重新提交一次。
- 修正脚本 SHA-256 为 `5a609c88aaa51f7b5cee52459712b406feb3477f24bfda0af05c9037538dd83b`；修正任务 `118394983` 在 `j05r2n[04-07]` 运行。失败根目录 `118394943_o33_64v128mpi_sample` 作为零 NetCDF 模型前证据保留。

### Stage 55b - 128 纯 MPI 扩展分支关闭

- 修正任务 `118394983` 模型样本全部完成。A1/B1/B2/A2 real=`128.412/168.451/167.936/126.234 s`；ABBA 均值 A=`127.323 s`、B=`168.1935 s`，128x1 退化=`32.0999%`。两次 B 运行均慢于两次对照。
- 四次运行均 DONE，轨迹相同 `fa498694...e44b0`，零 NetCDF 与预期诊断步骤头。终端任务状态失败仅因模型后决策文件 Python 辅助有 f-string 表达式语法错误；这不使四个原始模型样本无效。
- 合并两网格 2-D+4-D halo 均值 A=`1579.454 s`、B=`6675.488 s`，增加 `322.6454%`，直接支持退化。
- 决策：`STOP_BRANCH`；无一天/完整验证或复现。这是 Stage 52 后的无效运行/扩展方向 2，因此停止进一步实验，在任何新模型任务前进入强制中国优先 web/开源 PLAN 研究。
- 三项分析在 `analysis/o33_64v128mpi_abba_118394983/` 有效；全部远程原始证据保留，未删除。

## Stage 56 - 强制研究关闭盲目运行时扩展

- 日期：2026-08-02。文件路径：`analysis/plan_research_after_128mpi_20260802/`。未创建源码/构建/任务/输出。
- 中国优先/开源证据：中国 NEMO 现代化与多节点混合研究、NEMO 4.0 基准/通信工作与当前 NEMO HPC 文档与精确 O33 剖析证据相互调和。
- 结果：分解/halo 记账是正确的筛选手段；嵌套网格约束每网格独立任务优化。我们的直接 128x1 结果（wall -32.0999%，halo +322.6454%）有决定性，而 Stage-53 放置与 Stage-54 亲和性证据关闭剩余盲目运行时调整。
- 决策：`NO_NEW_MODEL_JOB_AUTHORIZED`。保留不可变 64x2 O33 父级。仅当出现矛盾、位点特定的源码/剖析证据与量化 >=2% 完整运行机制时才重开；否则报告收敛而非消耗更多队列时间。
- 三项分析有效；无输出/删除。随后交接同步。
- 交接同步验证：工作区、已安装与 BN Skill 包各含 10 个文件，SHA-256 差异为零；Stage-55 分析镜像 27 个文件、Stage-56 PLAN 镜像 3 个文件，差异为零。BN 主日志在本行后重新复制。

## Stage 57 - 收敛与交付计划

- 日期：2026-08-02。计划分析：`analysis/plan_finalization_after_stage56_20260802/`；无代码/构建/任务/输出。
- 内容：冻结 O33 64x2 父级；审计既有完整运行来源/校验器证据；仅当具体交付工件缺失时运行一次未变完整父级；否则准备提交包。除非精确合法 64x2 源码/剖析证明有保守 >=2% 完整运行上限，然后通过 >=3% 匹配诊断与完整官方验证关卡，否则禁止未来优化。
- 结果：计划有效，保留全部原始证据，未授权投机实验。输出删除不适用。随后交接同步。
- 交接同步验证：工作区、已安装与 BN Skill 包各含 10 个文件，SHA-256 差异为零；Stage-57 三项计划镜像三个文件，差异为零。BN 主日志在本行后重新复制。

## Stage 58 - 文献导向的源码局部性筛选

- 日期：2026-08-02。分析：`analysis/research_directions_after_stage57_20260802/`；无代码/构建/任务/输出。
- 中国优先 NEMO 现代化与开放 ROMS/Fortran 来源将内存带宽、SIMD 阻塞、指针与隐藏数组打包/解包列为一般候选。只有一个 O33 特定跟进存续：对未关闭的 GLS/混合/biology 热点调用边界做零运行审计，寻找可证明的非连续临时、别名或单位步长损失。
- 精确分块筛选：不可变输入网格为 359x326 与 235x245；8x8 已是近方形 64-rank 因子分解。16x4/4x16 增加两个网格的分块周长，因此不做朝向实验。
- 混合精度、通用 Gatherv、通用异步/halo 移除与额外 rank 扩展被约束或既有 O33 证据否决。保留审计在任何编辑/构建/任务前需要保守 >=2% 完整运行上限。
- 三项分析有效；无输出/删除。随后交接同步。
- 交接同步验证：工作区、已安装与 BN Skill 包各含 10 个文件，SHA-256 差异为零；Stage-58 分析镜像三个文件，差异为零。BN 主日志在本行后重新复制。

## Stage 59 - O33 代码与文献审查选择 fine2coarse 交换守卫

- 日期：2026-08-02 +0800 / 2026-08-01 EDT。
- 文件路径：精确 O33 源码 `analysis/teammate_o33_sync_review_20260801/source_evidence/o33/ROMS__Nonlinear__nesting.F`；新审查包 `analysis/o33_fine2coarse_exchange_review_20260802/`。
- 优化内容：只读源码/对象/剖析审计加中国优先文献与官方开源 ROMS 审查。未创建源码编辑、构建、模型任务、输出、运行时或新精度结果。
- 主要发现：O33 `nesting(n2way)` 运行 `correct_tracer`、`fine2coarse(r2dvar)`、`set_depth`，然后 `fine2coarse(r3dvar)`，而 `fine2coarse` 第 3767-3845 行在任一调用后无条件执行 2-D 与 3-D/4-D 交换组。因此第一次调用交换尚未反馈更新的 3-D 字段，第二次重复交换未变的 2-D 字段。
- 正确性边界：保留 `correct_tracer`、全部 2-D/3-D/生态细到粗平均、`set_depth`、全部字段以及每个字段类生产者后的完整一次本地/MPI 同步。候选仅改变既有交换区域守卫。
- 开源结果：当前官方 ROMS `develop` 恰好围绕这些交换组应用 `vtype.eq.r2dvar` 与 `vtype.eq.r3dvar` 守卫。Debreu et al. 2012 修复 refluxing/双向嵌套边界；NEMO GMD 2022 支持位点证实的移除/分组而非盲目 MPI 调优；中国 NEMO 现代化支持热点/SIMD/内存筛选。
- 剖析：已验证完整 O33 `real=2142.793 s`；2%=`42.85586 s`；合并 2-D/3-D/4-D halo 池=`18.9954%`。这个宽池不是 fine2coarse 位点归因，因此候选收益仍未测量。
- 次要审计：GLS/混合/biology 中没有具体隐藏打包/解包或局部性变更通过 2%。浅水 biology 不变式 `exp` 的刻意有利全程序上限约 1.05%，构建前否决。非活动的非 `ASSUMED_SHAPE` 重复 `Adx`/缺失 `Ady` 声明仅记录为 P3。
- 决策：`WAIT_THEN_ONE_ABBA`。队友任务 `118396521` 清空后，授权一次四节点 `144/720` A-B-B-A，不可变 O33 对比单文件守卫候选，64 MPI × 2 OpenMP，8x8/8x8。要求两次 B 更快、轨迹/剖析支持且 >=3% 均值收益；低于 2% 否决。
- 合规：提供的 PPT 说固定 64 核与 `mpirun -np 64`，而已建立的硬上限为四节点/128 核。保持 64 rank 为当前呈现/比较参考；O33 64x2 消耗 128 个物理核，在组织者澄清前不得标为已确认的最终评分布局。
- 三项状态：`01_read_summary.md` 有效、`02_profiling.md` 有效、`03_validity_check.md` 对单次诊断 ABBA 有效。无 NetCDF/模型输出，删除不适用，未删除先前输出。
- 审查检查点队列状态：队友任务 `118396521` 在 `j05r2n[04-07]` 运行 `01:15:38`，4 节点，64 任务，128 个分配 CPU。其源码/输出树未触碰。
- 交接同步验证：工作区、已安装与 BN Skill 包各含 10 个文件，SHA-256 差异为零；Stage-59 分析镜像六个文件，差异为零。BN 主日志在本行后重新复制。

## Stage 60 - fine2coarse vtype 候选提交；预构建重试进行中

- 日期：2026-08-02 +0800 / 2026-08-01 EDT。
- 用户规则更新：组委会指导优先于教学视频。硬性资源上限为四节点/128 CPU 核；组织者的四节点/64 核结果仅供参考。O33 64 MPI × 2 OpenMP 对本诊断合法。
- 本地路径：`experiments/o33_f2c_vtype_20260802/{o33_f2c_vtype.patch,build_f2c_vtype.slurm,run_f2c_vtype_abba.slurm,submit_pipeline.sh}`。远程私有脚本根目录：`/public/home/fujiake/fjk/agent_tmp/isolated/scripts/o33_f2c_vtype_20260802`。
- 优化内容：候选仅向 `ROMS/Nonlinear/nesting.F` 中既有的 2-D 与 3-D/4-D 本地/MPI 交换组添加 `vtype` 守卫。保留 `correct_tracer`、两个细到粗内核、`set_depth`、字段、参数、算术、输入、编译器/运行时、64 MPI × 2 OpenMP 与 8x8/8x8 分解。
- 父级关卡：`oceanM=5f1a137e42252c9b978ad50ab344b9d6493f5e5afeeb71ed2d83f0a4228cfcb9`；`nesting.F=9d8434c7c7291309d4dd281b4c8531dff7ee988bfc038590301484516b53795c`；本地 `git apply --check` 与远程 `/usr/bin/patch --dry-run` 均接受补丁 `d3858c56d2a2c0ddf1f315257e85c2e822cc50b02ba0ae4f6aaf55c81533423e`。
- 首条流水线：构建 `118399786`（单节点/16 CPU）在编译/模型启动前 `FAILED 2:0`。远程 Git 1.8.3 `git apply` 检查返回成功但未修改复制的源码，因此守卫计数断言失败。依赖四节点任务 `118399788` 在启动前被自动 CANCELLED。这些是 harness/构建事件，不是性能样本；无 NetCDF 或模型输出，未删除。
- 重试：仅将补丁应用机制改为 `/usr/bin/patch`，保留失败源码树，分配新私有根目录 `/public/home/fujiake/fjk/agent_tmp/isolated/work/o33_f2c_vtype_r1_20260802/ROMS_CoSiNE15`。重试构建脚本 SHA `e9b6c3ea72e1324c953056a70b673af6642fd343f3f4ae6a663346037ed2f28d`；运行脚本 SHA `f41f37e34b50a789e0ac0f458cdfbdf9c1cafe1597e70987067b33660b9bfa8c`；流水线包装器 SHA `f3acc0eafabe04822ec00785579c5b1db8e87e228d8ce395aac69db94240c64f`。
- 重试任务：构建 `118400453` 检查点时在 `j01r2n00` 运行，单节点/16 CPU；四节点 `118400454` 以 `afterok:118400453` PENDING，64 MPI × 2 OpenMP/128 CPU。尚无计时、DONE 标记、候选二进制或精度结果。
- 下一步：触碰依赖诊断前先读构建结果。若构建成功，监控 ABBA；若失败，停止并诊断模型前失败，不声称性能结果。
- 交接同步验证：工作区、已安装与 BN Skill 包各含 10 个文件，SHA-256 差异为零；BN 有相同 Stage-60 实验包（6 个文件）与 Stage-59 分析更新。BN 主日志在本行后重新复制。

### Stage 60a - 候选构建确认；诊断运行重新提交

- 日期：2026-08-02 +0800 / 2026-08-01 EDT。候选构建 `118400453` 成功完成（`real=19.669 s`）；候选二进制 SHA-256 `14e55b8adbc58528508fca1e9b27aa2eda4594277d3b442d6e03ee600dfebe8d`，打补丁的 `nesting.F` SHA-256 `5716d0fe80c86b0469449b8ec8e6571bf2fdd658f14ec5315c13732265af722c`。
- 首次运行 `118400454` 在任何模型步骤前 7 秒停止，因为新 `run_one` 辅助省略了 `cd "$root"`；ROMS 因而无法解析其未变的相对 `ROMS/External/varinfo.dat`。无 `DONE`、时间样本、轨迹、NetCDF、剖析器结果或精度结果。私有失败根目录保留。
- 变更：仅在 `mpirun` 前添加 `cd "$root"`；无候选源码、二进制、输入参数、分块分解、MPI/OpenMP 配置、rankfile、共享路径或模型设置变更。添加 `submit_run_only.sh` 以复用既有成功构建。
- 当前运行脚本 SHA-256 `d28cd857dc31e8c5200651a2002b11353f4ed2ccac5655445518b5f649247786`；仅提交包装器 SHA-256 `1f2753dddbb978f1143787fe1b32e180cf18bf007e652cc2d701584fd8ee6e05`；补丁仍为 `d3858c56d2a2c0ddf1f315257e85c2e822cc50b02ba0ae4f6aaf55c81533423e`。两个脚本均通过远程 `bash -n`，三个远程 SHA 检查均匹配本地内容。
- 任务 `118401389` 提交到 `kshcexclu06`：四节点，64 MPI × 2 OpenMP，8x8/8x8，诊断 `NTIMES=144,720`，A-B-B-A。状态：已提交；尚无性能或正确性结论。未删除任何输出。

### Stage 60b - fine2coarse vtype 诊断关闭

- 日期：2026-08-02 +0800 / 2026-08-01 EDT。原始结果：`/public/home/fujiake/fjk/mcc_runs/118401389_o33_f2c_vtype_abba_sample`；本地三项分析：`analysis/o33_f2c_vtype_abba_118401389/{01_read_summary.md,02_profiling.md,03_validity_check.md}`。
- 任务 `118401389` 在 `j05r2n[00-03]` 上 `00:08:44` 内完成 `0:0`，四节点/128 CPU，64 MPI × 2 OpenMP，8x8/8x8，诊断 `144/720`。A1/B1/B2/A2 `real=128.353/131.535/130.354/126.562 s`；均值 A=`127.458 s`、B=`130.945 s`，候选变更=`-2.7358%`。两次 B 样本均慢于两次对照。
- 四个样本均以 `ROMS/TOMS: DONE` 退出 0，轨迹 SHA 相同 `fa498694...e44b0`。本诊断预期无 NetCDF，因此未运行官方校验器，不声称评分有效精度结果。
- 剖析证据：合并 2-D/3-D/4-D halo 均值从 `2012.92` 升至 `2064.40`（+`2.56%`）；Grid 01 halo 下降但 Grid 02 上升，且 Grid 01/Grid 02 GLS 计时器各上升约 `22%`。这支持否决但不证明微观交互成因。
- 决策：`STOP_BRANCH`。保留 O33 父级 `5f1a137e...fcb9`；不复现、不半天测试、不完整运行、不晋升该候选。原始输出保留，本任务期间不可删除。下一工作是任何新候选任务前的零运行代码/剖析分析。
- 交接同步：工作区 Skill、已安装 Skill 与 BN 镜像收到 Stage-60 progress/plan/evidence 更新。跨同步副本 `progress.md`=`1339005b...9b49`、`plan.md`=`f7efa2c1...d262`、`evidence-index.md`=`17b8c4b8...e5a1` 的 SHA-256 匹配。Stage-61 仅静态剖析；无新输出，未删除。

## Stage 61 - step2d 堆数组分配微剖析提交

- 日期：2026-08-02 +0800 / 2026-08-01 EDT。本地文件：`experiments/step2d_heapalloc_probe_20260802/{step2d_heapalloc_probe.f90,run_probe.slurm}`；源码 SHA-256 `363f9930fdd9ed0f2b79066ef5990469d3fde5fbb24c6838b013d1a001c16af2`，脚本 SHA-256 `d3d63358a991ed723d6cdd9d7e5abc51fe43d4e67abc8fa1df2414a8390cf3c3`。
- 剖析发现：O33 `Build/step2d.o` 直接引用 `for_allocate`/`for_deallocate`，含二十一个变长局部 2-D 数组；检查的 `pre_step3d.o`、`step3d_t.o`、`gls_corstep.o`、`biology.o` 无相应符号。`step2d` 占两网格匹配对照剖析的 13.1949%。
- 优化/剖析内容：独立 Fortran 分块形状、21 数组微基准，用精确 Intel 2017 `-O3 -ip -fp-model precise` 编译，一次 `-heap-arrays`、一次 `-no-heap-arrays`。它不改变任何 ROMS 源码、二进制、配置、输入、物理、生态、网格、输出或 MPI 布局。
- 任务 `118402888` 提交到 `kshcexclu06`，单节点/单 CPU，私有审计根目录 `/public/home/fujiake/fjk/agent_tmp/isolated/audits/step2d_heapalloc_probe_118402888`。远程脚本通过 `bash -n`；远程哈希等于本地值。状态已提交；无性能结论或模型输出。ROMS 候选以实测微剖析足以支持 >=2% 全程序机制为条件。

### Stage 61a - 堆微剖析测得；step2d 候选构建并提交

- 微剖析任务 `118402888` 在单私有计算 CPU 上 20 秒内完成 `0:0`。对 100,000 次分块形状调用、21 个变长局部 2-D 数组，精确 Intel 2017 选项产生 `-heap-arrays` 下 `12.432300 s`、`-no-heap-arrays` 下 `1.681400 s`；校验和相同（`2.1e6`）。这是编译器分配微剖析，不是 ROMS/模型性能证据。
- 保守诊断调用数约 `(144+720)*30=25,920` 次分块调用；缩放微剖析差异给出约 `2.79 s` 诊断潜力，或约匹配 O33 wall time `127.458 s` 的 `~2.2%`。这仅足够授权一次测量，不声称预期收益。
- 候选路径：`experiments/o33_step2d_noheap_20260802/`；私有源码根目录 `/public/home/fujiake/fjk/agent_tmp/isolated/work/o33_step2d_noheap_20260802/ROMS_CoSiNE15`。精确编译器 diff 含一行新增：`$(SCRATCH_DIR)/step2d.o: private FFLAGS += -no-heap-arrays`；无 ROMS 源码文本、输入、模型设置、网格、MPI 布局、物理或生态变更。
- 构建任务 `118403081` 在 `00:04:09` 内完成 `0:0`；候选二进制 SHA-256 `d35f2c7780d4712b87980a062f64bb66cbd1ce8663495a2559de3858bcb60e1e`，候选配置 SHA `eb4613d732b4e2fba88a969420c3faecfb62eb1bdbf6f5f55ff92e4d027f2936`，候选 `step2d.o` SHA `95fdd4526432a144d20cc4d168e4c75fe4899f0f1e178a42ba8408c2ef05711c`。候选对象无 `for_allocate`/`for_deallocate` 引用，区别于父级 `Build/step2d.o`。
- 任务 `118403744` 提交：四节点/128 CPU，64 MPI × 2 OpenMP，8x8/8x8，诊断 `NTIMES=144,720`，私有 A-B-B-A 输出根目录 `/public/home/fujiake/fjk/mcc_runs/118403744_o33_step2d_noheap_abba_sample`。尚无计时、完成、精度或晋升结果。保留先前原始输出；未删除输出。

### Stage 61b - step2d 无堆候选被否决

- 日期：2026-08-02 +0800 / 2026-08-01 EDT。原始输出：`/public/home/fujiake/fjk/mcc_runs/118403744_o33_step2d_noheap_abba_sample`；本地三项结果：`analysis/o33_step2d_noheap_abba_118403744/{01_read_summary.md,02_profiling.md,03_validity_check.md}`。
- 任务 `118403744` 在 `j05r2n[10-13]` 上 `00:08:45` 内完成 `0:0`，四节点/128 CPU，64 MPI × 2 OpenMP/8x8/8x8，诊断 `144/720`。A1/B1/B2/A2 real=`129.753/132.023/130.071/127.992 s`；均值 A=`128.873 s`、B=`131.047 s`；候选退化=`1.6873%`。两次 B 样本均慢于两次对照。
- 每个样本均以 `ROMS/TOMS: DONE` 退出 0，轨迹 SHA 匹配 `fa498694...e44b0`；预期零 NetCDF，因此未运行官方验证，无评分声明。
- 观察到预期本地效应：Grid 01/Grid 02 `step2d` 下降 `3.18%/3.87%`。它未传导到 wall time：Grid 01/Grid 02 GLS 上升 `20.70%/20.36%`；两网格 halo 仅移动 `-0.42%`。GLS 交互成因未证明，但否决直接有支撑。
- 决策：`STOP_BRANCH`；无重跑、完整验证或晋升。这是上一 PLAN 周期（Stage 60 与 Stage 61）后连续第二个无效候选，因此任何新模型任务前进入强制中国优先论文/开源/代码剖析 PLAN。保留全部原始结果；未删除。

## Stage 62 - 两次无效候选后的强制 PLAN

- 日期：2026-08-02 +0800 / 2026-08-01 EDT。分析：`analysis/plan_research_after_step2d_noheap_20260802/{01_read_summary.md,02_profiling.md,03_validity_check.md}`。未创建源码编辑、构建、模型任务、输出、删除或校验器运行。
- 审查来源：Intel Fortran `heap-arrays`/数组复制文档、中国 NEMO 代码现代化工作（DOI `10.3969/j.issn.1671-6647.2021.01.007`）与当前官方 ROMS 发布；发现与精确 O33 对象/配置及 Stage 60/61 实测剖析相互调和。
- 结果：运行时大小的自动数组解释了 `step2d` 堆调用与其本地计时器下降，但 Stage 61 证明该本地效应未传导到 O33 wall time，因为 GLS 计时约上升 20%。阈值变体、更宽的无堆选项、通用异步/集合/映射/rank 变更与上游复制粘贴变更没有新的量化 >=2% O33 机制。
- 决策：PLAN 关卡完成；不提交新模型任务。仅继续对不可变 O33 做只读交付/来源剖析，或未来满足 >=2% 上限与单变量诊断关卡的精确源码/剖析证明。Stage 60/61 原始输出保留；未删除。

## Stage 63 - 不可变 O33 完整冷启动复现提交

- 日期：2026-08-02 +0800 / 2026-08-01 EDT。本地脚本：`experiments/o33_full_reproduce_20260802/run_full_validate.slurm`，SHA-256 `edf60e58410212b7632c907b836ae84e3aa998463d8947c9db29f6f7b9207e45`；远程私有副本 `/public/home/fujiake/fjk/agent_tmp/isolated/scripts/o33_full_reproduce_20260802/run_full_validate.slurm` 通过 `bash -n` 与哈希验证。
- 内容：无优化候选。使用既存完整合法 8x8 输入 `a3e8a5dbee769ced1e097cd22d9e0424eb326b0a7b1006451fe6609dd14779a8`（`NTIMES=2592,12960`）、未变 O33 集合规则 `0ef5b45a...e473`、只读 Inputfiles 与既定 64 MPI × 2 OpenMP 映射，复现不可变 O33 二进制 `5f1a137e42252c9b978ad50ab344b9d6493f5e5afeeb71ed2d83f0a4228cfcb9`。
- 任务 `118405320` 提交到 `kshcexclu06`，四个独占节点/128 CPU，私有输出 `/public/home/fujiake/fjk/mcc_runs/118405320_o33_full_reproduce_64x2`。它检查完整步骤、写私有输出、然后通过既有包装器调用官方 `vali.py`。状态已提交；尚无时间、输出或验证结论。未删除先前输出。

### Stage 63a - 不可变 O33 完整复现完成并验证

- 日期：2026-08-02 +0800。任务 `118405320` 以 Slurm `00:36:07` 在 `j01r2n[00-03]` 完成 `0:0`，四节点/128 个分配 CPU，64 MPI × 2 OpenMP，8x8/8x8，完整冷启动 `NTIMES=2592,12960`。
- 精确路径：远程结果 `/public/home/fujiake/fjk/mcc_runs/118405320_o33_full_reproduce_64x2`；本地三项分析 `analysis/o33_full_reproduce_118405320/{01_read_summary.md,02_profiling.md,03_validity_check.md}`；本地运行脚本 `experiments/o33_full_reproduce_20260802/run_full_validate.slurm`。
- 优化内容：无。本阶段复现不可变 O33 二进制 `5f1a137e...fcb9`、完整输入 `a3e8a5db...79a8`、规则 `0ef5b45a...e473` 与脚本 `edf60e58...e45`；是交付/来源证据，不是候选。
- 结果：shell `real=2136.310 s`（`35m36.310s`），`ROMS/TOMS: DONE`，16 个 NetCDF 文件共 `9,048,193,920` 字节（`8.5G`）。官方校验器 SHA `97230e0b...878a` 26 项检查全部通过；东沙60 `u=0.000052 <= 0.000060`。
- 复现分析：先前有效 O33 完整时间为 `2129.853` 与 `2142.793 s`，均值 `2136.323 s`；新结果与均值仅差 `-0.013 s`，位于先前 `0.6057%` 极差内。状态 `REPRODUCED`；不声称新加速或因果变更。
- 剖析：Grid 02 计算/消息合计为 `64.2866%/17.5566%`；主要条目仍为 predictor `13.6563%`、tracer corrector `10.9957%`、step2d `10.6543%`、GLS `9.9602%`、4-D halo `7.2090%`。相对任务 `118346383` 的选择性变更混杂且小，无新 >=2% 机制。
- 生命周期：三项强制分析均有效。最新 8.5G 输出保留为完整可复现性/交付包；未删除。除非显式要求方差研究或仪式重跑，无需额外复现。
- 交接同步验证：工作区、BN 与已安装 `mcc26-roms-cosine-handoff` 包各含 10 个文件，相对文件/SHA-256 差异为零。Stage-63 三文件分析镜像差异为零，BN 主日志在本条目后重新复制。

## Stage 64 - O33 提交就绪审计与交付入口

- 日期：2026-08-02 +0800。路径：本地交付入口 `C:\Users\Fu Jiake\Documents\MCC\决赛\04_提交准备\O33_交付清单_20260802`；三项分析 `analysis/o33_submission_readiness_20260802/`；已验证远程源码 `/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15`。
- 优化内容：无。对 O33 源码/构建/运行/验证谱系做只读审计，随后仅本地文档。无构建、模型任务、校验器任务、输出或删除。
- 源码清单：私有 O33 树约 505 MiB，2426 个 `ROMS/` 文件。关键哈希为二进制 `5f1a137e...fcb9`、makefile `21974744...8a8`、make macros `70ac9889...653`、Linux-ifort `081b267b...ced`、规则 `0ef5b45a...e473`。
- 结果：性能/正确性证据就绪，但最终提交 `INCOMPLETE`。缺失的 P0/P1 交付物为独立优化源码归档、干净解压/构建证明、不含个人绝对路径的可移植脚本、委员会格式优化记录与最终 PPT/自动播放。
- 创建文件：交付 `README.md`、`BUILD.md`、`RUN_AND_VALIDATE.md`、`EVIDENCE_MANIFEST.md`、`SUBMISSION_CHECKLIST.md`，以及强制 `01_read_summary.md`、`02_profiling.md`、`03_validity_check.md`。
- 决策：不从此审计再跑模型。先打包源码并证明干净构建；仅当重建二进制哈希或平台/工具链不同才重跑完整模型。Stage-63 8.5G 输出保留。
- 协作：队列任务 `118410815` 与 `118409770` 仅通过 Slurm 元数据观察，未触碰。
- 交接同步验证：工作区、BN 与已安装 Skill 包相对文件/SHA-256 差异为零；Stage-64 三项分析与五文件交付入口镜像差异为零。BN 主日志在本条目后重新复制。

## Stage 65 - O33 独立源码归档与干净构建验证提交

- 日期：2026-08-02 +0800。交付根目录 `/public/home/fujiake/fjk/delivery/o33_20260802`；本地脚本 `C:\Users\Fu Jiake\Documents\MCC\决赛\04_提交准备\O33_交付清单_20260802/{package_o33_source.sh,build_archive_verify.slurm}`。
- 归档内容：仅源码/配置树。排除 `Build/`、`.mcc_opt/`、`oceanM`、`oceanM.O33_final`、`output/` 与 `.git`；不捆绑输入/输出/共享目录内容。
- 最终 v3 归档：`ROMS_CoSiNE15_O33_source_20260802_v3.tar.gz`，116 MiB，8830 个目录项，SHA-256 `3a1a0b30dd36c4c52e84fd4681ce68bba258fde9c089acea9fd372b0d11de284`。`gzip -t` 通过；排除路径计数为零；归档 makefile/make macros/Linux-ifort/rules 哈希与已验证源码树一致。
- 打包事件：平台旧 tar 拒绝 `--sort=name`；两次 SSH 断开/后台尝试留下损坏/不完整私有工件。它们被保留并明确无效。前台心跳 v3 运行于 `2026-08-02T16:13:37+0800` 以 `rc=0` 完成。来自第一次断开尝试的重复 tar PID `27001` 在精确归属/命令验证后被终止；其部分文件保留。
- 干净构建脚本 SHA-256 `54973cd3711255f441a2de88e32e07ec3d232af7e92e2fc90684a5447f3930a1`；远程 `bash -n` 与哈希检查通过。它将 v3 解压到唯一私有 `clean_builds/$SLURM_JOB_ID`，加载精确 Intel/HPC-X/NetCDF/HDF5 模块，运行 `make -j32`，记录构建/ldd/清单，并将所得二进制与 O33 `5f1a137e...fcb9` 比较。
- 任务 `118412739` 提交到 `kshcexclu06`，单节点/32 CPU，20 分钟限制。这是仅构建证据：无 ROMS 模型、NetCDF、性能或精度结果。Stage-63 8.5G 输出保留；未删除。

### Stage 65a - 干净构建失配隔离；v3 归档降级

- 日期：2026-08-02 +0800。精确路径：归档 `/public/home/fujiake/fjk/delivery/o33_20260802/ROMS_CoSiNE15_O33_source_20260802_v3.tar.gz`；干净树 `/public/home/fujiake/fjk/delivery/o33_20260802/clean_builds/118412739/ROMS_CoSiNE15`；已验证父级 `/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15`；本地比较脚本 `C:\Users\Fu Jiake\Documents\MCC\决赛\04_提交准备\O33_交付清单_20260802\compare_clean_build.sh`。
- 优化内容：无。这仅是源码谱系与干净构建诊断。未发生模型、NetCDF、精度验证、性能样本、输入变更或输出删除。
- 结果：Slurm 任务 `118412739` 在 `00:01:04` 后以 `FAILED 1:0` 结束，但 `make -j32` 本身在 `43.405 s` 内成功完成并产出 `oceanM`。包装器仅因在构建系统把生成的 `make_macros.mk` 移入 `Build/` 后尝试哈希根目录 `make_macros.mk` 而失败。
- 重建二进制 SHA-256 为 `e64347f3bd44eb69c5c224684306ebeb8898e909ce81a0260c0878650bbd53bb`，不同于已验证 O33 `5f1a137e42252c9b978ad50ab344b9d6493f5e5afeeb71ed2d83f0a4228cfcb9`。比较的 272 个对象文件中 270 个逐字节一致，两个不同：`mod_ncparam.o` 与 `step3d_t.o`。
- `mod_ncparam.o` 因嵌入构建/源码路径与 SVN 状态字符串而不同。`step3d_t.o` 实质不同：已验证父级 `Build/step3d_t.f90` 含 O46 融合 OpenMP 区域与 `END DO NOWAIT`，而归档正式 `ROMS/Nonlinear/step3d_t.F` 含更早的 O25 双区域实现。正式源码哈希在父级与干净树中相同，证明已验证父级依赖 v3 未表示的陈旧/未提交生成 Build 工件。
- 决策：将 v3 标记为 `UNVERIFIED / DO_NOT_SUBMIT`。从私有来源恢复精确 O46 源码级变更，或对照正式源码重建，然后任何模型运行前要求全新干净构建与对象/代码等价检查。此时未授权投机模型任务；全部归档、构建日志与先前完整输出保留。

### Stage 65b - O46 推断修正；O33 增量链接来源隔离

- 日期：2026-08-02 +0800。精确证据路径：`/public/home/fujiake/nan/README.md`、`/public/home/fujiake/nan/report_his/failure_analysis_O46.md`、`/public/home/fujiake/nan/backup/docs/O33_optimization_stack.md`、`/public/home/fujiake/nan/ROMS_CoSiNE15/.mcc_opt/staging/O33_build.log`，与本地审计工具 `C:\Users\Fu Jiake\Documents\MCC\决赛\04_提交准备\O33_交付清单_20260802\`。
- 优化内容：无。只读源码/构建谱系检查加审计脚本兼容性修复。未改变 ROMS 源码、模型参数、物理/生态路径、共享输入、模型输出或已验证二进制。
- 对 Stage 65a 的修正：O46 在 2026-08-01 测量并否决，晚于 2026-07-31 18:29 创建已验证 O33 二进制。正式 `step3d_t.F` 被有意回滚到其 O46 前状态。因此较晚的 O46 `Build/step3d_t.f90/.o` 是 O33 后构建目录污染，不是已验证 O33 二进制使用的源码。
- 更强发现：O33 本身是增量链接。`O33_build.log` 仅用 `-qopenmp -no-heap-arrays` 重建五个热点对象，然后对既有归档链接。当前干净对象与 272 个较晚 Build 对象中的 270 个逐字节一致，但已验证可执行文件对 `mp_exchange3d/4d` 与 `gls_corstep` 有不同链接符号大小，与 O33 链接中保留更老实验对象一致。记录的 `Build.ifort_O33/` 快照已不存在。
- 机器码审计：已验证与干净 `step3d_t_tile`、`step3d_t` 包装器与 `pre_step3d_tile` 指令行数相同；包装器精确归一化，剩余首差异为重定位的绝对运行时地址。当前证据否决"必须恢复 O46 源码补丁"的先前说法，但尚未证明完整干净构建性能等价。
- 决策：v3 仍为 `UNVERIFIED / HOLD`，现因精确增量 O33 对象谱系无法从正式源码树完整重建。在决定是否需要完整干净构建验证前，用短同节点队列 A-B-B-A 干净构建诊断。未删除历史工件或输出。

## Stage 66 - 干净构建交付等价 ABBA 提交

- 日期：2026-08-02 +0800。本地脚本：`experiments/o33_clean_rebuild_abba_20260802/run_clean_rebuild_abba.slurm`；远程脚本 `/public/home/fujiake/fjk/agent_tmp/isolated/scripts/o33_clean_rebuild_20260802/run_clean_rebuild_abba.slurm`；SHA-256 `2c8e7c6a3856d60be9de62932ece58b7204f8245e4c20a62e6ceb9c8fc0aea8c`。
- 内容：交付/可复现性诊断，非优化候选。按 A-B-B-A 顺序比较已验证 O33 `5f1a137e...fcb9` 与干净归档重建 `e64347f3...bbd53bb`，使用既定四节点、64 MPI × 2 OpenMP、8x8/8x8 映射与合法诊断 `NTIMES=144,720`。物理、生态、网格、时间步、输出配置与共享 Inputfiles 内容不变。
- 私有变更：仅添加缺失符号链接 `/public/home/fujiake/fjk/delivery/o33_20260802/clean_builds/118412739/ROMS_CoSiNE15/Inputfiles -> /public/home/fujiake/Inputfiles`；目标 Inputfiles 目录或 `/public/share` 下无写入。
- 任务 `118413800` 提交到 `kshcexclu06`，四节点/128 CPU，30 分钟限制。输出根目录将为 `/public/home/fujiake/fjk/mcc_runs/118413800_o33_clean_rebuild_abba_sample`。关卡要求轨迹相同；干净构建减速超过 2% 属交付退化。尚无计时、轨迹、剖析或结论。
- 队列观察：既有任务 `118413682` 与 `118413767` 仅观察，未触碰。Stage-63 完整输出与全部打包/构建工件保留；未删除。

### Stage 66a - 干净构建诊断等价；完整验证授权

- 日期：2026-08-02 +0800。任务 `118413800` 在 `j01r2n[16-19]` 上 `00:08:34` 内完成 `0:0`。远程结果 `/public/home/fujiake/fjk/mcc_runs/118413800_o33_clean_rebuild_abba_sample`；本地三项分析 `analysis/o33_clean_rebuild_abba_118413800/{01_read_summary.md,02_profiling.md,03_validity_check.md}`。
- 结果：A1/B1/B2/A2 shell real=`127.272/128.125/127.794/124.979 s`。已验证父级均值=`126.1255 s`；干净构建均值=`127.9595 s`；干净增量=`+1.4541%`。四次运行均退出 0、到达 `ROMS/TOMS: DONE`、完成精确 `144/720` 步骤并共享轨迹 SHA `fa498694...e44b0`；预期零 NetCDF。
- 剖析：干净 GLS rank-CPU 计时器在 Grid 01/02 一致上升约 `21.84%/21.53%`；合并 2-D+3-D+4-D halo 上升约 `7.01%/2.63%`。Shell wall 增量保持低于预定义 2% 交付阈值。这些差异与未决的增量对象谱系一致，但在本轨迹关卡不造成精度失配。
- 独立有效性：summary、decision 与 rankfile 哈希复现；每个日志一个 DONE、两个最终步骤标记与两个剖析。`SHA256SUMS` 含最终化前的 `harness.log` 哈希，因为脚本在哈希后追加 `HARNESS_DONE`；这是 harness 清单顺序缺陷，不是模型损坏，未来脚本必须修正。
- 决策：`SOURCE_REBUILD_DIAGNOSTIC_EQUIVALENT`。v3 归档从 `HOLD` 推进到 `FULL_VALIDATION_REQUIRED`，而非提交就绪。授权一次 `2592/12960` 完整冷启动干净构建运行，16 个预期输出与官方 26/26 验证。保留 Stage-66 原始证据与 Stage-63 完整父级输出；不删除。

## Stage 67 - 干净构建完整冷启动验证提交

- 日期：2026-08-02 +0800。本地脚本 `experiments/o33_clean_full_validate_20260802/run_clean_full_validate.slurm`；远程私有副本 `/public/home/fujiake/fjk/agent_tmp/isolated/scripts/o33_clean_full_validate_20260802/run_clean_full_validate.slurm`；SHA-256 `9eff8032a3d6bb79f019d6251ee203d6f6d127c43fa00c1291733d15b909702f`。
- 内容：无优化变更。以完整输入 `a3e8a5db...79a8`、集合规则 `0ef5b45a...e473`、四节点/64 MPI × 2 OpenMP、8x8/8x8、完整冷启动 `NTIMES=2592,12960`、shell `time`、16 输出关卡与官方 `vali.py` 包装器运行干净源码归档二进制 `e64347f3...bbd53bb`。
- 脚本修复 Stage-66 清单顺序问题：在最终工件清单前写完成/验证元数据；不自我哈希打开的模型日志。不执行共享目录写入；Inputfiles 与官方校验器保持只读。
- 提交前关卡：队列为空；`/public` 可用 56 GiB；远程 `bash -n` 通过；远程脚本/二进制/输入/规则哈希匹配预期值。任务 `118414346` 提交到 `kshcexclu06`，四节点/128 CPU，90 分钟限制。预期私有输出 `/public/home/fujiake/fjk/mcc_runs/118414346_o33_clean_full_validate_64x2`。
- 尚无完整计时、DONE 标记、NetCDF、精度或提交就绪结论。Stage-63 与 Stage-66 结果及每个源码/构建/归档工件保留；未删除。

### Stage 67a - 模型运行期间修正可移植干净构建 harness

- 日期：2026-08-02 +0800。文件 `C:\Users\Fu Jiake\Documents\MCC\决赛\04_提交准备\O33_交付清单_20260802\build_archive_verify.slurm`；私有远程副本 `/public/home/fujiake/fjk/delivery/o33_20260802/build_archive_verify.slurm`；修正 SHA-256 `ab876e6f2dafe685633159af6f888de8b0f62cec52810fdf375f14a9b8758ec4`。
- 变更：哈希生成的 `Build/make_macros.mk` 而非移除的根目录 `make_macros.mk`；当干净解压产生与历史 O33 不同的路径依赖二进制哈希时，以成功构建退出记录 `BINARY_DIFF_REQUIRES_FULL_VALIDATION`，而非把编译误分类为失败。逐位历史匹配保持为显式独立状态。
- 结果：本地/远程哈希一致，远程 `bash -n` 通过。这只修复打包/构建报告，不触碰源码、编译选项、二进制、模型、输入、输出、物理、生态、MPI/OpenMP 映射或运行中任务 `118414346`。
- 此时 Stage-67 进度快照：任务仍在 `j01r2n[04-07]` 运行；Grid 02 至少到达第 990/12960 步。尚无完整结果，未删除输出。

### Stage 67b - 最终输入源码包修正准备就绪，未执行

- 日期：2026-08-02 +0800。本地文件 `C:\Users\Fu Jiake\Documents\MCC\决赛\04_提交准备\O33_交付清单_20260802\{SOURCE_PACKAGE_STATUS.md,package_o33_source_v4_full.sh}`；SHA-256 `165b978c...e5702` 与 `c91bfce0...32b7d`；远程脚本 `/public/home/fujiake/fjk/delivery/o33_20260802/package_o33_source_v4_full.sh` 匹配且通过 `bash -n`。
- 发现：v3 归档完整性与构建关卡通过，但其归档 `ocean_SCS_Dongsha60_bio15.in` 是允许的诊断 `NTIMES=144,720`，因此 v3 不得直接提交。Stage-67 使用单独验证的完整输入 `a3e8a5db...79a8`，`2592,12960`。
- 准备变更：Stage-67 完成后，将 v3 解压到新保留私有暂存树，仅用精确完整输入替换该参数文件，创建 v4，验证 gzip/TOC/排除/关键哈希。因 `.in` 仅运行时，此打包修正不改变编译二进制，本身不需要另一次构建或模型运行。
- 结果/状态：脚本已准备并通过语法检查，但计时模型运行期间刻意不执行，避免共享文件系统 I/O 干扰。Stage-67 仍 RUNNING，至少到达 Grid 02 第 2880/12960 步。未删除输出或暂存目录。

## Stage 68 - 组织者优化范围澄清记录

- 日期：2026-08-02。路径：`C:\Users\Fu Jiake\Documents\MCC\决赛\01_赛题与规则\组委会优化边界确认_20260802.md`；`analysis/organizer_scope_clarification_20260802/{01_read_summary.md,02_profiling.md,03_validity_check.md}`；交接引用位于 `决赛\03_交接Skill\skill-packages\mcc26-roms-cosine-handoff\references\`。
- 优化内容：无。本阶段记录组织者的九项实现边界答复；它不改变任何 ROMS 源码、构建选项、二进制、参数、输入、运行中任务或输出。
- 结果：第 1、3、4、5、6、7、8、9 项允许。第 2 项浮点执行顺序接受仍待定。第 5 项仅在双向嵌套未改为单向时允许。
- 解释：允许类别涵盖循环/OpenMP、MPI、经证实的死工作移除、嵌套通信、内存/布局、编译器与 I/O 方法。改变归约、累加顺序、FMA/重关联或精度的候选保持 `FP_ORDER_COMPLIANCE_PENDING`。第 9 项要求完整 `2592/12960`、`vali.py`、未变模型/离散化语义与组织者源码审查；仅验证不足。
- 三项结果：第 3 项验证第 1、2 项。未生成模型输出，删除不适用，既有输出未触碰。
- 交接同步：主工作区包、`BN决赛` 镜像与已安装 `C:\Users\Fu Jiake\.codex\skills\mcc26-roms-cosine-handoff` 包已同步。完整安装包相对文件/SHA-256 比较报告 `SKILL_DIFF_COUNT=0`；规则记录、三项分析与主日志镜像到 `BN决赛` 无哈希差异。

## Stage 69 - O33 最佳剖析来源审查

- 日期：2026-08-02。路径：`analysis/o33_profile_provenance_review_20260802/{01_read_summary.md,02_profiling.md,03_validity_check.md}`；可审计原始日志 `analysis/teammate_o33_sync_review_20260801/source_evidence/evidence/run_O33_final3day_20260801_110155_J118346383.txt`；提取脚本/文件 `sub_final_3day.sh` 与 `g02_hotspot_final3day_118346383.txt`。
- 优化内容：无。只读归属审查；未创建源码、构建、任务、校验器或输出。
- 结果：最快已验证 O33 计时为 `118307015=2129.853 s`，但其完整原始剖析未本地保留。报告的热点表可直接从同 O33 完整任务 `118346383=2142.793 s` 审计，并由 `118405320=2136.310 s` 独立复现。
- 推导：ROMS `PROFILE` 计时器跨 64 个 rank 累积 rank CPU 秒。打印占比使用 rank-CPU 聚合分母，例如 `24392.018/179144.331=13.6158%`；shell `time real` 是评分时间。热点文件是 `rg` 摘录，不是统计估计。
- 三项结果：第 3 项验证第 1、2 项。未生成输出，删除不适用，所有既有输出未触碰。
- 交接同步：工作区与 `BN决赛` 分析/日志镜像报告 `BN_DIFF_COUNT=0`；刷新 progress 与 evidence index 后完整已安装 Skill 比较报告 `SKILL_DIFF_COUNT=0`。

## Stage 70 - 干净源码完整结果关闭；VTune 热点准备

- 日期：2026-08-02。Stage-67 分析 `analysis/o33_clean_full_validate_118414346/`；保留结果 `/public/home/fujiake/fjk/mcc_runs/118414346_o33_clean_full_validate_64x2`；VTune 脚本 `experiments/o33_vtune_hotspots_20260802/run_o33_vtune_hotspots.slurm`。
- Stage-67 结果：完整干净源码运行完成 `2592/12960`，`ROMS/TOMS: DONE`，`real=2179.403 s`，16 个 NetCDF/8.5 GiB，官方 26/26 通过。顶层 `FAILED 1:0` 是乱码成功行 `grep` 造成的包装器假失败。干净版比不可变 O33 复现慢 `2.017%`，并保留约 21% 的 GLS 上升。
- VTune 准备：在 `/public/home/fujiake/intel/oneapi/vtune/2026.3/bin64/vtune` 发现 VTune 2026.3.0。准备一次不可变 O33 `hotspots` 软件采样诊断，144/720，四节点，64 MPI × 2 OpenMP，8x8/8x8，无 NetCDF，私有结果根目录与 32 MB/rank 上限。
- 本条目未提交 VTune 任务。既有队列任务 `118416917` 仅观察，未触碰。可用 `/public` 空间 34 GiB；Stage-67 输出保留，未删除。

## Stage 71 - VTune hotspots 诊断提交

- 日期：2026-08-02。本地脚本 `experiments/o33_vtune_hotspots_20260802/run_o33_vtune_hotspots.slurm`；远程私有脚本根目录 `/public/home/fujiake/fjk/agent_tmp/isolated/scripts/o33_vtune_hotspots_20260802`；预期结果 `/public/home/fujiake/fjk/vtune_runs/118418627_o33_hotspots_64x2`。
- 内容：不可变 O33 二进制 `5f1a137e...fcb9`；合法诊断 `144/720`；四节点，64 MPI × 2 OpenMP，8x8/8x8；VTune 2026.3 `hotspots` 软件采样；关闭堆栈；32 MB/rank 数据上限；预期零 NetCDF。
- 预检：本地/远程脚本 SHA `5aba743527c2b596caea76cc1d9c3b95475c34a020996ef3e57974f90f8a828e`；提交包装器 SHA `e51c2caeed0a17d52a961cbc86d0fb387293a44e3f779417893bd806b2b1f507`；远程 `bash -n` 通过；`/public` 可用 34 GiB。
- 任务 `118418627` 以依赖 `afterany:118418526` 提交，避免与刚观察到的当前四节点任务重叠。尚无计时、VTune 数据、模型完成或剖析结论。
- Stage-72 关闭（2026-08-03）：模型完成其诊断范围，VTune 收集返回 `collect_rc=0`；随后的逐节点报告证明数据可读。Slurm `1:0` 源于 harness 查询不存在的聚合 `result`，而实际数据位于 `result.j05r2n11` 至 `result.j05r2n14`。`analysis/o33_vtune_hotspots_118418627/` 现存在三项有效分析；原始根目录 473 MiB 保留，不重跑、不删除。
- Stage-73 PLAN（2026-08-03）：分析 `analysis/plan_after_vtune_hygon_20260803/{01_read_summary.md,02_profiling.md,03_validity_check.md}` 有效。Hygon C86 排除 Intel VTune 硬件事件分析；P0 节点报告比较、P1 perf 能力、P2/P3 静态 pow/OpenMP 审计是唯一授权的下一步证据路径。未发生源码/构建/任务/输入/输出变更或删除。
- Stage-73 同步：工作区、已安装与 BN 镜像交接引用刷新；交接前要求包 SHA 比较。
- Stage-74 P0（2026-08-03）：`analysis/o33_vtune_node_compare_118418627/` 的只读四节点比较有效。主要计算函数仅变化 2.0-4.9%；`mp_exchange4d` 极差 20.7%，但与 UCX 进度反相关，不证明关键路径映射问题。映射/放置不重开；无源码/任务/输出变更或删除。
- Stage-75 P1/P2/P3（2026-08-03）：单核、无 ROMS 的 perf 能力任务 `118464271` 从 `experiments/perf_capability_20260803/run_perf_capability.slurm`（SHA `c28c9a...92463d`）提交，挂起于 `QOSMaxCpuPerUserLimit`。静态审查 `analysis/o33_pow_openmp_static_review_20260803/` 有效：GLS 变指数 pow 与分离的 OpenMP producer/exchange/consumer 区域未通过 >=2%/语义关卡。无源码编辑、模型任务、输入/输出变更或删除。
- Stage-75 同步：工作区、已安装与 BN 镜像交接引用刷新；保留挂起任务 ID，不重复提交。
- 获授权清理（2026-08-03）：只读扫描与用户明确授权后，移除 `/public/home/fujiake/fjk/mcc_runs/118414346_o33_clean_full_validate_64x2` 与仅 `/public/home/fujiake/fjk/mcc_runs/agent_k3_20260731/EXP-0006_norecvzero_gcc731_4n64_full_8x8/output`，共约 17 GiB。保留 EXP-0006 元数据/验证、不可变 O33 完整复现、VTune 原始数据、源码与全部共享/团队树。复查：`mcc_runs=8.8G`，`vtune_runs=473M`；分析 `analysis/cleanup_authorized_20260803/` 有效。
- 清理同步：工作区、已安装与 BN 镜像引用以删除/保留路径与已完成但未读的 perf 任务 `118464271` 更新。
- Stage-76 perf 能力分析（2026-08-03）：`analysis/perf_capability_118464271/` 有效。任务 `118464271` 在 Hygon C86 上完成 `0:0`；用户空间 cycles/instructions/branches/branch-misses 可重复，但 cache reference/miss 事件为零，无法支持内存/缓存声明。`PERF_RC=124` 是刻意的两秒超时。未证明 ROMS 瓶颈、源码候选或收益；原始审计保留。
- Stage-76 同步：工作区、已安装与 BN 镜像交接引用以受限 perf 证据边界刷新。
- Stage-77 剖析关闭（2026-08-03）：本地三项结论 `analysis/profiling_closure_20260803/{01_read_summary.md,02_profiling.md,03_validity_check.md}`。未改变源码、构建、运行时、输入、模型任务或输出。Stage-72 软件采样数据仅对函数归属有用；Hygon C86 阻断 VTune 硬件事件分析。Stage-76 `perf` 确认用户空间 cycles/instructions/branches，但 cache-reference/cache-miss 事件为零，因此不允许内存/带宽结论。计划中的四 rank ROMS perf 运行有意不提交：它不能建立全局 MPI 关键路径，且 Stage-74 已否决把节点本地 halo 变化变成映射声明。决策：剖析关闭；保留不可变 O33 64 MPI × 2 OpenMP/8x8 完整结果 `118405320`（2136.310 s，官方 26/26 通过）为唯一实测有效父级。未创建或删除输出。
- Stage-77 交接同步（2026-08-03）：刷新工作区 Skill 引用 `progress.md`、`plan.md`、`evidence-index.md`；将三项关闭分析与本日志镜像到 `BN决赛`；同步已安装 `C:\Users\Fu Jiake\.codex\skills\mcc26-roms-cosine-handoff` 引用。三个刷新后的已安装/工作区引用文件 SHA-256 全部匹配。
- Stage-78 当前状态/计划交接（2026-08-03）：创建 `CURRENT_STATUS_AND_PLAN_20260803.md` 与 `analysis/current_status_plan_20260803/{01_read_summary.md,02_profiling.md,03_validity_check.md}` 有效三项文档。内容记录保留的 O33 64 MPI × 2 OpenMP/8x8 完整父级 `118405320`（2136.310 s，官方 26/26 通过）、已测诊断关闭、剖析器限制与严格重开关卡。未改变源码、编译器、MPI/OMP 运行时、输入、任务或输出；删除不适用。下一步工作是交付/源码审查来源，除非证明新的精确合法 >=2% 机制。
- Stage-78 同步（2026-08-03）：将条目文档、三项分析、主日志与刷新 Skill 引用复制到 `BN决赛` 镜像。已安装 Skill 引用 SHA-256 检查全部通过：`progress.md=True`，`plan.md=True`，`evidence-index.md=True`。
- Stage-79 组织者浮点顺序澄清（2026-08-03）：记录 `决赛/01_赛题与规则/组委会浮点与等价优化澄清_20260803.md`，有效三项分析 `analysis/organizer_fp_order_clarification_20260803/`。组织者确认不要求逐位相等：当物理公式/算法不变且官方 RMSE 通过时，常规优化与数学等价实现变更可改变浮点执行顺序。这取代 `FP_ORDER_COMPLIANCE_PENDING`；它本身不证明加速，也不重开因独立性能/依赖证据而被否决的方向。未发生源码/构建/任务/输出/删除。
- Stage-79 同步（2026-08-03）：跨已安装、工作区与 `BN决赛` Skill 副本同步 `rules.md`、`progress.md`、`plan.md`、`evidence-index.md`；将规则记录、分析、当前交接文档与主日志镜像到 `BN决赛`。
- Stage-80 组织者计算机优化边界（2026-08-03）：将组织者关于冻结物理/气象算法与可调整计算机侧实现算法的区分追加到 `决赛/01_赛题与规则/组委会浮点与等价优化澄清_20260803.md`；有效三项记录 `analysis/organizer_computer_optimization_boundary_20260803/`。在物理/离散化与双向嵌套语义不变且满足完整 RMSE/源码审查关卡的前提下，MPI 通信组织、OpenMP、循环、数据/缓冲区布局、编译器/向量化与 I/O 内部均在范围内。未发生模型/源码/任务/输出变更或删除。
- Stage-80 同步（2026-08-03）：将规则扩展、当前计划、主日志与三项分析镜像到 `BN决赛`；已安装/工作区/BN Skill 的 `rules.md`、`progress.md`、`plan.md`、`evidence-index.md` SHA-256 检查通过。
- Stage-81 文档条目刷新（2026-08-03）：更新 `决赛/README.md`，直接链接到当前 O33 状态/计划、剖析关闭与组织者浮点顺序/等价优化澄清。仅文档变更；无源码、任务、输出或删除。
- 交接同步：刷新工作区、已安装与 BN 镜像的 `progress.md`、`plan.md`、`evidence-index.md`；最终相对路径/SHA-256 比较记录为 Stage-72 完成关卡。
- Stage-67 8.5-GiB 输出与全部更早结果保留；未删除。
- 监控快照：任务 `118418627` 保持 `PENDING (Dependency)`，任务 `118418526` 在 `j01r2n[12-15]` 运行；因此剖析器尚未启动，不声称任何热点。
- 交接同步：Stage-67 分析、Stage-71 脚本、progress/plan/evidence 引用与本日志镜像到 `BN决赛`；已安装与工作区交接包按相对路径与 SHA-256 比较，`SKILL_DIFF_COUNT=0`。

## Stage 82 - O33 v4 完整输入源码包完成

- 日期：2026-08-03 +0800。本地/远程脚本 `04_提交准备/O33_交付清单_20260802/package_o33_source_v4_full.sh`；SHA-256 `18288668cf4a2ad83e1e4fcfaad450afbf7299d0985012cce6dc014f0484734e`。
- 内容：仅交付/来源。在计时模型关闭后执行 Stage-67b 准备的打包：解压 v3 归档，仅用验证的完整评分输入 `a3e8a5db...79a8` 替换归档 `ROMS/External/ocean_SCS_Dongsha60_bio15.in`，重新打包为 v4，通过 gzip/TOC/排除/哈希关卡。
- 首次运行（标签 `manual_20260803_165751`）以 `excluded_count=2` 未过排除关卡：v3 运送了旧示例项目 `Projects/bye24/`，内含陈旧预构建 `oceanM` 二进制（8,072,088 B）与一个 `Build` 脚本。这两项违反声明的不含源码归档二进制政策；关卡本身未放宽。
- 修复：脚本现在在 tar 时精确排除这两项旧条目。第二次运行（标签 `manual_20260803_170424`）完成 `PACKAGE_COMPLETE`。
- 结果：`/public/home/fujiake/fjk/delivery/o33_20260802/ROMS_CoSiNE15_O33_source_20260802_v4_full.tar.gz` SHA-256 `b0e146e0f20abeef4bb3335761155e820bd829468614734aab604427ba28da6c`；8828 项；`gzip -t` 正常；`excluded_count=0`；归档参数文件 SHA 与完整输入一致；NTIMES=2592,12960；NtileI/J=8 8。清单 `v4.manifest.txt` 记录 v3/输入哈希、暂存路径与关键文件哈希。
- 来源：v4 除仅运行时 `.in` 替换与两项陈旧旧条目移除外与 v3 相同；编译二进制不受影响，因此无需仅为此打包而重建或重跑。v3 标记为 `SUPERSEDED`；失败的首次尝试保留为 `ROMS_CoSiNE15_O33_source_20260802_v4_full.tar.gz.gatefail_20260803_165757` 及其内容清单。暂存目录 `package_stage_v4_manual_20260803_170424` 保留。
- 无模型、源码（活动树）、编译器、运行时、输入树、任务或评分输出变更；未删除模型输出（一个失败运行暂存目录及其进行中 tar 在私有交付根目录内作为关卡证据重命名/移除）。
- 队列观察：队友任务 `118484948/118484951/118484955`（`nan_*`）与 `118483148` 仅观察，未触碰。

## Stage 83 - 交付完成：可移植脚本、记录、PPT、平台复查

- 日期：2026-08-03 +0800。仅交付阶段；未改变源码、二进制、输入、任务或模型输出。
- 可移植脚本（无个人绝对路径；本地/远程 SHA-256 匹配已验证）：
  - `04_提交准备/O33_交付清单_20260802/build_from_archive.slurm` SHA `9c059e57...8af85`：从 v4 归档的干净构建关卡；顶层 `ARCHIVE`/`BUILD_ROOT`；验证归档/makefile/Linux-ifort.mk/coll_rules 哈希，确认归档无二进制，报告 `bitwise_match` 或 `BINARY_DIFF_REQUIRES_FULL_VALIDATION`。
  - `04_提交准备/O33_交付清单_20260802/run_full_validate_portable.slurm` SHA `d864c079...40b7f`：完整 2592/12960 运行 + 官方 26/26 关卡；顶层 `MODEL_ROOT`/`FULL_INPUT`/`INPUTFILES`/`VALIDATOR`/`VAL_WRAPPER`；保留已验证 64-rank CCX rankfile、HCOLL 关闭动态规则 mpirun 与校验器包装器。
  - 两者均上传到 `/public/home/fujiake/fjk/delivery/o33_20260802/`；`bash -n` 通过；两个脚本内均无 `fujiake`/个人路径字符串。
- 委员会格式记录：`OPTIMIZATION_RECORD_提交版.md`（基线、最终配置、测得优化、关闭方向、可复现性、合规、交付物）。
- 技术报告 PPT：`技术报告_O33_20260803.pptx`（8 页：封面、任务/基线、最终配置、优化、带截图占位的最终结果、关闭方向、合规、交付物）。
- 平台复查（2026-08-03）：队列仅含队友任务 `118486085`（未触碰）；`/public` 可用 18P；官方 `vali.py` 存在，SHA `97230e0b...878a`；conda 环境存在；共享 Inputfiles `SCS/` 与 `Dongsha60/` 存在；必需模块（`compiler/intel/2017.5.239`、`mpi/hpcx/2.7.4/intel-2017.5.239`、`mathlib/netcdf/4.4.1/intel`、`mathlib/hdf5/1.8.20/intel`）全部可用。
- 文档更新：BUILD.md（归档仅源码；构建关卡现引用可移植脚本）、RUN_AND_VALIDATE.md（可移植脚本变量）、README/checklist（v4 完成）、EVIDENCE_MANIFEST.md（v4 + 哈希）。
- 剩余仅现场人工步骤：设置五个运行时变量，sbatch 构建再运行，把 `time real` 与 26/26 截图插入 PPT，验证 PPT 自动播放。
- 未创建或删除模型输出；队友树/任务未触碰。

## Stage 84 - vdiff_invdz 候选构建 + ABBA 提交 + 配额回收

- 日期：2026-08-03 +0800。候选 `o33_vdiff_invdz_20260803`：在 `ROMS/Nonlinear/pre_step3d.F` 与 `step3d_t.F` 中把 `1.0_r8/(z_r(i,j,k+1)-z_r(i,j,k))` 提出 `itrc` tracer 循环；逐位相同算术，无 FMA/重关联。
- 静态审查（三项有效通过）：`analysis/vertical_diff_invdz_review_20260803/{01_read_summary.md,02_profiling.md,03_validity_check.md}`；候选源码 SHA `pre_step3d.F=71626b5f...2270`、`step3d_t.F=11a0c4a1...60e`。
- 构建于 18:23 +0800 完成（计算节点 `srun` 路径，4 节点/128 CPU 任务根目录 `118492146` 是后来的 harness 运行；构建日志 `agent_tmp/logs/vdiff_invdz_20260803/build.log`、`build_metadata.txt`）。
- 候选二进制 `oceanM.O33_vdiff_invdz` SHA-256 `9d1295e7380be4359d859bfab9824c14cf8c83b7e0646c188f80ab447bff0323`；不同于不可变父级 `5f1a137e...fcb9`；对象 `pre_step3d.o=0fdd4a22...006`、`step3d_t.o=8e1b405e...601`；补丁日志 `pre_step3d.patch`/`step3d_t.patch`；源码树 diff 显示恰好两个文件不同。
- 首次 ABBA 提交 `118492146`（18:27）在模型前 harness 磁盘关卡失败：`/public/home/fujiake` 配额 100% 满（`可用不足 10 GiB：3584020 KiB`）。零模型样本；仅保留 harness.log；不属于无效优化尝试。
- 配额回收（用户授权 2026-08-03）：移除 `fjk/ROMS_CoSiNE15/Inputfiles`（9.37 GB 陈旧输入副本，内容清单与共享 `/public/home/fujiake/Inputfiles` 相同）、`fjk/ROMS_CoSiNE15/test`（0.86 GB 库存测试套件）、`fjk/ROMS_CoSiNE15/plot`（0.22 GB 库存绘图脚本）、`/public/home/fujiake/.cache`（6.5 GB 缓存）。`/public/home/fujiake` 可用从 0 升至 51.4 GiB。未删除模型输出、队友树或共享输入。
- 重新提交：`run_vdiff_invdz_abba.slurm` SHA-256 `4c133c21273888e63b2da7125cfdee3299df06a436aa4386f26c2e322f89ee49`（远程脚本与本地 `experiments/vdiff_invdz_20260803/` 相同），以 `EXPECTED_SCRIPT_SHA` 提交为 `118495850`；4 节点，64 MPI × 2 OpenMP，8x8/8x8，144/720，HCOLL 关闭，动态规则 mpirun，rankfile 16 CCX 对/节点。
- ABBA 设计：A1/B1/B2/A2，带轨迹一致性与两次-B-更快关卡；仅 >=3% 均值收益时 `PROCEED_FULL_REVIEW_REQUIRED`；低于 2% `STOP_BRANCH`。
- 状态：任务 `118495850` PENDING（`QOSMaxCpuPerUserLimit`，队友任务运行中）；尚无计时、DONE 标记或轨迹证据。预期结果根目录 `/public/home/fujiake/fjk/mcc_runs/118495850_o33_vdiff_invdz_abba_sample`。

## Stage 85 - vdiff_invdz ABBA 否决（STOP_BRANCH，-1.57%）

- 日期：2026-08-03 +0800。匹配四节点 A-B-B-A `118496066`（替换 `118495850`，后者在模型前未过 `Inputfiles` 符号链接关卡；零样本，仅 harness）。
- harness 失败根因：`build_vdiff_invdz.sh` 在 `cp -a` 后未恢复共享输入符号链接（父树无 `Inputfiles` 条目），不同于 `build_f2c_vtype.slurm` 第 47-53 行。本地与远程修正构建脚本，并用 `ln -s /public/home/fujiake/Inputfiles` 修复候选树；无需重建（二进制不受影响）。
- 结果（144/720，64 MPI × 2 OpenMP，8x8/8x8，HCOLL 关闭）：A1/A2 = 125.407/126.573 s，B1/B2 = 128.334/127.601 s；A 均值 125.990 s，B 均值 127.968 s；`gain_percent=-1.5696`；`both_B_faster=False`；`trajectory_consistent=True`（四次运行 SHA `fa498694...e44b0` 相同，逐位等价保持）。
- 剖析归因：predictor `pre_step3d` -0.7%（G01/G02）与 tracer corrector `step3d_t` -2.1/-2.9% 按预期改善，但未编辑的 GLS 退化 +21.7/+21.6%，4D halo +10.2/+6.5%，使净 wall time 转负。
- 机制假设：新的 `(IminS:ImaxS,0:N)` 暂存数组（`DC`/`invdz`）增加写分配/读写流量，在带宽受限的 Hygon C86 stencil 上排挤了 GLS 与 halo 打包消费的 `z_r`/`Akt` 流式模式；与 `pmnreuse` 失败一致（乘法复用，-1.80%）。平台无法测量缓存/带宽（Stage-76 边界），因此机制仍是负载假设；A-B-B-A wall 数据是决策依据。
- 决策 `STOP_BRANCH`：第二次实测暂存复用失败；无半天/完整运行，无官方验证。三项分析在 `analysis/vertical_diff_invdz_abba_118496066/`（三个分析文件）有效。
- 保留：`118492146`（仅 harness）、`118495850`（仅 harness）、`118496066`（完整 ABBA 样本，零 NetCDF）；未删除模型输出。Stage 84 的配额回收仍然有效（可用 51 GiB）。
- 后果：基于暂存的 `pre_step3d`/`step3d_t` 复用现为关闭路线（乘法与除法变体均已实测为负）。剩余可信路径保持交付/来源；按 Stage-77 关卡，重开性能需要精确的新 >=2% 机制。

## Stage 86 - GLS K-kl pow 恒等式静态审查（2026-08-04 补记）

- 工作日期：2026-08-03 +0800。2026-08-04 补记：分析已存在于 `analysis/gls_pow_kkl_identity_review_20260803/{01_read_summary.md,02_profiling.md,03_validity_check.md}`，但未写入 `OPTIMIZATION_LOG.md`/`progress.md` 条目。该缺口被记录而非静默关闭。
- 内容：仅静态审查。未创建源码、构建、任务、输入或输出。
- 机制：评分输入运行 K-kl 湍流（`ROMS/External/ocean_SCS_Dongsha60_bio15.in` 337-343：两个网格 `gls_p=0.0, gls_m=1.0, gls_n=1.0`），因此 `ROMS/Nonlinear/gls_corstep.F` 634-652 的运行时指数归约到 1.0/1.0/1.5。这允许 `gls**gls_exp1 -> gls`、`gls**(-gls_exp1) -> 1/gls`、`tke**(-tke_exp1) -> 1/tke`、`tke**tke_exp2 -> tke*SQRT(tke)`。
- 量化：VTune（Stage 72，任务 `118418627`，节点 `j05r2n11`）将 182.439 s CPU 归因于 `__libm_pow_e7`，约占样本 rank-CPU 总量的 6.5-7%；审查在重叠折扣前推导出 3-6% 完整运行区间。
- 该审查记录的决策：静态审查有效；授权恰好一次候选构建与一次匹配 `144/720` A-B-B-A，仅在两次-B-更快且 >=3% 均值收益时晋升，然后完整 `2592/12960` 加官方 26/26。
- 2026-08-04 状态：本流程未执行，且现与队友工作重叠（见 Stage 87）。任何构建前必须调和两个额外事实：不可变树含 `ROMS/Nonlinear/gls_corstep.F.O14.bak`，其标记读作 `[OPTIMIZATION O14] mathreuse: cache repeated ** powers (lsd v21; no OMP)`，即该谱系尝试过 pow 缓存变体并回滚；且队友 `zya` 自 2026-08-03 19:00 起一直在运行 `nopow` 家族。
- 输出生命周期：无模型输出；删除不适用。

## Stage 87 - 远程只读代码审查；get_contact2d 稀疏候选选中

- 日期：2026-08-04 +0800（远程 `login04`，`2026-08-04 10:41 +0800`）。经 SSH 别名 `MCC` 只读审查。未创建或修改远程文件，未提交任务，未触碰队友路径。本地扫描脚本：`experiments/remote_review_20260804/`。
- 已验证不可变父级：`oceanM` SHA-256 `5f1a137e...cfcb9`；`nesting.F` `9d8434c7...795c`；`distribute.F` `e1de89f3...743a`；`set_contact.F` `7ea74f68...4de1`。证据剖析：`/public/home/fujiake/fjk/mcc_runs/118405320_o33_full_reproduce_64x2/logs/model.log`（完整运行，`real=2136.310 s`，26/26 通过）。
- 协调发现：队列任务 `118524098`（`o33nopowbio_halfday.sh`，`WorkDir=/public/home/fujiake/zya`，四节点，`2026-08-04T10:39:53` 启动）是队友工作，其谱系（`build_ompk_o33nopow_bio.sh`："nan O33 no-pow + bio all_land early-return + heap-O2"）与 Stage-86 GLS pow 方向重叠。仅只读观察，未触碰。队友变体矩阵（`.mcc_opt/scripts/`，v3-v26）还覆盖稀疏 zweights、fluxsum、接触批处理、halo 重叠、scatter3d 层级、sendrecv、持久通信、PGO、AVX256、栈/堆策略、NUMA/绑定与 HCOLL/UCX；其中无一覆盖 I/O、`set_avg` 或 2-D 接触组装路径。
- 从标记读取的 O33 优化清单：`[O2]` MPI_IN_PLACE 组装、`[O3]`、`[O4]` 打包 2/4 向量 Allreduce、`[O7]`/`[O20]` `get_Vweights` 跳过、`[O9]` 带节点内共享内存 communicator 的分层 Bcast、`[O10]` owner 打包 fine2coarse 加稀疏 `get_contact3d`、`[O11]` `collect_bry_fluxes`。`distribute.F` 携带 16 个标记。
- 选中的新方向：把已验证 `[O10]` 稀疏 owner 映射从 `get_contact3d`（`nesting.F` 4884-5274，稀疏块 5053-5271）移植到 `get_contact2d`（4725-4880，`mp_assemble` 在 4876）与 `get_persisted2d`（5277-5475，在 5470），后者仍通过 `mp_assemblef_2d`（`distribute.F` 1672-1790）对整个接触数组发出全 communicator `MPI_Allreduce(MPI_IN_PLACE, ..., MPI_SUM)`。调用位点：`get_contact2d` 13、`get_contact3d` 8、`get_persisted2d` 2。
- 量化池：计时器 49（`Message Passage: point data gathering`，`mod_strings.F` 81）合计 `2900.985 + 734.698 = 3635.683 s` = `178516.604 s` rank-CPU 聚合的 `2.0366%`。该池由每步 2-D 路径而非 `z_weights` 主导的运行时证据：`model.log` 第 393 行打印 `GET_VWEIGHTS (O20=O7-on-O11): dynamic vertical weights = F`，`model.log` 第 1736/1784 行打印 `ndtfast = 30, nfast = 42`，嵌套调用位于 2-D 循环内（`main3d.F` 614/661）。
- 合规：组织者第 3 项（MPI 实现）与第 5 项（双向嵌套通信，方向保留）下允许。预期逐位等价，因为 `Ac` 对全部 `4*Npoints` 条目初始化为 `Aspv=0.0_r8`（`nesting.F` 4806-4812），且每个条目恰好一个分块写入，因此 `MPI_SUM` 是 owner 选择，其值由直接传输精确复现；`-0.0` 情形记录为已知非后果异常。
- 关卡：候选处于而非高于 2% 重开阈值，且计时器池未分解为各例程。因此授权是一次候选构建加一次匹配 `144/720` A-B-B-A；晋升需要两次 B 更快、>=3% 均值收益、轨迹一致，然后完整 `2592/12960` 与官方 26/26。
- 记录实现陷阱：`get_contact2d` 在非 `ASSUMED_SHAPE` 分支声明 `Ac(Npoints,4)`，却索引 `Ac(1:4,m)`；写任何打包循环前须确认 `globaldefs.h` 中的活动分支并遵循真实 `(4,Npoints)` 访问模式。
- 同次测量的其他池并按序排名（各自单独低于关卡）：t3dmix S 曲面 `4.9332%`（与队友在 `itrc` 轴的既有 OpenMP 冲突并重复 Stage-85 暂存风险）、t3dmix 位势 `1.2569%`、`set_avg` 累加 `1.7680%`、`Writing of output data` `1.4663%`（无 `USE_NETCDF4`，master 收集串行写）、`Processing of input data` `1.6159%`。
- 三项分析：`analysis/get_contact2d_sparse_review_20260804/{01_read_summary.md,02_profiling.md,03_validity_check.md}`，全部有效。
- 输出生命周期：未创建模型输出；删除不适用；全部保留结果仍保留。

## Stage 88 - 逐规则 PLAN；剖析单位修正；识别线程余量

- 日期：2026-08-04 +0800。用户要求独立于 Stage 87 的新计划，逐项检查组织者九个允许项中的剩余空间。经 SSH 别名 `MCC` 只读：未创建或修改源码、构建、任务、输入或输出；未触碰队友路径。探针脚本：`experiments/remote_review_20260804/probe_{timing_semantics,timing_semantics2,calibrate,omp_coverage,omp_structure,profile_full,runtime_env,final_confirm,step2d_feasibility}.sh`。
- **影响所有先前阶段的单位修正。** ROMS `PROFILE` 表测量进程 CPU 时间而非 wall 时间。`ROMS/Utility/mp_routines.F` 仅 `#if defined _OPENMP` 时选择 `omp_get_wtime`；makefile 第 98 行令 `USE_OpenMP ?=` 为空，第 343 行在 `USE_MPI`+`USE_OpenMP` 时硬错误，因此 `-D_OPENMP`（仅在 `Compilers/Linux-ifort.mk` 89 的 `ifdef USE_OpenMP` 下添加）永远到不了 `CPPFLAGS`。已预处理 `Build/mp_routines.f90` 字面保留 `CALL cpu_time (wtime(1))`。换算：单线程计时器的 wall 占比 = CPU 占比 × `2789.322 / 2136.310 = 1.305676`。
- **评分运行的实测 CPU 利用率为 `65.28%`。** ROMS 聚合 `178516.604` 核秒对比 `128 x 2136.310 = 273447.68` 核秒分配。仅用启动节点 shell `time` 的独立交叉检查：`user 42638.955 s + sys 1972.130 s = 44611.085 s` 对比 `32 x 2136.310 = 68361.92` 核秒 = `65.26%`。两者一致到 `0.03` 个百分点，因此分配中的 `34.72%`（`94931` 核秒）空闲。
- 原因：`ocean_SCS_Dongsha60_bio15.in` 设置 `NtileI=8`/`NtileJ=8`，日志两个网格均打印 `tiling: 008x008`，因此每个 rank 恰有一个分块，ROMS 原生 `DO tile=first_tile,last_tile` OpenMP 循环只有一次迭代。第二个线程仅从 `[O25]` 选择性 OpenMP 设计获得工作，该设计由 `Compilers/Linux-ifort.mk` 64-68 恰好应用于五个对象（`biology.o`、`pre_step3d.o`、`step3d_t.o`、`t3dmix.o`、`gls_corstep.o`）。全树指令普查确认 `!$OMP PARALLEL DO` 工作共享仅存在于 `bio_UMAINE15.h`、`gls_corstep.F`、`pre_step3d.F`、`step3d_t.F`、`t3dmix4_s.h`。
- 线程时间拆分：解 `W1+W2 = 2136.310` 与 `W1+2*W2 = 2789.322` 得 `W2 = 653.012 s` 双线程 wall 与 `W1 = 1483.298 s` 单线程 wall，即评分 wall 时钟的 `69.4%` 期间每个 rank 的两个核之一空闲。五个 OpenMP 对象持有 `106002.304` CPU-s = 聚合的 `59.38%` = 在 `1003.274 s` wall 上每 rank `1656.286 s`，因此其实测平均加速为 `1.651`（效率 `82.5%`）。
- **新首要候选（组织者第 1 项）：** 将 `[O25]` 逐对象选择性 OpenMP 模式扩展到仍单线程的计算对象。原始池 `652.352 s`/rank = wall 的 `30.54%`。强制扣减：两网格耗时小计（`87.878%`）加消息小计（`24.144%`）合计 `112.022%`，因此至少 `12.022` 个百分点消息时间嵌套在计算计时器内；按该比例均匀应用给出 `563.13 s` = wall 的 `26.36%`。仅 3-D 子集（`step3d_uv.F` `2.562%`、`rhs3d.F` `2.456%`、`t3dmix4_geo.h` `1.641%`、`rho_eos.F` `1.599%`，加耦合/prsgrd/omega/stress）为 `231.14 s` = wall 的 `10.82%`，在约 `1.25` 或更高的实测加速下通过 2% 关卡。
- `Model 2D kernel`（`step2d_LF_AM3.h`）本身为 `24612.191` CPU-s = wall 的 `18.001%`，是最大的未并行条目，但它纯 2-D（无 `N=34` 层或 `NT=17` tracer 维度），运行 `653184` 次（`ndtfast=30, nfast=42`，`model.log` 1736/1784），被六个 `mp_exchange2d` 位点（563、691、697、859、895、2473）切开并含 `obc_flux_tile` 体积守恒归约。上行与风险均最高；明确排除出首个候选。
- 关闭再审计：关闭清单中的"广泛 OpenMP"指全局 `USE_OpenMP`，makefile 343 从架构上拒绝；Stage-75 P3 关闭了 halo 交换周围*分离的* OpenMP producer/exchange/consumer 区域（`analysis/o33_pow_openmp_static_review_20260803/`）。两者均未测试向另一对象添加 `-qopenmp`，因此该方向开放；同样，无先前结果预示它会成功。
- 合规：第 1 项允许循环/OpenMP，第 2 项的 2026-08-03 澄清移除了逐位一致作为前置条件。并行化与格点无关的外层循环不改变任何格点的算术顺序，因此只要真正的跨格点归约（`obc_volcons_mod`、全局积分）保持串行，逐位一致是预期。物理公式、网格、时间步、输出、生态与双向嵌套不受指令添加影响。
- 记录的次要开放空间，未开放：节点内共享内存 halo 交换。`ROMS/Utility/mp_exchange.F` 用普通 `mpi_isend`/`mpi_irecv` 传输每个 halo；树中唯一的 `mpi_comm_split_type(OCN_COMM_WORLD, MPI_COMM_TYPE_SHARED, ...)` 是服务 `[O9]` 的 `distribute.F` 5236。Halo 池为 `33893.466` CPU-s = wall 的 `24.79%`，每节点 16 rank（`CPUTot=32`，`Sockets=4`，`CoresPerSocket=8`）。需要先前作为整文件变更排除的 `mp_exchange.F` 重写。
- 平台清单：`/opt/hpc/software/compiler/intel` 仅含 `intel-compiler-2017.5.239`，`gcc` 目录为空，因此第 7 项无替代编译器。`/opt/hpc/software/mpi/hpcx` 含 `v2.4.0`、`v2.4.1`、`v2.5.0`、`v2.7.4`、`v2.11.0`；二进制链接 `v2.7.4`，`v2.11.0` 从未测试。
- 三项分析：`analysis/thread_headroom_rules_matrix_20260804/{01_read_summary.md,02_profiling.md,03_validity_check.md}`，全部有效。第 3 项把嵌套计时器扣减作为对第 2 项上行表的强制修正，并记录所有上行数字均为静态推算而非测量。
- 输出生命周期：未创建模型输出；删除不适用；全部保留结果仍保留。

## Stage 89 - 静态逐对象 OpenMP 审计；定义四对象候选

- 日期：2026-08-04 +0800。按用户要求在 Stage 88 之后跟进：在选候选前审计每个单线程计算对象的并行轴、完整 `PRIVATE` 列表、通信调用位点与归约。经 SSH 别名 `MCC` 只读；未创建或修改源码、构建、任务、输入或输出；未触碰队友路径。探针脚本：`experiments/omp_audit_20260804/`。
- 审计针对 `Build/*.f90`（编译器消费的 CPP 解析文件）而非 `.F`/`.h` 源码。这立即否决了 Stage-88 的两个假设。
- **修正 1 - 计时器 28 是 `hmixing`，不是 `t3dmix4_geo`。** `ROMS/Include/bye24bio15.h` 33 定义 `TS_U3ADV_SPLIT`，63-65 因此定义 `MIX_GEO_TS`，66 无条件定义 `MIX_S_TS`；两种模式都定义，但 `t3dmix.F` 45-48 先测试 `#if defined MIX_S_TS` 再 `#elif defined MIX_GEO_TS`，因此只包含 `t3dmix4_s.h`。`Build/t3dmix.f90` 355 行，仅含 `t3dmix4_tile`，无 `dZdx`/`dZde` 位势项，且已在 218-219 携带 `[O25]` 指令。打印在"Biharmonic mixing of tracers, geopotentials"下的时间属于 `ROMS/Nonlinear/hmixing.F` 第 86 行，它复用区域 28。`t3dmix4_geo.h` 从候选列表移除，替换为 `hmixing`；`1.641%` wall 占比不变，因为同一计时器。
- **修正 2 - `gls_prestep` 单线程且与 `gls_corstep` 共享区域 19。** `Build/gls_prestep.f90` 64 与 `Build/gls_corstep.f90` 67 均调用 `wclock_on (ng, iNLM, 19)`；仅 `gls_corstep.o` 携带 `-qopenmp`。因此 `13.8027%` GLS CPU 桶的一部分仍串行，且无新插桩无法分离其占比。
- 逐对象审计结果。所有行号引用 `Build/*.f90`：
  - `rho_eos`（wall `1.599%`）：223-344 的单个 `DO j=JstrT,JendT` 覆盖整个计算。PRIVATE 必须包含 `bulk, bulk0, bulk1, bulk2, den, den1`（全部 `(IminS:ImaxS,N(ng))`，无 `j`）、在最内层 `i` 循环内写入的 `C(0:9)` 与 13 个标量。所有 `exchange_*`/`mp_exchange*` 调用在 350-380，循环之后。无归约。每线程栈约 `86 KB`。
  - `hmixing`（wall `1.641%`）：轴为 243-278 的 `DO k=1,N(ng)` 加八个小边界块。**完全无局部数组**——PRIVATE 为四个标量。通信在 376-386，外部。无归约。
  - `step3d_uv`（wall `2.562%`）：恰好两个干净循环，234-461 的 `DO j=Jstr,Jend` 与 513-737 的 `DO j=JstrT,JendT`，被 `u3dbc_tile`/`v3dbc_tile` 与点源块分开。两个循环中的每次写入都在循环自身 `j`；唯一 off-`j` 读是 `Hz(i,j-1,k)`，`Hz` 为 `intent(in)`。全部七个局部数组（`AK, BC, CF, DC, FC` `(IminS:ImaxS,0:N)`，`Hzk, oHz` `(IminS:ImaxS,N)`）无 `j` 且为 PRIVATE。每个通信调用在 743-780，两个循环之后。无归约。每线程栈约 `104 KB`。
  - `rhs3d`（wall `2.456%`）：两个命名顶层循环，264-543 的 `K_LOOP` 与 545-672 的 `J_LOOP`，91 与 119 的计时器调用之间别无他物——无调用、无通信、无归约。`K_LOOP` 在自身 `k` 写 `ru`/`rv`，需要全部十五个 `(IminS:ImaxS,JminS:JmaxS)` 临时为 PRIVATE（约 `280 KB`/线程）；`J_LOOP` 在自身 `j` 写 `ru`、`rv`、`rufrc(i,j)`、`rvfrc(i,j)`，需要 `CF, DC, FC` 为 PRIVATE。两条指令、两个不同 PRIVATE 列表；合并会产生竞争。
  - `step2d`（wall `18.001%`）：全部 21 个临时带 `j` 维度，在 `j` 拆分下可保持 SHARED，但约六十个 `DO j` 循环被交织的 `exchange_*`/`mp_exchange2d`/`set_DUV_bc_tile`/`wetdry_tile`/`zetabc_tile` 调用切成约七个段，且 `obc_flux_tile` 持有体积守恒归约。主导 Grid-02 分块（`930` 点，`77%` 计时器）的开销模型把可达加速放在 `1.10`-`1.39`，即全程序收益 `1.41%`-`4.36%`——2% 关卡位于模型自身不确定带内。
- **相对 Stage 88 的风险重新分类。** `step3d_uv` 与 `rhs3d` 曾列为中风险，MPI 放置与归约未确认。两者均确认干净：两个计时器内部无通信、无归约。因此 `rho_eos`、`hmixing`、`step3d_uv`、`rhs3d` 四个全部与已接受的 `[O25]` 对象同级低风险，需要四个文件中六条指令加四行 `private FFLAGS += -qopenmp -no-heap-arrays` makefile 行。
- 修正上行，按对象而非均匀应用嵌套计时器扣减（`rhs3d` 不包裹通信，无需扣减）：`rho_eos`+`hmixing` = `2.797%` 扣减池，`1.651` 加速下 `1.10%`；加 `step3d_uv` = `5.008%`，`1.651` 下 `1.97%`；加 `rhs3d` = `7.464%`，`1.651` 下 `2.94%`、`1.40` 下 `2.13%`、`1.30` 下 `1.72%`。四对象组是不触碰 `step2d`（`15.539%` 扣减，`3.58%`-`6.13%`）情况下在合理加速范围内通过 2% 的最小分组。
- 同一运行还测量当前主导未知项：区域 14、28、34 与 21 单独计时，因此本分块尺寸下 ROMS 形状循环上的实测 OpenMP 加速可直接从候选自身剖析读出，取代决定 `step2d` 是否值得六十位点编辑的 `1.30`-`1.65` 推算带。
- 第 3 项记录的残余不确定性：`1.651` 是五个最热、最规则巢的平均值，对新对象是乐观端；`13.68%` 重叠扣减是全树平均，每对象约 `+/-0.3` pp 余量；Grid 02 的 `30x31` 分块由 `235x245 / 008x008` 导出而非打印；且 Intel 2017.5 在自动数组成为线程私有后可能损失部分向量化，侵蚀线程加速。
- 合规：每条提议指令并行化迭代写入不相交内存的外层循环。不改变累加顺序，不引入 `REDUCTION` 子句，不重写表达式，不移动通信，其余对象的 rank 数/分块/选项未触碰。逐位一致是预期；因每个区域严格位于通信外部，不需要 `MPI_THREAD_MULTIPLE`。
- 三项分析：`analysis/omp_object_audit_20260804/{01_read_summary.md,02_profiling.md,03_validity_check.md}`。第 3 项修正第 1 项对 `step3d_uv` 与 `rhs3d` 的风险排序，并取代第 1 项较窄的 `rho_eos`+`hmixing` 校准建议。
- 输出生命周期：未创建模型输出；删除不适用；全部保留结果仍保留。

## Stage 90 - [O34] 四对象选择性 OpenMP 构建并测量；STOP_BRANCH

- 日期：2026-08-04 +0800。执行 Stage-89 候选。构建任务 `118529296`（`BUILD_OK`；全部六条 `!$OMP PARALLEL DO` 通过 CPP 存活；`rho_eos.o`、`hmixing.o`、`step3d_uv.o`、`rhs3d.o` 中出现 `__kmpc_fork_call`），A-B-B-A 任务 `118529765` 于 `kshcexclu06`，4 节点 × 16 rank × 2 线程，`--exclusive`，匹配 `144/720` 输入。私有工作树 `agent_tmp/isolated/work/o33_omp4_20260804`；未触碰队友路径。每个输入、二进制、候选源码与校验器经 sha256 关卡进入任务。
- 记录运行环境因为它支配解释：`KMP_BLOCKTIME=0`，`OMP_PROC_BIND=close`，`OMP_PLACES=cores`，`OMP_STACKSIZE=256M`，rankfile 绑定配对物理核，HPC-X 2.7.4，`coll_hcoll_enable=0` 加既有 `coll_rules.conf`。因此空闲 OpenMP 线程睡眠且并行区外不烧 CPU，而 UCX MPI 等待忙轮询并按当前打开的 `wclock` 区域全额记账。
- **结论 `STOP_BRANCH`。** `mean_A=126.436 s`，`mean_B=125.021 s`，`gain_percent=1.1195`，`both_B_faster=False`，`trajectory_consistent=True`。四次运行产生逐字节相同的时间步轨迹（`fa498694...e44b0`），确认 Stage-89 的逐位一致预测。
- `1.12%` 表观收益是冷启动伪影。`A1=128.416 s` 对比 `A2=124.457 s`；`Reading of input data`（Grid 01）为 `183.356` 对比 `86.087` CPU-s，`data broadcast` 为 `249.180` 对比 `104.854`，合计 `+241.60` CPU-s = `3.78 s`/rank，即 `3.959 s` 差距的 `95%`。唯一有效比较是热对热：`A2=124.457 s` 对比 `B2=125.012 s`，因此 **B 慢 `0.45%`**。
- **OpenMP 本身工作了，而且工作得很好。** 用 `s = 2 / (CPU_B/CPU_A)` 对 A 中单线程、B 中双线程的计时器：`rho_eos` `122.724 -> 130.539` CPU-s 给出 `s=1.880`；`hmixing` `124.777 -> 131.569` 给出 `1.897`；`rhs3d` `186.576 -> 191.638` 给出 `1.947`；`step3d_uv` `195.547 -> 224.392` 给出 `1.743`；四者合计 `629.624 -> 678.138` 给出 `s=1.857`。这**高于**五个既有 `[O25]` 对象的 `1.651` 均值，因此 Stage-89 对线程效率的担忧无据。如实有界，`s` 位于 `1.6-1.9`。
- `s=1.857` 下的预测节省：`629.624/64 = 9.838 s`/rank 串行（wall 的 `7.90%`）降至 `5.298 s`/rank，即 `4.540 s`/rank = wall 的 `3.65%`。**其中没有一分到达 wall 时钟。**
- **它去哪了。** 总 CPU 从 `10138.0` 升至 `10598.5` CPU-s（`+4.54%`）；四个目标仅占 `+48.5`，因此未触碰区域增长 `+412.0` CPU-s = `+6.44` CPU-s/rank。增长有选择性：`GLS vertical mixing +281.4 (+20.8%)`、`3D halo +72.4 (+22.4%)`、`4D halo +52.4 (+6.0%)`、`2D halo +35.4 (+5.6%)`、`Omega +9.3 (+15.5%)`、`2D/3D coupling +7.3 (+7.4%)`、`pre_step3d +23.3 (+1.3%)`、`step3d_t +6.9 (+0.5%)`——每个都含 MPI——而纯计算区域完全不动（`step2d -0.7%`、`t3dmix4_s -0.1%`、`biology +0.5%`、压力梯度 `-0.4%`）。仅 GLS 吸收 `281.4/64/2 = 2.20 s`/rank，约节省的一半。因消息计时器部分嵌套在计算计时器内（Stage 88），GLS 与 3-D halo 上升是同一等待被计数两次，不得相加。
- **记账收尾区分两个假设。** 将 CPU 增量转成 wall（已双线程区域 `/2`，串行区域 `/1`）：未触碰双线程 `+157.4` wall-s，未触碰串行 `+202.7` wall-s。H1（`s=1.857`）将四个目标置于 `678.138/2 - 629.624 = -290.6` wall-s，预测 `+1.09 s`/rank 对比实测 `+0.555`——在 I/O 噪声内。H2（第二线程空闲，无区域加速）预测 `+5.63 s`/rank，即 `B2 = 130.1 s` 对比实测 `125.0`，被 `5 s` 否决。
- 同二进制重复的噪声校准（Grid 02）：GLS `983.523/974.689`（A）与 `1178.273/1171.033`（B）（`<1%`）；3-D halo `<2%`；`step3d_uv` `<0.2%`。A 到 B 的 `5-22%` 变化是噪声的 `10-20x`。平均线程占用 `CPU/(64*wall)` 从 `1.2727` 升至 `1.3247`。每 rank CPU 散布在 A2 中为 `2.7%`、B2 中 `2.6%`——不变，因为忙轮询使等待 rank 保持满 CPU。
- **机制。** 在本平台 64 rank × 2 线程、`8x8` 分块下，wall 时钟不由单线程 3-D 计算设定。这四个区域处于关键路径之外；路径由同步点的 rank 到达偏斜设定，而该偏斜与它们无关。排除为主要原因：OpenMP fork/join 开销（约 `10^4` 个区域，至多 `~1 s`/rank，且会记入目标计时器而非 GLS/halo）与节点内存带宽争用（目标达到 `s=1.74-1.95`，故带宽未饱和，且未触碰纯计算区域持平）。
- **未测量，现为阻断未知：** 到达偏斜的来源。候选为 rank-0 NetCDF 读取加 `mp_bcast`（`Processing of input data` Grid 02 从 `110.4` 升至 `152.5`，方向正确但该计时器嘈杂）、嵌套网格 `mp_assemble`/点收集、OS/频率抖动，以及 `8x8` 下每 rank halo 体积差异。区分它们需要尚未运行的每 rank 到达时间戳探针。
- **继续携带的方法修正。**（1）"区域占比 × 加速"上行模型对 3-D 计算区域失效——Stage 89 预测 `1.5-2.5%`，计算预测对了但交付收益为零；未来推算必须先证明该区域在关键路径上。（2）CPU 时间上升不意味着工作变慢：`cpu_time()` 中忙轮询 MPI 等待与计算不可区分，因此读区域增量前必须检查其 MPI 含量。（3）每 rank CPU 散布不是负载均衡指标。（4）A-B-B-A 的首次运行是系统性冷启动离群值；添加丢弃预热或保持 `both_B_faster` 为主要关卡——正是它抓住了这个假阳性。（5）`run_omp4_abba.slurm` 第 174 行过滤 `Corrector 3D momentum`，而日志打印 `Corrector time-step for 3D momentum`，因此四个目标之一在 `profile_extract.txt` 缺失，需从 `model.log` 恢复；下个 harness 修复正则。
- 合规：完全合规。仅添加 `!$OMP PARALLEL DO` 指令，四个对象获得 `-qopenmp -no-heap-arrays`；未触碰表达式、循环顺序、归约、通信、输入参数或输出，逐位一致经实证确认。分支仅因性能被否决。
- 处置：**[O34] 未合并。** 四个 `.F` 编辑与四行 makefile 正确，且以哈希保留在分析记录中，因此若同步限制被移除可复活。这是 Stage 85 后连续第二次 `STOP_BRANCH`，触发 `plan.md` 定义的强制研究周期（Stages 52、57）。下一步动作以先测量 rank 到达偏斜为前提，之后才选择任何候选。
- 三项分析：`analysis/omp4_selective_openmp_118529765/{01_read_summary.md,02_profiling.md,03_validity_check.md}`，原始证据位于 `raw/`，含从四个 `model.log` 恢复的 `profile_full.txt`。
- 输出生命周期：运行目录 `/public/home/fujiake/fjk/mcc_runs/118529765_o33_omp4_abba_sample` 保留，`1.4 MB`，零 NetCDF 写入（四次运行 `nc_count=0`）。候选构建树按下面记录的清理决策保留。

## Stage 91 - 暂停；进度同步；交接 Skill 准备

- 日期：2026-08-04（本地）。用户要求停止、进度同步与交接 Skill 就绪。未启动源码/构建/任务/校验器工作；无远程删除；队友树未触碰。
- 进度对齐：权威 Skill 状态为 Stage 90（`[O34]` STOP_BRANCH；下一关卡 = rank 到达偏斜探针）。工作区包曾落后于已安装（progress/plan/evidence-index 在 Stage 89）；已安装树作为事实来源复制进工作区包与 BN 镜像。同步后比较：`SKILL_DIFF_COUNT=0`，`FILE_COUNT=10`。
- 写入/刷新人工条目文档：
  - `CURRENT_STATUS_AND_PLAN_20260804.md`（暂停交接条目；取代 20260803 状态文档作为恢复尖端）
  - `SESSION_MEMORY.md` 为 2026-08-04 暂停恢复重写
- 同步 Skill 位置：
  - 工作区：`决赛/03_交接Skill/skill-packages/mcc26-roms-cosine-handoff`
  - 已安装：`C:\Users\Fu Jiake\.codex\skills\mcc26-roms-cosine-handoff`
  - BN 镜像：`BN决赛/决赛/03_交接Skill/skill-packages/mcc26-roms-cosine-handoff`
- 暂停期间观察远程队列（只读，不打扰）：任务 `118533083` `ntile_abba_ompk.sh`，`WorkDir=/public/home/fujiake/zya`。检查时磁盘快照：home 约 71%/可用 89G；`/public` 可用约 18P——恢复时必须复查。
- 活动计划仍为 Stage-90：不重开 3-D 选择性 OpenMP；不在失效上行模型上启动 `step2d` OpenMP；任何新候选前必须做偏斜探针。Stage-87 `get_contact2d` 稀疏仅保留为回退。
- 输出生命周期：本阶段未产生模型输出；删除不适用。保留的 Stage-90 运行目录与构建树仍保留。

## Stage 92 - 偏斜探针三项设计关卡批准；二进制在位验证

- 日期：2026-08-04（Stage-91 暂停后恢复）。执行 Stage-90 关卡：rank 到达偏斜探针设计通过三项分析（`analysis/skew_probe_design_20260804/{01_read_summary.md,02_profiling.md,03_validity_check.md}`，全部有效）。未提交新构建/任务；无模型输出；无删除。
- 设计 `[P1]`：单文件插桩 `ROMS/Utility/timers.F`——在 `wclock_off` 中既有 `#ifdef DISTRIBUTE` 收尾块内（每网格运行结束时、`mp_reduce` SUM 之前），每个 rank 将其各区域 `Csum` 合计 dump 到 `skewprobe/rankNNNN.txt`。零物理/通信变更；轨迹关卡 `fa498694...e44b0` 强制逐位中立。区分（a）持久 rank 可归因偏斜、（b）随机抖动、（c）经等待池（`Message Passage: 2D/3D/4D halo exchanges`、`point data gathering`）与启动池（`Reading/Processing of input data`、`data broadcast`、`data scattering`）的每 rank 合计产生的 rank-0 I/O 集中，3 次重复（P1/P2/P3）做跨运行 Pearson 持久性，外加 8x8 分块空间图与逐节点聚合。GLS 3-D halo 入口处的字面到达时间戳被刻意推迟到分阶段 `[P2]` 回退（在测得同步点有扰动风险）；未启动。
- 恢复时发现：探针的两个构建任务在暂停交接前运行并均结束于 harness 关卡——`118532196` FATAL"预期恰好一个不同的 ROMS/ 文件"与 `118532486` FATAL"二进制中缺探针字符串"——由同一树上的两个重叠构建造成（与 Allgatherv 重复构建 `118206252` 相同的平台模式）。harness 工件，非候选结果；无模型样本、无计时；不计为无效尝试。
- 已定型树干净，探针二进制在位验证（只读）：`oceanM.O33_skew` = `3322eeaf85be7ac7cf5caaa46660d87fe0b030abfa2164855668d1b5a0c17aa7`（6,916,600 B）；`strings` 显示 `skewprobe/rank`（精确 grep rc=0）与 `$SKEWFILE` 符号；mtime 链 `timers.f90` 14:07:50 → `timers.o` 14:07:50（29,056 B 对比父级 24,552 B）→ `libUTIL.a` 14:07:51 → `oceanM` 14:07:51；`source_tree.diff` = 1 行（仅 timers.F）；八个抽查未触碰对象与父级逐字节一致。`build_metadata.txt` 从未写入（脚本在元数据块前因 FATAL 退出）；来源只读重建。
- 继续携带的方法（Pass 2）：每 rank 值是进程 CPU 秒（`my_wtime` = `cpu_time`，makefile 令 `USE_OpenMP` 为空）；忙轮询等待池中 1 CPU-s ≈ 1 wall-s；等待最少的 rank 是掉队者（最后到达）；P1 是冷启动离群值——持久性用 P2–P3 作主配对（corr ≥ 0.7 持久，≤ 0.3 抖动）。
- 运行 harness（已部署 = 本地草稿，SHA `e8c4f269...9c7ab`）：一个诊断 `144/720` 任务，4 节点，64 MPI × 2 OpenMP，spread_numa16_ccx rankfile，HCOLL 关闭，KMP_BLOCKTIME=0，P1/P2/P3 × `time mpirun`，每运行关卡：DONE、`real`、轨迹 SHA、步骤范围头、恰好 64 个探针文件、`nc_count=0`；磁盘关卡 ≥10 GiB。提交时注入环境：`EXPECTED_SCRIPT_SHA=e8c4f269bf81645427299617f5e738d29ccf42328e1b8cb35661700058e9c7ab`、`EXPECTED_PROBE_SHA=3322eeaf85be7ac7cf5caaa46660d87fe0b030abfa2164855668d1b5a0c17aa7`。
- `analyze_skew.py` 在合成数据上端到端演练（五个节全部运行）；真实区域名对照保留的 Stage-90 `A2/model.log` 验证（`Message Passage: ...` 前缀匹配脚本过滤器）。
- 协调快照：队列 = 仅队友 `118533083`（`zya`，运行中，j01r2n[08-11]），未触碰；`/public` 71%/可用 18P；home 配额复查待提交时进行。输出生命周期：未创建；候选树 `o33_skew_20260804` 保留（运行 harness 需要它）。下一步：用户确认后提交该单个诊断任务；探针结果前无优化候选。

## Stage 93 - 偏斜探针运行 `118537688` 完成；偏斜持久且结构性（情形 a）

- 日期：2026-08-04。执行 Stage-92 批准的 `[P1]` 探针。任务 `118537688` 于 `j01r2n[08-11]`，4 节点，64 MPI × 2 OpenMP，`144/720`，8x8/8x8，HCOLL 关闭；探针二进制 `3322eeaf...`（哈希关卡）；运行脚本 `e8c4f269...`；提交前恢复 Inputfiles 符号链接（复制树缺失——Stage-85 模式）。三次运行 P1/P2/P3：`real` 133.595 / 133.957 / 127.979 s，均 rc=0 DONE，轨迹 `fa498694...e44b0` 相同（探针逐位中立），每运行 64 个探针文件，nc=0。
- **结论：偏斜为（a）持久且 rank 可归因、结构性；非抖动（b）；非 rank-0 I/O（c）。** 跨运行相关 TOTAL 0.95；细网格池 0.81–0.99（4D halo 0.989）；启动池小而对称（输入读取 2.1，广播 3.2–3.8 CPU-s/rank 对比 halo 池 6–12）。
- 量级：每 rank TOTAL CPU 散布 9.65 CPU-s（5.7%）P1 → 6.07 CPU-s（3.7%）P3（热）；主导池 G2 4D halo 均值 11.6，散布 6.1 CPU-s（52.6%，稳定）。忙轮询等待 ≈ wall → 保守完整运行上限 ≈ 3–4%（2136 s 的 ≈65–85 s）；部分（西列）移除 ≈ 2–3%。自 Stage 90 以来首个实测 >=2% 机制。
- 结构：G2/G1 4D halo——西分块列 `Itile=0` 等待少 20–38%（62–92% 对比 103–115%）；G2 2D halo + G1 点收集——内部中心块（Jtile 3–6 × Itile 3–5，r36/r44/r45 族）等待少 25–50%；G2 pre_step3d 内部中心 +4%；step3d_t 平坦；节点维度 ±6%（与 Stage-53 映射关闭一致）。掉队者身份随池而异 → 负载结构驱动，非单慢 rank/节点。
- 按计划方向：细网格的**分解/分块宽高比**（两网格可用不同朝向且乘积相等）。节点映射与 rank-0 I/O 降级；重叠路线（b）被持久性否决。迟到*原因*（计算对嵌套边界供应）未证明——若需要为分块选择服务，`[P2]` 到达时间戳探针是设计回退。
- 关卡状态：探针完成且有效（`analysis/o33_skew_probe_118537688/`，三项通过有效）。任何 A-B-B-A 前强制研究周期（Stages 52/57 触发：85/90 连续 STOP_BRANCH）仍适用：下一阶段是带自身三项分析的静态分块枚举/设计（合法 64 因子分块、235x245/359x326 的每分块宽度/halo 体积、偏斜重分布模型）。本阶段未授权构建/运行/提交。
- 输出生命周期：结果根目录 `/public/home/fujiake/fjk/mcc_runs/118537688_o33_skew_probe` 保留（小）；含探针二进制的候选树保留；无删除；队友队列空/未触碰。

## Stage 94 - 分块设计：分解方向被算术关闭

- 日期：2026-08-04。Stage-93 探针后强制研究周期交付物（情形-a 分支：分解/分块或映射）。三项分析在 `analysis/tiling_design_20260804/` 有效。无构建/运行/提交。
- 网格事实（来自诊断输入 `05ceb746...`）：粗网格 `Lm=359, Mm=326`；细网格 `Lm=235, Mm=245`；NtileI/J = 8 8。
- 周长模型 `V = 2·(NtileI−1)·mean(Mtile) + 2·(NtileJ−1)·mean(Ltile)` 覆盖全部七个 64 因子分块：8x8 是两个网格的精确全局最小；16x4 → 2.15x/2.29x，4x16 → 2.35x/2.21x，32x2 → 8.45x/9.06x，2x32 → 9.30x/8.69x，64x1/1x64 → 34–38x（粗/细）。
- 用探针池均值做 wall 换算（忙轮询 ≈ wall）：细网格 16x4 → +31 CPU-s/rank ≈ 128 s 诊断的 +18%；粗网格 4x16 → +11 CPU-s/rank ≈ +8.5%。偏斜预算 ≤6 CPU-s（3.7%）。halo 负载增量 ≥ 整个偏斜预算的 5 倍；推算为下限（省略每调用/打包成本）。
- 结论：分解/分块关闭（任何 A-B-B-A 都保证退化）；rank 到节点映射保持关闭（Stage 53 + 探针节点维度 ±6%）。Stage-58 注记被量化并扩展。
- 剩余偏斜分解：（1）G2 2-D halo 中心块掉队者（散布 3.75–5.0 CPU-s，atoll step2d wet/dry 负载；无合法机制；归因需 `[P2]`——分解下限）；（2）G1 点收集中心块掉队者（散布 2.37 CPU-s）= Stage-87 `get_contact2d` 稀疏目标（timer-49 池 rank-CPU 2.04% ≈ wall 上限 2.7%，逐位安全 owner 映射移植）——现受探针掉队者证据支持；唯一剩余合法 ≥2% 边缘路线。
- 给用户的建议：不要为分块花一个 A-B-B-A；若继续性能工作，在其自身单 A-B-B-A 关卡下复活 Stage-87 get_contact2d 候选（两次 B 更快；<2% 否决；≥3% + 剖析支持 → 完整运行）；否则交付保持活动轨道（O33 26/26，Stage 83 的现场人工步骤）。
- 输出生命周期：未创建；探针根目录 + 候选树保留；队列未触碰。

## Stage 95 - [O34b] get_contact2d/get_persisted2d 稀疏 A-B-B-A：STOP_BRANCH（-2.29%）

- 日期：2026-08-04。执行复活的 Stage-87 候选（用户决策）：把已验证 [O10] 3-D 路径的稀疏 owner 映射移植进 get_contact2d + get_persisted2d（仅 nesting.F，2 个稀疏块，`#ifdef/#endif` 291/291 平衡）。候选源码 `9bf9c9cc...`；构建：r1 在 CPP 失败（`#endif without #if`，已修复），r2/r3 逐字节相同二进制 `oceanM.O33_g2d` = `f3d318cd...`（strings 关卡因陈旧 FS 读取两次闪失——字符串确认存在，3 处匹配；仅重建 nesting.o，4 个抽查对象与父级逐字节一致；手工写构建记录）。构建中恢复 Inputfiles 符号链接（Stage-85 模式）。构建经 `srun` 绕行运行（sbatch 0:53 模式）。
- A-B-B-A `118541006` 于 j05r2n[04-07]，4n/64×2，144/720，8x8/8x8，HCOLL 关闭：W0=127.982（丢弃预热），A1=126.011，A2=125.943，B1=129.547，B2=128.173。mean_A=125.977，mean_B=128.860，gain=−2.2888%，both_B_faster=False，轨迹 `fa498694...e44b0` 在全部五次运行中相同 → 候选逐位等价。
- 机制记账：目标池按设计下降（点数据收集 G1 均值 138.07→107.26 CPU-s，−22.3%；G1+G2 −16.6%），但总 rank-CPU 从 10284.5 升至 10569.2（+284.7，+2.77%）——退化是稀疏路径在 2-D 记录大小下的每调用开销（每调用 10 个 allocatables、64-rank 标签匹配的 4-double 点对点消息、每个 3-D 步数百个调用位点），记入包围的正压循环计算区域。在此 HPCX/UCX 平台上，小消息点对点 + 每调用堆流量超过其取代的 64-rank Allreduce——与 Stages 25–27 教训相反。3-D [O10] 路径（136-double 记录）未被证伪。
- 结论 STOP_BRANCH（正确但更慢；低于 Stage-87 关卡）。无半天/完整运行。Stage-87 回退现按测量关闭。
- harness 缺陷：W0 标记 variant=O33（而非 WARMUP）使完成后的自动决策块崩溃；decision.txt 带注记手工写入。永不重建。
- 输出生命周期：运行根目录保留（所有运行 nc=0）；候选树 r1/r2/r3 作为证据保留；无删除。Skill/progress/plan/evidence-index 已更新；三项分析在 `analysis/o33_g2d_sparse_abba_118541006/` 有效。
- 本阶段后状态：全部合法 ≥2% 候选路线关闭（分块被算术关闭于 Stage 94，点收集稀疏现被测量关闭，OpenMP/暂存/AVX2/halo 被先前阶段关闭）。活动轨道 = 交付（O33 `118405320` 26/26，Stage 83 的现场人工步骤）。研究关卡保持活动。
