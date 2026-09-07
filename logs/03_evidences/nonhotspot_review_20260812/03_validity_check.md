# 非热点区域盘点——有效性独立校验（2026-08-12）

## 1. 数据来源核对

- 池占比：全部来自既有三遍分析（Stage 87/88/90/95/102、perf 118617130 完整展开、Stage 60b fine2coarse），本次只读引用，未新采集。
- Stage 129 前科：直接读取远端 `agent_tmp/staging_belowgate/setup_build_setavg.sh`（OMP patch 锚点、private FFLAGS、omp_fork 检查）与 `mcc_runs/118784623` / `118784944` 的 decision.txt（mean_A/B、gain、verdict=BELOW_GATE_STOP）→ 确认机制、方向、CONFOUNDED 原因三要素。
- set_avg 实现：远端 S47 树 `ROMS/Nonlinear/set_avg.F` grep `!$OMP`=0、NTSAVG=1、NAVG=864 实证（ocean_*.in）。

## 2. 推理复算

- wall share 换算：set_avg 3156.218/178516.604 = 1.768% CPU × 1.3057 = 2.308% wall ✓（与 Stage 88 表一致）。
- set_avg+set_data 组合乐观上界：4.42%×(1−1/1.65) = 1.742% < 2% ✓（Stage 88 同款公式）。
- 带宽受限判断：RMW 零复用 + tile 尺寸（45x40x34 ≈ 61KB > L1 32KB）→ 按序流式，DRAM/L2 带宽主导 ✓。

## 3. 独立交叉验证

- 与 Stage 90 实验结论一致：四计算对象（非带宽型）1.857x 加速都不达墙钟 → 带宽型 set_avg 线程化更不可能达门。
- 与 Stage 87 判语一致：set_avg "below gate; bandwidth-bound read-modify-write, NTSAVG=1 forbids skipping steps"。
- 与 Stage 102 一致：memset/memcpy 输入阶段上限 <0.5%。
- 与 Stage 60b 一致：nesting 插值家族实测关闭。

## 4. 有效性声明

- **VALID**：所有引用均为既有已校验证据；新读的 Stage 129 脚本/decision 与 rules.md 描述一致；推理用同一换算与门禁公式。
- 结论（非热点无 ≥2% 机制，保持冻结）**可靠**。

## 5. 输出生命周期

- 本盘点零模型输出、零构建、零提交；无删除。
- 远端未做任何写操作（仅只读读取 4 个脚本/2 个 decision.txt/1 个源码 grep）。
