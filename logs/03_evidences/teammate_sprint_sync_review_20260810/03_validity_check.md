# 队友 sprint 轮同步有效性检查

- 重读原始证据（`source_evidence/teammate_docs_20260810.txt` 含 nan/README.md、sprint/README.md、S42 设计文档、S46 计时与 vali 全文）而非信任摘要。
- 身份核对：
  - S32 提交二进制 md5 4eee6656（README 记录）↔ 提交记录 J118769218 = 29m22.506s，一致。
  - S42 3day `118818711` = 1750.1 s、二进制 `oceanM.s42_20260809.bak` md5 b2a17a27，README 记录一致。
  - S46 PGO 3day `118860553`：`TIMING_sprint_3day_118860553.txt` = real 28m34.554s = 1714.6 s；`vali_sprint_3day_118860553.log` 逐变量 26 项全部 ✅，最终判定"所有变量RMSE均在阈值范围内"；nan 二进制 `oceanM.s46_pgouse` = `oceanM.s46_PGO_best_20260810.bak` md5 `fcbfa6dc...`（远端 md5sum 确认，5,996,616 B）。
  - 正式运行 `118860640`（zya submit_pgo_full.sh）：sacct COMPLETED 28m57s；`process.time` = real 28m53.33s = 1733.3 s；`model.log` 含 `ROMS/TOMS: DONE...12:03:04 PM`；output/ 16 个文件；run.exit_code=0；run_metadata 记录二进制 `ompk-s32-pgouse/oceanM`（md5 93d9e574...，5,947,264 B）、64 任务、8x8、spread_numa16_ccx_2t、HPCX 2.7.4、OMP=2/KMP=0。该作业自身 vali 未由队友产出（zya `vali_pgo.py` 需 xarray，登录节点无）；vali 由同族 S46 PGO `118860553`（fcbfa6dc）提供 26/26。
- 矛盾检查：
  - Sprint README 顶部自述 2026-08-09 19:07 脚本事故清空重建——S1~S20 历史指向 nan/README.md；未发现重建版本与 nan/README.md 冲突。
  - S46 PGO 1day 两次：`118857903`（nan_s46_pgo_1day，00:17:17）与 `118860122`（retest，581.0 s）——以 retest 为有效。
  - **哈希归属已修正**：26/26 vali 成绩对应 nan 二进制 `fcbfa6dc...`（s46_PGO_best）；zya `93d9e574...`（ompk-s32-pgouse）是分别构建的 PGO 二进制，对应 1733.3 s 提交运行。两者均为 S32 基座 + prof-use。
  - S46 PGO 与我方 Stage-110 fast2 教训不冲突：fast2 是 `-fp-model fast=2`（重关联，u 超限），PGO 是 `-prof-use` 布局优化（保持 precise + no-fma，u=0.000052 正常）。
- Pass 1 valid: yes（证据直接来自远端原文件与作业记录，无转述断层）。
- Pass 2 valid: yes（计时/二进制/vali 三链互相印证；zya 提交作业自身 vali 待补但不影响 S46 结论）。
- 根因/性能/计分：队友 S42/S46 的 3day 全量成绩与官方 vali 均出自队友自建流程；本工作流未复跑，属 teammate/inherited evidence（按 SKILL.md 证据层级标记）。
- 复现要求：建议为 `118860640` 在队友作业环境（有 xarray）补跑官方 vali，或由我方独立复跑确认。
- 删除：不适用（未创建模型输出；本地证据保留）。
