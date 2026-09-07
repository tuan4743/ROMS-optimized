# Stage 147 下一步计划

1. **P0，零机时**：生成 BYE24BIO15 活动 `mp_exchange*` 调用邻接表和版本化数据流表。
2. **P0 ceiling**：量化每个可疑相邻调用可删除的启动、等待和 pack sweep；`<=2%` 全部静态关闭。
3. **父本刷新**：在任何构建前只读同步队友当前最佳；若父本移动，从新父本重新做 P0，禁止把 S32 结论直接外推。
4. **唯一可能的 P1**：若 P0 找到 `>2%` 且最好 `>=3%` 的真实 island，只实现一个调用者侧聚合候选；A/A′/B 同树、单变量。
5. **运行门禁**：144/720 A′-B-B-A，轨迹一致、lineage `<=2%`、两条 B 均快且 mean gain `>=3%` 才允许全长。
6. **验证门禁**：全长完整 `2592/12960`，官方 `vali.py` 26/26；候选至少两次全长 26/26 才认为稳定。

明确不做：重新测试已测 j-strip G1/G4、整文件 Isend/persistent/double-buffer、泛化 async、专用 I/O rank、移植 develop `mp_exchange.F`、无候选目的的 P1 探针。

Stage 148 修正：理想的寄存器/O(N) column-local G1 不因 j-strip `-0.1865%` 自动关闭，但只能做静态五门审计。必须证明 PRE conservative reduction `>12%` 且 qopt/反汇编确认真实 full-field store+reload；否则 `REJECT_BEFORE_BUILD`。详见 `../stage148_g1_five_gate_reassessment_20260811/G1_FIVE_GATE_SPEC.md`。
