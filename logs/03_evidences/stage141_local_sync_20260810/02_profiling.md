# Stage 141 本地资料同步：差异剖析与同步结果

日期：2026-08-10 EDT。

## 差异剖析

- 主工作区/安装版 handoff 的最新进度文件一致，BN 的进度、计划和证据索引落后。
- BN 缺少 Stage 138 P0 contact 映射证据和 Stage 139b PGO 终局三遍文件。
- 主入口文档对正式最佳结果的数值仍正确（S32 1753.876 s，26/26），但“下一步”已漂移：PGO 必须关闭，P1 只能作为条件式诊断。
- 主 `.hpc-skill` 日志最后停在 Stage 139 CPU/cache 计划，需补 Stage 138 P0、Stage 139b 终局及 Stage 141 同步记录。

## 同步后的当前事实

- 正式最佳：S32 `118755216 / 1753.876 s / 26/26 PASS`。
- Stage 139b：PGO/s46 谱系因同二进制重复全量 PASS/FAIL 分裂而关闭；不得把 `1714.6 s` 或 `fork_norhoomp` 写成稳定候选。
- Stage 138 P0：contact ownership 与 late ranks 对齐为阳性，但可移除 wall 天花板尚未证明；P1 仍为条件式一次短诊断。
- CPU/cache：只允许并入 P1 的只读 NUMA/page/THP/TLB 遥测，不另开盲扫。

结果类型：文档同步与证据修复，不构成新的模型性能测量。
