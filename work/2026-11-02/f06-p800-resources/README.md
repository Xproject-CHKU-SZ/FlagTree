# P800 F06：SDNN / cluster 实测报告

2026-11-02。主测试完成：216 个用例 × 3 条路径 × 2 轮 = **1296 条记录**；另完成 12 个代表性拆分用例的 72 条对照记录。精度阈值沿用原用例。

**远端清理已完成**：所有结果先保存本地并逐文件校验，再停止专用运行环境、删除 `/home/zhaoweiming/f06-resources-20261102`。清理后确认目录和运行环境进程均不存在，8 张 P800 空闲。

## 适用范围与选择建议

- **SDNN：优先用于小矩阵 FP32/FP16 的 MatMul+Bias、ReLU、精确 GELU 融合。** 本次三个小尺寸上的 GPU 加速比为 1.83–3.25×。BF16 不能沿用这个结论。
- **大矩阵精确 GELU 仍适合 SDNN 单内核。** 2048³ FP16/FP32 分别比 eager 快约 1.51×/1.47×。同规模 Bias/ReLU 的 SDNN 路径则慢于 eager。
- **cluster 更适合本次很小规模的 Mul+Sum，以及替代慢速 SDNN tanh/SiLU 后处理。** 16×128 的 FP32/FP16 Mul+Sum 两轮均快于 eager；更宽或更大的归约通常失去收益。
- **当前 Softmax/LayerNorm 生成路径优先保留 eager。** cluster 多数能通过精度，但明显慢；SDNN 在这些组合上存在编译或链接障碍。
- **大矩阵 BF16 暂不建议启用当前 SDNN MatMul 融合。** 15 个大矩阵 BF16 MatMul 用例全部在至少一项精度检查中失败；cluster 的 2048×2048 BF16 带 weight/bias/affine LayerNorm 也失败。失败数据不进入加速比。

这些结论针对本次 F06 实现、原生 Inductor 候选和固定 SDK。它们描述当前可用路径与实测收益，不能作为 P800 硬件性能上限。

## 覆盖与公平计时

12 种组合；FP32/FP16/BF16；小矩阵 (M,N,K)=(16,128,64)、(32,256,64)、(64,1024,64)；大矩阵 (128,1024,128)、(512,1024,1024)、(2048,2048,2048)。非 MatMul 组合使用对应 M、N，LayerNorm eps=1e-3。

同一用例三条路径固定在同一张物理 P800、相同 CPU 亲和性上比较。独立用例分布在 8 张空闲 P800；每张卡串行执行，第二轮反转用例和路径顺序。运行前检查空闲与 ECC；用设备进程记录确认物理卡归属。

GPU：统一外层 CUDA Graph 重放；每图 64 次调用，2048³ MatMul 每图 8 次；7 组 × 20 次重放，以设备事件计时并除以实际逻辑调用数。编译、自动调优、环境加载、预热和图捕获均不计入。端到端：另取 31 个同步普通调用样本，包含 Python/启动/同步成本，不使用 Graph 重放时间代替。

每轮取中位数，再取两轮中位数的中位数。加速比 = eager 耗时 / 对应路径耗时，>1 表示更快。只有两轮均通过全部检查的用例参与性能统计。主测试与拆分诊断分别计算各自批次内的配对加速比。

数值参考为同环境 eager，比较在 CPU 上完成；验证普通值、换址及改变输入、输出独立性、NaN/Inf、Graph 输入更新、输入与参数不变性，以及计时阶段没有重新编译。TF32 与低精度累加开关关闭，保留中间 dtype 舍入。

| dtype / 范围 | atol | rtol |
|---|---:|---:|
| FP32 全部 | 0.0003 | 0.0003 |
| FP16 全部 | 0.003 | 0.003 |
| BF16 大矩阵 MatMul | 0.003 | 0.003 |
| BF16 其余原用例 | 0.03 | 0.003 |

## 各组合加速比

每个“组合 × 大小”分组有 9 例（3 dtype × 3 尺寸）。单元格为 **两轮均通过例数/9；GPU 加速比几何均值**。均值只包含通过例，支持率必须一起看；不同资源的有效子集可能不同。逐例 GPU、端到端时间及加速比见 [完整 216 例表格](/home/f/Documents/FlagTree/work/2026-11-02/f06-p800-resources/results.html) 和 [结构化结果](/home/f/Documents/FlagTree/work/2026-11-02/f06-p800-resources/analysis.json)。

| 组合 | SDNN 小 | cluster 小 | SDNN 大 | cluster 大 |
|---|---:|---:|---:|---:|
| MatMul + Bias | 9/9；1.202× | 0/9；— | 6/9；1.081× | 0/9；— |
| MatMul + Bias + ReLU | 9/9；1.636× | 0/9；— | 6/9；1.214× | 0/9；— |
| MatMul + Bias + GELU(exact) | 9/9；1.175× | 0/9；— | 6/9；1.912× | 0/9；— |
| MatMul + Bias + GELU(tanh) | 9/9；0.145× | 0/9；— | 6/9；0.054× | 0/9；— |
| MatMul + Bias + SiLU | 9/9；0.388× | 0/9；— | 6/9；0.104× | 0/9；— |
| Add + LayerNorm | 0/9；— | 9/9；0.112× | 0/9；— | 9/9；0.020× |
| Add + LayerNorm(weight) | 0/9；— | 9/9；0.113× | 0/9；— | 8/9；0.020× |
| Add + LayerNorm(bias) | 0/9；— | 9/9；0.113× | 0/9；— | 8/9；0.020× |
| Add + LayerNorm(affine) | 0/9；— | 9/9；0.116× | 0/9；— | 8/9；0.020× |
| Add + Softmax | 0/9；— | 9/9；0.129× | 0/9；— | 9/9；0.031× |
| Mul + Sum | 8/9；0.175× | 9/9；0.876× | 4/9；0.013× | 9/9；0.154× |
| Mul + Sum(keepdim) | 8/9；0.176× | 9/9；0.832× | 4/9；0.013× | 9/9；0.154× |

端到端单独汇总如下，仍以 eager / 对应路径计算；逐例原始 31 样本保存在归档中。

| 组合 | SDNN 小 E2E | cluster 小 E2E | SDNN 大 E2E | cluster 大 E2E |
|---|---:|---:|---:|---:|
| MatMul + Bias | 1.050× | — | 0.869× | — |
| MatMul + Bias + ReLU | 1.308× | — | 1.000× | — |
| MatMul + Bias + GELU(exact) | 1.242× | — | 1.565× | — |
| MatMul + Bias + GELU(tanh) | 0.478× | — | 0.086× | — |
| MatMul + Bias + SiLU | 0.921× | — | 0.177× | — |
| Add + LayerNorm | — | 0.361× | — | 0.043× |
| Add + LayerNorm(weight) | — | 0.365× | — | 0.046× |
| Add + LayerNorm(bias) | — | 0.363× | — | 0.046× |
| Add + LayerNorm(affine) | — | 0.361× | — | 0.046× |
| Add + Softmax | — | 0.286× | — | 0.048× |
| Mul + Sum | 0.376× | 0.701× | 0.031× | 0.254× |
| Mul + Sum(keepdim) | 0.380× | 0.705× | 0.031× | 0.254× |

## 大矩阵 MatMul：激活函数决定结果

下表为主测试 2048³ 的 GPU 时间，单位 µs。

| 组合 | dtype | eager | SDNN | GPU 加速比 | E2E 加速比 |
|---|---|---:|---:|---:|---:|
| MatMul + Bias | FP32 | 192.009 | 293.939 | 0.653× | 0.667× |
| MatMul + Bias | FP16 | 94.081 | 222.391 | 0.423× | 0.461× |
| MatMul + Bias + ReLU | FP32 | 209.683 | 293.165 | 0.715× | 0.722× |
| MatMul + Bias + ReLU | FP16 | 104.832 | 221.831 | 0.473× | 0.510× |
| MatMul + Bias + GELU(exact) | FP32 | 434.923 | 296.721 | 1.466× | 1.416× |
| MatMul + Bias + GELU(exact) | FP16 | 341.576 | 226.932 | 1.505× | 1.451× |
| MatMul + Bias + GELU(tanh) | FP32 | 408.540 | 7562.733 | 0.054× | 0.057× |
| MatMul + Bias + GELU(tanh) | FP16 | 325.199 | 7407.724 | 0.044× | 0.047× |
| MatMul + Bias + SiLU | FP32 | 243.184 | 2568.720 | 0.095× | 0.102× |
| MatMul + Bias + SiLU | FP16 | 148.951 | 2480.565 | 0.060× | 0.068× |

## SDNN MatMul + cluster 后处理拆分诊断

12 例、72 条记录全部通过；每次拆分都验证实际绑定的 SDNN 与 cluster 二进制，且无外部库回退。分段本身也使用相同精度门槛和 Graph 协议。下表单位 µs。

| 组合 | dtype | M,N,K | eager GPU | SDNN 整体 GPU | 拆分 GPU | 拆分相对 SDNN | 拆分相对 eager |
|---|---|---|---:|---:|---:|---:|---:|
| MatMul + Bias | FP16 | 16,128,64 | 6.127 | 2.543 | 9.632 | 0.264× | 0.636× |
| MatMul + Bias + ReLU | FP16 | 16,128,64 | 8.134 | 2.849 | 10.786 | 0.264× | 0.754× |
| MatMul + Bias + GELU(exact) | FP16 | 16,128,64 | 10.892 | 5.368 | 11.412 | 0.470× | 0.954× |
| MatMul + Bias + GELU(tanh) | FP16 | 16,128,64 | 10.431 | 16.464 | 10.972 | 1.500× | 0.951× |
| MatMul + Bias + SiLU | FP16 | 16,128,64 | 11.477 | 17.388 | 10.357 | 1.679× | 1.108× |
| MatMul + Bias | FP16 | 2048,2048,2048 | 94.098 | 221.678 | 490.703 | 0.452× | 0.192× |
| MatMul + Bias + ReLU | FP16 | 2048,2048,2048 | 104.815 | 221.521 | 615.397 | 0.360× | 0.170× |
| MatMul + Bias + GELU(exact) | FP16 | 2048,2048,2048 | 341.598 | 227.525 | 3486.291 | 0.065× | 0.098× |
| MatMul + Bias + GELU(tanh) | FP32 | 2048,2048,2048 | 408.469 | 7563.447 | 976.851 | 7.743× | 0.418× |
| MatMul + Bias + GELU(tanh) | FP16 | 2048,2048,2048 | 325.482 | 7407.758 | 920.915 | 8.044× | 0.353× |
| MatMul + Bias + SiLU | FP32 | 2048,2048,2048 | 242.711 | 2560.888 | 555.398 | 4.611× | 0.437× |
| MatMul + Bias + SiLU | FP16 | 2048,2048,2048 | 148.897 | 2481.080 | 572.538 | 4.333× | 0.260× |

分段证据（2048³ FP16）：

| 后处理 | 单独 SDNN MatMul GPU µs | 单独 cluster 后处理 GPU µs |
|---|---:|---:|
| MatMul + Bias | 220.774 | 267.411 |
| MatMul + Bias + ReLU | 220.412 | 392.104 |
| MatMul + Bias + GELU(exact) | 220.347 | 3259.019 |
| MatMul + Bias + GELU(tanh) | 220.819 | 697.749 |
| MatMul + Bias + SiLU | 220.095 | 349.851 |

ReLU 的 SDNN 整体约 222 µs，单独 SDNN MatMul 约 221 µs，说明该例主要开销已经在 GEMM；把后处理移到 cluster 增加了约 392 µs 的阶段。精确 GELU 的单 SDNN 内核约 228 µs，cluster 后处理却约 3.26 ms，保留融合更合适。tanh-GELU/SiLU 拆分可显著减少当前 SDNN 后处理开销，但大矩阵拆分方案仍慢于 eager。

## 调优与失败定位

原生 GEMM 候选调优不等同于优化整段融合代价。本测试保留原配置 `benchmark_epilogue_fusion=False`。小矩阵 FP16 tanh-GELU 在主测试选中 16×128×64 tile，两轮约 51.90 µs；补充实验选中 16×32×32 tile，两轮约 16.46 µs。日志和生成代码证实选择不同。应将融合后的代价和资源切分纳入联合调优；这里分别保留两批结果，没有跨批次拼接计算加速比。

按独立用例统计：eager 216/216 通过；SDNN 99/216 通过、90 例编译/链接失败、27 例精度失败；cluster 123/216 通过、90 例 MatMul 模板不支持、3 例精度失败。

- cluster MatMul：当前原生 dot/MMA 编译路径要求 SDNN。第一轮保留了实际拒绝证据；第二轮复用失败候选缓存后显示 NoValidChoices。它们是同一支持性限制，不能当作慢速测量。
- SDNN Softmax/LayerNorm：见动态 stride 的 Bufferize 错误、64 个 pipeline event 上限，以及 `xpu::math_rsqrt` 未定义符号等。结论限定为本次 SDK/生成路径的可用性，不推断硬件不能执行这些数学运算。
- SDNN 精度失败：包括全部 15 个大矩阵 BF16 MatMul，用例完整记录初始、改变输入及特殊值检查；Mul+Sum 还存在与尺寸、dtype 有关的失败，2048² 三种 dtype 都失败。
- cluster 精度失败：2048² BF16 的 LayerNorm weight、bias、affine 三个变体；普通 LayerNorm 未列入这三个失败。
- 6 个小矩阵 cluster 归约用例两轮耗时相差超过 10%，最大约 53%；相对 eager 的快慢方向未反转。各轮中位数及样本全部保留。

## 环境与测试快照

8× P800 OAM（每卡 98304 MiB），驱动 5.0.21.47；Python 3.10、Torch 2.9.0+cu128、FlagTree 0.7.1a1+xpu3.6 / Triton 3.6.0、torch_xmlir 1.0.0.1。Torch 的 CUDA 名称是兼容接口；已通过 XPUDriver、实际 arch=3/warp_size=1、设备 PID 与绑定二进制共同确认 P800 资源。环境版本选择参考 [官方 P800 安装说明](https://github.com/flagos-ai/FlagTree/wiki/User-manual-for-xpu)。

运行环境全部在任务目录内构建；大库使用原 wheel 字节校验后加载到不可写 memfd。原生编译库 SHA-256：`e05ead1b599f3657b0fae3c3dc73209b2d8a54349cf107b8859df6724990e54a`。环境加载在计时前完成。

测试快照的兼容修改包括：修正 CUDA 兼容架构 86 到实际 XPU arch=3 的传递；避开 NVIDIA shared-memory 估算对所有候选的误过滤；适配 Torch 2.9 模板/缓存/编译返回接口；将 exp/rsqrt 传递到原生 XPU 内建运算；不适用时跳过可选的并行 RNE 优化而保留原运算。两条资源路径使用相同数学与精度约束。所有修改均限于测试快照，没有修改远端主机安装或配置。

## 本地材料与远端清理

- [216 例 GPU/E2E 完整表格](/home/f/Documents/FlagTree/work/2026-11-02/f06-p800-resources/results.html)；[逐例主测试分析](/home/f/Documents/FlagTree/work/2026-11-02/f06-p800-resources/analysis.json)；[拆分及分段分析](/home/f/Documents/FlagTree/work/2026-11-02/f06-p800-resources/split-analysis.json)。
- [完整测量汇总](/home/f/Documents/FlagTree/work/2026-11-02/f06-p800-resources/measurements.json)；[已校验的源码、日志、样本、生成代码和编译证据](/home/f/Documents/FlagTree/work/2026-11-02/f06-p800-resources/artifacts)。
- [原始归档](/home/f/Documents/FlagTree/work/2026-11-02/f06-p800-resources/p800-f06-artifacts.tar.gz)；[逐文件校验清单](/home/f/Documents/FlagTree/work/2026-11-02/f06-p800-resources/artifacts/archive-manifest.json)；[远端清理记录](/home/f/Documents/FlagTree/work/2026-11-02/f06-p800-resources/cleanup-status.json)。
- 已校验 36,230 个文件；归档 SHA-256：`f72883b6a6c8ae57ba024952d90664f3381fb2ce2002a4e978a74c2f4dcb6bae`。
- 仅删除本次目录 `/home/zhaoweiming/f06-resources-20261102`，停止任务专用库进程 2865575。清理前后可用磁盘增加约 9.77 GiB。

复现入口与固定配置在归档中的 `run_env.sh`、`resource_worker.py`、`resource_runner.py`、`full-coverage-plan.json`、`full-source-manifest.json`；拆分版本以 `split_*_v2.py` 和 `split-v2-source-manifest.json` 为准。初期兼容性诊断和首次图切分脚本失败记录也保留，但不参与上述统计。
