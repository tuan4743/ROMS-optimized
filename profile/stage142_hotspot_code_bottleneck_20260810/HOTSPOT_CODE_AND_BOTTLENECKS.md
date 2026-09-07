# S32 热点函数代码与瓶颈详表

## 1. 证据口径

两种比例不可混为一谈：

- 全长 PROFILE `118784141` 是 64 rank 的累计 `cpu_time`，能够给出两网格阶段总量，但 OpenMP 区会累计两个线程，且 PROFILE 自身使 wall 增加 5.64%。
- selected-rank perf `118813105` 是短诊断的用户态 `cpu-clock` 符号样本，能够把阶段落到函数/运行库，但不是全长 wall 占比。

因此下表用 PROFILE 排阶段、用 perf 找函数，不把两个百分比直接相加或套 Amdahl。

## 2. 热点排序

| 排名 | 阶段/函数 | 全长累计 CPU | 8-rank perf 均值 | 代码结构 | 瓶颈判断 |
|---:|---|---:|---:|---|---|
| 1 | 3D predictor / `pre_step3d_tile` | 17.0758% | 14.778% | `k -> tracer -> j -> i`，已对 `k` 做两线程 OpenMP；17 tracers、34 levels、多次流量/示踪物数组扫描 | 大工作量与带宽压力可能存在，但已并行；不是已证明 wall 临界路径 |
| 2 | tracer corrector / `step3d_t_tile` | 16.6550% | 12.958% | 入口先 4D halo；水平平流已 OMP；垂向 spline/隐式解含真实 `k` 递推 | 计算+通信混合；循环融合和换序受递推/边界语义限制 |
| 3 | GLS / `gls_corstep_tile` + scalar `pow` | 13.6465% | GLS 4.955%，`__libm_pow_e7` 7.046% | OMP over `j`；每列含大量可变指数幂与 Thomas-like 垂向递推 | 数学库吞吐是真 CPU 热点；但 Stage 137 已证局部加速不在 wall 临界路径 |
| 4 | fast mode / `step2d_tile` | 10.9933% | 4.485% self | 纯 2D、约 225 个 loop headers；每 3D 步约 42 fast stages；多处 halo、体积守恒和 nesting 边界 | 调用极频繁、每段短、同步切碎；少数 contact-heavy ranks 决定到达时间 |
| 5 | biology / `biology_tile` | 8.7587% | 6.369% | OMP over `j`；内部每列 34 层、15 生态变量、EXP/碳酸盐化学与沉降 | 计算密集但已 OMP；辐射递推跨 `k`，可向量化部分的整机上限已证很小 |
| 6 | 4D halo / `mp_exchange4d` | 10.3391% | 6.558% | 手工 pack faces，Irecv + blocking Send + Wait + unpack | 既含真实拷贝/通信，也含到达偏斜等待；UCX progress 均值另占 8.073% 样本 |
| 7 | 2D halo | 6.5121% | `mp_exchange2d` 0.609% self | 高频小消息，嵌在 fast-mode 多个位置 | 延迟和等待主导；纯异步没有独立计算可覆盖 |
| 8 | `t3dmix4_tile` | 4.9994% | 5.181% | 已选择性 OMP，i 内层单位步长 | 继续融合需大量数据流证明；现有报告未发现 >2% blocker |
| 9 | `get_contact3d` | 计入 nesting/message | 2.036% | owner map 已缓存、peer-only P2P；但每调用仍 allocate/count/prefix/pack/wait/unpack | 预分配/计划缓存是唯一新实现候选，但可消除部分小于整个 2.036% CPU 样本 |
| 10 | set_avg / Writing / Input | 2.0207% / 1.5710% / 1.5771% | set_avg 2.088% | 内存扫描与 NetCDF I/O | 份额可见但非关键 rank；输出语义冻结，NOFILL/set_avg 旧结果又有谱系混杂 |

全部 message timers 合计为全长累计 CPU 的 `25.8051%`。这不是可全部删除的 wall 时间：其中包含等待、忙轮询和嵌套 timer。

## 3. 代表性热点代码

### 3.1 `pre_step3d_tile`：工作量大、i 单位步长、已经 OpenMP

冻结源码 `ROMS/Nonlinear/pre_step3d.F:343-365`：

```fortran
!$OMP PARALLEL DO DEFAULT(SHARED) SCHEDULE(STATIC) &
!$OMP& PRIVATE(itrc,k,i,j,...,FX,FE,grad,curv)
K_LOOP: DO k=1,N(ng)
  T_LOOP1: DO itrc=1,NT(ng)
    DO j=Jstr,Jend
      DO i=Istr,Iend+1
        FX(i,j)=Huon(i,j,k)*0.5_r8*(t(i-1,j,k,nstp,itrc)+ &
                                    t(i  ,j,k,nstp,itrc))
```

解释：`i` 是 Fortran 第一维，访问连续；外层 `k` 已被两个线程分摊。热点主要来自 `34×17` 层/变量和多次场数组流式读写，不是一个明显的错误循环次序。Stage 134 报告也表明大量内层已经向量化；此前 pm/pn 中间量复用没有端到端收益。

### 3.2 `step3d_t_tile`：4D halo 后进入 OMP；垂向段有真递推

`ROMS/Nonlinear/step3d_t.F:338-353`：

```fortran
CALL mp_exchange4d(..., t(:,:,:,nnew,:))
!$OMP PARALLEL DO DEFAULT(SHARED) SCHEDULE(STATIC) &
K_LOOP: DO k=1,N(ng)
  T_LOOP: DO itrc=1,NT(ng)
```

`step3d_t.F:701-724` 的 spline 前扫/回扫：

```fortran
DO k=1,N(ng)-1
  DO i=Istr,Iend
    CF(i,k+1)=...
    FC(i,k)=...-Hz(i,j,k+1)*FC(i,k-1)
  END DO
END DO
DO k=N(ng)-1,0,-1
  DO i=Istr,Iend
    FC(i,k)=FC(i,k)-CF(i,k+1)*FC(i,k+1)
```

解释：不同 `i` 列可并行/向量化，但同列 `k` 有真实依赖。把水平平流、垂向解、示踪物更新“大融合”会跨越 halo、边界、source 和递推语义，且增加寄存器/私有数组压力。S46 的 vdiff 复用谱系又出现间歇性数值错误，不能复活。

### 3.3 GLS：可变指数幂很贵，但不等于 wall 杠杆

`ROMS/Nonlinear/gls_corstep.F:780-803`：

```fortran
wall_fac=1.0_r8 + ... *
         (gls(...)**gls_exp1 * tke(...)**(-tke_exp1) * ...)**2 + ...
BCK(i,k)=cff*(1.0_r8 + dt(ng)*gls(...)**(-gls_exp1)* &
              cmu_fac2*tke(...)**tke_exp2 + ...)
```

这些非整数、运行时指数落到 scalar `pow`，解释了独立的 7.046% 样本。Stage 137 已让八-pow 微核达到 `1.719831x`、最大 2 ULP，但 GLS-heavy ranks 与 4D-halo late ranks 不重合，故未提交模型候选。它是 CPU 热点，不是已证明 critical-path 热点。

### 3.4 biology：外层 j 已并行，光照沿 k 递推

`ROMS/Nonlinear/Biology/bio_UMAINE15.h:390-423,617-630`：

```fortran
!$OMP PARALLEL DO SCHEDULE(STATIC) DEFAULT(SHARED) PRIVATE(...)
J_LOOP: DO j=Jstr,Jend
  ...
  DO i=Istr,Iend
    PIO(i,N+1)=PARsur(i)
    DO k=N,1,-1
      PIO(i,k)=PIO(i,k+1)*EXP(-cff1)
      PAR(i,k)=(PIO(i,k+1)-PIO(i,k))/cff1
```

列间独立、列内递推。Stage 135 将 `k`/`i` 组织改为可 SIMD 后，编译器只估计该循环 `1.070x`；即使过度乐观地作用到全部 biology，整机上限也仅 0.4416%。此外冠军配方的 biology 已含既有 `fast=2`，不能重复记为新优化。

### 3.5 `step2d_tile`：同步切碎的 fast-mode 核心

`ROMS/Nonlinear/step2d_LF_AM3.h:563-584,691-701`：

```fortran
CALL mp_exchange2d(..., DUon, DVom)
IF (ANY(VolCons(:,ng))) CALL set_DUV_bc_tile(...)
...
CALL mp_exchange2d(..., Zt_avg1, DU_avg1, DV_avg1)
CALL mp_exchange2d(..., DU_avg2, DV_avg2)
```

该 routine 有约 225 个循环头、多个 exchange site、体积守恒和嵌套平均；每个 2D compute segment 很短。粗粒度 OpenMP 会被 MPI/串行段切成多个 region，细粒度 OpenMP 又被 fork/join 吞噬。已有 step2d 并行与融合结果为负；真正开放的问题是 contact-heavy ranks 在每个 fast stage 的哪一段迟到。

### 3.6 `mp_exchange4d`：非连续 face pack + 无计算重叠

`ROMS/Utility/mp_exchange.F:2884-2990`：

```fortran
DO l=LBt,UBt; DO k=LBk,UBk; DO j=Jmin,Jmax
  sendW(...)=C(i,j,k,l)       ! fixed i, j has leading-dimension stride
END DO; END DO; END DO
CALL mpi_irecv(...)
CALL mpi_send(...)
CALL mpi_wait(...)
```

E/W face 固定第一维 `i`，沿 `j` 读取是跨 leading dimension 的 gather-like pack。接收先贴出，但 send 是 blocking，完成后立即 wait/unpack，没有独立计算窗口。Stage 47 的实际 overlap probe给出该调用完美隐藏上限仅 0.373% wall；把 Send 机械替换成 Isend 不会创造重叠。

### 3.7 `get_contact3d`：当前唯一值得 P1 后继续看的实现细节

`ROMS/Nonlinear/nesting.F:5177-5241`：

```fortran
allocate(Scount,Rcount,Sdisp,Rdisp,Scursor,Rcursor)
... count contacts and build prefix sums ...
allocate(Sbuffer(MAX(1,Nsend)),Rbuffer(MAX(1,Nrecv)))
... pack four values per vertical level ...
allocate(Request(2*Nnodes),Status(MPI_STATUS_SIZE,2*Nnodes))
CALL mpi_irecv(...); CALL mpi_isend(...); CALL mpi_waitall(...)
```

owner map `ContactPlan3D` 已缓存，通信也只在有 contact 的 peers 间进行；但 counts、displacements、cursor、buffers 和 requests 仍逐调用分配/重建。可考虑缓存 per `(contact region,Tindex,vertical extent)` 的 peer plan 与容量缓冲区，前提是 P1 证明 late ranks 的 contact plan/alloc/pack/wait 具有 >2% 可移除 wall 上限。Stage 95 将同机制移植到高频 2D 路径后反而慢 2.29%，所以不能凭源码直接动手。

## 4. 总瓶颈判断

1. **确定事实：工作量集中在细网格。** 3D predictor、tracer corrector、GLS、biology 和 step2d 的 Grid 02 时间远高于 Grid 01。
2. **确定事实：大计算热点多数已并行。** `pre_step3d`、`step3d_t`、GLS、biology、t3dmix 已有选择性 OpenMP；新增四对象 OpenMP 曾实现局部 1.74-1.95x，却没有 wall 收益。
3. **确定事实：关键路径由到达偏斜控制。** edge/interior 总 task-clock 只差 0.3-1.0%，但 compute/exchange 与 UCX progress 反向抵消；P0 contact ownership 与 late ranks 高度重合。
4. **假设而非事实：内存带宽/cache 是底层原因。** 源码具有大数组流式访问，且每 8 MiB L3 域容纳 4 ranks，容量压力合理；但 Hygon PMU 的 cache/DRAM 事件为 0/不可用，不能写成已证 memory-bound。
5. **I/O 不是第一优先级。** Writing、set_avg、input 均约 1.6-2.0% 累计 CPU；可消除比例更小，且不是晚到 rank 的主要来源。

## 5. 候选优先级

| 优先级 | 动作 | 状态 |
|---|---|---|
| P1 | 一次 `144/720` 相位探针：拆 pure step2d、contact plan/alloc、contact pack/interp、2D/4D halo pack/wait/unpack、nesting sync；同时采集 NUMA/page/THP/TLB 只读遥测 | **唯一推荐的下一次模型诊断** |
| P2a | 若 contact plan/alloc 在 late ranks 上可移除 >2%：缓存 `get_contact3d` counts/disp/peer list/request/buffer capacity | 条件候选，未验证 |
| P2b | 若 halo pack 而非 wait 占 late-rank 关键段 >2%：只对一个 4D face pack 做对象级循环/缓冲布局实验 | 条件候选，未验证 |
| P3 | 若 pure step2d 算术本身是 late phase：只审阅一个具体 loop transform/late-rank负载机制 | 条件候选，风险高 |
| STOP | generic async/double buffer/persistent MPI、全局 cache flags、重做 step2d OMP、GLS pow、biology loop permutation、S46 PGO/vdiff | 已有负证据，不重试 |

当前没有任何新性能收益；本报告状态为 `STATIC`。
