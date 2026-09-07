# Stage 158 新机制候选——有效性独立校验（2026-08-12）

## 1. 数据来源核对

- P1 census 聚合：Stage 152 `probe/p1_census_119002058/p1_rank_*.tsv` 拉回本地 `/tmp/opencode/p1census/`，流式脚本重算（避开远端 OOM）；64 文件、640 万行、0 overflow 与远端 gate 记录一致。
- BARRIER 判定复算：128 事件 = 64 rank × 2；时间跨 3.0s；gap 均值 0.4464s、极差 <0.2ms → paired = min(max(0,gap−med), max(0,med_mpi−mpi)) = 0 ✓。
- 队友 README 同步：只读读取 `/public/home/fujiake/nan/sprint/README.md` 尾部（s57/s58/节点择优段），未写任何队友文件。
- THP 状态：登录节点 sysfs 只读 cat。

## 2. 推理复算

- 候选 A 天花板：TLB 覆盖 6MB（L2 1536×4KB）vs 工作集数十 MB → miss 面存在；3-5% miss 时间 × 50% CPU = 1.5-2.5% 墙钟——区间含过门可能，须实测（保守声明：也可能为 0）。
- 候选 B：2.31%×(1−1/s)@s=1.0-1.2 = 0-0.4%？复核：池 2.308% wall，若 s=1.2 → 2.308×(1−1/1.2)=0.385%；s=1.65（理想）→ 0.91%。**<2% 门确认**。
- 候选 C：census Allreduce mpi_s 合计 1.5s/诊断(~100s) = 1.5% 硬上限 ✓。

## 3. 独立交叉验证

- BARRIER=启动同步的判定与 Stage 93 skew probe（case c rejected：输入路径非 straggler）方向一致。
- 与 Stage 152 判决（ceiling 0.441%）一致：本聚合独立算出 paired=0 的 barrier + 0.44% 的 allreduce——互相印证。
- 候选 A 与 Stage 139 P1 设计"THP sysfs 条件可用"记录衔接（当时未测）。
- 候选 B 与新规则"unmeasured variant of a previously confounded result"条文直接对应。

## 4. 有效性声明

- **VALID**：所有数据可溯源、判定可复算、机制互不重复。候选清单可靠，提交前需用户授权。
- 输出生命周期：本分析零模型输出；census 本地副本在 /tmp（非项目目录，不计数）。无删除。

## 5. 待授权

- A：1 分钟只读审计作业（THP 状态 + 权限）→ 若可写则设计 ABBA。
- B：S47 冻结源 fork + 1 构建 + 1 短 ABBA（约 13 分钟机时）。
- C：微基准（约 2 分钟机时）。
