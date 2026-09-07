# Stage 108 P0 有效性核验（2026-08-06）

## 03 Validity check

- 事实复核：
  - biofast ABBA `118661763`：decision.txt/summary.tsv 直接读取（A1/A2/B1/B2、trajectory 5/5 SAME）✓
  - biofast 构建：slurm-build-118661425.out（MK_FLAGS_OK、BIOFAST_BUILD_OK hash `699ba3d6...`）✓；mk.patch 11 行仅 biology.o 一行 ✓
  - s2dfuse 修复版 ABBA `118672304`：decision.txt/summary.tsv 直接读取（trajectory 5/5 SAME `fa498694...`）✓
  - s2dfuse 修复版构建：slurm-build-118670610.out（S2DFUSE_BUILD_OK hash `1957c79c...`、仅 step2d.f90 编译行）✓
  - 首版 NaN：`118667477` B1 trajectory `6fda1d8a...` 与 A1 diff 显示 00:15 起 NaN；patch.log 显示 malformed→后修复 ✓
  - Profile 数字（Biology/GLS/2D kernel）从各 run model.log 直接读取 ✓
  - Intel 2017.5 `-fimf-use-svml` 实测 warning 忽略（ifort 17.0.5 不支持，19+ 才引入）✓
- 边界声明：
  - 两 ABBA 均为 144/720 诊断，非计分运行；负向判决不需全量确认。
  - s2dfuse 修复版 bitwise 一致证明融合算术正确；其 −1.74% 为节点组内测量，绝对值不可跨节点比较，方向可靠。
  - GLS +21.6% 的耦合机制为 timer 级证据，未做逐位追踪（不影响负向判决）。
- 三份文件一致性：01 事实 ↔ 02 机制 ↔ 03 边界一致；有效。
- 输出生命周期：run roots `118661763`/`118667477`/`118672304` + 构建树 `o33_biofast_20260806`/`o33_s2dfuse_20260806` 保留；无删除。
