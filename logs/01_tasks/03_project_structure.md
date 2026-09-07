# 03 — 远程 zya 项目结构与构建 (MCC26)

## 位置
`~/zya` (= `/public/home/fujiake/zya`)，用户 `fujiake@MCC`。

## 构建来源
从已有 v24a 基线工作区 `~/fjk/ROMS_CoSiNE15_lsd_v24a_20260728` 用 rsync 复制源码树（排除 Build/output/slurm 日志/runs/logs），保留全部 ROMS 源码、Compilers、.mcc_opt（含 98 脚本）。

## 目录结构
```
~/zya/
├── makefile                  # 总构建入口，FORT ?= ifort
├── makefile1201              # 备份
├── sub.sh                    # Slurm 提交脚本（kshcexclu06, -n 32）
├── job.pbs                   # PBS 旧脚本（参考）
├── Compilers/
│   ├── Linux-ifort.mk        # Intel 编译规则（赛题指定可调）
│   └── Linux-gfortran.mk
├── Master/                   # oceanM 入口 (ocean_control.F, ocean.h)
├── ROMS/
│   ├── Drivers/nl_ocean.h
│   ├── Include/              # bye24bio15.h (CPP 开关), cppdefs.h, ...
│   ├── External/             # ocean_SCS_Dongsha60_bio15.in, bio_UMAINE15.in, varinfo.dat
│   ├── Modules/              # mod_param/grid/ocean/forces/...
│   ├── Nonlinear/            # main3d, step2d, rhs3d, step3d_uv/t, nesting, exchange_*, Biology/
│   │   └── Biology/          # bio_UMAINE15*.h (CoSiNE 核心)
│   └── Utility/              # distribute.F, mp_exchange.F, nf_fread/write, wrt_*
├── Inputfiles -> /public/home/fujiake/Inputfiles   # 软链，全队共享
├── Atmosphere/ Data/ Lib/ Projects/ Reference/ Waves/ User/ intel/
├── analysis/                 # 分析脚本/结果
├── docs/                     # 远程文档
└── .mcc_opt/                 # 优化工作区
    ├── README.md             # .mcc_opt 说明
    ├── original/             # 原始源码备份
    ├── staging/              # 各优化版本源码
    ├── scripts/              # 98 个编译/运行/profile 脚本
    │   ├── profile_job.sh
    │   ├── attach_profile_job.sh
    │   └── attach_profile_hybrid_job.sh
    ├── bin/current-best/     # 当前最优 oceanM
    ├── runs/                 # 测试日志/profile
    ├── tools/ inputs/ logs/
```

## Inputfiles 路径处理
赛题文件大，全队共享一份在 `/public/home/fujiake/Inputfiles`。zya 内通过软链访问：
```
~/zya/Inputfiles -> /public/home/fujiake/Inputfiles
```
`.mcc_opt/scripts/profile_job.sh` 等通过 `MCC_INPUTFILES` 或默认 `$HOME/Inputfiles` 定位，无需改脚本（已在 `$HOME` 层级）。如需切换路径：
```bash
export MCC_INPUTFILES=/public/home/fujiake/Inputfiles
```

## 编译
```bash
cd ~/zya
module purge
module load mathlib/netcdf/4.4.1/intel \
             mpi/hpcx/2.7.4/intel-2017.5.239 \
             mathlib/hdf5/1.8.20/intel \
             compiler/intel/2017.5.239
make clean && make          # 生成 oceanM
```
赛题允许调整编译环境（Linux-ifort.mk 编译选项、MPI 配置、NetCDF 路径）。

## 运行/提交
```bash
cd ~/zya
sbatch sub.sh                # 默认 -p kshcexclu06 -N 2 -n 32 --exclusive
squeue -u fujiake
# 耗时从 log_SCS_Dongsha60_2021_daily.txt 中 time 的 real 行读取
```

## 验证
```bash
module load anaconda3/2023.09
source activate /public/home/mcc2026_final/.conda/envs/vali_py3.9
python /public/home/mcc2026_final/mcc2026_source/vali.py
```
> 注：`/public/home/mcc2026_final` 当前对本用户无读权限（Permission denied），vali.py 路径需在赛题方开放后确认。

## 核数约束
- 仅可改 `ocean_SCS_Dongsha60_bio15.in` 中 `NtileI*NtileJ`。
- 每队 128 核，单机 32 核，**最大 4 节点**（非必须 128 核）。当前最佳配比 4 节点 64 核。
- sub.sh 当前 `-n 32`，需按实际配比调整（如 4 节点 64 核 → `-N 4 -n 64`，每节点 16 核）。
- **决赛不支持 DCU**，`--gres=dcu:1` 应注释掉（sub.sh 中已是 `##SBATCH` 注释状态）。

## NTIMES 调试（改 .in 第 196 行）
| 时长 | 粗网格 | 细网格 |
|---|---|---|
| 3 天 | 2592 | 12960 |
| 1 天 | 864 | 4320 |
| 半天 | 432 | 2160 |
当前为 3 天完整值。调试时按倍数缩小，最终比赛须 3 天。

## 验证（群通知，已确认可读）
```bash
source /public/share/mcc2026_final/miniforge3/etc/profile.d/conda.sh
conda activate vali
python /public/share/mcc2026_final/vali.py
```
> 赛题源码/脚本在 `/public/share/mcc2026_final/`（含 `ROMS_CoSiNE15.tar`、`sub.sh`、`vali.py`），非 `/public/home/mcc2026_final`。

## 初始构建记录
- 2026-07-30：建立 `.mcc_opt` 八子目录 + analysis/docs；Inputfiles 软链；rsync 源码（4368 文件，187M）。
- oceanM 尚未编译生成（下一步）。
