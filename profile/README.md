# profile 物证目录 — 说明

> 本地可获得的性能画像物证已全部归集于此。远端（`/public/home/fujiake/fjk/mcc_runs/*`、`agent_tmp/isolated/audits/*`）还有大量原始跑批数据，本目录保留**分析层证据 + S47 原始 perf record**。

## 内容

| 子目录 | 内容 | 要点 |
|---|---|---|
| `stage160_s47_assembly_20260812/raw/` | **S47 原始 perf.data × 8 rank + rank_*.report.txt**（perf flat + 批量 annotate 的原始结果） | S47 分布：pre_step3d 14.58 / uct_dc_mlx5 9.97 / step3d_t 9.69 / pow 6.73+0.92 / biology 5.19 / gls 5.12 / t3dmix 5.11 / step2d 4.06 / mp_ex4d 3.02%；指令级结论:pre_step3d/step3d_t/step2d 编译良好无瓶颈;gls_corstep 标量(-fp-model source);biology 分支密集;mp_exchange4d 热点=halo gather/scatter(vmovsd/vmovhpd,结构固有) |
| `stage160_s47_assembly_20260812/` 顶层 md | 01_read_summary / 02_profiling / 03_validity_check | S47 组装作业的 perf 三遍分析 |
| `s32_selected_rank_perf_118813105/` | S32 选中 rank 的 perf **原始数据**（raw/ 下 8 个 rank 的 perf.data + report + harness.log/preflight） + 三遍分析（118813105） | S32 阶段瓶颈归因（前端 stall 6.3% + 后端 14.6%） |
| `stage142_hotspot_code_bottleneck_20260810/` | 热点代码与瓶颈分析（含 HOTSPOT_CODE_AND_BOTTLENECKS.md 10KB、agent review） | Stage 142 对"什么东西吃吞吐"的三遍分析 |
| `o33_vtune_hotspots_118418627/`、`o33_vtune_node_compare_118418627/` | O33 VTune 热点 + 节点对比（118418627） | VTune 平台边界结论：perf 为主、VTune 为辅 |
| `champion_profile_20260807/` | 冠军（S21）profile 对比脚本 + vali 结果 + O84 检查等 | 08-07 情报：矩阵还原、GLS"变慢 18%"假象剖析、libimf 2021 vs 2017 微基准（5/5 慢 5-28%） |
| `o33_vtune_hotspots_20260802/` | VTune 运行脚本 | 提交脚本 |

## 关键 profile 结论链（2026-07-30 → 08-09）

1. **初始 128 核热点**（加入前）:UCX progress 24.8-24.9%、memcpy 14.5-16.5%、memset 8.6-9.1%、mp_assemblef_3d 7.1-7.9% → 初始瓶颈=嵌套大数组规约 + 临时数组内存复制 + MPI 等待，非单一物理公式。
2. **ROMS 内置 profile（baseline 46:19）**：Grid02 细分网格主导（计算 63.48% + 通信 22.70%）；Top 计算 = 3D predictor 12.75% / Model 2D kernel 11.54% / GLS 10.96% / Corrector tracers 10.52%。
3. **归因修正（08-06，决定性）**：正确 rankfile 下 instructions −38.3%、cycles −32.6%、stalled-backend 仅 14.9-16.5% → **瓶颈=指令执行吞吐（IPC~1.9 饱和），非 DRAM 带宽**（此前 64×1 vs 64×2 的"带宽饱和"为反直觉真值——拓扑实测 128 线程全在 128 个不同物理核，超线程 32-63 未用）。
4. **"占周期多"≠"关键路径"（08-09）**：lea 占 pre_step3d 40.6% 是隐藏延迟（与 FP 并行、空闲 AGU 顺带执行）；`-no-vec` 慢 34.5% 决定性证明 FP 关键路径才是瓶颈。AVX2 无收益=Zen1 半吞吐，fast2 收益=SVML 低精度数学库 + 表达式重排（非向量宽度）。
5. **skew 探针（118537688）**：持久结构性负载失衡 ≈3.7% 墙钟（跨次相关 0.95-0.99）→ 墙钟 = 同步到达 skew 决定。

## 缺失（远端，未归档）

- 各作业的 ROMS PROFILE 原始输出（`TIMING_*.txt`/`.*profile`）— 分析结论已在 02_优化主日志/OPTIMIZATION_LOG.md 与 03_分析证据/ 各阶段文档中。
- O33 早期 VTune 原始数据（除上述目录外）。
- perf 计数原始 CSV（部分在 `analysis/` 各阶段的 raw/ 子目录中）。
