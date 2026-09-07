# G1 Gate 3 and Gate 5 audit

日期：2026-08-11 EDT

## Exact target

冻结 S32 的 `pre_step3d.f90`：

- producer 398-402：写 `t(i,j,k,3,itrc)` provisional；
- consumer 492-497：读取同一 `t3`，结合 `DC` 与 `FC(k)-FC(k-1)` 后 RMW；
- 两者之间的 `DC`、`FC` 与 source/sink 构造是真实工作，不能删除。

## Gate 3: 最有利逻辑字节上界

只计算紧邻目标的最后 producer 表达式与最后 consumer 表达式，刻意不计更早的 FX/FE、Huon/Hvom/W、DC、FC 生成开销：

| 区域 | 每点逻辑访问 | Bytes |
|---|---|---:|
| producer | `Hz,t_nstp,t_nnew,pm,pn,FX*2,FE*2` 九次 load + `t3` store | 80 |
| consumer | `DC,t3,pm,pn,FC*2` 六次 load + `t3` store | 56 |
| 合计 | 最有利最小分母 | 136 |
| 理想可删 | provisional `t3` store + 后续 load | 16 |

因此最有利局部比例为 `16 / 136 = 11.7647%`。这仍没有计入 producer 的水平 C4 flux pass、consumer 的 vertical flux/source pass、DC pass、任何重复 face work或 scratch 流量；计入后比例只会下降。

PRE profile 份额为 17.08%，即使把 11.7647% 全部错误地当成可转化为临界路径 wall 收益，也只有 `17.08% * 11.7647% = 2.0094%` CPU 份额，紧贴 2% 线而没有任何噪声/等待余量。按 Stage 148 预先规定的 `conservative PRE reduction >12%` 门禁，Gate 3 **FAIL**。

该模型是源码级逻辑访问上界，不声称等于 DRAM 流量；它的作用是给候选最大便利仍无法过门，而不是预测实测加速。

## Gate 5: 现有机器码证据不足

远端只读检查对象：

`/public/home/fujiake/fjk/agent_tmp/isolated/work/s32_stage146_g1_strip_pipeline_20260811_build1/Aprime/Build/pre_step3d.o`

- 大小 952,080 B；
- IPO 中间对象仅含 `.strtab`、`.symtab`、`__ildata`、空 `.text` 等 9 个节；
- 没有 `.debug_line` 或其他源码映射节；
- 冻结最终二进制虽有 `pre_step3d_mod_mp_pre_step3d_tile_` 符号，但仅凭符号和无源码映射反汇编不能证明目标 store/reload 的 exact source attribution。

补做 Gate 5 需要另一次 exact S32 report/debug build。然而 Gate 3 已失败，按五门短路原则不再消耗 build 机时。

## 判定

`G1_GATE3_FAIL / GATE5_UNPROVEN_AND_SHORT_CIRCUITED / REJECT_BEFORE_BUILD`。

Stage 146 的 j-strip 实测负结果与本次理想 G1 静态上界相互一致；现在可以关闭整个 G1 provisional-t3 materialization 路线，而不再只关闭那一种 strip 实现。
