# 项目介绍

## 更改Inputfiles位置

![Image](https://internal-api-drive-stream.feishu.cn/space/api/box/stream/download/authcode/?code=NWU0OTcwNDI5MTU0ZDc2N2UzYWU0ZDMwM2I2ODMxYjlfY2Q1YTUzZTI1ZGJlNzI0YzE4Njc4MWI2MTEwMWEyZDBfSUQ6NzY2NzEyNjIyNzcyMzc1MDM1MV8xNzg1MzMyNDk0OjE3ODU0MTg4OTRfVjM)

文件有点大每个人都复制一份的话会有点，已经Inputfiles已放到/public/home/fujiake/Inputfiles，需要改的脚本有

\.mcc\_opt/scripts/profile\_job\.sh

\.mcc\_opt/scripts/attach\_profile\_job\.sh

\.mcc\_opt/scripts/attach\_profile\_hybrid\_job\.sh

## 题目链接 

[mp\.weixin\.qq\.com](https://mp.weixin.qq.com/s/OlwHhNv_km8prqh0gJIudw?from=groupmessage&scene=1&subscene=10000&clicktime=1784519738&enterid=1784519738&sessionid=0&ascene=1&fasttmpl_type=0&fasttmpl_fullversion=8349583-zh_CN-zip&fasttmpl_flag=0&realreporttime=1784519738456)

## 赛题要求

![Image](https://internal-api-drive-stream.feishu.cn/space/api/box/stream/download/authcode/?code=Mjk1MmRhNTdkZjUzYmZmY2MyNWM5MTFlODQwZmMwMDRfNGEyZjY4ZDQxMmMzNDA5OWIzMjRiNDUzNDczNDY3YTdfSUQ6NzY2NjQwMzgzNjM5MDc4ODI4MV8xNzg1MzMyNDk0OjE3ODU0MTg4OTRfVjM)

解压赛题文件：

tar \-xvf ROMS\_CoSiNE\.gz

进入代码目录：

cd ROMS\_CoSiNE

vim Compilers/Linux\-ifort\.mk

根据平台环境调整Linux\-ifort\.mk中的编译选项、MPI配置 和 NetCDF 路径

make clean

make

完成编译后生成模式可执行文件oceanM

注：模型代码存放路径

/public/home/mcc2026\_final/mcc2026\_source/ROMS\_CoSiNE\.gz

## 赛题分析

模拟区域包含两个双向嵌套网格：

细网格是 5 倍空间、时间加密：粗网格前进一步时，细网格前进 5 步。每个三维时间步内部还要进行 `NDTFAST=30` 的二维正压快模积分；由于 power\-law 时间滤波，程序内部显示 `nfast=42` 个加权阶段。

计算内容包括：

- 海面高度、二维和三维流速。

- 温度、盐度、密度和压力梯度。

- 潮汐、风应力、热通量、淡水通量。

- 湿润—干涸、底摩擦。

- GLS 垂向湍流混合。

- 15 个 CoSiNE 生态变量。

- 粗网格向细网格插值，以及细网格向粗网格反馈。

- NetCDF 历史、平均和重启动输出。

### 数值计算原理

ROMS 解的是 Boussinesq、静力近似下的三维海洋原始方程，包括：

- 水平动量方程：平流、科氏力、压力梯度、水平和垂向混合、表底应力。

- 静力方程：垂向压力由水柱密度积分得到。

- 连续方程：由水平质量通量计算垂向速度。

- 自由表面方程：计算海面高度和深度平均流速。

- 示踪量输运方程：

```Plain Text
时间变化 + 水平平流 + 垂向平流
= 水平扩散 + 垂向扩散 + 生态源汇项
```

垂向使用随地形变化的 S 坐标；水平使用曲线正交 C 网格，海面高度、流速和示踪量位于不同的交错位置。

CoSiNE 共计算 15 个生态变量，另外还有温度和盐度，因此实际需要推进 17 个三维示踪量：

1. NO3，硝酸盐

2. NH4，铵盐

3. SiOH4，硅酸盐

4. 小型浮游植物

5. 硅藻

6. 微型浮游动物

7. 中型浮游动物

8. 含氮碎屑

9. 生物硅/opal

10. PO4，磷酸盐

11. 溶解氧

12. 总无机碳 TIC

13. 总碱度

14. 小型浮游植物叶绿素 Chl1

15. 硅藻叶绿素 Chl2

生态计算包括光衰减、温度依赖、营养盐限制、浮游植物生长、摄食、死亡、排泄、再矿化、硝化、反硝化、颗粒沉降和海气 O₂/CO₂ 交换。源代码采用趋向 backward\-Euler 的内部迭代；本题 `BioIter=1`

### 推进过程

```Markdown
A["读取并插值强迫/边界"] --> B["质量通量、密度、边界条件"]
  --> C["rhs3d 与 GLS predictor"]
  --> D["二维快模 step2d"]
  --> E["更新深度和嵌套垂向权重"]
  --> F["三维动量 step3d_uv"]
  --> G["GLS corrector 与 CoSiNE"]
  --> H["17 个示踪量 step3d_t"]
  --> I["细网格→粗网格双向反馈"]
  --> J["输出/进入下一时间步"]
```

## 代码结构

```JSON
ROMS_CoSiNE15/
├── makefile                       总构建入口
├── Compilers/
│   ├── Linux-ifort.mk             Intel 编译规则
│   └── Linux-gfortran.mk          当前 GCC 编译规则
├── Master/
│   ├── ocean_control.F            oceanM 程序入口
│   ├── ocean.h                    选择模型驱动
│   ├── master.F
│   └── ocean_coupler.F            外部耦合框架
├── ROMS/
│   ├── Drivers/
│   │   └── nl_ocean.h             非线性模式初始化、运行、结束
│   ├── Include/
│   │   ├── bye24bio15.h           本题 CPP 物理/生态开关
│   │   ├── cppdefs.h
│   │   ├── globaldefs.h
│   │   ├── tile.h
│   │   └── set_bounds.h
│   ├── External/
│   │   ├── ocean_SCS_Dongsha60_bio15.in
│   │   ├── bio_UMAINE15.in
│   │   └── varinfo.dat
│   ├── Modules/
│   │   ├── mod_param.F            网格、tile、维度
│   │   ├── mod_grid.F             网格坐标、深度、掩膜
│   │   ├── mod_ocean.F            海洋状态量
│   │   ├── mod_forces.F           外部强迫
│   │   ├── mod_mixing.F           混合系数
│   │   ├── mod_biology.F          生态变量和参数
│   │   ├── mod_nesting.F          嵌套接触区数据
│   │   ├── mod_parallel.F         MPI 并行信息
│   │   ├── mod_stepping.F         时间层索引
│   │   └── mod_netcdf.F           NetCDF 状态
│   ├── Nonlinear/
│   │   ├── main3d.F               三维主时间推进
│   │   ├── main2d.F
│   │   ├── step2d.F               正压二维快模
│   │   ├── rhs3d.F                三维方程右端项
│   │   ├── pre_step3d.F           三维预测计算
│   │   ├── step3d_uv.F            三维动量校正
│   │   ├── step3d_t.F             温盐及生态示踪量推进
│   │   ├── rho_eos.F / prsgrd.F   状态方程、压力梯度
│   │   ├── gls_prestep.F
│   │   ├── gls_corstep.F          GLS 湍流计算
│   │   ├── t3dmix.F               示踪量水平混合
│   │   ├── nesting.F              双向嵌套核心
│   │   ├── exchange_*.F           halo 交换
│   │   └── Biology/
│   │       ├── biology.F           生态模型选择入口
│   │       ├── bio_UMAINE15.h      CoSiNE 反应和沉降核心
│   │       ├── bio_UMAINE15_mod.h  15 个变量索引
│   │       ├── bio_UMAINE15_inp.h  参数读取
│   │       ├── bio_UMAINE15_def.h  NetCDF 定义
│   │       └── bio_UMAINE15_wrt.h  生态输出
│   ├── Utility/
│   │   ├── distribute.F            MPI 规约、聚合、散播
│   │   ├── mp_exchange.F           MPI halo 通信
│   │   ├── mp_routines.F
│   │   ├── get_* / set_*           NetCDF 输入和场处理
│   │   ├── nf_fread*.F
│   │   ├── nf_fwrite*.F
│   │   └── wrt_*.F                 输出
│   ├── Functionals/                分析形式边界和通量
│   ├── Adjoint/                    伴随模式，本题不启用
│   ├── Tangent/                    切线模式，本题不启用
│   ├── Representer/                数据同化，本题不启用
│   ├── SeaIce/                     海冰模块，本题不启用
│   └── Sediment/                   沉积物框架
├── Inputfiles/
│   ├── SCS/                        粗网格初始、边界、强迫、潮汐
│   └── Dongsha60/                  细网格初始和强迫
├── Build/                          对象文件和 Fortran module
├── output/                         运行输出
└── .mcc_opt/
    ├── original/                   原始源码备份
    ├── staging/                    各优化源码版本
    ├── scripts/                    编译、运行、绑核脚本
    ├── runs/                       测试日志和 profile
    └── bin/current-best            当前最优版本
```



## Profile

初始128核

![Image](https://internal-api-drive-stream.feishu.cn/space/api/box/stream/download/authcode/?code=ZWVhZmQ3OGI0ZjFkZTBjY2FmMDBiMGY0MTg4ZDY0NWVfOTI0ZDI5MWMzNDQ4MjA1NmFjODk0NzRjZTUxY2E0ODNfSUQ6NzY2NjY3Nzg5MjU4NzM3NTU1NF8xNzg1MzMyNDk0OjE3ODU0MTg4OTRfVjM)

说明初始瓶颈不是单个物理公式，而是：

1. 双向嵌套大数组规约。

2. `RESHAPE` 和临时数组产生的大量内存复制、清零。

3. MPI 通信进展和等待。

## 瓶颈

### 双向嵌套通信和同步

细网格每 5 步都要进行粗细网格交换；2D、3D、4D halo 以及 contact 点规约频繁发生。现在最大的单一采样符号已经是 UCX 通信进展。

### MPI rank 负载不均衡

陆海掩膜、湿润干涸和嵌套接触区使不同 tile 的工作量不一样。快 rank 在 `MPI_Wait` 中等待慢 rank，因此部分“网络耗时”实际上是计算不均衡。

### Amdahl 串行部分

`step2d`、嵌套插值、通信打包和若干驱动阶段仍是单线程。32 MPI×4 比64×2明显更慢，证明增加每 rank 的线程数不能解决这些串行路径。

### 细网格的三维示踪量计算

17 个三维示踪量、34 层、12960 步，使 `pre_step3d`、`step3d_t`、GLS、biology 和混合长期占据主要计算时间。

### 内存带宽与缓存容量

Fortran 多维大数组会反复扫描 `i×j×k×tracer` 数据。大临时数组已消除，但核心 stencil 仍偏内存带宽受限。只有 `t3dmix` 的小型线程私有数组适合放栈，其余数组压栈反而引发缺页和缓存冲突。

## 优化

### 一、正向优化（有效提升）

#### 进程映射优化 \- spread\_numa16\_ccx

- 方法: 从默认映射改为 `spread_numa16_ccx_2t`，跨 NUMA 域均匀分布 MPI rank，每 rank 绑定 2 个硬件线程

- 效果: 半天运行 11:19 → 7:50 \(提升 \~30\.7%\)

- 状态: ✅ 已纳入基线，数值完全一致

#### distribute 稀疏化 \+ z\_weights fluxsum 合并 \(v3→v22 基线演进\)

- 方法:

    - `distribute.F`: 将全量 Allgather 改为稀疏 owner\-compute 模式，只通信有数据的 tile

    - `nesting.F`: z\_weights 计算 \+ fluxsum 合并，减少嵌套通信量

- 效果: 多个版本累积优化，半天 7:50 → 6:43

- 状态: ✅ 已纳入基线

#### 生态模块 OpenMP 并行化 \(ompbio\)

- 方法: `bio_UMAINE15.h` 生态源汇项计算加入 OpenMP 并行（j 维度并行）

- 效果: 生态模块从串行变并行，biology 占比下降

- 状态: ✅ 已纳入基线

#### step3d\_t 延迟通信 \+ OpenMP 热点优化 \(omphot 系列\)

- 方法:

    - `step3d_t.F`: 延迟 halo exchange 到计算完成后，减少通信等待

    - `gls_corstep.F`: OpenMP 热点并行

    - `pre_step3d.F`: OpenMP 热点并行

- 效果: 计算热点逐步优化，半天 6:43 → 6:42

- 状态: ✅ 已纳入基线

#### z\_weights 复用 \(v18\-zreuse\)

- 方法: 缓存 z\_weights 计算结果，避免重复计算

- 效果: 减少计算开销

- 状态: ✅ 已纳入基线

#### contact3d 批量化 \(v22\-contactbatch\)

- 方法: 将 contact3d 的逐点计算改为批量向量化

- 效果: 减少函数调用开销

- 状态: ✅ 已纳入基线 \(v22\)

#### 7\. 分层 Bcast 优化 \(v24a\) — 本阶段核心成果

- 方法: 将全局 `MPI_Bcast` 改为分层通信：先在 leader communicator 上 Bcast（每节点 1 个 leader），再节点内 Bcast 到所有 rank

- 文件: `distribute_owner_reduce_scatter3d_hier.F`

- 效果:

    - Bcast 时间从 12\.37% → 1\.81%（降低 85\.4%）

    - 全量三天: 38:58\.50 → 38:15\.90（提升 1\.8%）

    - 半天: 6:42\.79 → 6:29\.24（提升 3\.4%）

- 数值: ✅ RMSE 全量验证通过（Dongsha u 超限与 v22 基线相同，属固有特征）

- 状态: ✅ 已确认候选，全量三天\+RMSE 完成

#### 8\. HCOLL 集合通信加速 \(v29\) — 本阶段成果

- 方法: 启用 HPCX 内置 HCOLL 硬件集合通信库（`OMPI_MCA_coll_hcoll_enable=1`），由 libhcoll 接管 Allreduce/Bcast 等集合操作

- 特点: 纯运行时配置，零代码改动，零编译

- ABBA 结果 \(半天, A=HCOLL关, B=HCOLL开\):

- 理论分析: Allreduce 占 7\.6%，HCOLL 让 Allreduce 快约 30%，整体提升 \~2\.3%，实测 2\.5% 吻合

- 状态: 🔄 全量三天已提交（job 118059543），等待 CPU 配额释放后执行

---

### 二、负向优化（失败/退步，已放弃）

#### v24b — mp\_exchange Isend\+Waitall

- 方法: 将 mp\_exchange2d/3d/4d 的阻塞 Send 改为 Isend \+ 末尾 Waitall

- 结果: ❌ 性能退步 \~50%（步数从 21 降到 9）

- 原因: buffer 跨方向复用导致数据竞争，Isend 的 request 生命周期管理不完整

- 教训: 原始 Irecv→Send→Wait \+ 栈缓冲在 HPCX/UCX 上已是最优，破坏 MPI 调用模式会破坏 UCX progress engine 流水线

#### v25 — mp\_exchange Sendrecv 替换

- 方法: 用 MPI\_Sendrecv 替换 Irecv\+Send\+Wait（每方向对从 6 个调用减到 2 个）

- 结果: ❌ 性能退步 \~5%（步数 29→28，接近持平但略差）

- 原因: Sendrecv 在 MPI 内部串行化，破坏了 Irecv→Send 的流水线重叠

- 教训: 减少调用数不等于提升性能，UCX 的非阻塞流水线更高效

#### v26 — 持久请求 \(Send\_init/Recv\_init \+ Start\)

- 方法: 用 MPI 持久请求预分配通信句柄

- 结果: ❌ 性能退步 \~59%（步数 29→12）

- 原因: allocatable SAVE 数组分配开销 \+ Start 调用开销远大于预分配收益

- 教训: 持久请求适合重复大量通信，但 ROMS 的 halo exchange 调用频率不足以摊销开销

#### v27 — 3d/4d Isend 替换阻塞 Send

- 方法: 仅对 mp\_exchange3d/4d 的 Send 改为 Isend

- 结果: ❌ 性能退步 \~59%（步数 29→13）

- 原因: 同 v26，破坏 UCX progress 流水线

- 教训: 3d/4d 的阻塞 Send 与 Irecv 的配合是 UCX 优化过的模式，不宜改动

#### v28 — mp\_exchange2d 双缓冲计算/通信重叠

- 方法: 在 EW 方向 Irecv\+Send 后、Wait 前，预打包 NS 方向的内部列数据，实现计算/通信重叠

- 结果: ❌ 性能退步 \~100%（600s 内只跑 1530 步 vs 基线 2160 步全部完成）

- 数值: ✅ 前 1530 步完全一致（数值正确）

- 根因（双重问题）:

    1. staging 文件基于旧基线: v28 的 staging 文件 `mp_exchange_doublebuffer_2d_v2.F` 基于一个旧版 mp\_exchange\.F，其中 mp\_exchange3d/4d 用的是阻塞 MPI\_Send。当前基线已升级为 MPI\_Isend\+Waitall。v28 意外把 3d/4d 的 Isend 退化为阻塞 Send，导致性能塌陷

    2. NS 方向预打包收益为零: 经代码审查发现，ROMS 的 mp\_exchange2d NS 方向只打包 ghost 列（Imin\.\.Istr\-1 \+ Iend\+1\.\.Imax），不含内部列 Istr\.\.Iend。预打包内部列是多余的，且虽然数值不影响（发送 size 不变），但计算/通信重叠的计算量极小，收益 \< 0\.1%

- 教训:

    - staging 文件必须基于当前最新基线生成

    - 2D exchange 的 NS pack 只有 ghost 列（角点），计算量极小，双缓冲重叠无意义

    - 3d/4d exchange 是标量级调用（每 k 层只传 Nghost 个点），同样无重叠价值

#### 早期失败尝试（v3–v22 演进中的负向项）

---

### 三、关键 Profile 数据（v24a 基线）

#### MPI 时间分布（Rank 0, 半天 391s 墙钟）

#### 计算时间分布（ROMS 内部 profile, Grid 01）

#### Allreduce 大小分布（Top 5）

---

### 四、累计优化效果

累计半天性能提升: \~44%（从 11:20 降到 \~6:20）

---

### 五、核心经验总结

#### 有效策略

1. 进程映射是最大杠杆: spread\_numa16\_ccx 单项提升 30%

2. 稀疏通信: 只通信有数据的 tile，避免全量 Allgather

3. 分层集合通信: 大规模 Bcast 用分层模式，减少跨节点跳数

4. HCOLL 硬件加速: 零代码改动，稳定 2–3% 提升

5. OpenMP 热点并行: 生态、GLS、step3d 等计算热点并行化

#### 无效策略

1. 改 MPI 调用模式: Irecv→Send→Wait 是 UCX 最优模式，任何变动（Sendrecv/Isend/持久请求）都会退步

2. 双缓冲重叠: 2D/3D exchange 的 pack 计算量极小，无重叠价值

3. 编译器向量化: znver1 的 AVX2 吞吐量减半，GCC PGO 对 Fortran 效果有限

4. 微循环优化: 循环展开/融合/栈重排在 −O2 下已被编译器覆盖





