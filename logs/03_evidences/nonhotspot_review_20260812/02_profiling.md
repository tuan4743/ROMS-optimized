# 非热点区域盘点——性能刻画（2026-08-12）

## 1. 数据源

- 计时池：O33 全长 118405320（rank-CPU aggregate 178516.604 s）→ wall share = CPU share × 1.3057（Stage 88 换算系数 2789.322/2136.310）。
- 函数级：perf 118617130（rank-0, cycles:u, 15755 samples）。
- 前科证据：`agent_tmp/staging_belowgate/`（Stage 129 set_avg OMP 与 NOFILL 脚本 + decision.txt）、`mcc_runs/118784623_s32_setavg_abba_belowgate/`、`mcc_runs/118784944_s32_nofill_abba_belowgate/`。

## 2. set_avg 的带宽受限本质（机制核心）

- `set_avg_tile` 结构：对每个 Aout 变量，`DO it/DO k/DO j/DO i` 做 `AVERAGE(ng)%xxx(i,j,k) = AVERAGE(ng)%xxx(i,j,k) + F(i,j,k)` 型 RMW。每个元素一次读+一次写，算术强度 ≈ 0（无复用）。
- 8x8 tiling：G1 tile 45x40x34 ≈ 61KB/变量（r8），G2 tile 30x31x34 ≈ 25KB/变量。L1（32KB）/L2 容量下，多变量累加按序遍历 → 纯 DRAM 带宽受限（或 L2 带宽受限）。
- 2 线程 OMP 对带宽型内核：共享 L2/DRAM 带宽不增 → 加速比极限 ~1.0-1.2；Stage 90 同型教训（四对象 1.857x CPU 加速，墙钟 +1.12% 冷启动假象 / warm-vs-warm −0.45%）。
- **物理上无法通过加线程获益**；唯一可减的是累加次数（NAVG 语义不允许跳过，NTSAVG=1 禁止跳步——Stage 87 已记）。

## 3. Stage 129 前科细节（CONFOUNDED 原因 + 方向）

- `setup_build_setavg.sh`：从 `/nan/sprint/ROMS_CoSiNE15`（O33 工作树）复制为候选根，B 树缺 AVX2/no-FMA/IPO 旗标（rules.md Stage 129 明文）→ 任何 −7.84%/−8.12% 数字不能归因于 set_avg OMP 本身。
- 即使忽略 CONFOUNDED：方向为负（both_B_faster=False, mean_A 105.489 vs mean_B 113.756）与"OMP 应加速"矛盾 → 最可能 B 树整体编译差（缺 AVX2 等），而非 OMP 有害。
- **推论**：set_avg OMP 的真实效果从未被测量过；但即便真实效果为 0，池 2.31% wall 的 OMP 收益上限也 <1.2%（@1.65x 实测平台速比），**低于 2% 门**。
- NOFILL（`nf90_set_fill(NF90_NOFILL)`）：全长 −8.12%（B 更慢）——NOFILL 关闭 NetCDF 预填充，输出文件写入方式变化，同样 CONFOUNDED；池为 Writing of output（1.47% CPU），收益方向存疑。

## 4. 交叉验证：为什么 2.31% set_avg + 2.11% set_data 组合仍不构成候选

- 组合 4.42% wall，若 OMP 化双双 1.65x → 省 4.42%×(1−1/1.65) ≈ 1.74% wall——**仍低于 2% 门**；且两池都是带宽型/I-O 型，实际速比远低于 1.65（Stage 90 实测四计算对象才 1.857x，带宽型会更低）。
- 组合论证在 Stage 88 已做过（"3-D compute + set_avg + set_data" 6.68% @1.651 → 2.83% @1.20 的乐观下界），Stage 90 实测后整个 OMP 轴关闭 → 组合已被否。

## 5. 刻画结论

- 非热点中唯一 wall≥2% 的 set_avg 是带宽受限 RMW，线程化不可获益；其余池全部 <2% 或已关。
- 无新机制、无新池 → 保持冻结。
