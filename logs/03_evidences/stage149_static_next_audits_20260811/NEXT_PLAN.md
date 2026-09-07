# Stage 149 后续计划

日期：2026-08-11 EDT

1. 冻结 halo caller aggregation 与 G1 t3 materialization 两条路线，不写补丁、不跑模型。
2. 继续保留正式基线 S32：job `118755216`，1753.876 s，官方 26/26 PASS。
3. 下一优化候选必须是新的具名机制，并在静态阶段给出保守整机 ceiling `>2%`、目标 `>=3%`；不得仅凭热点占比授权。
4. 优先级：CPU/NUMA/cache 专用参数仍只允许零代码 A/B 且必须有机制；否则转交付收尾。已有 compiler、rank mapping、tile、generic async/persistent、I/O、宽泛 OpenMP 与 materialization fusion 关闭结论不重跑。
5. 若产生新候选，仍执行 exact S32 fork、A/A-prime lineage、两 B 均快、轨迹一致、完整 2592/12960 与重复官方 26/26。
6. Stage 145/146 输出保留到下一个任务开始；删除前必须再次确认目录和三件分析文件，不在本阶段删除。
