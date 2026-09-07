# GLS pow 路线重新评估（2026-08-05）

## 01 Read summary

- 任务：用户要求重新评估性能路线。按 rules.md，性能重新开放必须先在"研究/静态证据门禁"下工作：本次为只读证据综合，不授权任何构建/提交。
- 唯一文档化的未决候选是 Stage 86 GLS K-kl pow 恒等式（本地 VTune 池 ~6.5-7% rank-CPU，静态估计 3-6% 墙钟）。该候选自 2026-08-03 起挂起，前置两个核对项：
  1. 不可变树中 `gls_corstep.F.O14.bak`（mathreuse 缓存 pow）为何回滚；
  2. 队友 zya `nopow*` 系列结果。
- 本次核对结果（全部只读，远端未改动）：
  - **前置 1 已解答**：`.O14.bak` 是 `[OPTIMIZATION O14] mathreuse: cache repeated ** powers (lsd v21; no OMP)` 变体，将热路径 4 个 `gls**/tke**` 幂缓存进局部变量。队友 nan 的 `failure_analysis_O34_O35.md`（`/public/home/fujiake/nan/report_his/`）给出 O35（同一 mathreuse 思路的 O33 上实测）：**GLS PROFILE 992.5→991.9（0.999×，目标核零收益）**，墙钟 0.935×；归因 (1) O33 已 `-O3 -qopenmp -no-heap-arrays`，ifort 在基本块内已 CSE 相同 `**`；(2) `__libm_pow` 来自其它 `**` 站点；(3) **E071 代数去 pow 精度不过** → 不能用改语义换 8%。
  - **前置 2 已解答**：zya `.mcc_opt/runs/` 中（只读）：
    - `base_g_full3d` 40:47.34（二进制 `ompk-step3d-t-g`，非本工作流 O33 父本，不能直接比较）
    - `o33nopow_full3d` 40:03.90（−1.8% vs 其自身基线）、`o33nopowO3_full3d` 40:27.14（−0.8%）、`gls_full3d` 40:02.07、`gls_full3d_v2` 39:58.63、`gls_full3d_O2_2` 39:32.65（−3.0%）——全部相对队友自己的基线且低于本工作流的 ≥2% 保守门禁量级，且其 vali 脚本为收紧阈值版（Dongsha 再缩 2 量级），无官方 vali.py 26/26 证据。
  - **结论**：Stage 86 的 GLS pow 恒等式候选与 O14/O35/E071 属同一机制家族，被队友测量与静态证据双重否决：mathreuse 无增量（ifort 已 CSE），代数改写（含 K-kl `tke*SQRT(tke)` 恒等式）被 E071 标记精度不过。本工作流不构建、不提交该候选。
- 当前队列快照（只读）：zya `118606516` `pipeline_abba_ompk.sh`（A=`ompk-o33nopow-bio` vs B=`ompk-pipeline`，j04r2n[16-19]）；nan `118605188` `nan_N1_3day`（j01r2n[03-06]）。均为队友作业，不动。
- 输出生命周期：本次只读评估不产生模型输出；删除不适用。

## 02 Profiling / mechanism

- 机制链：Stage 86 静态估计 `__libm_pow_e7` ≈ 182 s CPU/节点 ≈ 6.5-7% rank-CPU，若能用 K-kl 恒等式（`x**1`→`x`、`x**(-1)`→`1/x`、`x**1.5`→`x*sqrt(x)`）替代，可得 3-6% 墙钟。
- 反证（队友测量，层级：队友证据 < 本工作流测量）：
  1. **mathreuse 形态（O35/O14.bak）实测零收益**：目标 PROFILE 行 0.999×。含义：ifort 已把"同一基本块内相同实参的 `**`"CSE 掉，手写缓存不减少实际 pow 调用数。
  2. **代数形态（E071）被标记精度不过**：`x**1.5`→`x*sqrt(x)` 一类改写与 E071 同族；E071 未能通过验证 → K-kl 恒等式方案即使能提速也携带验证失败风险，且收益上限已被 1 削掉（同形态 mathreuse 零收益意味着 pow 调用数并未因缓存减少，恒等式最多移除基本块内残余调用）。
  3. **zya nopow 全量实测收益 0.8-3.0%（相对其自身基线）**：其基线 `base_g_full3d` 40:47 比本工作流 O33 全量 2136.310 s（35:36）慢约 15%，不同父本；即使按队友数据乐观取 −3.0%，也低于本工作流"≥2% 保守上限 + A-B-B-A ≥3% + 官方 26/26"的严格门禁，且无官方验证证据。
- 综合：Stage 86 候选的三种实现形态（mathreuse、代数恒等式、混合）全部被覆盖；没有一条能同时满足"机制 ≥2% 保守上限"和"官方验证通过"两个条件。

## 03 Validity check

- 复核事实：`.O14.bak` diff 确认其仅缓存 pow 结果（局部变量 `gls_pow_neg` 等），未改指数语义；nan `failure_analysis_O34_O35.md` 表 1 给出 O35 wall=136.4 s vs O33=127.6 s（0.935×）与 GLS 行 992.5→991.9；zya 各 run 的 `process.time`/`run_metadata.txt` 直接读取，二进制与输入均有记录。
- 边界声明：
  - 所有队友数据为"继承证据"，不构成本工作流的测量；本工作流对 GLS pow 轴未做任何新构建/运行，结论为"关闭/否决"，不是"实测无效"。
  - zya 基线与本工作流 O33 父本不同，百分比不可跨工作流比较。
  - 正在运行的 zya `pipeline_abba_118606516`（`ompk-pipeline`）结果尚未出；如出显著 ≥2% 结果，也只作为队友继承证据，需经本工作流独立 A-B-B-A 复核。
- 三份文件一致性：01 的事实与 02 的机制链、03 的边界一致；Pass 1/2/3 有效。
- 输出生命周期：无模型输出，删除不适用；队友作业与其输出未被触碰。
