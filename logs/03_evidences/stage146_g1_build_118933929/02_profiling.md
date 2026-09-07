# 第二次分析：编译与实现证据

- A′ parent `pre_step3d.F` SHA `de54caa2...8721b`；B `4f4ac891...4975`。
- BYE24BIO15 本地活动预处理 A′/B 均零错误；B 激活 `PRE_STEP3D_STRIP_PIPELINE`，A′保留原 `K_LOOP/J_LOOP1`。
- 远端 ifort+IPO+OpenMP 全构建成功，说明线程私有 `G1DC/G1V` 自动数组、OMP runtime calls 与 C4 strip 路径均被正式编译和链接。
- 构建阶段没有 wall-performance、模型轨迹或精度证据；A′不与 frozen binary 位级一致，不能直接用 B 对 frozen A 作归因。

