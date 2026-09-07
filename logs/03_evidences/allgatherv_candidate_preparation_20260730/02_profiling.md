# 第二次分析：通信量与正确性路径 Profiling

- 日期：2026-07-30（平台时间）
- 对象：`mp_aggregate2d/3d` 的 padded Allgather 路径
- 证据来源：已验证 GCC 三次完整运行的 ROMS profile，以及候选与 passing `distribute.F` 的逐行差异

## 为什么选择该路径

三次完整 GCC 运行的 Grid 02 `data gathering` 分别约为 `162806.990`、`163450.744`、`162522.194` rank-seconds，稳定占总时间约 27.6%；Grid 01 `point data gathering` 分别约为 `156192.014`、`158314.001`、`156558.948` rank-seconds，稳定占约 26.5%。这两个稳定热点支持优先减少 aggregate 通信与本地缓冲区写入。

## 旧路径与候选路径

设 rank 数为 `P`，rank `r` 的真实元素数为 `c_r`，`M=max(c_r)`：

- 旧路径每次 collective 按 `P*M` 个元素组织接收，并在调用前把整个 `Arecv` 清零；
- 候选 collective 的有效接收长度为 `sum(c_r)`，节省的补齐元素数是 `P*M-sum(c_r)`；
- 候选不再清零 `Arecv`，只读取 `MPI_Allgatherv` 写入的连续有效区间；
- `Asend` 清零仍保留，降低首个候选的修改风险。

候选的主要潜在收益可能来自省去每次 aggregate 的大接收缓冲区清零；由于 8x8 划分下 tile 尺寸可能只相差少量元素，单靠变长 collective 的线缆数据缩减未必很大，且 `MPI_Allgatherv` 算法自身可能比高度优化的等长 `MPI_Allgather` 更慢。因此必须由匹配的 S0/S1 半日实测决定，不能由源码推断直接认定有效。

## 顺序与边界验证

- `displs(0)=0`，后续是 `recvcounts` 的 rank 前缀和；MPI 位移单位与 `MP_FLOAT` 接收类型一致。
- MPI Fortran 缓冲区从 `Arecv(1)` 开始，而位移为零基；解包先令 `np=displs(rank)` 再自增，因此 rank 0 首元素仍读取 `Arecv(1)`。
- collective 仍按 rank 0 到 `Nnodes` 排列；外层解包 rank 循环未改变，重叠 contact 点的覆盖次序也未改变。
- `sum(c_r) <= P*M <= size(Arecv)`，原有 `Npts<=TileSize` 检查仍保证发送缓冲区上界。
- `mp_gather2d/3d`、halo、reduction、nesting 浮点运算均未改变。

## 测量门槛

已验证 GCC 三次完整时间为 `9259.75`、`9263.08`、`9311.09` 秒；中位数 `9263.08` 秒，极差 `51.34` 秒，极差/中位数约 `0.554%`。按最小运行计划，S1 必须相对同布局 S0 至少快 `max(3%, 2*0.554%)=3%`，且数值轨迹一致，才允许进入一次完整 F1。
