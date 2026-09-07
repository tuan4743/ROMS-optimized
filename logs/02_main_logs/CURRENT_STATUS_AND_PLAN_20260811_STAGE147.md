# 当前状态与计划（2026-08-11，Stage 147）

## 一句话状态

Stage 146 G1 已完成：同树 lineage 通过，但候选 `103.416 s` 对 A′ `103.224 s`，收益 `-0.1865%`，`STOP_BRANCH`。它与 Stage 145 G4 的 `+0.4288%` 构成连续两次未过门槛，已按规则进入强制 PLAN；当前不授权新的模型作业。

## Stage 146 证据

- 静态设计：`analysis/stage146_g1_pre_t3_vertical_rmw_20260811/`
- 构建：job `118933929`，A′ `a5b26f...1a0e`，B `5354ce...616`；证据 `analysis/stage146_g1_build_118933929/`
- 首次 lineage 波动现场：job `118934731`，A/A′ 偏差 `-2.961%`，B 未运行；证据 `analysis/stage146_g1_lineage_118934731/`
- 复现与最终 ABBA：job `118935194`；A/A′ lineage `+0.6685%` PASS；A′=`103.224 s`，B=`103.416 s`，gain=`-0.1865%`；证据 `analysis/stage146_g1_abba_118935194/`
- 短程 trajectory 全部一致；无 NetCDF、无全长、无官方验证。
- 输出 `/public/home/fujiake/fjk/mcc_runs/118934731_s146_g1_gate` 与 `/public/home/fujiake/fjk/mcc_runs/118935194_s146_g1_gate` 保留，不删除。

## Stage 147 PLAN 结论

- 三遍分析：`analysis/stage147_plan_research_after_g1_20260811/`
- 最新 ROMS develop 的 halo 接口与冻结 S32 同属已有 `Nvar` 聚合结构；直接移植没有新机制。
- 全面 Isend/persistent/double-buffer/async、专用 I/O rank、泛化 tracer materialization fusion 均因既有负结果或低 ceiling 不重开。
- 下一步仅做零机时 P0：对 BYE24BIO15 活动 `mp_exchange*` 调用生成邻接、版本与消费者表，寻找能够用现有 Nvar/A-D 接口合并且不跨 BC/nesting/consumer 的调用者侧 fusion island。
- P0 保守 wall ceiling `<=2%` 则静态关闭；`>2%` 且目标 `>=3%` 才能设计一个 A/A′/B 候选。

## 当前正式参考

S32 冠军 `118755216`，real `1753.876 s`，官方 26/26 PASS。PGO 路线存在同二进制跨复现的间歇性全长精度失败，不作为稳定父本。

## 输出生命周期

Stage 145/146 全部最新结果已经完成三遍分析，但本任务结束时不删除。只有下一任务开始、检查目标目录有效且三份分析文件存在后，才可提出或执行删除。
