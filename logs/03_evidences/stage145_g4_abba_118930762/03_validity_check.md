# 第三次分析：验证前两次分析的有效性

## 独立交叉检查

1. `sacct`：主作业、batch、extern 与 9 个 orted steps 全部 `COMPLETED`，主 exit `0:0`。
2. `summary.tsv` 有 W0 加 8 条计分记录；每条 `rc=0`、`done=yes`、`nc_count=0`。
3. 九腿 trajectory SHA-256 均为 `fa498694109f9a578ca07133f55d8e58961dde55666ca5347707d86eb40e44b0`。
4. harness 启动前核对 frozen A、A′、B、输入文件和 `coll_rules.conf` 五组 SHA；运行脚本 SHA 为 `2f3e4e0c...b86c`。
5. 谱系控制在前后双序中通过：A′ 相对 A `+0.7575%`，低于 2%；因此 B 与 A′ 的差可以归因于两文件候选，而不是弱旗标错树。
6. 重新计算候选均值：`(104.667+104.290)/2=104.4785`；`(104.283+103.778)/2=104.0305`；`(104.4785-104.0305)/104.4785=0.4288%`，吻合 decision 文件。
7. 原始 summary/lineage/decision/harness/rankfile 的 SHA-256 分别为 `7f4d2802...7992`、`44999d61...e4f`、`6d762697...8c3`、`6dd59ca6...79e`、`54c9ad6a...03e8`。

## 最终判定

`VALID_DIAGNOSTIC / STOP_BRANCH / NO_FULL_OR_OFFICIAL_VALIDATION`。

- 正确性边界：短程 trajectory 一致，不等同于官方 26/26；由于性能门失败，不应花费全长机时做官方验证。
- 性能边界：`0.4288%` 是匹配短程诊断值，不可外推为正式 3-day gain。
- 生命周期：`118930762` 及 harness-only `118930470` 输出保留；本任务结束不删除。若下一任务考虑清理，必须再次核对本目录三个分析文件存在且远端目标路径精确有效。
