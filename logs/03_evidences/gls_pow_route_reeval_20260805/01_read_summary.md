# GLS pow 路线重新评估（2026-08-05）

## 01 Read summary

- 任务：用户要求"重新评估性能路线"。按 rules.md，性能路线重新开放须先有"精确 ≥2% 保守上限机制 + 三份分析"；本次为只读证据综合，**不授权构建/提交**。
- 起始状态：Stage 95 关闭了全部本工作流 ≥2% 候选（tiling 算术关闭、get_contact2d 稀疏实测关闭、OpenMP/scratch/AVX2/halo 先前关闭）。计划中唯一留待核对的未决候选 = **Stage 86 GLS K-kl pow 恒等式**，前置两个核对项：
  1. 不可变 O33 树中 `gls_corstep.F.O14.bak` 的回滚原因；
  2. 队友 zya `nopow*` 系列结果。
- 本次只读核对（远端零改动）：
  - **O14.bak 回滚原因已找到**：`.O14.bak` 为 `[OPTIMIZATION O14] mathreuse: cache repeated ** powers (lsd v21; no OMP)`——把热路径 4 个 `gls**/tke**` 幂缓存进局部变量（非恒等式改写）。队友 nan `failure_analysis_O34_O35.md` 记录同思路 O35 实测：GLS PROFILE 行 992.5→991.9（0.999× 零收益），墙钟 0.935×；归因：O33 已 -O3 -qopenmp -no-heap-arrays，ifort 在基本块内已 CSE 相同实参 `**`，手写缓存无增量；且 **E071 代数去 pow 精度不过**（不能改语义换 8%）。
  - **zya nopow 结果已见**（其自身基线 `base_g_full3d`=40:47.34，二进制 `ompk-step3d-t-g`，与本工作流 O33 父本不同）：`o33nopow_full3d` 40:03.90（−1.8%）、`o33nopowO3_full3d` 40:27.14（−0.8%）、`gls_full3d` 40:02.07、`gls_full3d_v2` 39:58.63、`gls_full3d_O2_2` 39:32.65（−1.9% ~ −3.0%）。其 vali 脚本为收紧阈值版（Dongsha 再缩 2 量级），无官方 vali.py 26/26 证据。
- 结论：**Stage 86 GLS pow 候选关闭**。三种实现形态（mathreuse 缓存、代数恒等式含 K-kl `x*SQRT(x)`、混合）均被队友测量/静态证据否决；本工作流不构建该候选。与 O14/O35/E071 属同一机制家族。
- 当前队列（只读，不动）：zya `118606516 pipeline_abba_ompk.sh`（A=`ompk-o33nopow-bio` vs B=`ompk-pipeline`，j04r2n[16-19]）、nan `118605188 nan_N1_3day`（j01r2n[03-06]）。
- 输出生命周期：只读评估，无模型输出；删除不适用。

## 02 Profiling / mechanism

- 机制链：Stage 86 假设 K-kl 配置（GLS_P=0,M=1,N=1）下 `x**1`→x、`x**(-1)`→1/x、`x**1.5`→x·SQRT(x) 可移除 6/8~8/8 个通用 pow 调用，VTune `__libm_pow_e7`≈182 s/节点≈6.5-7% rank-CPU → 3-6% 墙钟带。
- 反证（继承证据层级，非本工作流测量）：
  1. mathreuse 形态（O35）在 O33 上实测目标 PROFILE 行零收益（0.999×）——ifort 已 CSE 基本块内相同 `**`，缓存不减少 pow 调用数。
  2. E071 代数形态精度不过——与 K-kl `x**1.5→x*SQRT(x)` 同族，不能安全兑现。
  3. zya 全量 nopow 收益仅 0.8-3.0%（相对其自身、更慢的基线），低于本工作流 ≥2% 保守门禁；且无官方 26/26 证据。
- 综合：GLS pow 轴实际可兑现收益 <2% 或伴随验证风险，不满足重开条件。唯一未决候选关闭后，**没有剩余 ≥2% 机制**；性能路线保持关闭，活动轨道 = 交付。
- 待观察（只读）：zya `pipeline_abba_118606516`（`ompk-pipeline` 新候选）结果预计 30 分钟内出；若显著 ≥2%，只能作为继承证据，需独立 A-B-B-A 复核，当前不预判。

## 03 Validity check

- 事实复核：`.O14.bak` diff（仅缓存幂值、无指数语义改动）✓；nan O35 归因文件直接读取（GLS 行 992.5→991.9、0.935×、E071 精度不过）✓；zya 各 run `process.time`/`run_metadata.txt` 直接读取（二进制、输入、job_id 记录齐全）✓；队友作业与输出未被触碰 ✓。
- 边界声明：所有队友数据为继承证据；本工作流未对 GLS pow 做新构建/运行，结论为"关闭（基于继承证据）"而非"本工作流实测无效"。zya 基线与 O33 父本不同，百分比不可跨工作流比较。
- 三份文件一致性：01 事实 ↔ 02 机制 ↔ 03 边界一致；有效。
- 输出生命周期：无模型输出，删除不适用。
