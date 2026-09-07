# 复盘 O43–O46 与下一步可尝试点总表（2026-08-01）

**性质**：只读复盘 + 计划；**本稿不改源码**。  
**父本（不变）**：O33 + O29（`KMP_BLOCKTIME=0`），拓扑 **64×2 / Ntile 8×8**，二进制 `oceanM.O33_noheap.bak`。  
**成绩锚点**：正式 3 天 `118307015` → **2129.85 s（3.10× vs baseline 6606 s）**，vali 全过，Dongsha u=0.000052。  
**理想目标**：3 天 &lt;10 min（600 s）→ 相对 O33 仍要约 **3.55×**。

依据：`Prompt/Prompt.txt` + `mcc.md`；nan `README.md` / `report_his/*`；feng `new/docs/optimization_log.md` + `new/experiments/`；lsd 历史线；`literature_notes_20260730.md`；本栈 O33 汇编与 O46 PROFILE。

---

## 1. O46 结果与原因

| Job | real | 相对 O33 带 (~130.3 s) |
|-----|------|------------------------|
| 118345547 | **129.719 s** | ~1.004× |
| 118345549 | **133.062 s** | ~0.979× |
| 均值 | **131.39 s** | **~0.992×** |

门槛 1.02× **未达** → **拒绝**（源码仍为 O46 态，**实施阶段再回滚** `step3d_t.pre_O46_nowait.F`；本稿不动代码）。

### G02（采样）相对 O33 同档

| 区域 | O33 例 (118306217) | O46 均值约 | 解读 |
|------|-------------------|------------|------|
| predictor | ~13.1% | ~12.9% | 无实质下降 |
| Corrector tracers | ~10.6% | ~10.2% | 目标核几乎不动 |
| GLS | ~9.5% | ~11.3% | 抬升 → 节点/同步抖动或调度噪声 |
| step2d | ~10.2% | ~9.7% | 噪声带 |
| 4D+2D halo | ~11%+ | ~12% | 等待税仍在 |

### 归因（为何 nowait 无效）

1. **与 O44 / feng E029 同构**：少一次 `PARALLEL` fork + 一道 barrier，在 **2T + `KMP_BLOCKTIME=0`** 上固定成本本就很小；墙钟落在 **3–5% 节点噪声**内。
2. **`oHz` 段极短**：相对后续水平 `K_LOOP`（多 tracer × 层）可忽略；融合省下的同步相对 Corrector 11% 墙钟贡献 &lt;1%。
3. **水平段不读 `oHz`**：依赖上安全，但「可 nowait」≠「值得 nowait」——没有可重叠的重计算。
4. **asm 旁证**：`step3d_t_tile` 仅 3× fork、无 libm；瓶颈是访存/tracer 流量，不是 OpenMP 管理开销。
5. **结论**：OMP 区域融合 / `nowait` 线在本栈 **关闭**（除非未来 perf 证明 `kmp_*barrier` 占墙钟主导）。

---

## 2. O43–O45 短复盘（同一阶段）

| ID | 假设 | 结果 | 原因摘要 |
|----|------|------|----------|
| **O43** `#undef PROFILE` | 计时插桩吃墙钟 | ~**0.995×** | 区域 `wclock` 相对 G02 算核可忽略；优化期保持 PROFILE（用户澄清 §9） |
| **O44** `pre_step3d` R2–R4 nowait | KMP=0 下砍 fork/barrier | ~**0.973×** | 同 E029；GLS% 反升；可能打乱缓存时间局部性 |
| **O45** `-qoverride-limits` | E047a #25464 编译时限跳过优化 | ~**0.989×** | 五热点已 `-O3 -ip -OMP -noheap`，放开时限无墙钟 |
| **O46** `step3d_t` oHz+水平 nowait | 换位点再试融合 | ~**0.992×** | 见 §1 |

**阶段教训**：

- 微优化（插桩 / fork / 编译时限）打不穿 **G02 算核带宽 + 通信等待** 双峰。
- feng E048b（L1D 99.89%）+ E068（访存核 OMP≈0）+ 本栈 asm → **加算力/少 barrier 不再是主杠杆**。
- 亚 1% 必须 **ABBA / 同批对照**（E047b 纪律）。

---

## 3. 当前瓶颈画像（仍以 O33 三天为准）

相对总 PROFILE（G02，约 178167 s rank-CPU）：

| 桶 | % | 性质 | 已尝试 |
|----|---|------|--------|
| `pre_step3d` | 13.6 | 访存+多段 OMP | OMP 有；缓存/nowait 拒 |
| `step3d_t` | 11.0 | 访存+tracer | OMP 有；缓存/nowait 拒 |
| `step2d` | 10.6 | 访存、短循环极多 | 扩 OMP 结构性不适（E068） |
| GLS | 10.0 | **算术**（35×`pow`） | CSE/代数拒；asm 仍在 |
| Biology | 5.6 | **算术**（`exp`） | **尚未单独位级 CSE** |
| 4D+2D halo | 12.6 | 多为等待 | 改写/缩消息历史无效 |
| 其余 nesting/IO | — | 大包 Allreduce 等待 | E061m：次数≠秒数 |

队内对照：feng E063/E065 三天 **更慢**；无现成可整栈移植的更快正确父本。

---

## 4. CLOSED — 勿再盲试

### 4.1 本阶段新关

- O43 关 PROFILE（优化期）  
- O44/O46 OMP `nowait` / 区域融合  
- O45 `-qoverride-limits`  
- 手写 `gls_fac4` 式复用（静态 `pow` 计数不降，与 O35 一致）

### 4.2 历史已关（摘要）

| 类 | 代表 |
|----|------|
| UCX/MCA/HCOLL | O34/O34b、O15a、feng V049/E051/E052 |
| 扩访存 OMP / 128 MPI / 32×4 | E068、E062、O36、step2d OMP |
| GLS 代数 pow / 同块 CSE | E071、O14/O32/O35、E072 精神 |
| tracer 几何/通量缓存 | O39–O42 |
| halo 整文件改写 / persist | O26、lsd v23 |
| 缩 Tflux / 分层 Allreduce | E040、E054 |
| 冷路径 z_weights | O30、E056 对 nan（`get_Vweights=F`） |
| 全局 cache blocking / 三对角 interchange | E048、E047b |
| prefetch/unroll、陆地跳过、GCC 主线 | O38、O27、O37 |
| 光学 mathreuse | E070 死代码 |

---

## 5. 开放候选总表（可尝试点）

红线提醒：不改物理/网格/dt/输出内容/强迫/关生态/单向嵌套/DCU；`.in` 仅 Ntile + 调试 NTIMES；vali 必须过；优化期 **保持 `#define PROFILE`**，达理想目标/交卷再关。

### P0（优先立项）

| ID | 思路 | 证据 | 风险 | 粗预期 | 做法要点 |
|----|------|------|------|--------|----------|
| **A1** | **biology 位级 `exp` CSE** | G02 bio 5.6%；E069p `__libm_exp`；lsd perf 见 exp；O35 只关了 GLS | 低（位级） | 1.01–1.03× | 先 objdump `biology_tile`；复用相同实参 `exp`（如 alts1/alts2 若 parsats 相同）；避 `OPTICS_OP1`；ABBA |
| **A2** | ~~合并剩余独立小 Allreduce（换位点）~~ | **O47 已试** `get_composite` 成对 `mp_assemble2` → **0.966×** 拒；与 O18 同构 | — | — | **关闭** contact2d 打包线；勿再盲试 |
| **A3** | **O33 现况诊断包（不计加速比）** | E053m→E061m 方法论；E048b/E069p | 无 | — | 240s PMPI + 可选 perf/L1；回答「还剩哪些可搬 Allreduce / 是否 fork 主导」；指导 A2/A4 |

### P1（有依据、期望中等）

| ID | 思路 | 证据 | 风险 | 粗预期 |
|----|------|------|------|--------|
| **B1** | **MPI 非阻塞集合重叠**（`Iallreduce` 后算无关核再 Wait） | 神威 swPOM §4.3；literature NBC | 中 | 1.01–1.05× |
| **B2** | **`distribute.F` 宏扫** `COLLECT_*` / `BOUNDARY_*`（O33 单变量） | myroms #735/#747；literature | 低–中 | 1.00–1.03× |
| **B3** | **nesting 拓扑亲和 rankfile**（donor/receiver 同节点，源码不动） | 网格分区文献；E061m 负载等待 | 低 | 1.00–1.03× |
| **B4** | **`pre_step3d` 非几何变换**（跨 tracer 一次装载、无额外缓冲拷贝） | predictor 13.6%；O41 关的是缓存拷贝 | 中 | 1.01–1.04× |
| **B5** | **`step3d_t` 跨 itrc 大粒度融合（无 O39–42 式拷贝缓冲）** | O39 失败分析「更大粒度」 | 中 | 1.01–1.05× |
| **B6** | **`t3dmix` / bio 多项式位级 CSE** | E069p；已 OMP 算术核 | 低 | 1.00–1.02× |

### P2（低期望 / 远期 / 备份）

| ID | 思路 | 证据 | 风险 | 粗预期 |
|----|------|------|------|--------|
| **C1** | 调用侧重叠 halo（inner→Wait→边界；非整换 `mp_exchange`） | 神威 §5.1；lsd 多负 | 中 | ≤1.02× |
| **C2** | 写路径缓冲/异步写（不改 NHIS/变量集） | CFIO；3 天 I/O 未细拆 | 中–高（贴输出红线） | 3 天 1.00–1.03× |
| **C3** | Ntile 剩余扫描（湿点/负载，禁 AMR） | literature 五门户；O8b/O16 已扫部分 | 低 | 1.00–1.03× |
| **C4** | GCC 支线备份（E060/E065） | feng；nan O37 墙钟≈1 | vali 贴边 | 不作主线 |
| **C5** | 交卷时 `#undef PROFILE` | Prompt §9；O43 | 无 | 合规，不计当前加速 |
| **C6** | HIPCW 父子不等核 | literature | 高/近红线 | 未知 |
| **C7** | 汇编驱动：确认 `**2`→`x*x`、整数幂路径 | 本栈 35×pow | 低（需位级证明） | 可能被编译器已做 |

### 红线敏感 — 立项前先读契约

| ID | 思路 | 注意 |
|----|------|------|
| **D1** | diag/CFL 小 Allreduce 降频 | 可能算「输出/诊断设置」 |
| **D2** | 改 `ninfo`/写频 | **Forbidden** 输出设置 |

---

## 6. feng / lsd / 文献对照（未做且未在 nan 否定）

| 来源 | 说法 | 映射到本表 |
|------|------|------------|
| feng §下一步 | GLS 位级 pow CSE「唯一源码候选」 | **nan 已否**（O35）；改看 **A1 bio** |
| feng E061m | 剩 Allreduce 多是等待；减次数≠缩消息 | **A2**（换位点合并次数）+ **A3** |
| feng E068/E048 | 访存/L1 已饱和 | 支撑关闭 OMP/分块；转向算术核 |
| feng E047a | 已向量化 + #25464 | O45 已否 override-limits |
| lsd | sparse/packed/分层多已吸收或拒；perf 仍见 `exp` | **A1** |
| 神威 swPOM | halo 重叠、通信拓扑、勿盲目加核 | **B1/C1**；加核已否 |
| FUNWAVE/PALM 嵌套 | owner P2P、缩小载荷 | 多已在 E046 线；余量看 **A2/B3** |

---

## 7. 建议执行顺序（仍不改代码，仅计划）

1. **实施时先回滚 O46**（恢复 `step3d_t` + `oceanM`←O33），记 README 拒因。  
2. **A3 诊断（可选但强烈）**：O33 上 240s PMPI（及可选 perf），更新「可合并 Allreduce 清单」。  
3. **A1 biology `exp` CSE**：ABBA 采样 → ≥1.02× 再半天 → 一天 vali。  
4. **A2** 按诊断清单合并 1–2 处独立小 Allreduce（避开 Tflux / 分层）。  
5. **B1** 选单个 nesting 集合做 NBC 重叠试点。  
6. **B4/B5** 仅当 A1/A2 耗尽且 PROFILE 仍显示算核主导。  
7. 全程：PROFILE 保持开；亚 1% 用 ABBA；独立输出目录可并行 sbatch。

### 现实预期

- 单刀很难 &gt;1.05×；库存以 **1.01–1.04×** 为主。  
- 冲 &lt;10 min 需要多段**算术核 + 真可搬同步税**同时命中；当前无证据支持单点银弹。  
- 队内最优正确父本仍是 **nan O33**；计划目标是在其上做**不重叠**的增量，而非复刻 feng 已吸收链。

---

## 8. 文档索引

| 文件 | 用途 |
|------|------|
| 本文件 | O43–O46 复盘 + 候选总表 |
| `bottleneck_O33_3day.md` | 三天 PROFILE 瓶颈（需后续与本表对齐更新 §5） |
| `feng_experiments_lessons_20260801.md` | feng 方向性否定证据 |
| `failure_analysis_O43.md` … `O45.md` / `O44.md` | 单刀归因 |
| `literature_notes_20260730.md` | 论文/门户映射 |
| `README.md` | 实验流水账 |

---

*本稿生成后若开始改码，以 README 新条目为准；候选关闭/接受时回写本表 §4/§5。*
