# 第三次分析：有效性复核

- Pass 1 有效：原始 `summary.tsv`、`lineage_gate.txt`、`SHA256SUMS` 与 `harness.log` 已本地保留；作业和每条腿均正常完成。
- Pass 2 有效：只把 A2 识别为统计异常嫌疑，没有删除它，也没有把该判断当成根因证明。
- 正确性证据边界：短程轨迹一致只证明诊断时间窗相同；没有输出时刻，不能替代完整 26/26 官方验证。
- 性能证据边界：B 未运行，因此本轮既不是正收益也不是无效优化，不计入“连续两次无效”规则。

结论：`VALID_LINEAGE_STOP / REPRODUCTION_AUTHORIZED / B_UNMEASURED`。按照永久规则，在不删除最新结果且空间充足时可直接复现。

