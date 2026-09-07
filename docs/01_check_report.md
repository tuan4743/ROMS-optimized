# 03 — 校验报告（二次修订：以官方源码 zip 为基线）

> 本次整理的校验：①官方 zip 版本鉴定 ②17 文件差异真实性 ③数字口径三方互验 ④与官方差异文档相容性 ⑤26:11 现场成绩核实 ⑥限制与免责。**历史版本（text-base 30 文件口径）已废弃，见 §7。**

## 1. 官方 zip 版本鉴定（2026-09）

| 判定项 | 证据 | 结论 |
|---|---|---|
| 是否官方未修改源码 | `Linux-ifort.mk` FFLAGS=`-heap-arrays -fp-model precise`；`globaldefs.h` 第 54 行 `#define PROFILE`(未 #undef)；`step3d_t.F` 无 O25 换序(342 行仍 T_LOOP 外层)；`mp_exchange.F` 7132 行无 `mp_exchange4d_q`；无 O9/O10 稀疏嵌套注释 | ✅ 官方原始 |
| svn revision | 树内 `$Id$` 显示 **r830(2017-01-24)/r834(2017-01-25)**,与 S47 树完全同 revision | ✅ 同一官方版本 |
| 完整性 | 7855 非 .svn 文件 + 4774 .svn 元数据文件;源码/Data/matlab/Build 齐 | ✅ 完整工作副本 |
| 与 S47 全树对照 | 7714 相同 / 64 不同(17 文本修改 + 47 Data 样例数据) / S47 新增 37 / 官方独有 2053(Build/matlab) | ✅ 对照完成 |

## 2. 17 文件差异真实性

- 17 个修改文件逐一 unified diff(官方→S47)见 `最终修改版/S47_全量差异_官方zip基线.txt`(258KB)。
- 复制一致性:`最终修改版/` 17 文件与 S47 树源 SHA-256 全部一致;`修改前原版/ROMS_CoSiNE15/` 17 文件与 zip 字节全部一致(17/17 通过)。
- 语义抽查:Linux-ifort.mk 改写块与差异文档逐字一致;`mp_exchange.F` +668 行 ≈ `mp_exchange4d_q` 670 行;`step3d_t.F` 两处量化调用;`makefile` MAKE_MACROS=$(CURDIR)(差异文档⑤)全部命中 ✅。

## 3. 数字口径三方互验

| 数字 | 出现处 | 一致性 |
|---|---|---|
| S47 = 118946283 / 1661.816s / 26/26 / MD5 1fc3be38 | CURRENT_STATUS 08-12、SESSION_MEMORY、OPTIMIZATION_LOG Stage 152、有效优化与选项 08-13 | ✅ 四处一致 |
| S32 = 118755216 / 1753.876s / 26/26 | SESSION_MEMORY、OTHER/README、OPTIMIZATION_LOG | ✅ |
| 官方 baseline 6606s(01:50:06) | 赛题、02 统计、JOURNEY | ✅ |
| 基线 46:19.21 = 118203119 | tasks/02 §1.1、JOURNEY | ✅ |
| O25 = ompk OpenMP 本体 | 差异文档注释 + tasks/02 §1.3(JOURNEY §2.8 旧标签已修正) | ✅ |
| S32 冠军 1753.876s = 29:13.88 | tasks/07、SESSION_MEMORY | ✅ |

## 4. 与官方差异文档(3624 行/103 处/16 文件)相容性

- 16 核心文件全部在 17 项内 ✅(若分别对应 ifort/gfortran .mk、makefile、globaldefs.h、pre_step3d/step3d_t/rho_eos/gls_corstep/t3dmix4_s.h/bio_UMAINE15.h、mp_exchange/distribute、nesting/mod_nesting/set_contact/main3d、step3d_t(vdiff))。
- 第 17 项 = `ocean_SCS_Dongsha60_bio15.in`(文档第 7 节补充的 NtileI/NTIMES 2 处)✅。
- `ROMS/Nonlinear/metrics.F`(0 行空文件)= 文档"补充①"的历史残留 ✅ 计入新增。
- 差异统计量级吻合:文档 103 处(26 OpenMP+31 通信+33 嵌套+10 编译+2 复用+1 宏)vs 本 17 文件行级 diff。

## 5. 26:11 现场成绩核实（记录在案）

- 记录:`tasks/07_节点占用监测与场上成绩观测.md`——“**队内新最佳 = 26:11(s162_combo2 + 墙钟保护,11:10 j04r2n12-15)**”;证据链报告 §5.22(combo2 全量 28:43.46 vs 对照 28:25.79 = −1.04% 静时口径,争抢时 −45.4% 弹性);OPTIMIZATION_LOG Stage 162 判定“零风险保险,建议正式提交启用 yield”。
- 定性:**真实**;= S47 官方二进制 + `--mca mpi_yield_when_idle 1`(可选 pinned),未重编译、未动 PGO。
- **复刻性未知**:现场环境的争抢态势、节点(j04r2n12-15)与正式版本存在差别;复刻需先本机短档+全量+vali。正式成绩口径不变(1661.816 s)。

## 6. 限制与免责

1. **未上机验证**:S47 快照与官方整树均未重编译/重跑(集群不可达);本整理是证据归档,非性能复测。
2. **26:11 未留官方 vali 逐项结论**:仅现场时间线/观测记录,不作正式成绩。
3. **PGO 已定论不要动**:负记录 = t3mixk 移植版 −4.3%、combo2 同节点反转 −1.04%(profile 与代码结构/布局错配);s46 谱系另现间歇性数值错误(Stage 139b)。恢复/复刻保持 S47 现状 `-prof-use(-prof-dir=s46_pgo)`。
4. 文件编码:部分源码注释为 GBK(非 UTF-8),本整理保持原始字节。

## 7. 历史口径废弃记录

- **v1(2026-09 首版)**:以 S47 树 `.svn/text-base` 为"官方原文",产出 30 文件/24 真修改/6 噪音。发现 text-base 不可靠:S47 树 varinfo.dat 的 svn-base 5371 行 vs 官方 8046 行;cppdefs.h 等 16 文件与实际官方内容不同(被误判为修改)。**v2(本版)以官方 zip 为准:17 文件**,废弃 v1 的全部"30 文件"表述。
