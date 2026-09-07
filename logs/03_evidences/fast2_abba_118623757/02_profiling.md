# fast=2 compile-axis A-B-B-A `118623757`: STOP_BRANCH (−1.06%)

## 01 Read summary

- 任务：Stage 103 候选——O33+HOT_TEAMS 运行时基础上叠加 S10 编译轴（biology fast=2 + gls fp-model source）。A=O33 二进制+HOT_TEAMS，B=O33_fast2 二进制+HOT_TEAMS。作业 `118623757`（j04r2n[12-15]，4n/64×2，144/720）。
- 构建：`118622132` 完成，`oceanM.O33_fast2` = `90cf5043...`；编译行确认 `biology.f90: -fp-model fast=2 -no-prec-div -fp-speculation=fast`（ifort 警告 override precise 为预期）、`gls_corstep.f90: -fp-model source`；仅 Linux-ifort.mk 差异 16 行。
- 结果（summary.tsv 直接读取）：
  - W0 127.833（丢弃）；A1/A2 126.151/125.961（mean_A 126.056）；B1/B2 129.422/125.374（mean_B 127.398）
  - **gain = −1.0646%，both_B_faster = False → verdict STOP_BRANCH**
  - 轨迹 5/5 全部 `fa498694...`（**SAME**——fast=2 编译未改变该输入上的浮点结果）
- Profile（G02 rank-CPU，A1→B1）：Biology 554.8→451.7（**−18.6% 设计生效**）；GLS 988.9→1183.7（**+19.7% 退化**）；2D kernel −1.5%、tracers −0.4%、predictor +1.5%。GLS 的 `-fp-model source` 退化吞掉 biology 的收益，净 −1.06%。
- 对比 S10（nan）：其全量 2086.3 s 优于我们 2109.2 s 的差异并非来自 fast=2 本身（其 sprint 全局是 `-no-heap-arrays` + 其它差异），本实验证明**在 O33 基线上叠加 fast=2 是负向**。
- 结论：**fast=2 轴 STOP_BRANCH，不跑全量**。O33+HOT_TEAMS（2109.2 s，26/26）保持当前最优计分候选。
- 输出生命周期：ABBA run root 保留；构建树保留（作证据）；无删除。

## 02 Profiling / mechanism

- 机制链：fast=2 启用 fast-transcendentals + 向量化 libm → biology 30+ 处 exp/log/sqrt 调用加速（实测 −18.6% 局部 CPU）；`-fp-model source` 使 GLS 接近源码语义（禁用部分重排/内联）→ +19.7% 退化。
- 净效应：biology 节省 ~103 CPU-s/rank，GLS 增加 ~195 CPU-s/rank → 净 +92 CPU-s/rank，墙钟 −1.06%。
- 轨迹 SAME 的含义：fast=2 在本题输入上未实际改变任何打印值（可能 fast-transcendentals 未触发或调用点不影响打印轨迹），因此官方验证预期仍会过——但性能负向使验证无意义。
- 与历史模式一致：Stage 85 vdiff_invdz（局部优化被 GLS +21.7% 吞掉）、Stage 90 O34（计算加速被等待吸收）——**单对象编译旗标在 O33 上的局部收益系统性被 GLS 区间退化抵消**。

## 03 Validity check

- 事实复核：构建日志编译行含 fast=2/source ✓；mk.patch 16 行仅两处 FFLAGS ✓；ABBA summary/decision 直接读取 ✓；profile 数字从 model.log 直接读取 ✓。
- 边界：144/720 诊断，非计分；轨迹 SAME 说明无精度风险但性能负向，结论不受影响。
- 三份文件一致性：01 ↔ 02 ↔ 03 一致；有效。
- 建议：fast=2 关闭；可选未来单独试 `biology fast=2`（不加 gls fp-model source）——但 biology 仅占 ~5% 墙钟，−18.6% 局部 ≈ 全量 ~1% 上限，且 GLS 已证明会吸收，低优先。
- 输出生命周期：无删除。
