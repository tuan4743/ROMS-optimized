# 修改前原版（官方未修改源码）— 说明

> 本目录 = **官方未修改完整源码树**（用户 2026-09 找到 `ROMS_CoSiNE15.zip` 后解压）,**含完整 svn 工作副本元数据**,是最终修改版（S47）的权威对照基线。

## 来源与鉴定

- 来源:`ROMS_CoSiNE15.zip`(30.6MB,2026-09 取得;本体亦归档于本目录)。
- 鉴定结论(详细证据见 `../docs/03_校验报告.md`):
  1. 树内 `$Id$` 显示 **svn revision 830/834(2017-01-24/25)**,与 S47 树完全同 revision → 两边是同一官方版本。
  2. 官方特征全部命中:`Linux-ifort.mk` FFLAGS=`-heap-arrays -fp-model precise`、`globaldefs.h` `#define PROFILE`、`step3d_t.F` 无 O25 换序、`mp_exchange.F` 无 `mp_exchange4d_q`、无 O9/O10 稀疏嵌套。
  3. 全树 7855 个非 .svn 文件与 S47 树逐字节对照:**7714 相同 / 64 不同(17 文本 + 47 Data 样例)/ S47 新增 37**。
- 本树即官方分发版(≈ `/public/share/mcc2026_final/mcc2026_source/ROMS_CoSiNE15.tar` / 队友 `nan/speedup/perf_sandbox` 同源)。

## ⚠️ 编制说明(历史更正)

- 第一版整理曾以 S47 树 `.svn/text-base/` 为"官方原文"构建 30 文件对照,后发现该 text-base **不可靠**(部分文件残缺/版本混入:varinfo.dat 5371 行 vs 官方 8046 行;cppdefs.h 等 16 个文件被误判为修改)。**凡与本目录(官方 zip)冲突处以本目录为准**;`最终修改版/变更清单.md` 已重写为 17 文件权威版,废弃 30 文件口径。

## 使用方式

```bash
# 官方原文 vs S47 最终版(任意一个文件)
diff 修改前原版/ROMS_CoSiNE15/Compilers/Linux-ifort.mk 最终修改版/Compilers/Linux-ifort.mk
# 整 diff:最终修改版/S47_全量差异_官方zip基线.txt
# 整树发布:本目录 ROMS_CoSiNE15/(.svn 保留,可 svn diff/status 复核)
```

## 目录内容

- `ROMS_CoSiNE15/`:官方源码整树(源码 + Master/Compilers/Projects/User/Data/matlab + Build/ 构建产物样例 + **.svn 元数据**)。
- `ROMS_CoSiNE15.zip`:原始包(30.6MB,归档留底)。
- `说明.md`:本文件。
