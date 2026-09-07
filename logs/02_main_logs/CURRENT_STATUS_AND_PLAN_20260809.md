# 当前状态与计划（2026-08-09 Stage 139）

## 当前最佳

S32 父本：作业 `118755216`，`1753.876 s`，官方验证 `26/26 PASS`。冻结二进制 SHA-256：`d9a45dbbc351a3e386a504c87d355f0db2197c6c6bdec2b5eb2b2276b36fe5a2`。

唯一源码父本：`/public/home/fujiake/nan/sprint/backup_S32_src_20260808.tar.gz`，SHA-256 `615ee7173c015eccc13ae8e3b193092d396817ae4a18648b3d7b55a517087d3e`。现在 s22b 目录的裸 `oceanM` 是另一个提交重建，不是冠军。

## Stage 134-137 结论

- Stage 134 取得 ifort 2021.3 六热点编译报告，但 A′ 与冻结冠军不一致，报告旗标也改变 IPO codegen。因此报告只用于静态筛选，不用于性能归因。
- GLS 两段 Thomas 前扫占全部代表 rank 样本仅 0.3224%-0.4772%，完美消除也不到 0.5%，已停止。
- Stage 135 将 biology 辐射传输循环换序：主循环确实以 4 宽向量化，但两个 `EXP` 仍串行，ifort 仅估计 1.070x。
- 现有 perf 中整个 biology 只占 5.93%-6.75%。即使把 1.070x 错算到全部 biology，整机收益上限也只有 0.4416%；实际更低，因此不提交模型实验。
- Stage 134/135 均未运行 ROMS 时间步、未产生模型输出、未做官方验证；所有私有构建与审计证据保留，无删除。
- Stage 135 后按连续两次无效规则进入研究重置。新发现：GLS 至少 20 个 `pow` 位于已向量化循环中，但数学调用仍串行；标量 pow 占代表 rank 样本约 6.7%-7.3%。
- ifort 2021.3 明确支持 precise/source 模式下的 `-fimf-use-svml=true:pow`。该路线不同于旧 `fast=2`，只计划改变 GLS double-pow 的库实现。
- Stage 137 作业 `118826584` 已完成对象编译、报告和六次正式微基准；Slurm 最终 `FAILED 127:0` 仅因计算节点缺少后处理用 `python3`，不是候选失败。
- N1 只增加 `-fimf-use-svml=true:pow`，使八-pow GLS 核心循环从不可向量化变为 4 宽向量化；微基准中位数加速 `1.719831x`，两百万 double 最大相对差 `4.326e-16`、最大 `2 ULP`，机器静态门全部通过。
- 但 Stage-90 实测已证明 3-D compute 的局部节省会转化为 MPI 等待；Stage-93 P3 复核中 GLS 与 4D-halo 等待相关仅 `0.157930`，4D 临界到达 top-8 与 GLS 最重 top-8 交集为 0。因此 selected-rank pow 份额不能作为 wall 临界份额，precise-SVML 独立候选不晋级模型运行。
- 当前结论为 `S32_FROZEN_PARENT / STAGE137_STATIC_VALID_BUT_CRITICAL_PATH_STOP`。冠军仍是 `118755216 / 1753.876 s / 26/26 PASS`。

## Stage 138 关键路径计划

- 零机时复核确认：唯一接近门槛的未闭环行为仍是细网格 `step2d` 到后续 halo 的 rank 到达偏斜，完美再平衡上限只有 `1.81-2.57%`。
- `step2d` 编译报告已有大量内层向量化，不支持继续广撒网强制 SIMD；Stage 90 也证明普通计算加速会转化为 MPI 等待。
- 第一优先级改为 P0：读取不可变 contact NetCDF，把接触点/供体所有权映射到当前 8x8 tiles，与 Stage 93/127 straggler 图做相关性和 top-k 重合检验。该步骤不运行模型、不修改网格。
- 只有 P0 为正或仍有歧义，才允许一次 `144/720` 的 P1 相位时间戳探针，拆分 pure-step2d、contact supply、pack/communication 和 halo wait；内存累计、结束时一次输出。
- 只有 P0/P1 证明 contact 位于临界 rank，才静态审阅预分配、多字段批量 2-D contact 通信。不得重做 Stage 95 的每调用分配+微小 P2P。
- 当前状态：`PLAN_VALID / ZERO_MACHINE_TIME / NO_MODEL_CANDIDATE_YET`。详细三遍分析：`analysis/stage138_critical_path_plan_20260809/`。

## 下一步

1. 执行 P0 零运行 contact-density 映射。
2. 若 P0 阳性/含混，再设计并提交至多一个 P1 最短诊断；同时附带 NUMA/page/THP/TLB 只读遥测，避免额外 Cache 调参作业。
3. 未证明保守可移除 wall 上限大于 2% 前，不构建通信/循环候选。
4. 任何后续 B 仍要求冻结 S32 同树 A/A′、短测 >=3%、两个 B 均更快、机理一致，再做完整 `2592/12960` 和官方 26/26；细网格 `u` 首先检查。

## Stage 139 CPU/Cache 特化结论

- 当前 16 ranks/节点已均匀分配到四个 NUMA 域，每 rank 两线程同域；CPU governor 已是 performance。
- 全局 64B 对齐实测 `-0.7817%`；`step2d -no-heap-arrays` 局部变快但整模约慢 1.69%；通用 prefetch/unroll、streaming store、affinity spelling 已关闭。
- 仍值得检查的是运行中真实页放置、THP/TLB，以及 critical `step2d` 数组 leading-dimension 的 cache-set 冲突。
- 最省机时的方法是把这些遥测并入条件式 P1，而不是另开 Cache 参数 DOE。三遍分析：`analysis/stage139_cpu_cache_specialization_plan_20260809/`。

## Stage 138 P0 已执行（2026-08-10）：contact 密度映射 POSITIVE 对齐，天花板未证

- 三遍分析：`analysis/stage138_p0_contact_map_20260809/`。零机时；接触文件 `SCS_Dongsha60_contact.nc` SHA `bff3d2ac...`（17026 pts，粗 359x326/细 235x245，refine 5）只读映射到 8x8/8x8（rank=Jtile*8+Itile）。
- **粗网格 G1：100% contact 流量（供给供体 + 反馈接收）位于中心 6 tile（ranks 35/36/37/43/44/45）** = Stage-93 G2 2D-halo late ranks（top-8 重合 6/8）与 G1 point-gathering late ranks（5/8）；rank 36 独收 63% 反馈点。
- **细网格 G2：100% 供给插值点沿边界环（西列最重 3643 vs 东 2874 pts），内部 0 点** = Stage-93/127 4D-halo late ranks：Pearson(recv_g2, h4 wait) = **−0.8935**（Stage-127 step2d 签名 −0.8834 精确复现），top-8 重合 6/8；recv_g2 vs step2d CPU **+0.8239**。
- 机制源验证：`nesting(n2dPS/n2dCS)` 在 2D fast loop 内紧接 `step2d` 调用（`main3d.F` 593/614/640/656+），`get_composite`→`get_contact2d` 为接收侧插值/装配（`nesting.F` 1983-2236）。
- 判决 `P0_POSITIVE_ALIGNMENT / CEILING_UNPROVEN / NO_MODEL_CANDIDATE`：对齐通过（双网格均指向 contact 供给 ranks）；但静态点量（每 tile 0.3-4.4k）对 tile 2D 窗口占比小，contact 纯算术无法静态证明 >2% 可移除墙（墙时间在 halo 等待；完美再平衡上限 1.81-2.57%）。不构建、不提交、零模型机时。
- 下一步（条件）：P1 相位时间戳探针（一次 144/720；内存累计、单次输出；拆分纯 step2d 算术 / contact 插值装配 / packing / 2D+4D halo 等待 / 嵌套反馈同步；轨迹中性；3 重复按 rank 持续），并合并 Stage-139 的 NUMA/page/THP/TLB 只读遥测。P2 禁止重做 Stage 95 的每调用分配+微小 P2P。

最新结果三遍分析：`analysis/s32_s137_precise_svml_118826584/`。Stage 137 的原始编译/微基准证据全部保留；没有模型输出或删除。
