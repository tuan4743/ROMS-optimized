# 06 — pre_step3d 任务流水线改造计划

> 2026-08-05。目标：消除 worker 在 step2d(LOOP_2D)期间的墙钟空等。
> 状态：**数据依赖已验证可行，待实施原型验证**。
> 紧急程度：宽松。

## 1. 问题背景

主循环 LOOP_2D(42 次 2D 快模步)期间，master 线程串行执行 step2d，worker 线程在 `!$OMP BARRIER` 空等（墙钟 ~20-30%）。此前判定"结构性无解"，但**忽略了 pre_step3d 可以提前执行**。

## 2. 核心洞察（源码级数据流验证）

### pre_step3d 与 rhs3d 其余部分完全解耦
| 数组 | pre_step3d 角色 | 时间索引 |
|---|---|---|
| `t` | 读 `t(nstp)+t(nnew)` → 写 `t(nnew)`（赋值=） | 行 555/896 |
| `u/v` | 读 `u(nstp)`+`ru(nrhs)` → 写 `u/v(nnew)`（赋值=） | 行 966/990 |
| `Huon/Hvom` | 读（本步已就绪 3D 通量） | — |
| `ru/rv` | 读 `ru(nrhs)`/`ru(indx)`（**上一步的 RHS**） | 行 993 |

- rhs3d_tile 只读 `u(i,j,3,nrhs)` 等旧场，**不依赖 pre_step3d 输出** → 可从 rhs3d 中移除 pre_step3d
- step3d_uv 读 `u/v(nnew)` 并 `+=` 累加 → **必须等 pre_step3d 先写初值**

### 时序可行性
```
原来：
  rhs3d: [pre_step3d → prsgrd → t3dmix → rhs3d_tile → rufrc]
  LOOP_2D: step2d×42(master) ← worker 空等 84 barrier
  step3d_uv / step3d_t: 读 t/u/v(nnew)

改为：
  rhs3d: [prsgrd → t3dmix → rhs3d_tile → rufrc]   ← 移除 pre_step3d
  LOOP_2D 期间:
    master: step2d×42（不碰 t/u/v）
    worker: pre_step3d（写 t/u/v(nnew)）← 并行执行！
  LOOP_2D 后:
    step3d_uv / step3d_t: 读已就绪的 t/u/v(nnew)
```

## 3. 实施步骤

1. **拆分 rhs3d**：把 `CALL pre_step3d` 从 rhs3d 顶部移除，独立成可调用单元
2. **main3d 改造**：在 `LOOP_2D` 内（step2d 的 `!$OMP BARRIER` 处）插入 OMP 并行区，worker 执行 pre_step3d
   ```fortran
   ! LOOP_2D 内, predictor step2d 后:
   !$OMP SINGLE
   CALL step2d (ng, tile)          ! master 独占
   !$OMP END SINGLE NOWAIT
   !$OMP PARALLEL DO                ! worker 并行算 pre_step3d
   DO tile=...
     CALL pre_step3d (ng, tile)
   END DO
   !$OMP BARRIER
   ```
3. **tile 分配**：pre_step3d 是 tile 级，worker(2 线程)分 64 个 tile，每线程 32 个
4. **同步**：LOOP_2D 结束时加 barrier，确保 step3d_uv 读到完整 t/u/v(nnew)

## 4. 风险与验证

| 风险 | 验证方法 |
|---|---|
| pre_step3d 写 u/v(nnew) 与 step3d_uv 累加顺序 | 代码确认：赋值= 在 累加+= 前 ✓ |
| OMP 并行区 tile 竞争 | tile 独立无竞争（pre_step3d 纯 tile 级）✓ |
| 数值正确性 | 全量 3 天 + vali.py（u 硬保证） |
| 性能 | 半天 ABBA：改前 vs 改后 |

## 5. 预期收益
- worker 空等（墙钟 20-30%）→ 改为执行 pre_step3d（CPU 15.5%）
- **这是唯一能减少 barrier 墙钟等待的结构性优化**（非对称调度失败因 worker 无工作；现在有）
- 保守估计总墙钟降 10-20%

## 6. 待决问题
- pre_step3d 内部是否有 `!$OMP` 已并行（若已并行则 worker 内再并行需嵌套 OMP）
- LOOP_2D 每迭代都插 pre_step3d 会重复算？→ 应只在第一次迭代（my_iif=1）执行
- 与 set_depth/step3d_uv 的 barrier 衔接

## 7. 流水线原型实验(2026-08-05,简单移位证伪)

**实验**:把 pre_step3d 从 rhs3d 移到 main3d LOOP_2D(my_iif==1),利用 THREADPRIVATE tile 分配(线程0: tile 0-31,线程1: tile 32-63)。编译 ompk-pipeline,半天 ABBA job 118606516。

**结果**:
| 组 | run | 均值 |
|---|---|---|
| A(提交版) | 6:00.84/6:01.06 | **6:00.95** |
| B(流水线) | 6:04.02/6:07.84 | **6:05.93** |

- **B 慢 1.4%**,全 exit=0/DONE=1(数值安全,pre_step3d 移位不破坏 u)
- **根因**:简单移位只改位置未真正交错。THREADPRIVATE 下每线程 step2d 后算自己 pre_step3d,不是填 barrier 空等,反而增加 LOOP_2D 串行路径
- **真正交错需 OMP task 打破静态 tile 分配**:复杂度高、风险大,且 barrier 等待主要是 2D halo 通信(非线程空闲),收益不明
- **结论**:简单版无效已回滚(备份 rhs3d.F.orig_pipeline/main3d.F.orig_pipeline),复杂版不推荐

**关键机制发现**(验证时确认):
- main3d 整个在 `!$OMP PARALLEL`(nl_ocean.h)内
- first_tile/last_tile 是 THREADPRIVATE,nl_ocean.h 行 116-129 按 MyThread*chunk_size 分配(2 线程:线程0→tile 0-31,线程1→tile 32-63)
- step2d 和 pre_step3d 都按此 tile 分配并行,非"master 独占"
- barrier 空等 = 线程间 step2d 完成时间差 + 2D halo 通信(非"worker 完全空闲")

## 8. 局部转置精确量化(2026-08-05,已证伪)

**问题**:pre_step3d 区域 A 是否值得做局部转置(t → tl(itrc,i,j,k))?

**实测数据**(64 进程×10 步快速采样,job 118602968,perf stat):
| 指标 | 值 | 含义 |
|---|---|---|
| **IPC** | **1.76** | 指令流水线几乎满 |
| **L1-dcache miss 率** | **0.18%** | 缓存命中率 99.8%,数据局部性极好 |
| cache-misses / LLC | 不可用(PMU 限制) | 无法直接测 L3/DRAM |

**判定:局部转置不值得实施**:
- **用户假设**(缓存线浪费 12.5%、节省 42.7GB)**与实测矛盾**:L1 miss 仅 0.18%,当前缓存命中率 99.8%
- pre_step3d 内层扫 i 连续,缓存线充分利用(非 8B 用 8B);itrc 跨步存在但切换后连续扫描,不浪费缓存线
- 转置成本(12.9MB 顺序拷贝)只会**增加 DRAM 流量**,缓存收益≈0 → **净收益为负**

**真正的瓶颈**(从 IPC 1.76 + cache 好 + 性能慢推得):
- 瓶颈是 **DRAM 带宽供给**,不是缓存效率,也不是指令流水线
- 数据从 DRAM 到 L2/L3 的传输速率受限
- 这**三重确认"带宽受限"**(代数化简/AVX2/缓存优化均无效,瓶颈是 DRAM 带宽本身)

**注**:此量化基于实测 L1 miss(0.18%),替代理论推算。用户"缓存线放大"假设被实测否定——但用户的"先解决内存供给"方法论正确,只是当前缓存供给已良好,真正受限的是 DRAM 带宽。
