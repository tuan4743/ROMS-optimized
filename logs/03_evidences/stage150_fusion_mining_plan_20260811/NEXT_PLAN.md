# Stage 150 execution order

1. 只读完成 t3dmix4 的 exact logical-byte、rolling-row dependency、boundary 和 cache-workset 账本。
2. 优先复用既有编译报告；若缺 exact source-mapped machine evidence，再单独申请一次 report-only compile。此时仍不写 candidate。
3. 只有证明净删 scratch 之外至少约 4 次 double load/point、无等价 buffer traffic、局部 conservative reduction >40%（目标 >=45%），才设计 candidate。
4. 若 150A 静态关闭，再生成 exact step2d 127-loop DAG；自动筛选后人工验证，组合局部 reduction 需 >=25% 才允许 build。
5. GLS/biology 不进入本轮扫描；避免扩大工具工程量和产生高误报率。
6. 任一候选进入运行仍执行 exact S32 A/A-prime/B lineage、短程两 B、轨迹检查和最终重复 26/26。
7. 本阶段没有模型输出；Stage 145/146 结果继续保留，不删除。
