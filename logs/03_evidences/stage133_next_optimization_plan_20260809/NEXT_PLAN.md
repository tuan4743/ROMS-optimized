# Stage 133 优化路线与最小机时实验计划

## 决策摘要

下一步不是“任意参数穷举”，而是用零模型机时的精确 S32 编译报告将搜索空间压缩到最多一个循环。找不到能清楚说明“哪一行、什么 blocker、多大局部降幅、如何保持公式/依赖”的候选，就冻结 S32。

## Stage 134：零运行 compiler-report 门

1. 等当前四节点作业退出后再执行；本阶段不提交模型作业。
2. 在 `/public/home/fujiake/fjk/agent_tmp/isolated/work/` 下新建私有树，仅从 `backup_S32_src_20260808.tar.gz` 解包，先核对归档 SHA。
3. 冻结编译器版本、include/library、makefile、全局/对象级 FFLAGS、LDFLAGS 和环境模块清单。
4. 用冠军生产配方为六对象产生 report-only 证据：`pre_step3d`、`step3d_t`、`gls_corstep`、`step2d`、`biology`、`t3dmix`。
5. 保存预处理源、每条编译命令、`.optrpt`、对象 SHA、链接报告和 disassembly；验证增加 report 选项没有意外更改代码生成。
6. 将每个 blocker 映射到源码循环和 PROFILE 分池，应用 11.71/12.01/14.66/18.19/22.83/30.80% 的最低局部降幅门。
7. 最多选一个候选；若全部不达门，写三遍分析并 STOP，不构建 B。

## 候选语义门

候选必须同时满足：

1. 不改变每个网格点的物理/生态公式、系数、邻点模板、反馈值和反馈时刻；
2. 只解除可证明的假依赖、恢复单位步长，或消除不必要临时量/装载；
3. 不使用 fast-math、低/混合精度或近似数学；
4. 不属于既有关闭路线的重复；
5. 乐观报告不够；必须有绑定到全长分池的保守 >2% 全程上限。

## Stage 135：条件 A/A′/B harness（只在 Stage 134 放行后）

### 构建

- A：冻结冠军 `d9a45dbb...e5a2`。
- A′：从冠军归档零改动 clean rebuild。
- B：从同一 A′ 树/工具链仅做一处可逆候选修改。
- 记录 archive/source/makefile/compiler/object/link/runtime SHA 和完整 flags。

### 单次分配、条件执行

1. `W0(A)`；
2. `A1 - A′1 - A′2 - A2`；
3. 中途谱系门：全部 DONE、trajectory 相同，`|mean(A′)-mean(A)| <= 1.5%`，且无单腿超出对照包络 1.5% 的同向漂移。失败即 `HARNESS_LINEAGE_FAIL`，不运行 B；
4. 谱系门通过才继续 `A′3 - B1 - B2 - A′4`。

该设计最多 1 次四节点分配、8 个短诊断样本加 1 个 warm-up；若 A′ 失败，中途自动终止 B，避免混杂归因。

### B 决策门

- `<2%` 或任一 B 不快：`STOP_BRANCH`。
- `2-3%`：只在两个 B 都更快、目标计时器/硬件证据同向，且空间足够时允许一次保留原结果的再现；不直接全长。
- `>=3%`、两个 B 都更快、trajectory 相同且机理计时同向：可进入 Stage 136。

## Stage 136：最终全长（条件）

- 完整 `NTIMES=2592 12960`；
- 四节点上限内的实际最优布局；
- `time mpirun ...`的 `real` 为性能结果；
- 官方 `vali.py` 26/26 全部 PASS；
- 完成三遍分析后才允许更新冠军，并在下一任务开始前保留最新输出。

