# Stage 156 Round 3（glibc mmap/trim 策略）——有效性独立校验

日期：2026-08-12。作业 119046362。

## 1. 数据来源独立核对

- `sacct -j 119046362`：State=COMPLETED，Elapsed 00:06:46，ExitCode 0:0（全部 step 0:0）。
- `slurm-119046362.out` 逐行含：二进制 md5（1fc3be38...）、规则 sha256（0ef5b45a...）、四腿 timing、`STAGE156_ROUND3_DONE` 哨兵。
- `logs/*.log` 全部含 `ROMS/TOMS: DONE`；四腿均 144/720（in 文件改写正则已由 harness 断言 n==1）。
- 二进制与规则哈希与提交时一致 → 无漂移。

## 2. 判定复算

- mean_A = (101.451+99.166)/2 = 100.3085 ≈ 100.309 ✓
- mean_B = (99.790+101.766)/2 = 100.778 ✓
- delta = +0.469% → **B 更慢**；both_B_faster = False（B2 > A2 且 B2 > A1）✓
- 远低于 2% 短门，更不达 3% 门槛 → 判无效成立。

## 3. 机制归因校验

- sys 四腿 67.8–68.4 s 平直 → mmap/trim 禁用无系统层效果，机制未作用于可见路径；与"低预期"设计一致。
- 与 Round 2（tcmalloc）机制隔离确认：Round 2 是 LD_PRELOAD 换库，Round 3 是 glibc 环境变量，两者不同代码路径，无重叠声明。

## 4. 有效性声明

- **VALID**：作业完整、哈希门通过、判定可复算、机制归因由 sys 数据支持。
- 候选关闭结论可靠；不进入全长验证（低于所有门槛）。
- 输出保留，删除不适用。

## 5. 对第四轮的含义

- 第四轮（计划：134,368 B Allreduce 微基准 alg6→alg5 门）与 collective 轴的 Round 1 区分点：Round 1 改的是 64K–4M 整体到 ring（alg4，实测回归）；Round 4 是精确单点 134,368 B 改到 rabenseifner（alg5），且以**微基准**先行——达不到约 70% collective 降幅就不跑 ROMS。机制编号不同（alg 4 vs alg 5）且试验形态不同（微基准 vs 整模型 ABBA）。
