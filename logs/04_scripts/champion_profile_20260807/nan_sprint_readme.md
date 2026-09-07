===== FILE: sprint/README.md =====
# ROMS-CoSiNE 优化日志（sprint 轮 — 起点 O84）

## 上下文恢复顺序（强制）

1. `Prompt/Prompt.txt` + `Prompt/mcc.md`
2. `Prompt/STANDING_ORDERS.md`（对话补充 + 文献入口）
3. 本 README（实验记录）

> 父目录 `/public/home/fujiake/nan/README.md` 仅作历史参考（O1–O81），sprint 不再写父目录。
> 父目录 `report_his/` 可读，作去重参考。

## 工作约束

- 仅可写 `/public/home/fujiake/nan/sprint/`；其他路径只读。
- 红线（禁）：改物理/网格/dt/输出；改 IC/BC/强迫/生态参数；关生态；嵌套改单向；热启动；DCU；改 `.in` 中除 `NtileI*J` 与调试 `NTIMES` 外的参数。
- 允许：编译选项/MPI 环境、NtileI/J、等价代码变换、预计算、向量化、通信/I/O 优化、可逆调试插桩。

## 起点 O84（位级精确 collect）

- 父本来源：`/public/home/fujiake/nan/backup_v2/ROMS_CoSiNE15`（与 sprint 源码树完全一致）
- 二进制 md5：`oceanM.O84_final = 18edc5d5d2e065ebc778484264f6e4a7`
- 源码改动（相对 O33）：仅 `ROMS/Nonlinear/nesting.F` 的 `collect_bry_fluxes` + `correct_tracer_tile`
  - O33：本地垂向积分 → 1D 打包 1 次 Allreduce → 回写 k=1
  - O84：4 次 3D 整层 Allreduce → 消费端 `DO k` 累加（位级对齐官方参考）
- 精度：Dongsha u RMSE = **0.000000**（O33 是 0.000052）→ **有 0.000060 精度预算可花**
- baseline 3 天 wall ≈ 2188 s（36 min，job 118556090）；一天 ≈ 740 s（12 min 20s）
- 热点（G02 grid 时间占比，O84 3 天）：
  - 3D predictor step **24574 s (13.4%)**
  - GLS vertical mixing **21199 s (11.5%)**
  - Corrector tracers **21412 s (11.6%)**
  - Model 2D kernel **18277 s (9.9%)**
  - Biology source/sink **10070 s (5.5%)**
  - 4D halo exchanges **13275 s (7.2%)**
- 编译选项（O84 = O33 旗标）：`-heap-arrays -fp-model precise -ip -O3`；五热点 `-qopenmp -no-heap-arrays`；`LDFLAGS=-qopenmp`
- 运行时：4N×64 MPI × OMP=2，CCX `spread_numa16_ccx_2t`，`KMP_BLOCKTIME=0`，`coll_rules.conf`，HCOLL=off

## O50 汇编分析要点（继承自父目录）

- 三核 pre/step3d_t/step2d **几乎无 `pow/exp`**：math CSE 打不中
- 三核已有 SSE 打包（`mulpd`/`addpd`），**无 AVX**
- `pre`/`step3d_t` 已无 `for_allocate`（`-no-heap-arrays` 生效）
- **`step2d` 仍有 21× `for_allocate`/次**（全局 `-heap-arrays`），但 O51 试过 `-no-heap-arrays` 拒（0.997×）
- **`gls_corstep` 有 37× `pow`**（汇编可见）→ CSE 历史已拒；可考虑 lookup table

## 优化策略（针对瓶颈期）

**核心思路**：O84 给的 0.000060 精度预算用于"按变量分别编译"。
- **biology 完全独立于 u**（生态→不影响物理 u）→ 最激进 `-fp-model fast=2`
- **GLS 间接耦合 u**（通过 Akv 垂直黏性）→ 中等激进 `-fp-model source`/fast=1
- **tracer 平流间接耦合 u**（通过密度→压强梯度）→ 中等激进
- **step2d/pre_step3d/step3d_uv 直接是 u 计算**→ 保持 `-fp-model precise`

**第一刀候选**：
1. **A1（最稳）**：biology per-file `-fp-model fast=2 -no-prec-div -fp-speculation=fast` — 风险低、独立于 u
2. **A2**：GLS per-file `-fp-model source`（保留除法精度，放宽结合律）— 中风险
3. **A3**：GLS `**` lookup table 替代 `pow` — 中风险、收益不确定
4. **A4**：step3d_t i-loop 2-4× 展开（register tiling）— 低风险
5. **A5**：参考 feng E080 全局 `-march=core-avx2 -no-fma`（已验证 1.028×）— 风险中（历史 O69 -march+nofma 失败，但 feng E080 在 E079 父本上成功）

## 运行档位

- 日常采样：`NTIMES == 144 720`（~2-3 min）
- 半天确认：`432 2160`
- 一天 vali：`864 4320`（精度门槛）
- 正式成绩：`2592 12960`

## 实验记录

### Baseline 参考（sprint O84 起点）

| 字段 | 值 |
|------|-----|
| 日期 | 2026-08-04（baseline_log/log_...O84_3day_20260804_204100_J118556090.txt） |
| 配置 | 4N×64，Ntile 8×8，OMP=2，KMP_BLOCKTIME=0，coll_rules |
| 3 天 real | ~2188 s（36 min wall，由 8:41:01 PM→9:17:29 PM 推算） |
| 一天 real | ~740 s（外推；用户口径 12 min 20s） |
| vali | 全通过；Dongsha u RMSE = 0.000000 |
| 结论 | sprint 起点；O84 位级精确 collect，无源码优化累加 |

---

### S1：biology per-file `-fp-model fast=2 -no-prec-div -fp-speculation=fast`

- 日期：2026-08-05
- 改动文件:行号：`Compilers/Linux-ifort.mk` 行 69
- 改了什么：biology.o 的 private FFLAGS 追加 `-fp-model fast=2 -no-prec-div -fp-speculation=fast`
- 预期收益：fast=2 启用 fast-transcendentals + 向量化 libm；biology 30+ 处 exp/log/sqrt
- 汇编验证：**ifort 2017 的 fast=2 不含 fast-transcendentals**（asm 完全相同，exp 仍是标量 `call exp`）；-no-prec-div 可能微调除法
- 短跑配置与 real 耗时：4N×64 采样 144/720，job `118565877`，**real = 2m13.018s（133.0 s）**
- 相对上一步加速比：`135.6/133.0 = 1.020×`（2%，可能在 3-5% 采样噪声内）
- 相对 baseline 累计加速比：`1.020×`
- vali 是否通过：未跑（采样档不验精度）
- 结论：**暂保留**（待 S3 全局 -no-prec-div 验证后一起测 vali）

### S2：per-file `-march=core-avx2 -no-fma` 给 4 个非 u 文件 — 回滚

- 日期：2026-08-05
- 改动文件:行号：`Compilers/Linux-ifort.mk` 行 69-73
- 改了什么：biology/step3d_t/t3dmix/gls_corstep 追加 `-march=core-avx2 -no-fma`
- 汇编验证：gls_corstep ymm 使用 0→926 处，AVX2 确实启用
- 短跑配置与 real 耗时：4N×64 采样 144/720，job `118566365`，**real = 2m16.316s（136.3 s）**
- 相对上一步加速比：`133.0/136.3 = 0.976×`（**变慢 2.4%**）
- 归因：Hygon C86 7185 = zen1 架构，AVX2 是 128-bit 分裂执行，ymm 代码体积更大反而更慢；与父目录 O69 结论一致
- 结论：**回滚**；`Linux-ifort.mk` 恢复 S1 旗标（无 -march）

### S3：全局 `-no-prec-div` — 回滚（无效果）

- 日期：2026-08-05
- 改动文件:行号：`Compilers/Linux-ifort.mk` 行 29
- 改了什么：全局 FFLAGS 追加 `-no-prec-div`（`-heap-arrays -fp-model precise -no-prec-div`）
- 短跑配置与 real 耗时：job `118567078`，**real = 2m15.485s（135.5 s）**
- 相对上一步加速比：`133.0/135.5 = 0.982×`（变慢，抵消了 S1 的 2%）
- 归因：ifort 2017 在 -O3 下已做除法优化；-no-prec-div 无增量
- 结论：**回滚**；恢复 S1 旗标

### S4：批量 per-file `-no-heap-arrays`（16 个新对象）★ 采样通过 / 一天 SIGBUS

- 日期：2026-08-05
- 改动文件:行号：`Compilers/Linux-ifort.mk` 行 77-92
- 改了什么：给 16 个对象追加 `-no-heap-arrays`：
  - step2d, step3d_uv, rho_eos, rhs3d, omega, prsgrd, conv_3d, conv_2d
  - lmd_skpp, lmd_bkpp, gls_prestep, my25_corstep, my25_prestep, set_depth, metrics, nesting
- 汇编验证：step2d for_allocate 从 **21→0**；其他 15 个对象也全部 0（nesting 仅剩 1）
- 短跑配置与 real 耗时：job `118568458`，**real = 2m10.517s（130.5 s）**
- 相对上一步加速比：`133.0/130.5 = 1.019×`（S1→S4）
- 相对 baseline 累计加速比：`135.6/130.5 = 1.039×`（**3.9%**）
- ROMS 状态：采样 DONE，无 Blows/ERROR
- **一天 vali**：job `118568608`，**SIGBUS（signal 7 Bus error）** 在 ~12min 崩溃
  - 原因：-no-heap-arrays 让自动数组走栈，一天档某些代码路径栈溢出
  - 嫌疑对象：conv_3d（54 个 3D 自动数组 ~700KB/个）、lmd_skpp/lmd_bkpp（24 个 3D 自动数组）
- vali 是否通过：**未通过（SIGBUS）**
- 结论：**需要排查** — 尝试增大 OMP_STACKSIZE 到 512M 或回退大数组对象

### S6：`-opt-streaming-stores=always` + `-fno-alias` — 回滚（严重变慢）

- 日期：2026-08-05
- 改动文件:行号：`Compilers/Linux-ifort.mk` 行 33
- 改了什么：全局 FFLAGS 追加 `-opt-streaming-stores=always -fno-alias`
- 汇编验证：step3d_t 有 63 处 movnt 流式存储指令（S5=0），汇编行数减少 20%
- 短跑配置与 real 耗时：job `118570395`，**real = 3m53.590s（233.6 s）**
- 相对上一步加速比：`130.5/233.6 = 0.558×`（**变慢 79%**）
- 归因：movnt 流式存储绕过缓存直接写内存，zen1 内存带宽有限导致严重瓶颈
- 结论：**回滚**；恢复 S5 旗标

## ★★ 当前父本 S8 最终状态 ★★

**3 天 real = 2086.3s（34m46s），1.049× vs baseline，vali 全通过**

### 编译选项

- **全局 FFLAGS**：`-no-heap-arrays -fp-model precise`
- **biology per-file**：`-qopenmp -no-heap-arrays -fp-model fast=2 -no-prec-div -fp-speculation=fast`
- **gls_corstep per-file**：`-qopenmp -no-heap-arrays -fp-model source`（S8 关键改动）
- **其他四热点 per-file**：`-qopenmp -no-heap-arrays`
- **OMP_STACKSIZE=1G**（S8 3 天需要 1G 栈；512M 在 3 天 SIGBUS）
- **OMP_NUM_THREADS=2, KMP_BLOCKTIME=0, coll_rules.conf**

### 成绩

| 指标 | baseline O84 | S5 | **S8** | 加速 |
|------|-------------|-----|--------|------|
| 3 天 real | 2188s (36m28s) | 2148.4s (35m48s) | **2086.3s (34m46s)** | **1.049×** |
| 一天 real | ~740s | 723.0s | **703.7s** | **1.052×** |
| 采样 144/720 | 135.6s | ~130.5s | **125.7s** | **1.079×** |
| Dongsha u RMSE | 0.000000 | 0.000000 | **0.000052** | ✅ ≤0.000060 |

### 二进制

- `oceanM.S8_gls_source.bak`（md5: 176e712510b715415fd85e425b06fcea）

### 优化历史

| ID | 改动 | 结果 | 结论 |
|----|------|------|------|
| S1 | biology -fp-model fast=2 | 133.0s (1.020×) | 保留 |
| S2 | per-file -march=core-avx2 -no-fma | 136.3s (0.995×) | 回滚（zen1 AVX2 无效）|
| S3 | 全局 -no-prec-div | 135.5s (1.001×) | 回滚（无效果）|
| S4 | per-file -no-heap-arrays 16对象 | 130.5s (1.039×) 采样 OK 但一天 SIGBUS | 过渡到 S5 |
| **S5** | 全局 -no-heap-arrays + 512M 栈 | 3天2148.4s (1.018×) vali全通过 | 保留 |
| S6 | -opt-streaming-stores=always | 233.6s (0.56×) | 回滚（严重变慢）|
| S7 | GLS 回退 -heap-arrays | 采样 127.7s 但一天 SIGBUS/SIGILL | 回滚 |
| **S8** | GLS -fp-model source + 1G 栈 | **3天2086.3s (1.049×) vali全通过** | **★ 保留** |
| S9 | step3d_t -fp-model source | 711.1s (0.989× vs S8) | 回滚（变慢，vali 通过但无收益）|

### 关键发现

1. **-no-heap-arrays**：消除 for_allocate 堆分配开销（step2d 21×/次 → 0），需要 1G OMP 栈
2. **biology -fp-model fast=2**：ifort 2017 的 fast=2 不含 fast-transcendentals，但 -no-prec-div 仍有微效
3. **GLS -fp-model source**：允许代数简化，汇编行数减少 11.4%，间接改善 cache 行为（Corrector tracers -12.3%）
4. **-march=core-avx2 在 zen1 上无效**：Hygon C86 7185 的 AVX2 是 128-bit 分裂执行
5. **-opt-streaming-stores 在 zen1 上严重负面**：movnt 导致内存带宽瓶颈
6. **-fp-model source 对无 libm 调用的文件无效**（step3d_t 变慢 1.1%），只对有 pow/exp 的文件有效

## 旧实验记录（S5 及之前）

## 当前父本 S5 汇总

- 全局 FFLAGS：`-no-heap-arrays -fp-model precise`
- biology per-file：`-qopenmp -no-heap-arrays -fp-model fast=2 -no-prec-div -fp-speculation=fast`
- 五热点 per-file：`-qopenmp -no-heap-arrays`（冗余但无害）
- OMP_STACKSIZE=512M（解决 -no-heap-arrays 的 SIGBUS）
- 一天 real = 723.0s（vs baseline ~740s，**1.023×**）
- vali 全通过（RMSE = 0）
- 3 天正式成绩：job `118569761`，运行中

### S7：GLS 回退 `-heap-arrays`（覆盖全局 -no-heap）★ 保留

- 日期：2026-08-05
- 改动文件:行号：`Compilers/Linux-ifort.mk` gls_corstep 行
- 改了什么：gls_corstep 从 `-no-heap-arrays` 改回 `-heap-arrays`（覆盖全局）
- 依据：S5 3 天 PROFILE 显示 GLS -no-heap 变慢 6.2%（21199→22515），3D 自动数组走栈影响缓存
- gls_corstep for_allocate：0→1（回到堆分配）
- 短跑配置与 real 耗时：job `118571671`，**real = 2m7.669s（127.7 s）**
- 相对上一步（S5 采样 ~130.5s）加速比：`130.5/127.7 = 1.022×`
- 相对 baseline 累计加速比：`135.6/127.7 = 1.062×`（**6.2%**）
- ROMS 状态：DONE
- **一天 vali**：job `118571833`，运行中
- 结论：**暂保留**（待 vali 确认）

### S5 3 天正式成绩结果

- real = **35m48.429s（2148.4 s）**
- 相对 baseline 2188 s：`2188/2148.4 = 1.018×`（1.8%）
- vali：**全部通过**（SCS + Dongsha60 所有变量 RMSE = **0.000000**）
- G02 PROFILE 变化：Biology -22.1%（fast=2）、step2d -4.4%（-no-heap）、GLS +6.2%（-no-heap 副作用）

### S7：GLS 回退 `-heap-arrays` — 回滚（SIGILL）

- 采样 127.7s（1.062×）但一天 vali SIGBUS（512M 栈）和 SIGILL（1G 栈）
- 结论：**回滚**；GLS 保持 -no-heap-arrays

### S8：GLS per-file `-fp-model source` ★ 新父本

- 日期：2026-08-05
- 改动：gls_corstep 追加 `-fp-model source`（允许代数简化）
- 采样：job `118575460`，**real = 2m5.720s（125.7 s）**，**1.079× vs baseline**
- **一天 vali**：job `118575598`，**real = 11m43.661s（703.7 s）**
  - 相对 S5 一天 723.0s：`723.0/703.7 = 1.027×`（2.7%）
  - 相对 baseline ~740s：`740/703.7 = 1.052×`（**5.2%**）
  - **vali 全通过**：Dongsha u RMSE = **0.000052** ≤ 0.000060 ✅（余量 0.000008）
- **3 天正式成绩**：job `118576191`，运行中
- 二进制：`oceanM.S8_gls_source.bak`（md5: 176e712510b715415fd85e425b06fcea）
- 结论：**保留为新父本**

### S9：step3d_t per-file `-fp-model source` — vali 待确认

- 日期：2026-08-05
- 改动：step3d_t 追加 `-fp-model source`
- 风险：S8 u RMSE=0.000052 余量仅 0.000008；step3d_t 间接耦合 u
- 一天 vali：job `118576219`，运行中

---

（后续每条优化按下列模板追加）

```
### Ox：标题
- 日期：
- 改动文件:行号：
- 改了什么：
- 预期收益：
- 短跑配置与 real 耗时：
- 相对上一步加速比：
- 相对 baseline 累计加速比：
- vali 是否通过：
- 结论：保留/回滚
```
### I21-A：Intel oneAPI 2021.3.0 基座（S8 旗标不变，仅换编译器）
- 日期：2026-08-06；改动：ifort 2017 → 2021.3.0（hpcx 2.7.4 + netcdf intel_classic），源码与 S8 完全一致
- 工作分支：nan/sprint/ROMS_CoSiNE15_i21；二进制 oceanM.i21a_s8flags.bak
- 采样 144/720：job 118661969，real = 120.1s（S10 采样 ~123.3s → 1.027×）
- G02 热点：predictor 11.8% / step3d_t 12.4% / GLS 11.9% / step2d 8.4% / bio 4.7%
- vali：一天 job 118662251 运行中；结论：暂保留（待 vali）
- 下一步：i21b = GLS -fp-model fast=2（2021 才有快速超越函数），采样 job 118662736
### I21-B/I21-C：2021 路线关闭（精度不可救）
- I21-A（S8旗标+2021）：采样120.1s/一天681.0s，vali 失败（Dongsha u=1.48e-3）
- I21-B（+GLS fast=2）：已编译未跑，随路线关闭
- I21-C（2021 全 precise、无任何fast旗标）：一天684.7s，vali 仍失败（Dongsha u=4.37e-4、v/zeta/temp/NO3超限）
- 结论：2021 代码生成与 2017 数值不一致（即使 precise），Dongsha u 阈值 6e-5 太紧无法通过；换编译器路线关闭，回到 2017 主线
### S11：全局 -fno-alias -unroll-aggressive —— 回滚
- 日期：2026-08-06；改动：全局 FFLAGS 追加 -fno-alias -unroll-aggressive（feng E093/E099 用过且位级相同）
- 采样 144/720：job 118678228，real = 129.4s（S8 125.7s → 0.972×，变慢）
- 结论：与 O45/S2/S3 同构，2017 下额外激进全局旗标负优化；回滚，父本仍 S10
### T16x4：grid2 16x4 tile —— 回滚
- 日期：2026-08-06；改动：.in 仅改 NtileI==8 16 /NtileJ==8 4（grid2=16x4=64 tile），复用 S10 二进制，位级相同
- 采样 144/720：job 118679073，real = 139.3s（8x8 ~124s → 0.885×，慢 12%）
- 结论：细长 tile 恶化局部性/通信；Ntile 8x8 锁定确认
### 本轮关闭线汇总 2026-08-06
- Intel 2021（含全 precise）vali 失败（混沌）；-fno-alias/-unroll-aggressive 慢；PGO（zya ABBA）无收益；Ntile 16x4 慢12%；I/O 仅 ~3.5%
### 重构可行性评估：G01/G02 不等核分配（2026-08-06）
- 依据：3天 2116s wall vs rank-CPU 177379s/128 = 1386s 理想，效率约 65%
- MPI 等待税 ~23.6%（G01+G02 合计 41938s rank-CPU）；I/O ~6%；其余为同步/负载不均
- 结论：瓶颈是等待税而非 G01 串行；不等核重构收益上限约 5-10%，需改 nesting 通信器+全局归约，vali 风险高（归约顺序变化），暂不立项
### S12：S8旗标+关闭PROFILE —— 位级精确，正式候选
- 日期：2026-08-06；改动：globaldefs.h PROFILE 关（O43 结论复核）
- 一天 864/4320：job 118679410，real = 700.5s（≈S8 703.7s）
- vali：全变量 RMSE=0.000000（含 Dongsha u）！S8/S10 的 u=5.2e-5 主要来自 PROFILE 插桩，非 fp 旗标
- 结论：正式提交用 S12（无PROFILE）二进制；精度预算恢复，可重开 per-file 放松探索
- RT11（hpcx2.11.0 运行时）采样 209.5s 慢69% 关闭
### S12 正式 3天：2071.3s，位级精确 —— 新父本
- job 118679795：real = 34m31.3s = 2071.3s（S10 2093s → 1.010×；S8 2086.3s → 1.007×）
- vali：全变量 RMSE=0.000000（SCS+Dongsha 含 u）
- 结论：正式提交候选 = S12 二进制（oceanM.s12_noprof.bak）；S13/S14（t3dmix/step2d source）无增益已关
- S15（O33快速collect）1day 118680273 待结果
### S12 正式 3天：2071.3s，位级精确 —— 新父本
- job 118679795：real = 34m31.3s = 2071.3s（S10 2093s → 1.010×；S8 2086.3s → 1.007×）
- vali：全变量 RMSE=0.000000（SCS+Dongsha 含 u）
- 结论：正式提交候选 = S12 二进制（oceanM.s12_noprof.bak）；S13/S14（t3dmix/step2d source）无增益已关
- S15（O33快速collect）1day 118680273 待结果
### S15：S12旗标+O33快速collect —— 新纪录候选
- 日期：2026-08-06；改动：nesting.F collect_bry_fluxes 换回 O33 单次打包版（O84 的4次整层Allreduce 慢 ~2.8%且其精度预算非必需）
- 一天 864/4320：job 118680273，real = 681.7s（S12 700.5s → 1.028×）
- vali：全过；Dongsha u = 5.2e-5（O33 collect 系统误差，与 O33 历史一致，阈值内）
- 外推3天 ~2014s（33m34s）；正式3天 job 118680585 运行中
### S15 正式 3天：2012.7s（33m33s） —— 新父本
- job 118680585：real = 33m32.715s = 2012.7s
- 相对：S12 2071.3s 1.029×；S10 2093s 1.040×；O84基线 2188s 1.087×；组委会 6606s 3.28×
- vali：全过，Dongsha u=5.2e-5（O33 collect 系统误差，历史多次验证稳定）
- 提交候选：S15 二进制 oceanM.s15_o33collect.bak（u=5.2e-5，快）；或 S12 二进制 oceanM.s12_noprof.bak（位级精确，2071.3s）
### G01/G02 不等核分配重构可行性 2026-08-06
-
-
-
-
结论：不建议实施；理论收益约0，工程风险高
tile归属在 nl_ocean.h；耦合步内 G01/G02 逐网格串行、总工作量守恒；不等核分配墙钟反而更差，完美重叠也仅持平
实施障碍：diag/obc_volcons 归约在 tile 循环内、输出 mp_gather 需全体参与，无tile rank 会死锁；归约顺序变化有 vali 混沌风险
详见占位文件 REFACTOR_unequal_allocation_feasibility.md
### S16：S15 + step2d -march=core-avx2 —— 采样+5.2%，vali 待确认
-
-
-
采样 144/720：job 118684970，real = 116.7s（S15/S12 ~122.8s → 1.052×）
复现历史 O55 信号（O55 当时在 O33 一天vali 超限）；S15 基座下待 1day vali 确认
1day job 118685006 运行中
### S16：step2d AVX2 —— 回滚（vali 超限）
采样 116.7s（+5.2%）但 1day 673.0s vali 失败：Dongsha u=7.4e-5 超 6e-5 阈值，与 O55 历史一致；step2d AVX2 线关闭
### 关键发现：模型高度等待受限
S15 3天 user 42007s/128线程=328s，wall 2012.7s，线程利用率约 16%；等待税远大于此前估计，但历史 20+
历史 20+ 项通信、重叠、同步优化均被实测拒绝，等待税杠杆尚未找到有效切入点
### RT_kmp：KMP_BLOCKTIME=200 —— 回滚
采样 129.8s，比 S15 122.8s 慢 5.7%，user 63min（线程空转）；KMP_BLOCKTIME=0 确认最优
### RT_impi：intelmpi 2017 已编译（mpiifort），启动脚本改造未完成，暂挂起
### S17：O84位级精确基座 + step2d AVX2 —— 回滚
1day 696.7s，vali 失败 u=7.4e-5（与 S16 相同）→ 证实混沌饱和：step2d AVX2 扰动与基座无关，任何基座都超阈值；该线彻底关闭
### pnetcdf/并行IO 评估：不实施
ROMS PARALLEL_IO 用 nf90_collective（netcdf4/HDF5），会把输出从 classic 改成 netcdf4 格式，触碰输出红线边缘，收益约 30s 不划算；需用户拍板才做
### 本轮最终状态
S15 2012.7s 锁定；step2d AVX2 在任何基座都 u=7.4e-5 超限（混沌饱和实证）；KMP/运行时空转负优化；intelmpi 已编译未测
### S19：step2d -march=core-avx2 -no-fma —— 位级中性，vali 过
1day 677.7s（S15 681.7s → 1.006×），vali 全过 u=5.2e-5 与基线一致；证实 FMA 收缩是精度杀手，-no-fma 保持位级
3day job 已提交；S20 将加 biology AVX2 -no-fma
### S19 正式 3天：2006.5s —— 新父本
job 118687228：real = 33m26.5s = 2006.5s，vali 全过（Dongsha u=5.2e-5）
相对：S15 2012.7s 1.003×；O84基线 2188s 1.090×；组委会 6606s 3.29×
关键发现：step2d -march=core-avx2 -no-fma 位级中性（FMA 收缩才是精度杀手）
下一步：S22 = 4D 交换计算-通信重叠（pre_step3d begin → step3d_t end）
### S21：全局 -march=core-avx2 -no-fma —— 1day 664.5s，vali 过
1day 118687971：real = 664.5s（S19 677.7s → 1.020×），vali 全过（Dongsha u ≤6e-5）
与 feng E099 无损配置一致：全局 AVX2 -no-fma 位级安全
外推 3天 ~1968s（32m48s）；3day job 118690177 已提交
S20（biology AVX2 单独）1day 失败缺输出（被 S21 全局覆盖，不追查）
### S22：4D 交换计算-通信重叠 pre_step3d begin 到 step3d_t end
改动文件1：ROMS/Utility/mp_exchange.F 模块作用域新增 mp4d_pend 状态数组；新增 mp_exchange4d_begin 与 mp_exchange4d_end 两个例程
改动文件2：ROMS/Nonlinear/pre_step3d.F 末尾把 CALL mp_exchange4d 改为 CALL mp_exchange4d_begin，仅打包加非阻塞 Irecv/Isend
改动文件3：ROMS/Nonlinear/step3d_t.F 的 step3d_t_tile 开头新增 CALL mp_exchange4d_end：Waitall 加解包
原理：tracer 4D halo 在 step3d_t 才被消费，中间 step2d/step3d_uv/omega/GLS/biology 提供 MPI 进度，传输与计算重叠
数值应位级相同，仅延迟接收；采样验证中
### S21 正式 3天：1979.6s —— 新父本
job 118690177：real = 32m59.6s = 1979.6s，vali 全过
相对：S19 2006.5s 1.014×；S15 2012.7s 1.017×；O84基线 2188s 1.105×；组委会 6606s 3.34×
结论：全局 -march=core-avx2 -no-fma 为新父本；S22 重叠实验采样验证中
### S22: 4D 交换计算-通信重叠 —— 两个致命 bug 定位并修复，采样验证通过
- 日期：2026-08-07
- 原理：pre_step3d 末尾 CALL mp_exchange4d_begin（打包 + 全 4 边 Irecv/Isend），
  step3d_t 开头 CALL mp_exchange4d_end（Waitall + 解包），中间
  step2d/step3d_uv/omega/GLS/biology 提供 MPI 进度，传输与计算重叠。
- Bug1（根因，S22/S22b 爆掉的原因）：begin 里 mpi_irecv 与 mpi_isend 共用同一
  请求句柄变量（Wrequest 等），isend 覆盖了 irecv 的句柄 → end 的 mpi_waitall
  只等待发送句柄，接收可能未完成就解包，空/未初始化数据进入 tracer halo。
  修复：新增 Wsendreq/Esendreq/Ssendreq/Nsendreq，8 个请求全部存入 reqs。
- Bug2：end 用 (GrecvW.gt.0) 推导边缘交换标志＋边缘 rank GrecvW=3 但
  Wtile=MPI_PROC_NULL（tile_neighbors 的 Wexchange=.FALSE.，未 post）→ 解包
  从未接收的 recv 缓冲区 → 垃圾写入 halo。修复：四边改为
  (Grecv.gt.0).and.(Wtile.ne.MPI_PROC_NULL)。
- 采样 144/720：
  - 修复前：S22 J118690096、S22b J118706513 均 BLOWUP（step45，G02）
  - 修复后同步版（begin+end 立即，逻辑等价原版）：J118712039 real=120.2s DONE
  - 修复后延迟版（真重叠）：J118712215 real=118.75s DONE（vs 同步版 -1.4%）
- 1day+vali：J118712439（结果待记录）
### S22 判定：延迟重叠无收益，回滚 S21（父本不变）
- 1day 对比（同机同日）：S21 对照 J118713326 real=664.6s（与历史 664.5s 一致）；
  S22 延迟版 J118712439 real=672.5s，慢 1.2%（vali 全过，Dongsha u=5.2e-5）。
- 原因：延迟把 4D 交换的同步点推到 step3d_t，快 rank 提前进入 step2d，
  2D 交换的到达失衡反而变差；且 begin/end 每步 8 次 ALLOCATE/DEALLOCATE 有开销。
- 结论：S22 线关闭（Bug1 句柄覆盖/Bug2 边缘标志的修复经验保留，同步版等价验证通过）。
### EXCHT 插桩：2D+3D 交换墙钟 = 采样 123.7s 的 ~23%（等待税直接量化）
- mp_exchange2d/3d 每 rank 累计墙钟：2D mean 7.88s（min 5.64 / max 9.83），
  3D mean 6.35s（min 4.54 / max 11.44），两网格相加 ~28.4s ≈ 23% wall。
- 最慢 rank：四角 63/0/7/56（2D+3D 合计 17.5-19.9s），内部 rank 45 仅 10.9s。
- 含义：交换等待集中在边缘/角落 rank；2D 交换（step2d 多子步）占比最大。
### S23 判定：4D 交换非阻塞化（同步版O��也无收益 —— 交换重构线彻底关闭
- 1day：S22b 同步版（全 8 非阻塞 + 立即 waitall，消除两轮阻塞波浪）
  J118716141 real=676.1s，vali 全过；慢于 S21 664.6s（+1.7%），也慢于延迟版 672.5s。
- 结论：原版两轮阻塞交换已是该硬件最优；等待税由到达失衡/同步主导，
  非阻塞化（含 8 请求 waitall 簿记开销）反而更慢。2D/3D 非阻塞重构不再立项。
- 阶段计时（main3d PHASE，采样 122s）：other/pre-rhs3d 44.7s(36%)、rhs3d 26.8s(22%)、
  step3d_t 24.9s(20%)、omega+GLS+bio 19.0s(15%)、step2d 16.4s(13%)、step3d_uv 3.0s(2.5%)；
  各 rank 均衡（spread 1-3.5s），无单点失衡。
- 下一步：临时 PROFILE 诊断（s22b 分支 #define PROFILE）采样中，待 per-routine 明细。
### PROFILE 诊断（s22b 临时 #define PROFILE，采样 10286 rank-CPU s）
- G02 内核：pre_step3d 1370(13.3%)、GLS 1193(11.6%)、step3d_t 1065(10.4%)、
  step2d 915(8.9%)、biology 454(4.4%)、TS_DIF4 356(3.5%)、3D rhs 133(1.3%)。
- Message Passage 合计 1808(17.6%)：4D halo 734(7.1%)、2D halo 496(4.8%)、
  3D halo 293(2.8%)、reduction 123(1.2%)、broadcast 103(1.0%)。
- I/O 极小：Reading 22(0.2%)+Writing 0.15+ProcIn 108(1.0%)+ProcOut 130(1.3%)≈2.5%。
- CPU 利用率 10286/(128×122)≈66%；其余为同步等待（非阻塞/重叠/交换重构均已被实测拒绝）。
- 结论：算核已高度优化（AVX2/no-heap/fast=2/source）；剩余可动刀多为 1-3% 级。
### S24：GLS 加 -no-prec-div -fp-speculation=fast —— 采样噪声大，1day 验证中
- 改动：Linux-ifort.mk 中 gls_corstep.o 追加 -no-prec-div -fp-speculation=fast
  （与 biology 已验证安全组合一致）。
- 采样（噪声大 ±2%）：基线 116.5-120.7s vs GLS 118.5-121.8s，结论不可靠。
- 1day：J118719108 运行中（vs S21 664.6s 双次稳定）。
### S24 判定：GLS -no-prec-div -fp-speculation=fast 拒绝（vali 超限 + 更慢）
- 正确二进制 49fa3a49 的 1day J118720748：real=679.4s（慢于 S21 664.6s +2.2%），
  vali 失败：Dongsha u=0.000068 > 阈值 0.000060（GLS 精度经 Akv 传导到 u，混沌饱和）。
- 教训：改 per-file 旗标后 make 不重链；须 rm Build/<mod>.o/.f90 再 make
  （首次 1day J118719108 跑的是旧 8e9a 二进制，680.4s 无效）。
- 已回滚 gls_corstep 旗标，s22b 恢复 S21 等价（md5 8e9a）；S21 仍为父本。
### 本轮结论（2026-08-07 冲刺）
- 父本锁定 S21：3day 1979.6s（33m00s），vali 全过；相对组委会 6606s = 3.34×。
- 已关闭：S22 延迟重叠（+1.2%）、S23 非阻塞同步（+1.7%）、S24 GLS 旗标（重测中）。
- 已量化：交换墙钟 ~23%（到达失衡主导，重构无效）；算核已 AVX2/no-heap/fast=2 饱和；
  I/O ~2.5%；CPU 利用率 ~66%，其余为不可削的同步等待。
- 剩余空间：1-3% 级算核微调（需 1day 双次稳定口径验证）；未见单点银弹。

===== FILE: sprint TIMING summary =====
TIMING_sprint_1day_118735123.txt               
TIMING_sprint_samp_118734523.txt                real	2m1.733s user	40m23.640s sys	1m44.895s 
TIMING_sprint_1day_118733406.txt                real	10m59.424s user	225m38.779s sys	5m52.136s 
TIMING_sprint_samp_118733265.txt                real	1m58.476s user	39m8.370s sys	1m12.568s 
TIMING_sprint_samp_118732907.txt                real	2m25.159s user	36m57.065s sys	1m9.649s 
TIMING_sprint_1day_118720748.txt                real	11m19.398s user	234m38.259s sys	5m46.387s 
TIMING_sprint_1day_118719108.txt                real	11m20.413s user	234m50.036s sys	5m50.898s 
TIMING_sprint_samp_118718615.txt                real	2m1.770s user	40m36.220s sys	1m10.714s 
TIMING_sprint_samp_118718339.txt                real	1m58.463s user	39m53.571s sys	1m10.753s 
TIMING_sprint_samp_118718178.txt                real	2m0.690s user	40m27.534s sys	1m11.094s 
TIMING_sprint_samp_118717150.txt                real	2m5.404s user	40m56.514s sys	1m53.949s 
TIMING_sprint_1day_118716141.txt                real	11m16.127s user	233m21.157s sys	5m55.165s 
TIMING_sprint_samp_118715867.txt                real	2m2.006s user	40m43.347s sys	1m11.765s 
TIMING_sprint_samp_118714810.txt                real	2m6.232s user	41m46.646s sys	1m11.425s 
TIMING_sprint_samp_118714646.txt                real	2m1.061s user	40m19.349s sys	1m10.858s 
TIMING_sprint_samp_118714409.txt                real	1m56.967s user	39m30.947s sys	1m10.831s 
TIMING_sprint_samp_118713544.txt                real	2m3.714s user	41m5.544s sys	1m10.705s 
TIMING_sprint_1day_118712439.txt                real	11m12.492s user	232m59.912s sys	5m43.347s 
TIMING_sprint_samp_118712215.txt                real	1m58.750s user	40m0.589s sys	1m10.855s 
TIMING_sprint_samp_118712039.txt                real	2m0.212s user	40m17.652s sys	1m12.501s 
TIMING_sprint_samp_118711052.txt                real	0m17.262s user	4m25.604s sys	0m19.087s 
TIMING_sprint_samp_118706513.txt                real	0m17.516s user	4m27.432s sys	0m20.268s 

===== latest vali verdicts =====
---- vali_sprint_1day_118733406.log

================================================================================
【全局汇总校验结论】
SCS文件整体状态: 全部正常
Dongsha60文件整体状态: 全部正常
最终判定：两组文件所有变量RMSE均在阈值范围内，优化结果无异常
---- vali_sprint_1day_118720748.log

================================================================================
【全局汇总校验结论】
SCS文件整体状态: 全部正常
Dongsha60文件整体状态: 存在超限变量
最终判定：至少一组文件存在变量RMSE超限，优化结果存在异常
---- vali_sprint_1day_118719108.log

================================================================================
【全局汇总校验结论】
SCS文件整体状态: 全部正常
Dongsha60文件整体状态: 全部正常
最终判定：两组文件所有变量RMSE均在阈值范围内，优化结果无异常
---- vali_sprint_1day_118716141.log

================================================================================
【全局汇总校验结论】
SCS文件整体状态: 全部正常
Dongsha60文件整体状态: 全部正常
最终判定：两组文件所有变量RMSE均在阈值范围内，优化结果无异常

===== O84 timings =====
TIMING_O84_1day_118542013.txt                   real	12m20.927s user	244m2.120s sys	14m1.136s 
TIMING_O84_3day_118556090.txt                   real	36m29.941s user	722m44.777s sys	44m15.321s 
TIMING_O84_O33ctrl_118542010.txt                real	2m7.706s user	40m57.405s sys	2m8.174s 
TIMING_O84_samp_118542009.txt                   real	2m13.242s user	42m20.329s sys	2m46.299s 
---- O84 3day vali tail ----

================================================================================
【全局汇总校验结论】
SCS文件整体状态: 全部正常
Dongsha60文件整体状态: 全部正常
最终判定：两组文件所有变量RMSE均在阈值范围内，优化结果无异常
