# Stage 108 P0 结果：两个小优化组合包均 STOP_BRANCH（2026-08-06）

## P0-1 biology-only fast=2 —— STOP_BRANCH（−2.82%）

- 构建 `118661425` OK：`oceanM.O33_biofast` = `699ba3d6...`；mk 只改 biology.o（+fast=2/-no-prec-div/-fp-speculation=fast），gls_corstep.o 保持 `-qopenmp -no-heap-arrays`（precise）。
- ABBA `118661763`（4n/64×2，144/720，双 leg +KMP_HOT_TEAMS）：mean_A 125.594 / mean_B 129.142；**gain −2.8246%**，both_B_faster=False，STOP_BRANCH。trajectory 5/5 SAME。
- Profile G02（A1→B1）：**Biology 561.4→458.4（−18.4%，设计命中）**；**GLS 982.6→1194.9（+21.6%）**；2D −1.0%。
- **机制发现（推翻 Stage 104 归因）**：gls_corstep.o 编译参数完全未动，GLS 仍 +21.6% → GLS 吸收与 gls fp-model 无关，而是 **biology fast=2 的 exp/pow 数值变化经耦合场传播进 GLS 迭代，改变其浮点路径**。这解释了 nan S10（fast=2+HOT_TEAMS，2086.3 s）在本工作流不可复现（S10 树有其他系统差异覆盖 GLS 吸收）。
- 附带结论：`-fimf-use-svml` 在 Intel 2017.5 不支持（warning 忽略）；SVML 只能经 fast=2 间接启用——已被本实验覆盖。

## P0-2 step2d 三循环融合 —— STOP_BRANCH（−1.74%，修复版）

- 首版 patch（difflib 相对行号）产生残缺代码：主体循环 Drhs 写入与 DUon 循环丢失 → B1 在 00:15 出 NaN（`6fda1d8a...` 轨迹）。诊断发现后改用完整文件替换 + `diff -u` 生成正确 patch（`d3b00d2e...`）。
- 修复版构建 `118670610` OK：`oceanM.O33_s2dfuse` = `1957c79c...`；仅 step2d.o 重编（`45a7483d...`）。
- ABBA `118672304`（4n/64×2，144/720）：mean_A 126.088 / mean_B 128.284；**gain −1.7416%**，both_B_faster=False，STOP_BRANCH。**trajectory 5/5 SAME `fa498694...`（修复版位级一致 ✓，融合逻辑正确）**。
- Profile G02 2D kernel（A1→B1）：1035.5→1025.3（−1.0%）——融合本身略减目标 timer，但墙钟净负。
- **机制结论**：8x8 tile 下 Drhs 数组 ≈30×31 点 ≈7.5KB 全驻留 L1，三循环本就无 cache 压力；融合省掉的 store→load 往返被额外循环控制/IF 分支/寄存器压力抵消，净负。IISc 论文的 1.6% 来自其大 tile（cache 缺命中场景），本配置（64 rank × 8x8）不适用。

## 组合结论

| 候选 | 墙钟 | 轨迹 | 判决 |
|---|---|---|---|
| biology-only fast=2 | −2.82% | SAME | STOP（GLS 吸收，与 Stage 104 同模式） |
| step2d 三循环融合 | −1.74% | SAME | STOP（L1 驻留，无缓存收益） |

- 用户建议的"小优化组合包"两项均被 O33 实测否决：数学库方向受 GLS 耦合吸收（结构性问题，非编译参数问题）；step2d 数据移动方向受 8x8 tile 的 L1 驻留特性抵消。
- **唯一仍站立的活性候选 = KMP_HOT_TEAMS（2109.183 s，26/26）**；P1 方向（临界路径 probe、HPC-X 2.11）是剩余可能性，但根据 Stage 90 教训（OpenMP 快但墙钟不动）与 perf 的 16.9% progress 记账，通信栈换版本预期 <2%。
- 输出生命周期：所有 run root + 构建树保留；无删除。
