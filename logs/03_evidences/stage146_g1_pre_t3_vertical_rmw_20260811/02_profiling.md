# 第二次分析：热点、字节账本与风险

本阶段没有启动新 profiler；复用已验证的 S32 全长池化 profile：`pre_step3d=17.08% CPU`，其中 G1 覆盖该函数内水平 PRE 与垂向 PRE 的主体。CPU 份额不是 wall critical path，本页只给静态必要条件。

## 原路径

1. `pre_step3d.F:343-564` 计算水平 C4 flux，覆盖写 `t(i,j,k,3,itrc)`。
2. 第二个 OpenMP region 在 `596-822` 为每个 j 构造 `DC` 和垂向 `FC`，在 `815-817` 重新读取并覆盖 `t3`。
3. 活动的 AGE_MEAN/T_PASSIVE 分支关闭；BC、`mp_exchange4d` 与 `nesting(nrhst)` 都发生在这两段之后。

两网格物理内点的一个全 tracer state 约 770.0 MiB；producer store + consumer reload 的源码逻辑 footprint 约 1.504 GiB/每个 baroclinic step。该数值不是 DRAM 实测值，64-rank 小 tile 可能被 cache 部分吸收。

## strip 原型账本

- 64-rank、8×8 下粗网格 tile 约 45×41，细网格约 30×31，N=34，NT=17。
- OMP=2 时每线程使用一个连续半 j-strip：粗网格 21/20 行，细网格 16/15 行。
- `DCblk + Vblk` 的粗网格上限约 `2×45×21×34×8 = 514080 B`；加 C4 face/gradient line buffers 后预计约 0.55-0.65 MiB/thread。
- scratch 只容纳一个 tracer；它不随 NT=17 放大，不新增 MPI halo、contact 或全场扫描。
- strip 边界只重算 C4 所需的少量 y-face halo。两个 strip 相比整 tile，raw-y/gradient/final-y face 工作量的理论增幅约 6.8%/4.7%/2.4%（粗）和 8.8%/6.1%/3.1%（细）；x-face、vertical recurrence 和最终点更新不重复。

## 预期机制和不可夸大的边界

- 预期收益来自将 17-tracer 全局 `t3` 中间状态替换为单-tracer、strip-local cache 工作集；不是减少 subroutine call。
- 新 scratch 仍有一次 store/load，故不能宣称逻辑访存被完全删除；静态上仅能宣称把大工作集物化改为小工作集物化。
- Hygon PMU 的 cache/DRAM 事件不可用，最终只能用 matched wall、轨迹和软件 profile 判断。
- 风险包括 strip 边界 y-flux 重算、额外 index/branch、OpenMP 调度变化、scratch 超过私有 L2、浮点临时舍入差异。

## 晋级门槛

1. 原型必须保留 C4 公式、source/sink 通用分支、BC、mask、4-D halo 与 nrhst nesting。
2. A′ 必须从同一冻结树零改动重建并先通过 lineage。
3. 144/720 A′-B-B-A′ paired gain ≥3% 才允许完整 3 天；<2% 直接 STOP；2-3% 仅可复现一次，不得宣称晋级。

