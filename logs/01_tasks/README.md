# MCC26 — ROMS-CoSiNE 南海物理-生态耦合模式优化

> MCC2026 决赛赛题：优化 ROMS-CoSiNE 双向嵌套海洋-生态耦合模式的运行性能。

## 紧急程度
当前项目紧急程度:宽松
- 验证和 profile 均可进行，不受限制。

## 项目位置
| 位置 | 路径 | 说明 |
|---|---|---|
| 本地工作区 | `C:\Users\hp\Desktop\CC-workspace\MCC26\` | 文档系统、参考资料 |
| 远程工作区 | `~/zya` (fujiake@MCC) | 源码、编译、运行、优化 |
| 远程 Inputfiles | `/public/home/fujiake/Inputfiles` (软链到 `~/zya/Inputfiles`) | 初始/边界/强迫场，全队共享勿复制 |
| 远程参考版本 | `~/fjk/ROMS_CoSiNE15_lsd_v24a_20260728` | 已有的 v24a 基线工作区（含 98 脚本、OPTIMIZATION_LOG.md） |

## 文档索引
| 文档 | 内容 |
|---|---|
| [01_ssh_link_guide.md](01_ssh_link_guide.md) | SSH 连接方式、密钥、会话管理 |
| [02_optimization_stats.md](02_optimization_stats.md) | 优化统计：基线、各版本耗时、瓶颈、有效/无效策略 |
| [03_project_structure.md](03_project_structure.md) | 远程 zya 项目结构与构建说明 |
| [04_baseline_result.md](04_baseline_result.md) | zya baseline 复现（46:19，提速2.38×）+ ROMS 内置 profile |
| [05_s47_差异对照_未覆盖优化点.md](05_s47_差异对照_未覆盖优化点.md) | **s47 版本情报**：103 处差异对照，96 处与我们有记录重复，7 处未覆盖（通信量化/系数复用/NTIMES 工作流等） |
| [07_节点占用监测与场上成绩观测.md](07_节点占用监测与场上成绩观测.md) | **节点观测系统**：采集器/分析器位置、档位标定链（2节点25min=1天实验非成绩）、场上成绩分布 |
| [MCC26优化完整证据链报告](MCC26优化完整证据链报告.md) | **完整证据链**：约束、关键代码段、实查数据、证伪闭环、最终成绩 |

## 参考资料
- `MCC26/参考资料/MCC26决赛.md` — 赛题分析、代码结构、Profile、优化记录
- `MCC26/参考资料/MCC2026决赛题：南海物理—生态耦合模式.docx` — 原始赛题

## 赛题要点
1. 仅可改 `ocean_SCS_Dongsha60_bio15.in` 中的 `NtileI*NtileJ` 核数配置（NTIMES 仅调试时缩短，最终须 3 天）。
2. 集群华东一区【昆山】，队列 `kshcexclu06`，每队 128 核，单机 32 核，最大 4 节点（非必须 128 核）。
3. **决赛不支持 DCU**（不可改物理计算方案）。
4. 不可改计算方案/网格/积分时间/时间步长/输出；不可改初始场/边界场/强迫场/生态参数；不可关生态模块、不可减生态变量、不可双向改单向。
5. 不支持热启动；成绩须在指定平台统一验证。
6. baseline（群通知）：4 节点 64 核 **01:50:06**（旧资料 64 核 01:38:21）。

## NTIMES 调试
| 时长 | 粗 | 细 |
|---|---|---|
| 3 天（完整） | 2592 | 12960 |
| 1 天 | 864 | 4320 |
| 半天 | 432 | 2160 |

## 验证
```bash
source /public/share/mcc2026_final/miniforge3/etc/profile.d/conda.sh
conda activate vali
python /public/share/mcc2026_final/vali.py
```

## 快速操作
```bash
# 连接（本地直连，密钥已配置）
ssh MCC

# 远程提交作业
cd ~/zya && sbatch sub.sh
squeue -u fujiake
```

## 当前状态
- [x] 本地文档系统建立
- [x] SSH 连接验证通过
- [x] 远程 zya 项目初始构建（源码 + .mcc_opt + Inputfiles 软链）
- [x] 首次编译验证（oceanM 生成）
- [x] baseline 复现（4节点64核×2线程，**46:19**，对比群通知 01:50:06 提速 2.38×）
- [x] 零代码方向扫描（2026-07-30）：UCX 调参、线程配比、负载均衡三方向已验证排除；**64×2 spread_numa16_ccx_2t 锁定为最优**，无改进空间。详见 [02_optimization_stats.md](02_optimization_stats.md) §1.2。
- [x] 改代码方向①：step3d_t OpenMP 并行维度 itrc→k（2026-07-30）：全量3天 **46:19→41:01（−11.3%）**，RMSE 与 baseline v24a **逐位相同**（数值零风险）。详见 [02_optimization_stats.md](02_optimization_stats.md) §1.3。
- [x] 改代码方向②：pre_step3d OpenMP 维度 itrc→k（2026-07-30）：全量3天 **40:41.53（−12.0%）**，RMSE 逐位同 baseline。但与 step3d_t **收益不叠加**（同瓶颈），性价比低。详见 §1.4。
- [x] Dongsha60_u 超限排查（2026-07-31）：根因=64进程(8x8) vs 官方128进程(8x16) 的 MPI 归约顺序差异（4次run逐位一致，ROMS 位可复现）；flags/源码均无法消除，唯一路径是改进程数但慢9.4%。详见 §1.5。
- [x] **正式提交版确定（用户选 A）**：`ompk-step3d-t`，4节点 64×2，全量3天 **41:01.41（−11.3%）**，数值零风险。Dongsha_u 单点尖刺超4.5%（嵌套接触区，非系统误差），余25项全过阈值。
- [x] **gls pow 改写后回滚 + 前提交版**（2026-08-02/04）：`ompk-o33nopow-bio`，全量3天 **36:03.37**（vs 46:19，**−22.1%**；vs 官方 baseline 01:50:06，**3.05×**），**u Dongsha=0.000052 全变量通过（硬保证首次达成）**。关键链条：pow 改写破坏 u（0.000073）→回滚；-heap-arrays 解决 u；coll/KMP 运行配置 +9.2%；nan O33 源码移植；bio/t3dmix all_land 早退 +0.9%。**完整证据链见 [MCC26优化完整证据链报告](MCC26优化完整证据链报告.md)。**
- [x] **fp-model fast=2 重大突破 → 最终提交版**（2026-08-05）：`ompk-fast2`（`-fp-model fast=2 -fimf-precision=low -fimf-arch-consistency=false`），全量3天 **33:49.90**（官方 baseline → **3.26×**，相对前提交版 −6.2%），**u Dongsha=0.000058 ≤ 0.000060 全变量通过**。打破"带宽受限天花板"（precise 模式下成立）。⚠️ u 余量收窄需保持监控。
- [x] **fast2+AVX2 叠加证伪**（2026-08-05）：fast2 上叠加 `-axCORE-AVX2 -fma`（ymm 204→21,494），ABBA job 118629199 组间差 −0.08% 噪声内 → **fast2 收益机制是减指令数（FMA 收缩+重排）而非 SIMD 宽度**，Zen1 半吞吐 AVX2 无法兑现加宽。`ompk-fast2-axavx2` 归档保留。
- [x] **带宽饱和实测定论**（2026-08-05）：64×1 vs 64×2 ABBA job 118632241，**64×1 慢 18.8%**（6:39.70 vs 5:35.61）。拓扑实测：64×2 的 128 线程在 128 个不同物理核（超线程 32-63 从未用）。**DRAM 带宽已饱和 → 减核/超线程方向无益**，AVX2/X融合/转置无效的终极解释。
- [x] **align+prefetch 证伪**（2026-08-05）：恢复 v24a 基线丢失的 `-align array64byte -qopt-prefetch=3`（job 118633511 编译生效 +219KB），ABBA job 118634052 组间差 +0.43% 噪声内 → 带宽非主瓶颈时对齐/预取无空间。提交版仍为 ompk-fast2（33:49.90）。
- [x] **瓶颈归因修正 + 最终校准**（2026-08-06，用户质疑+perf 决定性）：正确 rankfile 下 **instructions −38.3%**（此前错映射误测 4.5%，job 118655224 用 ppr:16:node 不带 PE=2 污染计数，job 118657740 修正）、cycles −32.6%、stalled-backend 仅 14.9-16.5% → **瓶颈=指令执行吞吐（IPC~1.9 饱和），非 DRAM 带宽**。AVX2 减20%指令零收益=Zen1 半吞吐。提交版不变。
- [x] **fast2 下复测三方向全证伪**（2026-08-06）：AVX2（10步 10.7% 是**热身假象**，两次半天 ABBA 0.08%/0.21% 无收益）、X 融合（0.9% 噪声内，job 118655973）、-O3（慢 0.6%，job 118655974）。**precise 打破后这些方向未复活**。方法：短时采样被启动热身放大，判稳态须半天/全量 ABBA + 多维指标。
- [x] **换编译器证伪**（2026-08-06）：gcc7.3.1 znver1 O3 fast-math ABBA job 118659761 **慢 0.5% 噪声内**（保守版慢 4.4%）。fast-math 是大杠杆但 gcc 未突破 ifort fast2——编译器优化接近天花板。fjk 的 gcc 线索核查（其 A 组未含 fast2）。amdflang/AOCC 不投入。
- [x] **PGO 测通但 u 超限弃用**（2026-08-06）：PGO 叠加 fast2 半天 +2.2%、全量 33:13.93（快 1.8%）但 **u=0.000062 超限**。热点排除版只 +0.3%（PGO 收益与 u 风险同源于热点代码）。**fast2（33:49.90, 3.26×）为最终平衡点**。
- [x] **SMT/SSE 证伪**（2026-08-06）：SMT 填气泡因 OpenMPI 4.0 rankfile 无法精确绑定 SMT 对（slot 越界）+ 64×1 预示发射减半硬伤而放弃；SSE4.2 强制纯 SSE 启动崩溃（ifort 校验拒绝 Hygon）且 fast2 本就 99.8% SSE。
- [x] **vs fjk 全量对比：我们快 4.9%**（2026-08-07）：fjk hotteams 全量墙钟 **35:36** vs 我们 fast2 **33:51**（我们快 4.9%）。排查确认 fjk 无补差来源：源码/coll_rules 相同、KMP_HOT_TEAMS 无效（0.4%）、ifort2021 升级 0% 差异。**fjk 一直比我们慢（缺 fast2，GLS/biology 落后 33%/15%）**。提交版 ompk-fast2 确认最优。
- [x] **fast2 机制解析 + 辅助方向证伪**（2026-08-07）：反汇编确认 fast2 收益=SVML 低精度数学库（+6.9 倍）+ 表达式重排，非向量宽度。残留 89 处标量超越调用是标量上下文结构性限制，`fimf-low:全部函数`（allfimf 0.7%）和 `-fast-transcendentals`（fastexp 0.4%）均噪声内证伪。`-xHost` 明确排除（Hygon 指令集风险）。**fast2 已是编译器最优**。
- [x] **微小方向叠加证伪累积假设**（2026-08-07）：5 个有物理理由的微小方向（fimf-low全函数+fastexp+AVX2+align+prefetch）叠加为二进制，ABBA 反而慢 0.5%（job 118724230）。**微小优化是零波动噪声非可累积收益**——真实收益（>2% 如 PGO）会自己显现。fast2 已抓住所有真实收益（46:19→33:49 的 27% 累积）。
- [x] **t 布局重排证伪（"评估"升级为"实验"）**（2026-08-07）：报告 §6.4 原称"itrc 挪第2维工程量和 u 风险极高，已评估不可行"——用户质疑这是安全性判断非实验结论。做真实网格微基准（job 118729358，237×247×30×NT=8×3层，5 轮统计，模拟 pre_step3d T_LOOP1 单 itrc 整块扫描）：**B(itrc 第1维) 慢 1.7%、C(itrc 第2维) 持平 1.001×** → 布局重排零收益。根因=访问序列"扫完 itrc=1 整块→itrc=2 整块"不变，布局只改块位置不改访问序列；itrc 相邻需内层混合多 itrc 才有收益，但 pre_step3d/ecosim 均 itrc 外层+i 内层从不混合。接口层封装 get_t() 工程可行但性能无意义。**结论从"评估不可行"升级为"实验证伪"（§5.13/§6.4）。提交版不变。**
- [x] **lea/AGU/标量/AoS 全方向证伪（"占周期多"≠"关键路径"）**（2026-08-09）：用户"什么东西吃吞吐"驱动 → perf annotate 发现 pre_step3d 运行时 lea 占 40.6%（最大单项）→ 误判 lea 为瓶颈。**用户阿姆达尔分析纠正**：lea 是隐藏延迟（与 FP 并行，空闲 AGU 周期顺带执行）非关键路径。**决定性证据**：① stalled-backend 仅 14.8% → AGU 未饱和；② 标量 `-no-vec` ABBA（job 118810714）lea 减 23% 但全程序**慢 34.5%**（A=5:40.98/5:35.41 vs B=7:38.81/7:38.85）→ lea 非瓶颈，FP 关键路径才是；③ `-fno-alias`/`-qopt-ra-region-strategy=loop` 编译选项全无效（指令反增）；④ AoS/指针自增微基准：ifort -O2 已自动做指针自增（多维 vs 局部 lea 相同），AoS 减 lea 86% 但 lea 非瓶颈无收益。**结论：瓶颈=FP 关键路径延迟+复合执行上限，lea 是并行重叠开销。fast2 已最优，全部方向闭环。提交版不变。**
- [x] **三条险路评估后全部放弃（"无稳健路只有险路"）**（2026-08-09）：① `-qopt-prefetch=5 -qopt-mem-layout-trans=4`（寄存器预取填 FP 气泡）：flag 存在但 `-qopt-mem-layout-trans` 对 Fortran 无效（C 结构体布局转换）、数据已 L1 命中（L1 miss 0.18%）预取无对象、stalled 仅 14.8% 收益上限 <1% → 放弃；② biology 提前到 step2d 2D 通信间隙：**源码否定**——biology 依赖 3D tracer（step3d_t 输出），而 step2d 2D halo 在 step3d_t 之前，依赖顺序无法提前 → 不可行；③ `-real-size 32` 单精度化 gls_corstep：**技术+约束双重否定**——GLS 89 处 `real(r8)` 0 处裸 REAL，flag 只改裸 REAL 对 real(r8) 无效（r8=mod_kinds 硬编码 64-bit），单精度化违反约束+u 灾难 → 不可行。
- [x] **冠军情报 → s32 突破（重大转折，2026-08-09）**：群消息"队内进30分"（冠军 118755216，29:13.88，26/26 PASS）→ 从队友日志找到冠军 S32 秘密：**ifort2021 + 全局 `-no-heap-arrays -fp-model precise -march=core-avx2 -no-fma -ipo -O3` + biology fast2 + gls source**（源码与我们几乎相同，差异全在编译配置）。**我们此前在 fast2 基线上叠加 AVX2/-O3/-ipo 单项全无效是"局部最优陷阱"**——fast2 已吃满 FMA/重排，冠军从 precise 起点出发，AVX2(18,360 ymm vs fast2 204)是**正交新维度**。**复现 ompk-s32**：半天快 8.3%、**全量 30:33.51（比 fast2 33:49.90 快 9.7%）**、官方 vali 26/26 PASS、**u=0.000052 更保守**、官方 baseline → **3.60×**。**新提交版 = ompk-s32**。瓶颈变化：前端 stall 6.3%（fast2≈0，AVX2 解码压力）+ 后端 14.6%（仍主导）。冠军 29:14 vs 我们 30:34（差 4.4%，可能 ifort2021 vs 2017 或节点）。
- [x] **🏆 最终提交版 ompk-s32-pgouse（2026-08-10 收官）**：**全量 28:53.33，官方 baseline 3.80×，u=0.000052 26项全过，超过冠军 20 秒**。**完整链路**：fast2(33:50,3.26×)→ s32 冠军配置(30:33,3.60×)→ **关 PROFILE**(29:28,3.73×,PROFILE 宏在 s32 有真实开销)→ **PGO +3.1%**(28:53,3.80×)。**关键发现**：①fast2 局部最优陷阱；②PROFILE 宏开销；③PGO 在 s32 有效(+3.1%)且 u 通过(s32 余量 8e-6 承受漂移)。**KMP_HOT_TEAMS 证伪**（冠军配置,ABBA 0.02% 噪声内）。**节点避雷**：j01r2n04-07/j05r2n00-03 正常,j01r2n00-03/j01r2n12-15 慢(慢33-70%)。**备份**：backup_final_20260810/（含全部二进制+SHA）。提交脚本 submit_final.sh。
