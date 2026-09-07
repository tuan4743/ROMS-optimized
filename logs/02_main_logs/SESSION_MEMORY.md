# SESSION MEMORY — MCC26 决赛 ROMS-CoSiNE（更新 2026-08-13 凌晨，夜间 AAB 终局）

## Stage 160/161 夜间迭代最新恢复点（2026-08-13 凌晨）

- 用户授权夜间自主迭代（AAB 模式；权限仅 ~/fjk/ 可写；直到用户终止）。
- 五连测全无效：A1 mpi_yield_when_idle（−1~2.6%，user CPU −10% 但墙钟吸收）/ A2 gls_corstep precise 向量化（−0.3%，4396 向量指令生效）/ A3 mpi_leave_pinned（−0.32%）/ A4 KMP_HOT_TEAMS_MAX_PARALLEL=1（−0.13%）/ A5 UCX_TLS=rc（−0.38%）。
- B 审查+搜索：Parallel I/O 关闭（netcdf 4.4.1 串行 + 池 <2%）；无 ≥2% 新候选。
- **运行时微调轴（MCA/env/旗标/传输协议）实测闭合；同步受限结构铁律复现。**
- 剩余路径：等待队友 s62_nb2d/s63_allland 1day 结果（s63 预期 3-8s）。
- 正式参考不变：S47 118946283 1661.816 s 26/26（MD5 1fc3be38）。证据：`analysis/stage160_aab_night_20260813/` 三件套。


## Stage 157 最新恢复点（2026-08-12）

- 四轮闭环（Stage 152-157）全部无效：Round 1 Allreduce ring −6.14% / Round 2 tcmalloc −34.9% / Round 3 glibc mmap/trim +0.47% / Round 4 134,368 B alg5 微基准 +37.1%。
- 非热点盘点（2026-08-12）：set_avg（2.31% wall）带宽受限 + Stage 129 CONFOUNDED 前科 + NTSAVG=1 禁止跳步 → 关；其余非热点全部 <2% 或已有历史关闭理由。
- **新硬性规则（用户授权）**：除非用户明确说"冻结准备交付"，否则继续推进性能实验；不明确时进入 profile+plan+search，提出新机制候选，禁止路径依赖判死。规则全文在 Skill `rules.md` "Performance-experiment continuation policy"。
- 当前正式参考：**S47 job 118946283 / 1661.816 s / 26/26 PASS / MD5 1fc3be38...**（Stage 152 FINAL FREEZE 记录）；S32 118755216 1753.876 s 为历史参考。按新规则，FINAL FREEZE 文案已被覆盖为"继续探索直至用户明说冻结"。
- P1 探针（Stage 152 实跑）最终判决：`mp_assemblef_1d`（count 16796 = 134,368 B）重复 ceiling `min(0.454%, 0.441%) = 0.441% < 2%` → 无最后候选。
- 下一步：profile+plan+search 模式中（P1 census 新聚合发现 BARRIER 为最大 gap 队列，28.7s 聚合，从未被攻击）；机制候选待设计并请用户授权。
- 证据入口：`CURRENT_STATUS_AND_PLAN_20260812_FINAL_FREEZE.md`（历史判决）+ 本文件 + Skill progress/plan/evidence-index。

## Stage 150 最新恢复点

- 当前只做 fusion-mining 静态计划：150A t3dmix rolling-row gate；150B step2d loop-DAG。没有 candidate/build/job。
- t3dmix scratch-only 上界 136/416=32.69% local，映射 5% hotspot 约 1.63% whole；还需净删 >=30.4 B/point、约四次 double input reload 且无等价 row-buffer traffic，才过 40% 门。
- t3dmix scratch 约 35.6-61.1 KiB/thread，可能 L2 resident，禁止按 DRAM 直接计收益。
- exact active step2d 是 127 个 DO heads；Stage 108 单 island wall -1.7416%，不重跑。全 DAG local target >=25%。
- 证据：`analysis/stage150_fusion_mining_plan_20260811/`；状态入口：`CURRENT_STATUS_AND_PLAN_20260811_STAGE150.md`。

## Stage 149 最新恢复点

- 正式冠军仍是 S32 `118755216 / 1753.876 s / 26/26 PASS`，binary `d9a45dbb...`，唯一源码 archive `615ee717...`。（注：Stage 152 起 S47 118946283 / 1661.816 s 取代为当前参考。）
- Stage 149 零机时关闭两条路线：halo P0 的 165 调用仅 16 对紧邻，现有四字段接口零个热点对可直接合并；step2d 五字段扩接口的极有利整机 CPU ceiling 仅 1.083%。
- ideal G1 的最有利 bytes 模型为 16/136=11.7647% PRE，未过 >12% 静态门；IPO 对象无 `.debug_line`，Gate 5 未通过且不再补 build。G1 全路线关闭。
- 证据：`analysis/stage149_static_next_audits_20260811/`；当前入口：`CURRENT_STATUS_AND_PLAN_20260811_STAGE149.md`。
- 没有新模型输出或删除；Stage 145/146 输出继续保留。新候选必须先有保守整机 >2% ceiling，否则转交付收尾。

> 会话恢复先读 `CURRENT_STATUS_AND_PLAN_20260812_FINAL_FREEZE.md` → Skill `rules.md`/`progress.md`/`plan.md` → `OPTIMIZATION_LOG.md` 的 Stage 152-157。本文件下方保留早期完整历史。
> 最后更新：2026-08-12（四轮闭环终局；新"继续推进性能实验"规则生效；profile+plan+search 进行中）


## Stage 150 最新恢复点

- 当前只做 fusion-mining 静态计划：150A t3dmix rolling-row gate；150B step2d loop-DAG。没有 candidate/build/job。
- t3dmix scratch-only 上界 136/416=32.69% local，映射 5% hotspot 约 1.63% whole；还需净删 >=30.4 B/point、约四次 double input reload 且无等价 row-buffer traffic，才过 40% 门。
- t3dmix scratch 约 35.6-61.1 KiB/thread，可能 L2 resident，禁止按 DRAM 直接计收益。
- exact active step2d 是 127 个 DO heads；Stage 108 单 island wall -1.7416%，不重跑。全 DAG local target >=25%。
- 证据：`analysis/stage150_fusion_mining_plan_20260811/`；状态入口：`CURRENT_STATUS_AND_PLAN_20260811_STAGE150.md`。

## Stage 149 最新恢复点

- 正式冠军仍是 S32 `118755216 / 1753.876 s / 26/26 PASS`，binary `d9a45dbb...`，唯一源码 archive `615ee717...`。
- Stage 149 零机时关闭两条路线：halo P0 的 165 调用仅 16 对紧邻，现有四字段接口零个热点对可直接合并；step2d 五字段扩接口的极有利整机 CPU ceiling 仅 1.083%。
- ideal G1 的最有利 bytes 模型为 16/136=11.7647% PRE，未过 >12% 静态门；IPO 对象无 `.debug_line`，Gate 5 未通过且不再补 build。G1 全路线关闭。
- 证据：`analysis/stage149_static_next_audits_20260811/`；当前入口：`CURRENT_STATUS_AND_PLAN_20260811_STAGE149.md`。
- 没有新模型输出或删除；Stage 145/146 输出继续保留。新候选必须先有保守整机 >2% ceiling，否则转交付收尾。

> 会话恢复先读 `CURRENT_STATUS_AND_PLAN_20260811.md` → Skill `rules.md`/`progress.md`/`plan.md` → `OPTIMIZATION_LOG.md` 的 Stage 139b。本文件下方保留早期完整历史。
> 最后更新：2026-08-11（PGO 复现终止；S32 1753.876 s 仍为正式参考；下一步 P1 相位探针设计）

## 0. Stage 139b 当前恢复点（最高优先级）

- 正式参考不变：S32 冠军 job `118755216`, `1753.876 s`, 26/26 PASS，冻结二进制 SHA-256 `d9a45dbbc351a3e386a504c87d355f0db2197c6c6bdec2b5eb2b2276b36fe5a2`（= zya 侧 champion_test 复现哈希）。
- 唯一源码父本：`/public/home/fujiake/nan/sprint/backup_S32_src_20260808.tar.gz`, SHA-256 `615ee7173c015eccc13ae8e3b193092d396817ae4a18648b3d7b55a517087d3e`。当前裸 `s22b/oceanM` 为不同的 `907e6ecb...` 重建版，不可隐式使用。
- **PGO 复现终止（Stage 139b 终局）**：s46 谱系（s46 源码 + PGO）间歇性数值错误实锤——同二进制 fork_norhoomp 同节点族 j01r2n 两次全量一次 26/26（118892030）一次 FAIL u=0.0032（118907159）。排除节点/PROFILE/rho_eos OMP/输入/vali 链；剩余差异 step3d_t vdiff 无法定位，不深挖。**不采信队友 s46_pgo 1714.6 s 26/26 记录（fcbfa6dc 复现 FAIL）**。PGO 不可靠候选不能计分。
- **下一步 = P1 相位探针设计**（零机时，进行中）：`analysis/stage138_p1_phase_probe_design_20260811/`。冻结 S32 源 fork；一次 144/720、3 重复、内存累计单次输出、per-rank 持久化；拆分 pure step2d 算术 / contact 插值装配 / packing / 2D+4D halo 等待 / 嵌套反馈同步；轨迹中性；合并 Stage-139 NUMA/page/THP/TLB 只读遥测。**仅当某具名相位在具体 late ranks 上可移除上限 >2% 才授权 P2/P3**；否则冻结 S32、停止性能实验。
- **队列（2026-08-11 10:02）**：队友 sprint_O84×2 R（i17r1n[08-11]、j01r2n[04-07]）+ zya combo PD（QOS 限额）→ 我方提交前必须等队列空出。只读检查，未动队友作业。
- **平台经验（新规则）**：候选全量验证需 ≥2 次运行均 26/26 才可靠；/public I/O 争抢期全量膨胀 30-60%（34m→50m）。
- 三遍证据：`analysis/stage139_pgo_replication_20260810/`。全部 fork 树/测试输出保留（证据），无删除。

## 0-A. 2026-08-07 晚 重大发现：我方 O33 线已被队友主线超越（最高优先级）

> 触发：分析冠军 profile 时发现并发作业 `118735123 sprint_O84` 属队友 nan，工作目录 `/public/home/fujiake/nan/sprint/ROMS_CoSiNE15_s22b`。据此只读通读 `nan/README.md` 与 `nan/sprint/README.md`（本地副本见 `experiments/champion_profile_20260807/nan_sprint_readme.md`）。

- **队友主线父本 S21：3 天 `1979.6 s`（job `118690177`），官方 vali 全过，相对组委会 6606 s = 3.34×。我方冠军 2019.174 s 比它慢 2.0%。继续在 O33 基座上优化已无意义。**
- S21 组成：S12（位级精确，关 PROFILE）+ S15（O33 快速 collect）+ S19/S21（**全局 `-march=core-avx2 -no-fma`**）。队友结论：**FMA 收缩才是精度杀手，`-no-fma` 保持位级中性**；S21 的 `u=5.2e-5`，与 O33 一致。
- 队友 S25（IPO）1day `659.4 s` vs S21 `664.6 s`（job `118733406`），正在跑 1day 确认（`118735123`）；S26 step2d 并行采样更慢。
- **队友已关闭而我方不应重复**：GLS pow CSE（O35，0.935×）、全局 AVX2 带 FMA（S16/S17，`u=7.4e-5` 超限）、GLS `-no-prec-div -fp-speculation=fast`（S24，`u=6.8e-5` 超限且更慢）、4D 交换重叠/非阻塞（S22/S23）、PGO（zya，无收益）、Ntile 16×4（慢 12%）、GCC 7.3.1、prefetch/unroll、`-fno-alias`。
- 队友在 S21 基座上的 PROFILE：pre_step3d 13.3%、GLS 11.6%、step3d_t 10.4%、step2d 8.9%；Message Passage 17.6%；CPU 利用率 ~66%，其余为同步等待。其自评「算核已饱和，剩余 1-3% 级，未见单点银弹」。

### 我方唯一仍有独家价值的资产：ifort 2021 在**无 fast-math 基座**上数值中性

- 队友把整条 Intel 2021 路线判死（I21-A/I21-C：`u=1.48e-3` / `4.37e-4`，惨败），但那是在 **S8 基座**（biology `-fp-model fast=2`、GLS `-fp-model source` 等 fast 旗标）上测的。
- **我方实测（本会话核对原始 `vali_result.txt`）：纯 O33（全 `-fp-model precise`）+ ifort 2021 的 `u` = `0.000052`、SCS `u` = `0.000057`，与 2017 编译器的 O33 基线逐位一致，26/26 PASS。**
- 机制结论：**2021 编译器本身不是精度杀手；是「2021 × fast-math 旗标」的组合放大了混沌。** S21 与 O33 同属无 fast-math 基座（`-no-fma` 位级中性），因此 **S21 + ifort 2021 的精度风险与队友 I21 完全不同，队友的关闭判据不适用**。
- 收益侧：O33 → O33+2021 = **−5.483%**，源码零改动。与 S21 的源码/旗标优化正交（但与其全局 AVX2 可能部分重叠，因 2021 的向量化更强）。保守取一半收益仍 ≈ −2.7%，越过 2% 门槛。
- **这是当前唯一同时具备机制、正交性、我方独家验证证据的候选，且正对队友「未见单点银弹」的缺口。**

### 本会话已排除的候选（省下机时，勿重试）

- **[C1] 运行时改用 2021 的 libimf/libsvml**：冠军是 2021 编译的代码却在运行时链接 **2017** 的 libimf（`module load compiler/intel/2017.5.239` 覆盖了构建时的 `LD_LIBRARY_PATH`）。微基准（Fortran + `-shared-intel`，`agent_tmp/isolated/work/libimf_bench_20260807`）显示 **2021 的 libimf 在 5/5 个 GLS 实际指数上都更慢 5-28%** → 否决。
- **GLS `pow` 恒等式（`analysis/gls_pow_kkl_identity_review_20260803`）**：队友 O35 已用 mathreuse/CSE 实测 **0.935×（慢 6.5%）**，且 S24 的 GLS 旗标改动 `u=6.8e-5` 超限。GLS 计算侧线关闭。
- **冠军 profile 中 GLS「变慢 18%」是假象**：`gls_corstep.o` 在 2017/2021 下代码生成几乎相同（627 vs 628 条标量浮点、同为 9 条 `sqrtsd`、均不向量化、均外调 `pow`），运行时 libimf 也相同。GLS 计时器的 +4514 CPU-s 是**吸收了其他区域加速后放大的到达偏斜/同步等待**，不是计算退化。逐区域对照表见 `experiments/champion_profile_20260807/profile_delta.tsv`。

## 0. 当前结论（必须先记住）

- **计分最优已换人**：新冠军是全量 `118714595` = `2019.174 s`，官方 26/26 PASS，比 O33 快 **5.483%**，且**源码零改动**——增益全部来自编译器 ifort `2017.5.239` → oneAPI classic `2021.3.0`。二进制 `oceanM.O33_ifort2021` = `7cd466279e82...`，构建树 `agent_tmp/isolated/work/o33_ifort2021_20260805`。
- 孪生全量 `118662236` = `2019.809 s`（26/26 PASS），同一二进制、HPC-X 2.7.4；与冠军差 `0.635 s`（0.031%，噪声内）。**HPC-X 2.11 全量无可测贡献**；交付优先用已验证的 2.7.4 组合。
- **更快但不合规**：`fast2_2021` `1928.081 s`（−9.75%）与 `gcc731` `2059.171 s` 都因细网格 Dongsha60 的 `u` 超限被否（`0.000062`/`0.000061` vs 阈值 `≤0.000060`）。**O33 自身 `u` 已是 `0.000052`，只有约 15% 余量 → `u` 是所有精度/选项改动的绑定约束，必须第一个查。**
- **唯一阻塞项**：交付材料仍写 2017 编译器的 `2136.310 s`。源码包仍有效，但 `BUILD.md`/`RUN_AND_VALIDATE.md`/记录/PPT/证据清单必须重切，否则现场重建只会复现 2136 s。
- 待定（只需复测）：ifort 2022（`118730406` 全量 +61% 与自身 +1.86% 样本矛盾 → 环境污染，无结论）；r3（样本 +1.78%，无全量，属 fast-math 家族）。
- **旧计分父本**（仍是交付父本）：immutable O33 作业 `118405320`，4 节点 64 MPI×2 OpenMP，`real=2136.310 s`，官方 26/26 PASS。二进制 `5f1a137e...cfcb9`。
- **Stage 92（本会话）**：skew 探针 `[P1]` 三段式设计分析 VALID（`analysis/skew_probe_design_20260804/`）；探针二进制已就地核验 `oceanM.O33_skew` = `3322eeaf...`；run harness 就绪不变。**尚未提交作业** — 下一步需用户确认后提交唯一诊断作业（`EXPECTED_SCRIPT_SHA=e8c4f269...`、`EXPECTED_PROBE_SHA=3322eeaf...`）。
- 历史构建 `118532196`/`118532486` 死于 harness 门禁（同树并发构建竞态）——非候选失败、不计无效尝试；**严禁同一棵树并发两个构建作业**。
- **`[O34]` 已否决**（Stage 90）：OpenMP 加速比 1.74–1.95 但墙钟无收益；临界路径是同步/arrival skew。连续两次 STOP_BRANCH（85+90）→ 强制 PLAN 门禁。
- 探针分流：持久可归因 → 分解/映射；随机抖动 → 重叠/少同步点；rank-0 I/O → 输入/广播路径（队友矩阵未覆盖）。`[P2]`（GLS 3D halo 字面到达时间戳）为后备，未启动。
- **交付侧已齐**：v4 源码包 + 可移植脚本 + 记录 + PPT；只剩现场手工。

## 1. 接手 Skill

| 副本 | 路径 | 状态 |
|---|---|---|
| 工作区 | `决赛/03_交接Skill/skill-packages/mcc26-roms-cosine-handoff` | 与 installed 一致（10 files） |
| Codex installed | `C:\Users\Fu Jiake\.codex\skills\mcc26-roms-cosine-handoff` | 权威源 |
| BN 镜像 | `BN决赛/决赛/03_交接Skill/skill-packages/mcc26-roms-cosine-handoff` | 已对齐 |

启动：完整读 `SKILL.md` 与 `references/rules.md`，再读 `progress.md`/`plan.md`。

## 2. 本地 / 远端关键路径

- 工作区：`C:\Users\Fu Jiake\Documents\MCC\决赛\02_优化工作区\ROMS_CoSiNE_final_20260727`
- 入口文档：`CURRENT_STATUS_AND_PLAN_20260807.md`（最新；`..._20260804.md` 为上一版暂停快照）
- 总日志：`OPTIMIZATION_LOG.md`
- 回填采集脚本与原始输出：`experiments/backfill_20260807/`
- SSH：`MCC` → `/public/home/fujiake/fjk/...` 私有树 only
- O33 不可变导入：`/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801`
- **冠军全量**：`/public/home/fujiake/fjk/mcc_runs/118714595_o33_hpcx211_full_64x2`（2019.174 s）；孪生 `118662236_o33_ifort2021_full_64x2`（2019.809 s）
- **冠军构建树**：`.../agent_tmp/isolated/work/o33_ifort2021_20260805/ROMS_CoSiNE15`
- 旧计分输出（交付父本）：`/public/home/fujiake/fjk/mcc_runs/118405320_o33_full_reproduce_64x2`
- O34 ABBA：`/public/home/fujiake/fjk/mcc_runs/118529765_o33_omp4_abba_sample`（1.4MB，零 NetCDF）
- O34 构建树已被清理；5 个源码文件存于 `analysis/omp4_selective_openmp_118529765/source_evidence/`
- 交付：`决赛/04_提交准备/O33_交付清单_20260802/`
- Skew 探针草稿脚本：`experiments/skew_probe_20260804/`（未授权提交）

## 3. 关闭 / 保留方向速查

关闭或不可重开（除非新证据）：更多 3D 选择性 OpenMP、scratch 复用（pmnreuse/vdiff_invdz）、128 纯 MPI、映射/affinity-only、HCOLL 全量、盲集体调参、AVX2 hot objects、biology CSE、norecvzero overlay。

保留后备：`get_contact2d` 稀疏化（Stage 87，压在 2% 线上）；交付复现现场手工。

门禁中：GLS pow（队友 `zya` nopow 重叠 + O14.bak 回滚未和解）。

## 4. 历史记忆（压缩）

更早的 GCC 基线、EXP-0006（5126.75s）、队友 O33 同步、大量 PLAN/ABBA 负结果均以 `OPTIMIZATION_LOG.md` 与 Skill `progress.md` 为准；本文件不再复述完整年表。
计时单位纠正（Stage 88）对所有历史 PROFILE 解读均生效：CPU≠墙钟。

## 5. 暂停时远端瞬时状态（须刷新）

- 2026-08-04 观察：队列曾有队友作业 `118533083` `ntile_abba_ompk.sh`，`WorkDir=/public/home/fujiake/zya`，只读勿动。
- home 配额曾约 71%/89G free；`/public` 约 18P free。恢复前必须重查。

## 6. 输出生命周期

本暂停会话未创建新模型输出，删除不适用。已有输出一律保留，除非下一段任务开始并过删除门禁。

## 7. Stage 144 恢复点（2026-08-11 EDT）

- 最新入口：`CURRENT_STATUS_AND_PLAN_20260811.md`；静态证据：`analysis/stage144_s32_tracer_pipeline_dag_20260811/`。
- 冻结 S32 源码归档 SHA-256：`615ee7173c015eccc13ae8e3b193092d396817ae4a18648b3d7b55a517087d3e`。
- 已完成版本化 tracer DAG。PRE→CORRECT 整体被 `t3` BC/halo、`nesting(nrhst)` 以及新版 `Hz/Huon/Hvom/W/Akt` 切断，禁止直接合并两个大函数。
- 首选静态候选：G1 PRE 内 provisional `t3`→vertical RMW；G4 `step3d_t` 内 horizontal→vertical→implicit VDIFF column pipeline。G2 为高难候选，G3 次优。
- 下一步仍不运行模型：先画 G1/G4 exact-order scratch/lifetime，证明至少砍掉一次完整 4-D tracer store+reload，且没有新增等价 scratch/halo，再决定是否写 isolated patch。
- 本阶段无模型输出、无删除；`raw_source/backup_S32_src_20260808.tar.gz` 是冻结证据，不是可清理结果。

## 8. Stage 145 恢复点（2026-08-11 EDT）

- 最新静态候选：`analysis/stage145_g4_vadv_vdiff_fusion_20260811/`；实现与脚本：`experiments/s32_stage145_g4_vadv_vdiff_fusion_20260811/`。
- G4 candidate 在 `step3d_t` 非 MPDATA 路径把 vertical-advection RHS 留在 private `RHS0(i,k)`，立即进入 implicit VDIFF；final halo/BC/nesting 不变。
- 候选 `step3d_t.F` SHA `7c22a5c3...02f6d8`；新 include SHA `3e861906...be8b`。活动宏 CPP 与远端脚本 `bash -n` 已过。
- 构建 `118929462` 已成功：A′ `9aa56d...de00`，B `846548...0ed9`；A′ 与冻结 A 不同，因此已执行双序谱系门禁。
- 条件式短程 `118930762`：lineage delta `+0.7575%`、轨迹一致；直接 A′/B gain `0.4288%`，两 B 均快但低于门槛，G4 `STOP_BRANCH`。
- 结果三遍分析：`analysis/stage145_g4_abba_118930762/`；构建三遍：`analysis/stage145_g4_build_118929462/`。
- 保留远端 `/public/home/fujiake/fjk/mcc_runs/118930470_s145_g4_gate` 和 `118930762_s145_g4_gate`，不得在任务结束删除。下一任务若清理必须重新检查目录与三遍分析。

## 9. Stage 146/147 恢复点（2026-08-11 EDT）

- G1 strip pipeline build `118933929` 成功；A′ `a5b26f...1a0e`，B `5354ce...616`。候选只改 `pre_step3d.F`，parent/candidate SHA `de54caa2...8721b` / `4f4ac891...4975`。
- 首次 lineage `118934731` 受 A2 高值影响偏差 `-2.961%`，B 未运行；按波动规则原地保留并复现。
- 最终 `118935194`：lineage `+0.6685%` PASS；A′=`103.224 s`，B=`103.416 s`，gain=`-0.1865%`，两 B 不均更快，trajectory 相同；`STOP_BRANCH`，无全长/官方验证。
- 分析：`analysis/stage146_g1_build_118933929/`、`analysis/stage146_g1_lineage_118934731/`、`analysis/stage146_g1_abba_118935194/`。两个远端结果根均保留。
- G4 `+0.4288%` + G1 `-0.1865%` 触发强制 PLAN。Stage 147 三遍：`analysis/stage147_plan_research_after_g1_20260811/`。
- 结论：不重开泛化 async/Isend/persistent/double-buffer、专用 I/O rank、上游 mp_exchange 直接移植或 tracer materialization fusion。下一步只做 BYE24BIO15 活动 halo 调用邻接/版本/消费者的零机时 P0；保守 wall ceiling `>2%`、目标 `>=3%` 才允许新作业。
- 最新入口：`CURRENT_STATUS_AND_PLAN_20260811_STAGE147.md`。

## 10. Stage 148 G1 门禁修正（2026-08-11 EDT）

- Stage 146 `-0.1865%` 只关闭 j-strip、小工作集 G1，不证明理想寄存器/O(N) column-local G1 无效。
- 原 Stage 146 门禁缺两项硬证据：未证明 PRE conservative reduction `>12%`，未用 qopt report/反汇编确认目标 full-field store+reload 真正在机器码发生并被候选删除。
- 五门规范：`analysis/stage148_g1_five_gate_reassessment_20260811/G1_FIVE_GATE_SPEC.md`；五门未全过禁止 build。
- 最新入口改为 `CURRENT_STATUS_AND_PLAN_20260811_STAGE148.md`。输出生命周期不变，无删除。

## 11. Stage 150A t3dmix rolling-row 收口（2026-08-11 EDT）

- 最新入口：`CURRENT_STATUS_AND_PLAN_20260811_STAGE150A.md`；三遍证据：`analysis/stage150a_t3dmix_static_audit_20260811/`。
- exact Stage 134 IPO report 已存在且配方匹配 S32，无需新 report-only build。六个主 i-loop 均有 unit-stride AVX2 VL4 版本。
- rolling-row 必须保留三行 LapT 与跨行 eta-face/系数。现实最有利逻辑流量为 416→280 B/点，局部 32.6923%、整机 CPU 上界 1.6346%，未过 2% 门。
- 判定 `REJECT_BEFORE_BUILD`；无源码修改、build、作业、模型输出或删除。S32 `118755216 / 1753.876 s / 26/26 PASS` 保持。
- 下一步只做 Stage 150B：冻结 S32 `step2d.f90` 127 个活动循环的 loop-DAG 静态 mining；组合局部 >=25% 才能考虑 build。

## 12. Stage 150 全局 fusion mining 收口（2026-08-11 EDT）

- Stage 150A：t3dmix rolling-row 现实整机 CPU 上界 1.6346%，关闭。
- Stage 150B：step2d exact 127 DO/25 CALL，五类 island 均未证明 local >=25%，关闭。
- Stage 150C：GLS pow/flags/递推与 biology fast=2/EXP CSE/换序均为已有负证据或低 ceiling，无新候选。
- 最新入口：`CURRENT_STATUS_AND_PLAN_20260811_STAGE150C.md`；最终三遍：`analysis/stage150c_gls_biology_final_screen_20260811/`。
- 总状态 `GLOBAL_FUSION_MINING_CLOSED / NO_BUILD / NO_JOB`。S32 `118755216 / 1753.876 s / 26/26 PASS` 冻结，下一步转交付和技术报告。
- Stage 150 无模型输出、无删除；Stage 145/146 结果仍保留。
## 13. Stage 151 恢复点（2026-08-11 EDT）

- 最新入口：`CURRENT_STATUS_AND_PLAN_20260811_STAGE151.md`。

## 14. Stage 152 FINAL FREEZE（2026-08-12 EDT）

- 当前计分最好已更新为 S47：job `118946283`，full real `1661.816 s`，完整 `2592 12960`，官方 `26/26 PASS`，运行 MD5 `1fc3be38a746ba1f5f5885eaf98e3bee`。
- 最终动态 P1 使用 byte-identical S47 + PMPI 固定大小聚合探针，不重建 ROMS、不增加 MPI 调用/同步、不访问模型数组。
- 最终 clean gate job `119004483`：`A-prime-pre / P-clean1 / P-clean2 / A-prime-post = 101.041 / 99.029 / 98.585 / 97.131 s`，两条 clean 均 64/64 rank、overflow=0。
- 重复最大机制为 `distribute_mod::mp_assemblef_1d`（count 16796，ranks 34/35），whole-wall paired-excess ceiling 为 `0.454% / 0.441%`；保守重复上限 `0.441% < 2%`。
- 判定：`FINAL FREEZE`。没有最后优化候选；除非出现独立的新外部证据证明保守 whole-wall ceiling >2%，否则不再启动性能实验。
- 三遍证据：`analysis/stage152_p1_s47_critical_path_probe_20260811/01_read_summary.md`、`02_profiling.md`、`03_validity_check.md`。
- 最新入口：`CURRENT_STATUS_AND_PLAN_20260812_FINAL_FREEZE.md`。Stage 152 全部输出保留，未删除。
- 151A tracer blocking：保守 whole-CPU 0.84–1.69%，scratch/register/SIMD 风险，静态关闭。
- 151B 非均匀 8×8：最强模型 R²=0.674，但只降 1.164% step2d-local/约 0.15% P3 total，静态关闭。
- 151C permanent land：SCS land 34.47%、Dongsha60 0%；GLS+biology 不现实绝对乐观 ceiling 2.12%，保守 <2%，静态关闭。
- 三套三遍分析：`analysis/stage151{a,b,c}_*/`。无 build/job/output/delete；S32 `118755216 / 1753.876 s / 26/26 PASS` 继续冻结。
- 下一步默认交付/报告；只有新的 exact-parent site evidence 证明 conservative whole-wall >2% 才重开实验。
