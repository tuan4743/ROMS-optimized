# Pass 1 - 读取与初步结论

- 日期：2026-08-02 +0800 / 2026-08-01 EDT
- 任务：按官方 PPT 中的双向嵌套正确性边界审阅 O33，并用论文和 ROMS 官方开源实现筛选下一步。
- 精确源码：`analysis/teammate_o33_sync_review_20260801/source_evidence/o33/ROMS__Nonlinear__nesting.F`
- 源码 SHA-256：`9d8434c7c7291309d4dd281b4c8531dff7ee988bfc038590301484516b53795c`
- 已验证父二进制：`5f1a137e...fcb9`，官方全程 job `118346383`，`real=2142.793 s`，26/26 PASS。

## 初步结论

O33 的 `nesting(n2way)` 依次执行：

1. `correct_tracer`：保留跨嵌套边界的示踪物守恒通量校正（第 284-293 行）。
2. `fine2coarse(...,r2dvar,...)`：把细网格的自由表面和二维动量反馈给粗网格（第 295-302 行）。
3. `set_depth`：基于新的粗网格自由表面更新深度派生量（第 304-312 行）。
4. `fine2coarse(...,r3dvar,...)`：反馈 17 个示踪物及三维 `u/v`（第 314-321、3697-3759 行）。

但 `fine2coarse` 末尾的周期交换和 MPI 交换没有按 `vtype` 分支（第 3767-3845 行）。因此：

- `r2dvar` 调用刚更新二维量，却同时交换尚未执行细→粗反馈的三维 `u/v/t`；后续 `set_depth` 并不消费这些鬼区值，之后 `r3dvar` 又会更新并再交换它们。
- `r3dvar` 调用刚更新三维量，却又交换本次调用未改写的二维 `Zt_avg1/ubar/vbar`；这些量已在前一个 `r2dvar` 调用中同步。

这不是改变网格、物理方案、生态变量或双向嵌套；候选修改只让每个 `vtype` 交换它本次实际更新的数组。

## 开源交叉证据

ROMS 官方 `develop` 分支的同名例程在交换区域明确使用 `IF (vtype.eq.r2dvar) THEN ... ELSE IF (vtype.eq.r3dvar) THEN ... END IF`，二维调用只交换二维量，三维调用只交换 `u/v/t`。这与对 O33 数据依赖的判断一致。

- 官方源码：https://github.com/myroms/roms/blob/develop/ROMS/Nonlinear/nesting.F
- 双向嵌套算法边界：https://doi.org/10.1016/j.ocemod.2012.03.003
- NEMO 通信优化方法：https://doi.org/10.5194/gmd-15-1567-2022
- 中国 NEMO 代码现代化：https://www.ams-journal.org.cn/website/article/doi/10.3969/j.issn.1671-6647.2021.01.007

## Pass 1 状态

`VALID` 作为静态源码/论文筛选结论。它不是已测加速，本阶段没有修改源码、编译、提交作业或生成模式输出。
