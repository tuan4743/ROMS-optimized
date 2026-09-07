# 下一步

1. 冻结 G4 分支，不重跑、不做全长、不做官方验证；其 0.4288% 低于有效门。
2. 目前自 Stage-144 DAG 后只有一个已测无效候选；尚未触发“连续两次无效后强制 PLAN+联网研究”。
3. 若继续 tracer pipeline，只允许回到尚未测的 G1 PRE-internal provisional `t3` → vertical RMW，先证明它能移除完整 materialization 且 scratch 不等价于全场；否则转交付收尾。
4. 任一新运行前，先完成本阶段 skill/BN/日志同步并只读检查队列、磁盘和输出生命周期；不得删除 `118930470` 或 `118930762`。
