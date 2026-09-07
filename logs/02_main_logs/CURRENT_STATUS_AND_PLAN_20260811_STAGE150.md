# 当前状态与计划（2026-08-11，Stage 150）

Stage 150 已完成 fusion-mining 计划审阅，尚未写候选、build 或提交作业。

第一优先为 `t3dmix4_tile` 内部 rolling-row biharmonic fusion，但不是直接 GO：其约占整机 CPU 5.00%，需要局部削减约 40%。Exact S32 逻辑访问账本显示，只删除 `FX/FE/LapT` scratch 的上界为 136/416=32.69%，整机仅约 1.63%。候选还必须净删至少 30.4 B/point，约四次 double 非 scratch 重载，且不增加等价行缓冲流量，才能进入实现。

第二优先为 `step2d` loop-DAG。Exact active `step2d.f90` 只有 127 个 DO 头；Stage 108 已测 Drhs/DUon/DVom 融合让 2D timer 快约 1%，但 wall 慢 1.7416%，不重跑。全 kernel mining 的静态晋级目标提高到局部 >=25%，自动提取只作 triage，必须人工审计。

执行顺序：先完成 t3dmix exact machine/static gate；只有 150A 关闭或完成后才启动 step2d DAG。GLS/biology 暂不扫描。正式 S32 `118755216 / 1753.876 s / 26/26` 不变。Stage 145/146 输出继续保留，无删除。

证据入口：`analysis/stage150_fusion_mining_plan_20260811/`。
