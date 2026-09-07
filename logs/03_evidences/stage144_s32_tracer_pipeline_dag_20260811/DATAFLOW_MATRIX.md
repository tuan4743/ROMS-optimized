# S32 tracer pipeline 版本化数据流矩阵

记号：`R`=读，`W`=覆盖写，`RMW`=读改写，`H`=halo/contact 必需，`VREC`=垂向递推。`old/new` 是同名物理场在 baroclinic step 内的版本，不是新数组。

| 顺序 | 阶段/例程 | `t_nstp` | `t_nrhs` | `t_3` | `t_nnew` | `Hz` | `Huon/Hvom` | `W` | `Akt` | 屏障及源码证据 |
|---:|---|---|---|---|---|---|---|---|---|---|
| 0 | time-index setup | - | alias `nstp` | 独立槽 3 | 独立槽 1/2 | old | old | old | old | `main3d.F:180-182` |
| 1 | `pre_step3d`: horizontal PRE | R | - | W | 条件 R | R old | R old | - | - | `pre_step3d.F:343-564,555-559` |
| 2 | `pre_step3d`: vertical PRE | R | - | RMW | - | R old | - | R old | - | `pre_step3d.F:596-822,815-817`; `VREC`/列通量 |
| 3 | `pre_step3d`: explicit VDIFF/base | R | - | - | W | R old | - | - | R old | `pre_step3d.F:833-905,842-896` |
| 4 | `t3dbc` + PRE halo | R | - | RMW/H | - | - | - | - | - | `pre_step3d.F:1128-1152`; 4-D MPI exchange |
| 5 | `prsgrd` | - | - | - | - | - | - | - | - | 对所跟踪字段无直接访问 |
| 6 | `t3dmix4` | R | R=`nstp` | - | RMW | R old | - | - | - | `t3dmix4_s.h:230-465,254-257,455`；双谐波 stencil |
| 7 | `gls_prestep` | - | - | - | - | R old | R old | R old | - | `gls_prestep.F:105-124,185-361`；不访问 ocean tracer `t` |
| 8 | `nesting(nrhst)` | - | - | R/W/H | - | - | - | - | - | `nesting.F:2229-2244,2877-2902`；`Tindex=3`，contact get/put + exchange |
| 9 | fast 2-D + `set_depth` | - | - | - | - | **W new** | - | - | - | `main3d.F:593-704`; `set_depth.F:119-133,191/240,247-281` |
| 10 | `nesting(nzwgt)` | - | - | - | - | R new | - | - | - | `nesting.F:192-198`; 生成新垂向插值权重 |
| 11 | `step3d_uv` | - | - | - | - | R new | **W new** | - | - | `step3d_uv.F:171,203-204,1190-1205,1408-1424` |
| 12 | `nesting(n3duv)` | - | - | - | - | - | R/W/H new | - | - | `nesting.F:2172-2196,2269-2281,2941-2959` |
| 13 | `omega` | - | - | - | - | - | R new | **W new** | - | `omega.F:105-119,147-205`; vertical recurrence + halo |
| 14 | `gls_corstep` | - | - | - | - | R new | R new | R new | **RMW new/H** | `gls_corstep.F:139-197,1035,1078-1120` |
| 15 | `biology` | R | - | - | RMW | R new | - | - | - | `bio_UMAINE15.h:447-532,1336-1364,1817-1822`; 生态 tracer 跨变量耦合 |
| 16 | `step3d_t`: horizontal CORRECT | - | - | R | RMW | R new | R new | - | - | `step3d_t.F:345-660`; C4 horizontal stencil |
| 17 | `step3d_t`: vertical CORRECT | - | - | - | RMW | R new | - | R new | - | `step3d_t.F` vertical-flux区；`VREC` |
| 18 | `step3d_t`: implicit VDIFF | - | - | - | RMW | R new | - | - | R new | `step3d_t.F:1023-1158`; tridiagonal forward/back substitution |
| 19 | final tracer BC/halo | - | - | - | RMW/H | - | - | - | - | `step3d_t.F:1269-1285` |
| 20 | `nesting(n3dTV)` | - | - | - | R/W/H | - | - | - | - | `nesting.F:2229-2244,2877-2902`; `Tindex=nnew` |
| 21 | `nesting(n2way)` | 可读 coarse | - | - | R/W | W coarse | - | - | - | `nesting.F:280-321,3585-3594,3717-3718`; 双向反馈/守恒校正 |
| 22 | `nesting(ngetD)` | - | - | - | R | - | - | - | - | `nesting.F:2400-2618,2503,2589-2595`; 保存 donor 新时刻快照 |

## 关键版本结论

1. PRE 计算使用 `Hz_old/Huon_old/Hvom_old/W_old/Akt_old`。
2. CORRECT 前依次产生 `Hz_new`、`Huon_new/Hvom_new`、`W_new`、`Akt_new`。
3. 因此即使 `t_3` 数学上从 PRE 流向 CORRECT，也不能把 CORRECT 提前到 PRE：它需要尚未产生的新几何、输运和混合系数。
4. `t_3` 在二者之间还有 `t3dbc`、4-D halo 与 `nesting(nrhst)` 的真实消费者/修改者；全场 `WRITE t3 -> READ t3` 不是无用户直边。
5. `t_nnew` 在 PRE、`t3dmix4`、biology、CORRECT 中是贡献链，最终还必须供 halo、`n3dTV/n2way/ngetD` 使用，不能整体消除，只能减少中间 materialization。

