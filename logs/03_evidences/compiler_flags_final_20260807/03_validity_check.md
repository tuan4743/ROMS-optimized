# Stage 111-114 编译器阶梯与旗标收尾 — 有效性核验（2026-08-07）

## 1. 实验有效性

- 全部 ABBA：哈希门禁（脚本/双 bin/输入/规则）通过；W0 预热；5/5 DONE、nc=0；A 腿轨迹 5/5 `fa498694...`（无污染）。
- 编译器阶梯：每版独立构建（构建日志含编译行与版本断言：2021.7.0/2021.10.0/ifx 2023.2.0）；二进制哈希互异且 ≠ 冠军。
- 2021.7.0 全量：COMPLETED 0:0；26/26 PASS 明文；PROFILE 数字取自同一 model.log。
- ifx 构建经 shim（ifort→ifx）+ Linux-ifx.mk（仅去 -ip）——make FORT=ifx 全量编译链接成功（构建日志）。

## 2. 结论独立性

- "2021.7.0 全量 +70.7%"为直接实测（time real 57m28.841s）。
- "样本 +1.86% 与全量 +70.7% 矛盾"已记录（节点因素未排除），判决按全量为准绳（rules.md：全量 > 样本）。
- "znver1/ifx no-op"为二进制哈希逐字节证据（非推断）。
- 删除门禁依据：上述每个作业的判决、数据、哈希均在本分析与 OPTIMIZATION_LOG Stage 110-114 中完整记录；
  2021.7.0 全量根的 validation/（vali_result.txt 26/26）与 logs/（model.log PROFILE）保留，仅删 output/ 目录。

## 3. 门禁纪律

- 授权删除：`118730406_o33_ifort2022_full_64x2/output/`（8.5G netcdf，保留 validation/logs/metadata）；
  6 个已关闭构建树（o33_ifort2022/2023/ifx/align/ipo/znver1）——其二进制哈希已记录、无运行中作业引用。
- 保留：冠军树 o33_ifort2021_20260805（7cd46627）、immutable import、全部 ABBA 根（1.7M 级）、
  冠军全量 118662236、父本 118405320。
- 删除执行后回写实际释放量。
