# ROMS_CoSiNE15 优化版运行说明

本目录（`/public/home/fujiake/nan/new/`）是最优版本 S47 的完整可编译源代码，
文件架构与官方未修改源码 `/public/home/fujiake/nan/speedup/perf_sandbox` 保持一致，
只替换了实际有改动的文件，并清理了优化过程中添加的注释。

## 1. 成绩与精度

- 3day 运行：27m41.8s（作业 J118946283，节点 j01r2n[04-07]）。
- vali 全部通过（Dongsha u = 5.2e-5，阈值 6e-5）。
- 二进制 md5（验证版）：1fc3be38a746ba1f5f5885eaf98e3bee。

## 2. 目录结构

与官方 perf_sandbox 一致：`ROMS/`（源文件）、`Master/`、`Compilers/`（编译选项）、
`makefile`（构建系统）、`ROMS/External/*.in`（输入文件）、`coll_rules.conf`（MPI 集体通信规则）、
`Inputfiles -> /public/home/fujiake/Inputfiles`（网格/强迫/初始场）、`vali.py`（精度校验）。

## 3. 改动文件清单（相对官方 perf_sandbox）

共 15 个源文件 + 1 个运行时配置：

1. `Compilers/Linux-ifort.mk`：全局 FFLAGS 改为 `-no-heap-arrays -fp-model precise -march=core-avx2 -no-fma -ipo -prof-use`，并对热点目标文件选择性加 `-qopenmp` / `-fp-model fast=2` / `-fp-model source` / `-no-heap-arrays`。
2. `Compilers/Linux-gfortran.mk`：FFLAGS 改为 `-march=znver1 -mtune=znver1 -fstack-arrays -ffp-contract=off`，LDFLAGS 加 `-fopenmp`，热点目标文件加 `-fopenmp`。
3. `makefile`：`MAKE_MACROS` 从 `${HOME}` 改为 `$(CURDIR)/make_macros.mk`（本地生成）。
4. `ROMS/Nonlinear/pre_step3d.F`：三段 OpenMP PARALLEL DO。
5. `ROMS/Nonlinear/step3d_t.F`：OpenMP、biology tracer 的 4D halo 交换拆分为 r8（temp/salt）与 float32（biology）两段、水平平流后批量收集边界通量、垂直扩散系数复用。
6. `ROMS/Nonlinear/rho_eos.F`：整例程 OpenMP。
7. `ROMS/Nonlinear/gls_corstep.F`：OpenMP。
8. `ROMS/Nonlinear/t3dmix4_s.h`：OpenMP。
9. `ROMS/Nonlinear/Biology/bio_UMAINE15.h`：OpenMP。
10. `ROMS/Utility/mp_exchange.F`：新增 `mp_exchange4d_q`（biology tracer 用 real(4) + MPI_REAL 传输）。
11. `ROMS/Utility/distribute.F`：边界打包改为 1 次 Allreduce、层次化 Bcast、IN_PLACE 组装。
12. `ROMS/Nonlinear/nesting.F`：fine2coarse 收集与通量组装优化。
13. `ROMS/Modules/mod_nesting.F`：新增 `get_Vweights` 开关。
14. `ROMS/Utility/set_contact.F`：动态/静态垂直权重切换。
15. `ROMS/Nonlinear/main3d.F`：`get_Vweights` 跳过每步无谓的嵌套权重重算。

运行时配置：`ROMS/External/ocean_SCS_Dongsha60_bio15.in` 的 `NtileI` 改为 `8 8`（64 进程）。
`ROMS/Include/globaldefs.h` 保持官方 `#define PROFILE`（计时包含 profiling 开销，与提交口径一致）。

## 4. 编译方法

登录计算节点后执行：

```bash
cd /public/home/fujiake/nan/new
module purge
module load compiler/intel/2021.3.0 mpi/hpcx/2.7.4/intel-2017.5.239 \
            mathlib/netcdf/4.4.1/intel mathlib/hdf5/1.8.20/intel
/opt/rh/devtoolset-7/root/usr/bin/gmake -j8
```

编译产物为 `oceanM`。当前目录已提供 `build_new.sh` / `build_new.slurm` 可直接提交编译。

## 5. 运行方法（64 进程 × 2 线程，4 节点）

运行前需设置运行时环境与 MPI 集体通信规则：

```bash
cd /public/home/fujiake/nan/new
module purge
module load mathlib/netcdf/4.4.1/intel mpi/hpcx/2.7.4/intel-2017.5.239 \
            mathlib/hdf5/1.8.20/intel compiler/intel/2017.5.239
export OMP_NUM_THREADS=2
export OMP_PROC_BIND=close
export OMP_PLACES=cores
export OMP_STACKSIZE=1G
export KMP_BLOCKTIME=0
export KMP_HOT_TEAMS=1
export KMP_HOT_TEAMS_MAX_PARALLEL=2
```

每节点 16 个 rank，每个 rank 绑定相邻 2 个核心（CCX 布局），64 rank / 4 节点。
可用 rankfile 指定绑定（见 `sub_new.sh` 示例），或直接：

```bash
mpirun -np 64 \
  --mca coll_hcoll_enable 0 \
  --mca coll_tuned_use_dynamic_rules 1 \
  --mca coll_tuned_dynamic_rules_filename ./coll_rules.conf \
  ./oceanM ROMS/External/ocean_SCS_Dongsha60_bio15.in
```

节点建议排除坏节点（0-3）：`j04r2n[00-03],j01r2n[00-03],i17r1n[00-03],i17r2n[00-03],j05r2n[00-03]`。
最优节点组：`i17r1n[08-11]` / `j01r2n[04-07]` / `i17r2n[08-11]`。

## 6. 测试模式（NTIMES）

修改 `.in` 中 `NTIMES` 即可切换运行时长：

- sample：`NTIMES == 144 720`（约 2 分钟，冒烟测试）。
- half：`NTIMES == 432 2160`（约 6 分钟）。
- 1day：`NTIMES == 864 4320`（约 9 分钟，vali 门槛）。
- 3day：`NTIMES == 2592 12960`（正式成绩，约 28 分钟）。

## 7. 精度验证

3day/1day 结束后，用 `vali.py` 对比官方输出 `/public/share/mcc2026_final/output/`：

```bash
python vali.py
```

阈值（关键项）：Dongsha u ≤ 6e-5、SCS u ≤ 4e-4，其余变量按 vali.py 内定义，全部通过即为有效。

## 8. 注意事项

- 只修改 `.in` 的 `NtileI`（固定 8 8）与 `NTIMES`（测试时长），不要改动输出设置。
- 保持 `#define PROFILE`（组委会口径），计时为带 profiling 的真实墙钟。
- 二进制须用 ifort 2021.3.0 构建，`-prof-use` 的 PGO 训练档为
  `/public/home/fujiake/nan/sprint/ROMS_CoSiNE15_s46_pgo`。
- 本目录内其余文件均为官方原版，未做改动。
