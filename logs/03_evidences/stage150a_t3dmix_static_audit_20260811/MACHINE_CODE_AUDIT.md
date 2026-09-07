# Stage 150A：编译器与机器码审计

## 谱系

- 冻结源码归档 SHA-256：`615ee7173c015eccc13ae8e3b193092d396817ae4a18648b3d7b55a517087d3e`
- 冻结 S32 二进制 SHA-256：`d9a45dbbc351a3e386a504c87d355f0db2197c6c6bdec2b5eb2b2276b36fe5a2`
- exact Stage 134 preprocessed `t3dmix.f90` SHA-256：`71ba704e1c59ee0bfda6ff42ba73de1638343d3fff0059ba24c58b6047125c1c`
- 本地只读证据包 SHA-256：`38ECCB585665C70C4CE18F9EAE4ABE00DE0ED8A2B228264B24BCD9A47E74FE65`

## qopt 证据

Stage 134 已用与 S32 一致的 ifort 2021.3 配方生成全 IPO report：`-fp-model precise -march=core-avx2 -no-fma -ipo -ip -O3 -qopenmp -qopt-report=5`。因此 Stage 150A 不再做重复 report-only build。

主 section 共 752 行。源行 221、232、247、317、327、340 的六个主 i-loop 均存在 unit-stride 向量版本；unit-stride 路径使用 AVX2 vector length 4，估计向量 speedup 约 2.99–3.49。编译器也为 assumed-shape dummy 生成了 stride multiversion 与 VL2/strided fallback。

“实际 whole allocatable 参数会选择 unit-stride 版本”是基于接口与调用形态的静态推断，不是运行时分支采样。即使通过 `CONTIGUOUS` 消除 fallback，也主要是 dispatch/code-size 收益，不能解释 40% kernel 局部收益。

## 冻结二进制反汇编

- 符号：`t3dmix_mod_mp_t3dmix4_tile_`
- 地址范围：`0x69fa20–0x6a6550`，大小 `0x6b30`
- 指令数：5293
- 代表性向量指令：`vmulpd 86`、`vmovupd 70`、`vsubpd 34`、`vaddpd 20`、`vdivpd 10`
- 未发现 `vgather`/`vscatter`

冻结二进制无 debug/line section，不能将每条 store/reload 严格映射回六个源码循环；但 qopt report 与向量指令共同证明当前实现不是“完全未向量化”的低垂果实。IPO 中间对象没有可用 text，不能用其空反汇编反推循环消失。

## 判定

机器码证据增强了融合的风险项：当前分离循环已经具备良好 unit-stride VL4 路径；rolling fusion 若把跨行系数、三行 LapT、输入场与输出暂存同时保持，将很可能导致 spill 或降级向量化。没有证据支持现实实现能达到 >40% 局部削减。
