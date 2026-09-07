# S32 `tracer3d_pipeline` DAG

本图不是把 `pre_step3d_tile` 与 `step3d_t_tile` 拼成一个函数，而是把两者拆开，并显式展示中间贡献者、字段版本转换与嵌套边界。

```text
t_nstp + old Hz/Huon/Hvom/W/Akt
            |
            v
  PRE horizontal advection -----> provisional t3 materialization
            |                                  |
            |                                  v
            +---------------------- PRE vertical advection (RMW t3)
                                               |
                          t3dbc + 4D halo ------+
                                               |
                                      nesting nrhst contact
                                               |
                                               +-----------------------+
                                                                       |
t_nstp + old Hz/Akt ---> PRE explicit VDIFF/base ---> W t_nnew         |
                                                        |              |
t_nrhs(=nstp)+old Hz ---> t3dmix4 --------------------> RMW t_nnew      |
                                                        |              |
        2D corrector ---> set_depth ---> Hz_new          |              |
        step3d_uv + n3duv -----------> Huon/Hvom_new    |              |
        omega ------------------------> W_new             |              |
        gls_corstep ------------------> Akt_new            |              |
                                                        |              |
t_nstp + Hz_new ---> biology cross-tracer ------------> RMW t_nnew     |
                                                        |              |
                                                        v              v
                                                  CORRECT horizontal adv.
                                                        |
                                                        v
                                                  vertical advection
                                                        |
                                                        v
                                                  implicit VDIFF
                                                        |
                                                        v
                                         final t_nnew BC/halo/materialize
                                                        |
                                              n3dTV -> n2way -> ngetD
```

## 硬依赖边界

- `t3` 的 PRE 末端状态必须先完成边界条件、MPI halo 和 `nrhst` contact，才是 CORRECT 可消费版本。
- CORRECT 必须等待新 `Hz/Huon/Hvom/W/Akt`；这些值在 PRE 之后由 2-D corrector、3-D momentum、omega 和 GLS 产生。
- biology 对生态变量是跨 tracer、跨垂向层的 coupled update，不可逐 tracer 任意穿越。
- `t3dmix4` 有双谐波水平 stencil；`step3d_t` 有 C4 水平 stencil与垂向递推；局部寄存器化不能破坏 halo/邻点模板。
- final `t_nnew` 是双向嵌套和下一时刻 donor snapshot 的正式状态，最终物化不可删除。

