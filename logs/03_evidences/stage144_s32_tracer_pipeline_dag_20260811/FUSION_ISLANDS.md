# S32 tracer fusion islands

## 判定门槛

- 既有全长 profile：`pre_step3d` 17.08%，`step3d_t` 16.66%，合计 33.74% CPU。
- 若只优化这两个池，要获得 2% 整体 CPU 收益，至少需减少它们合计时间的 `2/33.74 = 5.928%`；实际 wall critical-path 门槛可能更高。
- 两网格物理内点（359×326×34×17 与 235×245×34×17，real*8）：一个完整 tracer state 约 770.0 MiB；一次全场 store+later-load 的源码层逻辑访问 footprint 约 1.504 GiB/每个 baroclinic step。它不是 DRAM 流量下界：64-rank 小 tile 可被 cache 部分吸收，而且该数字不含 halo、写分配和 tile padding，不能直接换算为时间。

## G1：PRE 内 `t3` provisional write → vertical PRE RMW

**颜色：绿（首选静态候选）**

- producer：`pre_step3d.F:555-559` 写水平预测 `t(...,3,itrc)`。
- consumer：`pre_step3d.F:815-817` 读取同点值并叠加垂向平流。
- 冻结宏下，二者之间的 `AGE_MEAN && T_PASSIVE` 分支不活动；无外部 routine 使用 `t3`。
- 可行重构形态：按 `j × tracer` 保留一条/一列 provisional 值，完成垂向通量与 `DC` 递推后只写一次最终 `t3`。保留 PRE 末端 BC/halo/nrhst，故不触碰嵌套语义。
- 可移除访问：至多一个 `t3` 全场中间 store+reload 的逻辑 footprint；最终 `t3` store 仍保留。实际 DRAM 减量必须由后续硬件计数或 wall/profile 证实。
- 风险：当前水平段按 `k` 并行、垂向段按 `j` 并行；重排会改变 OpenMP 粒度、private scratch 和浮点执行顺序。必须先做单 tile 依赖原型和编译器向量化报告，不能直接全模型改写。

## G2：PRE `t_nnew` base write → `t3dmix4` final RMW

**颜色：绿/黄（语义直边，实施复杂）**

- producer：`pre_step3d.F:842-896` 计算显式垂扩散/边界通量并写 `t_nnew`。
- consumer：`t3dmix4_s.h:455` 加入水平双谐波贡献。
- 中间 `prsgrd` 不直接访问跟踪的 tracer 字段；`t3dmix4` 只用 `t_nrhs(=t_nstp)`、`Hz_old` 计算贡献。
- 真正消除 materialization 的实现不能只是交换调用顺序；需要把 PRE base 与 `t3dmix4` 的最终 Laplacian 贡献在同一次最终写回中相加。
- 难点：PRE base 依赖垂向 flux column、`Akt/z_r/btflx/stflx`，而 `t3dmix4` 依赖二维双谐波 stencil。可先让二者产生小粒度 tile/strip scratch，再在 `t3dmix4` 尾部合并；若 scratch 与完整 4-D state 等价，则机制失败。
- 晋级条件：静态 scratch 上限明显小于完整 tracer state，且可证明没有新增 halo/全场扫描。

## G3：biology writeback → CORRECT 对生态 tracer 的第一次 RMW

**颜色：黄**

- biology 在 `bio_UMAINE15.h:447-532` 将多个生态/物理 tracer 装入 column-local `Bio`，跨变量耦合更新后于 `1817-1822` RMW `t_nnew`。
- 当前配置没有活动的 `TS_MPDATA` entry halo；biology 后直接进入 `step3d_t`。
- 理论重构：保留 `Bio` column，直接接入该 `j` 上的 CORRECT column pipeline，避免生态 tracer 的 biology writeback 后再读。
- 屏障：biology 是跨 tracer coupled；CORRECT 水平 C4 stencil 读取邻近 `t3`，且现有 OpenMP 外层不同。只能以完整生态 column 作为原子岛，不能逐 tracer 提前。
- 因实现风险和调度损失，优先级低于 G1/G4。

## G4：`step3d_t` 内 horizontal → vertical advection → implicit VDIFF

**颜色：绿（首选静态候选）**

- 三段之间无外部 routine、无 nesting call；共同目标为 `t_nnew`。
- 可行重构形态：为一个 `j × tracer` column 建立有限 scratch，按原公式依次加入水平通量散度、垂向平流，再做隐式三对角求解，最后只写一次 `t_nnew`。
- final BC/4-D halo 与 `n3dTV/n2way/ngetD` 保持原位置和语义。
- 屏障：C4 水平 stencil需要邻近 `t3`；垂向 solve 是 `k` 递推，不能 `collapse(k)`；必须保留 `j` 邻接通量的一致性和诊断项（若活动）。
- 这是“拆开大函数后重组 column island”，不是合并 subroutine call。

## 红区：本阶段明确不做

- 将整个 PRE 与 CORRECT 提前/合并：被 `nrhst` 和新版 `Hz/Huon/Hvom/W/Akt` 切断。
- 删除 final `t3` 或 `t_nnew`：分别仍被 contact/halo 和双向嵌套/下一时刻 donor 使用。
- 逐 tracer 穿越 biology：破坏跨生态变量耦合。
- 跨 halo 直接用未交换 interior/boundary 混合版本：改变嵌套边界语义。
- 通过改网格、公式、时间步或变量数获得收益：违反赛题边界。

## 下一阶段（仍先不跑模型）

1. 对 G1 做 loop/scratch 生存期草图，核算每 thread 工作集和写回次数。
2. 对 G4 做 `j × tracer × k` 的 exact-order 伪代码，标出 C4 face flux 的最小 strip。
3. 用编译器优化报告与静态字节账本二选一筛掉收益不足候选。
4. 仅当静态账本显示可移除至少一个完整 tracer store+load，才授权实现 isolated patch；先 144/720 matched A′-B-B-A，再考虑完整验证。
