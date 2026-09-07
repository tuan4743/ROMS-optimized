# Stage 151A — tracer blocking：第二次分析（静态 profiling）

## 精确位置

- `pre_step3d.f90:279-405`：水平 C4，`FX/FE/grad` 为 OpenMP PRIVATE；`Huon/Hvom/Hz/pm/pn` 为共享输入。
- `pre_step3d.f90:414-500`：`DC` 已在 tracer 循环外计算；B=2 只能复用 `W/pm/pn`，不能删除 DC 计算。
- `pre_step3d.f90:513-560`：垂向扩散，`Akt` 由 `ltrc=MIN(NAT,itrc)` 选取，但 tridiagonal/tracer scratch 独立。
- `step3d_t.f90:249-415`：水平段同构，但夹有 point-source 与 nesting boundary-flux 语义。
- `step3d_t.f90:427-558`：垂向 advection + implicit VDIFF，每 tracer 独立 `FC/BC/DC/CF` recurrence。

## 字节上界

以水平主通路每 tracer/cell 的有利逻辑模型估算：两向 flux + final update 至少约 176 B；B=2 最多省 `Huon/Hvom` 8 B/tracer 与 `Hz/pm/pn` 12 B/tracer，约 20/176=11.36%。计入先行 gradient/face sweeps、source/BC、scratch load/store 后低于 9%。垂向路径的共享 load 比例相近，但 recurrence scratch 不可合并。

把 11.36% 错误地乘整个 PRE+CORRECT 池会得到 3.83% CPU，这只是不可实现的绝对乐观上界：blocking 不覆盖两个函数的全部路径，且共享场 cache 命中仍需 load-port、不会等价转化为 wall 收益。保守按“最多一半热点路径受益 × 5–10% 局部执行削减”投影，仅约 0.84–1.69% whole CPU。

另一个硬门禁失败：现有 exact S32 `Build__pre_step3d.optrpt` 与 `Build__step3d_t.optrpt` 仅有 601 B 编译头，没有目标 loop 的寄存器压力/向量化证明；无法证明 B=2 不会因双份 `FX/FE/grad/FC/BC/DC/CF` 发生 spill 或降低 SIMD。

结论：`CONSERVATIVE_CEILING_BELOW_2 / NO_BUILD`。
