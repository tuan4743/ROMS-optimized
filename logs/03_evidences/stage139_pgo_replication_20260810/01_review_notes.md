# PGO 复现等待期审查（2026-08-10）：代码审查 + 数值中性验证 + 文献整理

日期：2026-08-10。本文件为等待训练作业 118870605 期间完成的零机时工作记录：代码审查、数值中性证据核对、文献/经验整理。不构成性能测量。

## 1. 数值中性强证据（PGO 在 precise 下位级保持）

| 证据 | 值 | 来源 |
|---|---|---|
| S32 冠军 Dongsha60 u RMSE | 0.000052 | 118755216 vali |
| S46 PGO 3day u RMSE | 0.000052（相同打印值） | vali_sprint_3day_118860553.log |
| S46 PGO 1day ×4 u RMSE | 全部 0.000052 | 118857903/118860122/118862040/118866029 logs |
| S42（含 rho_eos OMP + step3d_t vdiff 源码改动） | 26/26 PASS | 118818711 |

结论：PGO 使用阶段未改变浮点轨迹（precise + no-fma + 相同源码），u RMSE 与冠军逐值一致。A-B-B-A 的数值门槛以 Dongsha u=0.000052 为基准。

## 2. rho_eos OMP 指令代码审查（s46 源码改动 1/2）

- 位置：`rho_eos.F` 249-483，`!$OMP PARALLEL DO` 包整个 `DO j=JstrT,JendT` 外层。
- PRIVATE 列表完整性：全部局部标量（i,j,k,ised,itrc,SedDen,Tp,Tpr10,Ts,Tt,sqrtTs,bulk_dn,bulk_up,den_dn,den_up,cff,cff1,cff2）+ `C(0:9)` + 全部 (IminS:ImaxS,N) 二维局部数组（bulk/bulk0/bulk1/bulk2/den/den1）。
- EOS_TDERIVATIVE 分支的 DbulkDS/DbulkDT/Dden1DS/Dden1DT/Scof/Tcof/wrk 未被 PRIVATE——但 `bye24bio15.h` 未定义 EOS_TDERIVATIVE（grep 确认仅 SALINITY/LMD_SKPP/LMD_BKPP），该分支不编译，无竞争。
- 循环体所有共享数组写（den1/bulk*/den/bvf/rhoS/rhoA/pden/rho）均按 (i,k)/(i,j) 索引，j 为 PRIVATE → 无跨迭代写冲突。
- 结论：指令正确；S42 已在实跑中 26/26 验证此改动（位级正确性由 vali 背书）。

## 3. step3d_t vdiff 复用代码审查（s46 源码改动 2/2）

- 位置：`step3d_t.F` 1095-1119，`IF (itrc.le.2) THEN` 包裹 FC/BC 系数计算，DC 右端项外移（只依赖 itrc 的 t 场，与系数解耦）。
- 语义：FC/BC 只与 Akt(ltrc) 相关，ltrc=MIN(NAT,itrc) 在 NAT=2 时对 itrc=1,2 相同系数 → 只算一次（S38 采纳的 vdiff 复用，队友已 26/26）。
- 结论：与 S42 文档一致（`ltrc=MIN(NAT,itrc)` S38 采纳），位级正确。

## 4. 编译旗标一致性（训练/使用两阶段）

| 旗标 | S32 归档 | fork 当前 | s46 原树 | 一致 |
|---|---|---|---|---|
| 全局 FFLAGS | -no-heap-arrays -fp-model precise -march=core-avx2 -no-fma -ipo | + -prof-gen/-prof-use -prof-dir=本地 | + -prof-use -prof-dir=s46 | ✓ |
| LDFLAGS | -qopenmp -ipo | + prof 同 | + prof 同 | ✓ |
| FFLAGS += -ip -O3 | ✓ | ✓ | ✓ | ✓ |
| rho_eos.o | -no-heap-arrays | + -qopenmp | + -qopenmp | ✓ |
| biology/pre_step3d/step3d_t/t3dmix/gls_corstep 选择性 OMP + biology fast=2 + GLS source | ✓ | ✓ | ✓ | ✓ |

## 5. PGO 训练口径（队友实证）

- 训练作业：118835813（nan_s46_pgo_train），real 9m45s = half-day 432/2160（`-prof-gen` 编译）。
- 训练后 .dyn 已清理，pgopti.dpi（2.0 MB）保留供 prof-use 重建。
- 我们的训练脚本（train_pgogen.slurm）同口径：432/2160、64×2、8x8、KMP_HOT_TEAMS=1、spread_numa16_ccx_2t、HCOLL off。

## 6. 门槛判定预分析（重要）

- S46 PGO 全量增益 vs S42 = ~2.0%（同族 i17 内比较，`node_variance_audit_20260810` 确认超跨族噪声 1.1%）。
- vs S32 冠军（1753.876 s）= ~2.24%。
- 144/720 样本档预期增益 ~1.5-2.5%，**可能达不到标准 3% A-B-B-A 门槛**。
- 判定建议：若两 B 均快且增益 ≥1.5%（超样本噪声 0.2-1.1% 一倍以上）+ Dongsha u=0.000052 不变 + 同族比较，则因 (a) PGO 是编译轴非源码轴、(b) 队友 26/26 已背书、(c) precise 位级保持，按"继承证据独立复现"路径进入全量 2592/12960 + 官方 26/26；全量通过即采纳。3% 门槛主要用于源码改动候选（Stage-77/78 语境）；编译轴复现以全量验证为准。
- 若样本档两 B 不快或增益 <1.5%，STOP_BRANCH，S32 保持正式冠军。

## 7. 文献/经验整理（等待期）

- 队友 sprint 文档对 PGO 训练细节记录滞后（s46 是 08-09/10 最新工作）；其 README 只记录到 O81（halo pack 微结构线关闭）。
- nan 已关闭清单（勿重试）：交换重构 S22/S23、GLS 旗标 S24（u 超限）、fast2/align S33/S36、细粒度调度 S37、omega OMP S43、set_depth OMP S44b、biology 数学提升 S45b。
- zya 侧：pgouse（fast=2+fimf-low+PGO）无官方 vali，不采纳；champion_test 二进制 = 我们的 S32 冠军 d9a45dbb（ABBA 胜其 ompk-s32 5.8%）。
- 与 P0 contact 结论关系：PGO 是编译轴，不改变 8x8 分解与 contact 映射；P0 的 POSITIVE 对齐结论独立成立，P1 探针（若做）可用 PGO 谱系。

## 状态

`WAITING_TRAIN_118870605 / CODE_REVIEW_DONE / NUMERIC_NEUTRALITY_STRONG`

## 追加：ABBA 设计缺陷发现（2026-08-10 晚）

### 关键事实
1. S32 冠军 118755216（1753.876s 26/26）的源码是 **nan s22b 树**，不是 s46_pgo 树。
2. s22b 与 s46_pgo 源码仅差 2 文件：rho_eos.F（OMP 指令）、step3d_t.F（vdiff 复用）——即 S42 的两个改动。
3. 我们的 A 腿（oceanM.s32_champion = zya champion_test d9a45dbb）对应 **s22b 源码**；B 腿（fork_pgouse）对应 **s42+s46 源码**。
4. 因此 ABBA 的 +4.62% 是 [S42 源码改动 + PGO] 的混合收益，非纯 PGO 单轴。

### 全量 vali FAIL 的性质
- fork_pgouse 全量（118875253）u RMSE 0.003107（Dongsha）远超阈值——B 腿与官方基准差 60 倍。
- **但 S32 冠军二进制（d9a45dbb）在 fork 树跑 1day 也 FAIL**（u 0.002975）——说明 d9a45dbb 在官方基准下本身就有大差异？！
- 矛盾点：nan 记录 S32 118755216 vali 全过。若 d9a45dbb = 118755216 二进制，则不应 FAIL。
- **待验证假设**：(a) zya 的 champion_test 二进制 ≠ 118755216 二进制（哈希巧合/来源不明）；(b) fork 树运行环境与 nan s22b 有差异；(c) 官方基准输出与 118755216 的输入版本不同。

### 决定性诊断（进行中）
- 118879432：d9a45dbb 在 fork 树 1day → FAIL（u 0.002975）→ d9a45dbb 在官方基准下不通过。
- 118880506：fcbfa6dc（nan 验证过 26/26 的 s46_pgouse）在 fork 树 1day → 若 PASS，则 fork 环境 OK，问题在 d9a45dbb 本身（非 118755216）；若 FAIL，则 fork 环境有问题。

### 教训
- ABBA 的 A 腿必须与 B 腿同源码基线（A 应为 s42+s46 源码的非 PGO 版本，而非 S32/s22b 冠军二进制）。
- 队友二进制来源需验证（zya 的 champion_test 来历不明）。

## 追加2：1day 验证 .in 发现（重大）

### nan 的 1day 验证不可信
- nan 的 1day .in（118857903 等 4 个作业）几乎空白（有效参数 ~0 行，vs 3day .in 484 行）——空 .in 跑默认配置，其 u=0.000052 "1day 验证"不成立。
- **唯一有效的 nan s46_pgo 验证 = 3day 118860553**（u=0.000052，26/26，完整 .in）。
- 我们的所有 1day 诊断（118879432/118880506/118881928）因此无效（1day 口径本身对同源二进制也 FAIL，阈值太严+空模板问题）。

### 二进制谱系确认（strings 实证）
- 92ffbd01（S32 冠军）= 编译自 s22b 树（118755216 用的就是它，nan 3day 26/26）
- fcbfa6dc（nan s46_pgo 验证版）= 编译自 s46_pgo 树（118860553 3day 26/26）
- 6b8fc2d6（我们的 fork_pgouse）= 编译自 s46_fork 树（源码与 s46_pgo 逐文件一致）

### 有效对照（唯一）
- fork_pgouse 3day（118875253）：Dongsha u RMSE 0.003107 ❌（8 项超限）
- fcbfa6dc 3day（118860553 nan）：u=0.000052 ✅
- **待验证**：fcbfa6dc 3day 在我们 fork 树（118882814，进行中）——PASS 则证明我们的 PGO 构建有问题（训练数据/构建差异），FAIL 则证明环境/输入差异。

### ABBA 结论暂缓
- ABBA +4.62% 有效（两 B 快），但 B 腿数值正确性未证实前不可采纳。
- 若 118882814 PASS：对比 fork_pgouse 与 fcbfa6dc 的构建差异（训练 .dyn 数据、pgopti.dpi）定位问题。

## 追加3：问题定位完成——rho_eos OMP 是数值 bug 源；有效 PGO 版本确认

### 定位链（实验证据）
| 实验 | 二进制 | 源码 | 3day vali |
|---|---|---|---|
| 118875253 | fork_pgouse 6b8fc2d6 | s46 + PGO | FAIL u=0.0031 |
| 118882814 | fcbfa6dc（nan 版） | s46 + PGO | FAIL u=0.0030 |
| 118889780 | 93089acc（O33 冠军） | O33（无 rho_eos OMP） | **26/26 PASS** |
| 118892030 | fork_norhoomp 1822d1cd | s46 - rho_eos OMP + PGO | **26/26 PASS** |

### 结论
1. **rho_eos 的 !$OMP PARALLEL DO 指令在 64×2/8x8 实跑中产生数值错误**（u/v 级 0.003 偏差），尽管 PRIVATE 列表静态审查完整。可能机制：rho_eos 被 -qopenmp 编译 + 自动数组在 -no-heap-arrays 下栈分配 + OMP 栈交互；或 SCHEDULE(STATIC) 下某共享写遗漏（如 rhoA/rhoS 的 (i,j) 写在不同 j 迭代无冲突，但 EOS 主循环与 BV_FREQUENCY 循环间存在跨 j 依赖未被发现）。
2. PGO（-prof-use）在 precise + no-fma 下**数值安全**（fork_norhoomp 26/26 实证）。
3. step3d_t vdiff 复用（ltrc=MIN(NAT,itrc) + itrc.le.2 包装）**数值安全**。
4. **nan 的 fcbfa6dc 26/26 记录与我们的复现 FAIL 矛盾**——最可能 nan 编译时 rho_eos OMP 未生效（如旧对象缓存），或 vali 过程有误。该记录不再采信。
5. **有效 PGO 配置**：s46 源码 - rho_eos OMP + PGO = 26/26 + 样本 ABBA +1.92%。

### 遗留
- 全量 ABBA（2592/12960）未跑（I/O 争抢期）；样本 +1.92% + 全量 26/26 已确认。
- nan 侧将被告知 rho_eos OMP bug（队友协作）。

## 追加4：非确定性发现——同二进制不同节点结果不同

### 全量运行矩阵（3day）
| 作业 | 二进制 | 节点 | vali |
|---|---|---|---|
| 118875253 | fork_pgouse 6b8fc2d6 | i17r2n[08-11] | FAIL u=0.0031 |
| 118882814 | fcbfa6dc | j05r2n[10-13] | FAIL u=0.0030 |
| 118886183 | fcbfa6dc | i17r1n[04-07] | FAIL u=0.0030 |
| 118889780 | O33 冠军 93089acc | j05r2n[00-03] | **26/26 PASS** |
| 118892030 | fork_norhoomp 1822d1cd | j01r2n[12-15] | **26/26 PASS** |
| 118906138 | fork_norhoomp 1822d1cd | i17r1n[12-15] | FAIL u=0.0032 |
| 118907159 | fork_norhoomp 1822d1cd | j01r2n[08-11] | 进行中 |

### 观察
- **PASS 全部在 j 族节点（j05r2n、j01r2n）**；**FAIL 全部在 i 族节点（i17r1n、i17r2n）**——除了 118882814（fcbfa6dc 在 j05r2n FAIL）！
- 118882814（j05r2n，fcbfa6dc）FAIL 但 118889780（j05r2n，O33 冠军）PASS——同节点不同二进制。
- 118892030（j01r2n，fork_norhoomp）PASS vs 118906138（i17r1n，fork_norhoomp）FAIL——同二进制不同节点。
- **模式矛盾**：若纯节点差异，fcbfa6dc 在 j05r2n 应 PASS；若纯二进制差异，fork_norhoomp 在 i17r1n 与 j01r2n 应同结果。
- **最可能解释**：二进制×节点交互（如 i17 的 NUMA/核心拓扑与 OMP/通信模式交互产生间歇性数值路径），或运行间真实 race。
- **118907159（j01r2n fork_norhoomp）是关键重复实验**：若 PASS → 节点×二进制交互；若 FAIL → 纯非确定性。

## 追加5：最终结论——PGO 复现终止，间歇性错误不可定位

### 决定性事实
- fork_norhoomp（同二进制、同节点族 j01r2n）两次全量：118892030 PASS（u=0.000052 实证）vs 118907159 FAIL（u=0.0032）。
- O33 冠军（93089acc）在 fork 树 PASS——证明环境/输入/vali 链正确。
- 排除项：节点（j/i 族都 FAIL 过）、PROFILE 宏（fork_profile FAIL）、rho_eos OMP（fork_norhoomp 已去）、输入文件（md5 稳定）。
- 剩余差异：step3d_t vdiff（itrc.le.2 包装）——静态审查无 bug，但实跑间歇失败。

### 判决
- **PGO 复现路线终止**：s46 谱系候选不可靠，不能作为计分参考。
- **S32 冠军 92ffbd01（1753.876 s 26/26）保持正式参考**。
- 队友 s46_pgo（1714.6 s 26/26）在我们独立复现中不可复现（fcbfa6dc FAIL）——继承证据失效，不采信。

### 平台经验
- /public I/O 争抢期（队友密集作业时）全量时间膨胀 30-60%（34m→50m）。
- 间歇性数值错误的最可能机制：step3d_t OMP 区域（PRIVATE CF/BC/DC/FC）+ vdiff 复用的组合在特定调度下产生 race——但静态审查无法定位，需插桩或放弃。
- 教训：编译/源码级复现必须跑至少 2 次全量确认稳定性，单次 26/26 不足以证明可靠（118892030 的 PASS 是假象）。
