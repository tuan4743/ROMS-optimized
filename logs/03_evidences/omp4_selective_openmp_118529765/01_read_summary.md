# 01 读取与观察摘要 — [O34] 四对象选择性 OpenMP（作业 118529765）

日期：2026-08-04（集群 UTC+8）
分支标识：[O34]
父基线：O33_final（`nan_O33_final_20260801/ROMS_CoSiNE15/oceanM.O33_final`，
sha256 `5f1a137e...cfcb9`）

## 1. 本次改动内容（已构建、已跑完 A-B-B-A）

在 O33 已有的 `[O25]` 选择性 OpenMP 模式（5 个对象）之上，追加 4 个此前仍是
单线程的 3-D 计算对象：

| 文件 | 插入指令数 | 并行维 | 对应 profile 计时器 |
|---|---|---|---|
| `ROMS/Nonlinear/rho_eos.F` | 1 | `j` | Equation of state for seawater |
| `ROMS/Nonlinear/hmixing.F` | 1 | `k` | Biharmonic mixing of tracers, geopotentials |
| `ROMS/Nonlinear/rhs3d.F` | 2 | `k`, `j` | 3D equations right-side terms |
| `ROMS/Nonlinear/step3d_uv.F` | 2 | `j`, `j` | Corrector time-step for 3D momentum |
| `Compilers/Linux-ifort.mk` | +4 行 | — | 对应 4 个 .o 加 `-qopenmp -no-heap-arrays` |

构建作业 118529296：`BUILD_OK`，6 条 `!$OMP PARALLEL DO` 全部存活到 CPP 之后，
4 个目标 .o 内均可见 `__kmpc_fork_call`。

## 2. A-B-B-A 运行配置（作业 118529765）

- 分区 `kshcexclu06`，4 节点 × 16 rank × 2 线程 = 64 rank / 128 线程，`--exclusive`
- 算例：`NTIMES == 144 720`，`NtileI == 8 8`，`NtileJ == 8 8`，`DT == 100.0d0 20.0d0`，
  `NDTFAST == 30 30`（与计分口径一致）
- rankfile 固定成对物理核 slot（`0,1` `2,3` …），`OMP_PROC_BIND=close`、
  `OMP_PLACES=cores`、`OMP_STACKSIZE=256M`、**`KMP_BLOCKTIME=0`**
- HPC-X 2.7.4 / Intel 2017.5.239 / `coll_hcoll_enable=0` + 既有 `coll_rules.conf`
- 全部输入、校验脚本、两个二进制、4 个候选源文件、makefile 均按 sha256 硬门禁

`KMP_BLOCKTIME=0` 是本次解读的关键前提：OpenMP 空闲线程在并行区结束后立即休眠，
不会在串行段空转烧 CPU；而 UCX 的 MPI 等待是忙轮询，等待时间会 100% 记入
当时正在计时的那个 wclock 区间。

## 3. 直接读到的结果

### 3.1 判决（`decision.txt`）

```
mean_A_seconds=126.436
mean_B_seconds=125.021
gain_percent=1.1195
both_B_faster=False
trajectory_consistent=True
verdict=STOP_BRANCH
```

### 3.2 四次运行的墙钟与轨迹（`summary.tsv`）

| 标签 | 变体 | real (s) | rc | DONE | trajectory sha256 |
|---|---|---|---|---|---|
| A1 | O33 | 128.416 | 0 | yes | `fa498694…e44b0` |
| B1 | O33_OMP4 | 125.030 | 0 | yes | `fa498694…e44b0` |
| B2 | O33_OMP4 | 125.012 | 0 | yes | `fa498694…e44b0` |
| A2 | O33 | 124.457 | 0 | yes | `fa498694…e44b0` |

四次运行的时间步轨迹逐字节相同 —— 与 Stage 89 的预期一致：只加
`!$OMP PARALLEL DO`、不改运算次序，浮点结果按位不变，合规无争议。

### 3.3 A1 是冷启动离群点

A1 比 A2 慢 3.959 s。差值几乎全部来自首次文件系统触碰：

| 计时器（Grid 01，CPU-s） | A1 | A2 | 差 |
|---|---|---|---|
| Reading of input data | 183.356 | 86.087 | +97.27 |
| Message Passage: data broadcast | 249.180 | 104.854 | +144.33 |
| 合计 | | | **+241.60 CPU-s = 3.78 s/rank** |

3.78 / 3.959 ≈ 95%。所以 `mean_A` 被 A1 抬高了约 1.6%，
`gain_percent=1.12%` 是虚的。**可比的只有 A2 与 B2（都是热态）：
124.457 → 125.012，B 比 A 慢 0.45%。**

## 4. 已归档的原始证据

`analysis/omp4_selective_openmp_118529765/raw/`：

- `summary.tsv`、`decision.txt`、`harness.log`、`rankfile`、`SHA256SUMS`
- `profile_A1/B1/B2/A2.txt`（harness 自带的过滤子集）
- `profile_full.txt`（从四份 `model.log` 抽出的完整 elapsed/message profile 段落，
  含 harness 过滤器漏掉的 `Corrector time-step for 3D momentum`、
  `Omega vertical velocity`、`2D/3D coupling`、`3D halo exchanges` 等条目）

注：harness 里的 `profile_extract.txt` 过滤式写了 `Corrector 3D momentum`，
而日志实际文本是 `Corrector time-step for 3D momentum`，所以恰好漏掉了本次
四个目标之一。后续 harness 需修正该正则。
