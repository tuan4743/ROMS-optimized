# fast2_2021 ABBA 三件套 — 有效性核验（2026-08-07）

## 1. 实验有效性

- 单因果轴：仅 Linux-ifort.mk 两行（biology.o/gls_corstep.o 追加 fast=2 三旗标）；源码零改动（source_tree.diff 为空）。
- 构建 `118714807` COMPLETED 0:0；编译行 grep 实证 `-fp-model precise ... -fp-model fast=2 -no-prec-div -fp-speculation=fast`（后者生效，fp-model last-wins 语义）。
- 二进制 `a1e19c4c...` ≠ 冠军 `7cd46627...`（hash 门禁通过，改动真实生效）。
- ABBA harness：哈希门禁全过（脚本/双 bin/输入/规则）；W0 预热排除冷启动；5/5 DONE、nc=0；轨迹 A 腿 5/5 与 O33 `fa498694...` 一致（A 腿无污染）。
- 判定逻辑与既往一致（both_B_faster 主闸门 + gain≥3%），verdict=PROCEED_FULL_REVIEW_REQUIRED 自动生成。

## 2. 与历史证据的一致性

- 2017 侧 fast=2 负结果（Stage 104/108）不构成对本候选的否定：编译器已换（2017→2021.3.0），
  且 2017 的负结果机制（GLS 吸收单侧变化）在此被结构性消除（两对象同时切换）。
- hpcx 2.11（ABBA +2.30% 全量 FLAT）教训已记录：样本增益必须全量确认；fast=2 样本增益 +5.76% 远大于 2.3% 假阳性窗口。
- gcc731 先例（样本 +3.69%，全量 vali FAIL）说明：样本快 ≠ 可交付，全量 26/26 是唯一精度门禁 → 已提交 `118716176`。

## 3. 剩余不确定性

- 全量 vali 结果未知（PD 排队）。三种可能：
  a. 26/26 PASS → 新冠军（-5.76% 样本级，全量预期 -4~-5%），交付包升级（mk 两行 patch 进构建脚本或 v5 归档）；
  b. vali FAIL（gcc731 式微超限）→ 候选关闭，冠军不变；
  c. vali PASS 但全量增益缩水至 <2%（hpcx211 式）→ 按实测记录，采纳与否交用户。
- 无其他混杂因素：队列中无本会话其他作业，ABBA 独占 4 节点。

## 4. 结论

- 本三件套有效：fast2_2021 是首个样本级 >5% 的编译轴候选（2021 专属空间），达到全量授权门槛。
- 全量结果回写本目录与 OPTIMIZATION_LOG。
