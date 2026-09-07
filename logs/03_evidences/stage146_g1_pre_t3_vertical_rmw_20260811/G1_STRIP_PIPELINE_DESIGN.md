# G1 `j-strip × tracer` exact-order 设计

```text
OMP parallel
  tid/nthreads -> contiguous [js:je]

  compute DCblk(i,j,k) once for [js:je]

  for itrc = 1..NT                 ! one tracer resident at a time
    for j = js..je
      build vertical C4 FC(i,k) in original k order
      apply vertical sources in original order
      Vblk(i,j,k) = cffv*(FC(k)-FC(k-1))

    for k = 1..N
      build x C4 raw/grad/final faces for rows [js:je]
      build y C4 raw/grad/final faces for [js:je] plus stencil halo
      apply horizontal point sources in original order
      for j = js..je, i = Istr..Iend
        provisional = Hz*(cff1*t_nstp+cff2*t_nnew)
                    - cffh*pm*pn*(dFX+dFE)
        t3 = DCblk*(provisional - Vblk)
      end
    end
  end
OMP end parallel
```

## 不变量

- `i` 仍为最内层，保持连续内存和 SIMD 方向。
- 每个 `(i,j,k,itrc)` 的水平、垂向公式及系数不变。
- `DC` 在 tracer 外计算一次；不得为 17 tracers 重算。
- `FC` 的垂向递推顺序不变；不能 collapse k。
- 每个 j 点仅由一个线程写 final `t3`；strip halo 只读 `t_nstp` 与速度场。
- source/sink 分支必须按 owner strip 处理一次，不能重复或遗漏。
- PRE 末端 BC/halo/nrhst 原位。

## 原型停止条件

- 需要 `NT` 维 scratch；
- 需要完整 tile 或全局 tracer scratch；
- y-face 重算超过 stencil halo；
- 需要新增 barrier/MPI/halo；
- active CPP 无法与原路径逐式映射；
- A′ 无法证明与冻结 S32 同谱系。

