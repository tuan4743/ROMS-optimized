# ifort2021 轴 2 计划 — 有效性核验（2026-08-06/07）

## 1. 事实链核验（pass 1 → pass 2 支撑）

- pow 9.20% 与静态归因交叉验证：perf children 树显示 pow 经 libiomp5 调度入口（与 5 个 -qopenmp 对象一致），
  objdump 显示 pow 重定位仅存在于 gls_corstep.o（40）与 biology.o（47）→ "pow 全部在 GLS+biology"成立。
- 候选 C 可行性由登录节点实测支撑（module swap 后 ldd 无 not found）——非推断。
- 候选 B 的"2021 支持 SVML"是编译器版本事实（oneAPI 2021.3.0 发布说明 + 2017.5 warning 实证对照）。

## 2. 与历史关闭路线的边界核验

| 关闭路线 | 为什么本计划不重开 | 本计划是否触碰 |
|---|---|---|
| 2017 编译轴（fast=2/-O2/IPO） | 2017 编译器 + GLS 吸收，实测全 STOP | 否：B 是 2021 编译器专属开关，新机制 |
| -xCORE-AVX2 / AVX256 | znver1 双泵 128-bit 硬件事实，2017 已测 −3.5% | 否：未列入候选 |
| GLS/biology pow 源码改写 | Stage 96 全部关闭（mathreuse/E071/nopow） | 否：B 是编译开关非源码改写 |
| halo/通信模式 | v24b–v28 五连败 | 否：C 是 MPI 库版本替换，非调用模式改动 |
| tiling/映射/OpenMP 扩展 | Stage 53/90/94 | 否 |

## 3. 门禁核验

- 每个候选 = 单一因果轴（C：仅 hpcx 模块；B1/B2：仅两个对象的编译开关）。
- ABBA 144/720（诊断，合法按组委会比例缩减），4n/64×2，8x8/8x8，W0 预热排除冷启动 outlier。
- 双 B 快 + 均值 ≥3% → 才授权全量 2592/12960 + 官方 26/26（26/26 为唯一精度门禁）。
- C 轨迹应逐位一致（数学库未变）；若不一致则标注异常并按浮点候选对待（全量验证）。
- 队列配额共享（QOSMaxCpuPerUserLimit）：提交前 squeue 刷新；队友作业（zya/nan）只读。
- 磁盘门禁 ≥10 GiB；输出根一律 `/public/home/fujiake/fjk/mcc_runs/`。

## 4. 结论有效性

本计划允许且仅允许：1 个零构建运行态 ABBA（C）+ 1–2 个构建型 ABBA（B1、B2 串行，避免同树并发构建）。
任一 STOP_BRANCH 即关闭该候选，不重复提交。所有结果回写 OPTIMIZATION_LOG 与 Skill 三件套。
