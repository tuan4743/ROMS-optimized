# Stage 141 本地资料同步：有效性与完整性检查

日期：2026-08-10 EDT。

## 检查标准

- 主工作区和 BN 的同步目标逐文件 SHA-256 一致。
- 项目内、BN、安装版 handoff skill 的 `SKILL.md`、规则和 references 逐文件一致。
- Stage 139b 与 Stage 141 都存在 `01_read_summary.md`、`02_profiling.md`、`03_validity_check.md`。
- 主/HPC 台账均记录日期、路径、内容、结果。
- UTF-8 文本不出现替换字符。
- 不执行远端命令，不创建/删除模型输出。

## 结果

本文件先声明验收门；同步完成后以本次终端哈希清单为最终核验依据。第一次读取与第二次差异分析均可由主台账和 handoff 顶部终局记录交叉验证。

输出生命周期：本任务没有模型输出，删除不适用；既有 Stage 139b 输出继续保留。

## 最终验收记录

- 主/BN 三个分析目录：文件数分别 `3/3`、`4/4`、`3/3`，递归 SHA-256 差异均为 `0`。
- 项目内/BN/安装版 handoff skill：各 `10` 个文件，两组递归 SHA-256 差异均为 `0`。
- 核心入口主/BN SHA-256 一致：README `ee62191fab245b2d...`；状态文件 `dbd5712781ce8d69...`；主日志 `517d533a4a54f083...`；HPC 日志 `daec3059ef2621a4...`；RESULTS `3b6cff21fe80c71d...`。
- `contest_log.py check`：主目录与 BN 均 PASS，各识别 `14` 个 stage entries。
- `RESULTS.csv` 可由 PowerShell `Import-Csv` 正常解析，共 `7` 行，末行 Stage `141 / static`。
- UTF-8 替换字符扫描：核心入口和台账 `0` 项异常。
- 未执行 SSH、Slurm、模型、验证或删除命令。

最终判定：三次分析均有效，`STATIC_SYNC_VALID`。
