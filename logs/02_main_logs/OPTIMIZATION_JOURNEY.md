# MCC26 决赛 ROMS-CoSiNE 优化全程日志（baseline → 每一步思路/代码/路径/结果）

> 生成：2026-08-04。口径说明：
> - 全量 = `NTIMES=2592,12960`（三天），半天 = `432,2160`，诊断 = `144,720`；不同口径的用时不可直接比较。
> - ROMS PROFILE 为进程 `cpu_time`（墙钟占比 ≈ CPU 占比 × 1.305676，Stage-88 修正）。
> - 计分验证 = 官方 `vali.py` 26/26 PASS；未验证的提速一律标注"诊断/未验证"。
> - 每条优化给出：思路（2-3 句）、代码示例（节选）、路径、运行结果。

---

## 1. 基线（Baseline）

| 项 | 值 |
|---|---|
| 赛题 | ROMS_CoSiNE15 双向嵌套海洋模式（SCS 粗 359×326 + Dongsha60 细 235×245，5 倍时空加密，34 层，17 个示踪量，NDTFAST=30/nfast=42） |
| Intel 基线作业 | `117981144`，2 节点 64 MPI 8x8，全量 |
| 基线用时 | **10383.89 s（2:53:03）**，26/26 PASS |
| 组织方参考 | 4 节点/64 核 `01:50:06` ≈ 6606 s（外部目标，非本工作流测量） |
| 初始瓶颈（128 核初测） | 双向嵌套大数组规约、RESHAPE/临时数组内存复制、MPI 通信进展等待 |

---

## 2. 有效优化主线（按时间顺序）

### 2.1 进程映射 spread_numa16_ccx（+30.7%）【我方/队友共同起点】

- 思路：默认进程映射把 64 个 MPI rank 散落在各节点的 CPU 上，跨 NUMA 域访存和核间通信差。改为把 rank 按 16 个/NUMA 感知的顺序铺到 4 节点上，每 rank 绑定一对物理核（2 线程），通信热点落在同域核上。
- 代码示例（rankfile 生成，run 脚本内）：
  ```bash
  pairs=(0,1 2,3 8,9 10,11 16,17 18,19 24,25 26,27 \
         4,5 6,7 12,13 14,15 20,21 22,23 28,29 30,31)   # spread_numa16_ccx_2t
  for node in "${nodes[@]}"; do for pair in "${pairs[@]}"; do
    printf 'rank %d=%s slot=%s\n' "$rank" "$node" "$pair"; done; done
  ```
- 路径：`决赛/02_优化工作区/ROMS_CoSiNE_final_20260727/experiments/` 下各 run 脚本；`MCC26决赛.md` §一。
- 结果：半天 11:19 → **7:50（+30.7%）**；数值完全一致。已纳入基线。

### 2.2 distribute 稀疏化 + z_weights/fluxsum 合并（v3→v22 演进，-15%）【队友】

- 思路：嵌套 contact 数据本只需有数据的 tile 参与，原实现却做全量 `MPI_Allgather`；改为 owner-compute 稀疏模式，只通信真正有数据的 tile，并合并 z_weights 计算与 fluxsum，减少嵌套通信量与规约次数。
- 代码示例（`distribute.F` 稀疏 owner 模式的核心判据）：
  ```fortran
  ! [OPTIMIZATION O10] sparse owner-compute：仅拥有数据的 rank 打包并发送
  IF (ContactPlan3D(cr,Tindex)%donor(m).eq.MyRank) THEN
    peer=ContactPlan3D(cr,Tindex)%receiver(m)
    Scount(peer)=Scount(peer)+reclen
  END IF
  ```
- 路径：`ROMS/Utility/distribute.F`（O9/O10 段）、`ROMS/Nonlinear/nesting.F`（O10 稀疏块 5053-5271）；队友树 `nan/`。
- 结果：多个版本累积，半天 7:50 → **6:43**；数值一致（Dongsha u 仍超限的 v22 历史问题在后续修正）。

### 2.3 生态模块 OpenMP 并行化（ompbio）【队友】

- 思路：CoSiNE 15 变量源汇项是纯格点独立计算，原为串行；把 j 维循环并行化，吃满每 rank 的第二线程。
- 代码示例（`bio_UMAINE15.h`）：
  ```fortran
  !$OMP PARALLEL DO SCHEDULE(STATIC) DEFAULT(SHARED) ...
  !$OMP& PRIVATE(i,j,k, ...)
  DO j=JstrT,JendT
  ```
- 路径：`ROMS/Nonlinear/Biology/bio_UMAINE15.h:390`。
- 结果：biology 占比显著下降；已纳入基线。

### 2.4 step3d_t 延迟通信 + OpenMP 热点（omphot 系列）【队友】

- 思路：示踪量推进的 halo exchange 原在计算前等待，改为把 exchange 延迟到本步计算完成后再发起，减少通信等待；并对 gls_corstep/pre_step3d 的串行热点加 OpenMP。
- 路径：`ROMS/Nonlinear/step3d_t.F`、`gls_corstep.F`、`pre_step3d.F`。
- 结果：半天 6:43 → **6:42**；已纳入基线。

### 2.5 z_weights 复用（v18-zreuse）【队友】

- 思路：垂向插值权重在嵌套推进中每步重复计算，缓存计算结果避免重复计算。
- 代码示例（`set_contact.F`）：
  ```fortran
  ! [O20] Re-enable O7 skip of per-step z_weights
  get_Vweights=.FALSE.      ! 细网格 refinement 下每步 z_weights 直接跳过
  ```
- 路径：`ROMS/Utility/set_contact.F:193-198`。
- 结果：计算开销下降；已纳入基线。

### 2.6 contact3d 批量化（v22-contactbatch）【队友】

- 思路：contact 逐点调用改为批量向量化打包/解包，减少函数调用与索引开销。
- 路径：`ROMS/Nonlinear/nesting.F`（O10 批量化块）。
- 结果：已纳入基线（v22）。

### 2.7 分层 Bcast + 连续 1D Allreduce（v24a，Bcast 12.37%→1.81%）【队友】

- 思路：全局 `MPI_Bcast` 在 64 rank 上是跨 4 节点的树型广播，跳数多；改为"节点 leader 之间 Bcast → 节点内共享内存/环广播"，并用 `MPI_IN_PLACE` 连续 1D Allreduce 替换嵌套规约。
- 代码示例（`distribute.F` O9 段）：
  ```fortran
  ! ===== [OPTIMIZATION O9] hierarchical Bcast =====
  integer, save :: ScatterSharedComm=MPI_COMM_NULL   ! 节点内共享内存通信域
  integer, save :: ScatterLeaderComm=MPI_COMM_NULL   ! 节点 leader 通信域
  ```
- 路径：`ROMS/Utility/distribute.F:5085+`（O9）、`mp_sum_1d`（O10，`distribute.F:1619+`）。
- 结果：Bcast 时间 12.37% → 1.81%（−85.4%）；全量 38:58.50 → **38:15.90**；半天 6:42.79 → **6:29.24**。⚠️ 该系 v22/v24a 全量曾报 Dongsha u RMSE 超限，经后续修正（O33）后才通过官方验证。

### 2.8 step3d_t / pre_step3d 循环换序 itrc↔k + 选择性 OpenMP（O25，−12%）【队友】

- 思路：示踪物循环外层是 17 个 tracer、内层是 34 层，OpenMP 并行沿 tracer 只有 2 个并行度；互换内外层使并行沿 k（34 层），并把 k 循环加 `!$OMP PARALLEL DO`，2 线程从"各跑 1 个 tracer"变为"各跑 17 层"。
- 代码示例（`step3d_t.F`）：
  ```fortran
  ! [O25] K_LOOP outer (itrc<->k) + PARALLEL DO over k
  !$OMP PARALLEL DO DEFAULT(SHARED) SCHEDULE(STATIC)                 &
  !$OMP& PRIVATE(itrc,k,i,j,is,Isrc,Jsrc,cr,dg,rg,cff,cff1,cff2, ...)
        K_LOOP : DO k=1,N(ng)
          T_LOOP1 : DO itrc=1,NT(ng)
  ```
- 路径：`ROMS/Nonlinear/step3d_t.F:348-352`、`pre_step3d.F:346-347`；编译 `Compilers/Linux-ifort.mk:64-68`（`-qopenmp -no-heap-arrays` 逐对象）。
- 结果：全量 3 天 46:19 → **40:42（−12.0%，1.14×）**；RMSE 与基线逐位相同；与 v24a 不叠加（同瓶颈）。

### 2.9 HCOLL 集合通信加速（v29，~2.5%）【队友】

- 思路：启用 HPCX 内置 HCOLL 硬件集合库（libhcoll 接管 Allreduce/Bcast），纯运行时配置零代码改动。
- 代码示例（运行环境）：
  ```bash
  export OMPI_MCA_coll_hcoll_enable=1
  ```
- 路径：运行时开关（`run_*.slurm` 环境）。
- 结果：ABBA 实测半天 +2.5%（Allreduce 占 7.6%，HCOLL 快约 30% 的预期吻合）。⚠️ 我方验证发现 HCOLL 在全量写路径（WRT_HIS）会挂死（EXP-0005），**全量计分禁止开 HCOLL**。

### 2.10 O33 冻结父本复现（2136.310 s，26/26）【当前计分父本】

- 思路：队友 O33 为上述所有有效优化的累积二进制；我方在 4 节点 64×2、8×8/8×8、全量输入下复现并官方验证，冻结为计分父本。
- 结果：作业 `118405320`，**real=2136.310 s（35m36s）**，26/26 PASS；二进制 SHA `5f1a137e...`。vs 组织方目标 6606 s 快 **67.7%**；vs Intel 基线 10383.89 s 快 **79.4%**。

### 2.11 我方工作流早期独立结果（与 O33 汇合前的自证路线）

| 步骤 | 思路 | 代码/路径 | 结果 |
|---|---|---|---|
| GCC 工具链隔离 | 用 GCC 7.3.1 无 OMP 重建原始源码，证明编译器不是数值偏差来源 | `experiments/toolchain_build_20260729` | 2n64 全量 9259.75 s（26/26），比 Intel 基线 −10.8% |
| 4n64 spread 映射 EXP-0001/0003 | 64 rank 摊到 4 节点减少跨节点带宽争用 | `experiments/run_EXP-0001_*.slurm` | 全量 5471.77/5412.96 s（26/26），−41% vs 2n64 |
| norecvzero EXP-0004/0006 | 删 `mp_aggregate2d/3d` 的 `Arecv=0.0_r8` 清零（所有 rank 都会收到全量规约结果，清零冗余） | `experiments/o33_norecvzero_20260801/o33_two_site_norecvzero.patch` | 半天 −5.01%，全量 **5126.75 s**（26/26）＝我方曾有的最佳 |

  ```diff
  --- a/ROMS/Utility/distribute.F
  +++ b/ROMS/Utility/distribute.F
  @@ -5765,7 +5765,6 @@
        Asend=0.0_r8
  -    Arecv=0.0_r8          ! 规约结果全 rank 都收到，清零冗余
  ```

---

## 3. 诊断探针（有效，指导方向关闭）

### 3.1 skew 探针（发现持久结构性负载失衡，≈3.7% 墙钟）

- 思路：Stage 90 `[O34]` 的 OpenMP 加速全部被同步等待吸收，但无人测过"谁最后到达同步点"。在 `wclock_off` finalize 处每 rank 倾倒全部分区 CPU 累计值（运行结束一次，零扰动），3 次重复跑用跨次相关性区分持久/抖动/rank-0 I/O。
- 代码示例（`timers.F` [P1] 探针）：
  ```fortran
  WRITE (SkewFile,'(a,i4.4,a)') 'skewprobe/rank', MyRank, '.txt'
  OPEN (NEWUNIT=SkewUnit, FILE=TRIM(SkewFile), FORM='formatted',
  &     POSITION='append', IOSTAT=SkewStat)
  DO iregion=1,Nregion
    WRITE (SkewUnit,70) MyRank, ng, imodel, iregion,
  &                     Csum(iregion,imodel,ng), TRIM(Pregion(iregion))
  END DO
  ```
- 路径：`experiments/skew_probe_20260804/`；作业 `118537688`。
- 结果：skew 持久且结构性（跨次相关 0.95–0.99）——细网格西列 `Itile=0` 在 4D halo 迟到 20–38%、中心块（东沙礁）在 2D halo/point gathering 迟到 25–50%；rank 总 CPU spread ≈3.7% 墙钟；**非** 随机抖动、**非** rank-0 I/O。

### 3.2 tiling 设计分析（算术封闭分解方向）

- 思路：skew 指向分解方向；用周长模型枚举 7 种 64 因子分解的 halo 体积，换算实测通信池。
- 公式/代码：
  ```
  V = 2·(NtileI−1)·mean(Mtile) + 2·(NtileJ−1)·mean(Ltile)   # halo 体积
  ```
- 路径：`analysis/tiling_design_20260804/`。
- 结果：8×8 对两网格都是精确最小周长；16×4/4×16 使 halo 体积 ×2.15–2.35（墙钟 +8.5%~+18%），32×2 起 ×8.5+。**任何非 8×8 分解都注定回归**，不浪费 A-B-B-A。

---

## 4. 负向/已关闭路线（探索记录，避免重复）

| # | 候选 | 思路（1 句） | 路径 | 结果 |
|---|---|---|---|---|
| 1 | norecvzero on O33 | 同上 2.11 补丁移植到 O33 | `analysis/o33_norecvzero_abba_118365261/` | −1.33%（O33 上不成立，原 GCC 线有效） |
| 2 | biology exp CSE | 共享 `parsats1=parsats2` 的重复 exp | `analysis/biology_exp_cse_review_20260801/` | 静态否决：上限仅 1.26% |
| 3 | 3D Allreduce 批处理 | 2448 次 626KB 规约合并 | `analysis/o33_3d_allreduce_batch_review_20260801/` | 静态否决：上限 1.39% |
| 4 | AVX2 双对象 | `-march=core-avx2` 于 pre_step3d/step3d_t | `analysis/o33_avx2hot_abba_118368170/` | −3.55%（znver1 AVX2 吞吐减半） |
| 5 | pmnreuse | pre_step3d 指标复用 | `analysis/o33_pmnreuse_abba_118372618/` | −1.80% |
| 6 | rankmap 方形块 | 4×4 节点块降边数 33% | `analysis/o33_rankmap_abba_118373369/` | +0.79% 噪声，否决 |
| 7 | 128 MPI×1 | 16×8 tile 纯 MPI | `analysis/o33_64v128mpi_abba_118394983/` | **+32.10%**（halo +322%） |
| 8 | step2d no-heap | step2d 数组压栈 | `analysis/o33_step2d_noheap_abba_118403744/` | −1.69% |
| 9 | fine2coarse vtype 守卫 | 交换区按 vtype 守卫 | `analysis/o33_f2c_vtype_abba_118401389/` | −2.74% |
| 10 | vdiff_invdz | `1/(z_r(k+1)-z_r(k))` 提出 itrc 循环 | `analysis/vertical_diff_invdz_abba_118496066/` | −1.57% |
| 11 | `[O34]` omp4 | rho_eos/hmixing/rhs3d/step3d_uv 加 `!$OMP` | `analysis/omp4_selective_openmp_118529765/` | 加速比 1.74–1.95 但墙钟 −0.45%（被 skew 吸收） |
| 12 | `[O34b]` get_contact2d sparse | O10 稀疏 owner-map 移植 2D | `analysis/o33_g2d_sparse_abba_118541006/` | −2.29%（point gathering −22% 但小消息 P2P 开销更大） |
| 13 | 其余 | Sendrecv/Isend/持久请求/双缓冲/HCOLL 全量/编译器微循环 | `MCC26决赛.md` §二 | 全部退步（UCX 流水线破坏） |

> 关键教训：① 改 MPI 调用模式在 HPCX/UCX 上几乎必退步；② 墙钟由同步到达 skew 决定，不是单点计算；③ 8×8 是 64 核分解的周长最优；④ 小消息点对点输给集合通信。

---

## 5. 累计效果与冻结状态

| 里程碑 | 全量用时 | vs Intel 基线 | 验证 |
|---|---|---|---|
| Intel 基线（2n64） | 10383.89 s | — | 26/26 |
| GCC 原始（2n64） | 9259.75 s | −10.8% | 26/26 |
| 4n64 spread（我方 EXP-0001） | 5471.77 s | −47.3% | 26/26 |
| +norecvzero（我方 EXP-0006） | 5126.75 s | −50.6% | 26/26 |
| **O33（队友全优化，冻结父本）** | **2136.310 s** | **−79.4%** | **26/26** |
| 组织方参考 | 6606 s | 我方快 67.7% | — |

- 冻结计分父本：`118405320`，二进制 `5f1a137e...`，输入 `a3e8a5db...`，v4 源码包 `b0e146e0...`。
- 现场手工步骤（Stage 83）：填脚本变量 → 从 v4 包干净构建 → 全量运行 + 官方验证 → PPT 截图/自动播放。
- 所有合法 ≥2% 候选路线已关闭（探针/静态/实测逐项留证）；恢复性能工作需新机制 + 全量门槛。
