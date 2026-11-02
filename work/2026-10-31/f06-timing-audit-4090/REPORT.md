# F06 / Inductor 计时公平性审计

> 最新全量公平口径结果已完成：见 [216 用例统一 GPU 重放与独立端到端报告](/home/f/Documents/FlagTree/work/2026-10-31/f06-fair-gpu-4090/REPORT.md)。本页保留此前基线或原因审计的数据。

审计结论：普通调用变慢主要来自 Dynamo/AOT 包装、CUDA Graph Trees 管理和输入复制。旧计时能描述 API 调用成本，但两条路径的主机调用层级不同，不能据此宣称 F06 计算核快约 4 倍。
12 个代表用例的统一 GPU 重放中，F06 相对 max-autotune-no-cudagraphs 为 0.951×（基线/F06；整体略慢）；完整 max 普通调用对比则为 3.170×。两者衡量不同层面的成本。
六条路径计时区间均无新增编译图；40→400 次循环、8→256 次预热的组平均影响约为 0–2%。复现旧脚本 reset 后再预热的影响约为 1.2%，不足以解释数倍差距。

## 设计与证据范围

同一 RTX 4090、PyTorch 2.11.0+cu130、Triton 3.6.0、源码快照、输入及精度阈值。选择 12 个此前所有被测路径均通过的代表用例，覆盖 FP32 的 MatMul+Bias+GELU、Add+Softmax、Add+LayerNorm、Mul+ReduceSum 的大小尺寸，以及 FP16 MatMul 和 affine LayerNorm 的大小尺寸。每条路径单独启动进程，执行两轮；第二轮反转路径次序。每个新用例只在编译前重置 Dynamo；主计时不混入其他路径编译。

6 条路径分别是 eager、默认 Inductor、max-autotune-no-cudagraphs、完整 max-autotune、完整 max-autotune 加固定输入地址标记、原 F06 static_inference。固定地址路径使用 torch._dynamo.mark_static_address(t, guard=True)，仅适用于地址不变的输入；它是诊断对照，不替代一般 API 基线。

## 主机调用耗时（μs/次）

以下数字是两轮中位数的中位数。每组同步后执行 400 次普通调用，再同步；7 组取中位数。预先编译并额外预热 256 次。输出仍正常产生；计时外验证数值、扰动输入和输入/参数不变性。

| 用例 | eager | default | max 无原生图 | max 完整 | max 固定地址 | F06 |
|---|---:|---:|---:|---:|---:|---:|
| MM+Bias+GELU float32 16×128×64 | 10.00 | 28.17 | 23.69 | 36.87 | 31.00 | 7.90 |
| MM+Bias+GELU float32 2048×2048×2048 | 338.27 | 329.21 | 329.22 | 367.43 | 329.02 | 329.63 |
| Add+Softmax float32 16×128 | 9.03 | 24.70 | 24.72 | 40.08 | 32.48 | 9.51 |
| Add+Softmax float32 2048×2048 | 21.81 | 24.96 | 25.41 | 40.69 | 32.72 | 12.68 |
| Add+LN float32 16×128 | 12.09 | 24.98 | 25.40 | 40.64 | 32.90 | 9.44 |
| Add+LN float32 2048×2048 | 21.93 | 25.32 | 25.42 | 40.41 | 32.82 | 10.28 |
| Mul+Sum float32 16×128 | 9.68 | 24.95 | 24.92 | 40.52 | 32.43 | 9.46 |
| Mul+Sum float32 2048×2048 | 15.41 | 25.30 | 25.19 | 40.09 | 32.47 | 9.52 |
| MM+Bias+GELU float16 16×128×64 | 15.25 | 32.68 | 26.27 | 40.55 | 32.62 | 9.27 |
| MM+Bias+GELU float16 2048×2048×2048 | 121.33 | 115.77 | 107.76 | 116.71 | 109.04 | 114.31 |
| Add+LN affine float16 16×128 | 12.59 | 26.22 | 26.37 | 41.13 | 33.15 | 12.46 |
| Add+LN affine float16 2048×2048 | 16.11 | 26.73 | 26.74 | 40.94 | 32.98 | 12.61 |

## GPU 工作耗时（统一外部 CUDA Graph，μs/次）

对能安全外部捕获的路径，用同一种协议把多次调用录入图，再以 CUDA Events 测量重放；每张图内 64 次调用（2048³ MatMul 为 8 次），每组重放 20 次，7 组取中位数。这样避免逐算子 Python 发射间隙占据 GPU 计时。结果是固定输入、热缓存、多调用图重放吞吐，不等于单请求端到端延迟。

本次完整 max-autotune 及固定地址原生图路径的嵌套外部捕获均报 Attempt to trace generator，因此记录为不可用，绝不填入替代数字。其复制和计算开销另由 profiler 事件诊断。max 无原生图保留相同的 max_autotune 与 coordinate_descent_tuning 优化开关，因此可用于单独观察优化后的计算工作。

| 用例 | eager | default | max 无原生图 | max 完整 | max 固定地址 | F06 |
|---|---:|---:|---:|---:|---:|---:|
| MM+Bias+GELU float32 16×128×64 | 4.02 | 2.79 | 1.90 | 不可用 | 不可用 | 1.90 |
| MM+Bias+GELU float32 2048×2048×2048 | 338.29 | 328.84 | 328.63 | 不可用 | 不可用 | 330.06 |
| Add+Softmax float32 16×128 | 2.43 | 1.10 | 1.02 | 不可用 | 不可用 | 1.11 |
| Add+Softmax float32 2048×2048 | 20.41 | 11.97 | 11.93 | 不可用 | 不可用 | 12.21 |
| Add+LN float32 16×128 | 2.81 | 1.04 | 0.97 | 不可用 | 不可用 | 1.03 |
| Add+LN float32 2048×2048 | 20.64 | 9.86 | 9.18 | 不可用 | 不可用 | 9.40 |
| Mul+Sum float32 16×128 | 2.56 | 0.92 | 0.92 | 不可用 | 不可用 | 0.95 |
| Mul+Sum float32 2048×2048 | 13.92 | 5.13 | 4.79 | 不可用 | 不可用 | 5.16 |
| MM+Bias+GELU float16 16×128×64 | 3.74 | 2.45 | 1.31 | 不可用 | 不可用 | 1.35 |
| MM+Bias+GELU float16 2048×2048×2048 | 119.06 | 112.34 | 105.98 | 不可用 | 不可用 | 111.16 |
| Add+LN affine float16 16×128 | 3.06 | 1.01 | 0.98 | 不可用 | 不可用 | 1.03 |
| Add+LN affine float16 2048×2048 | 15.02 | 9.98 | 7.72 | 不可用 | 不可用 | 9.17 |

以上代表用例按基线/F06计算，几何平均如下。host 与 GPU 列分别标明基线运行路径，不能互换。

| 代表用例组 | 样本数 | 普通调用：vs 完整 max | GPU重放：vs max 无原生图 |
|---|---:|---:|---:|
| all | 12 | 3.170× | 0.951× |
| small | 6 | 4.168× | 0.958× |
| large | 6 | 2.411× | 0.944× |

## 计时方法排查

| 路径 | 计时内新增编译图 | 40次/400次 耗时比 | 校验后/校验前 | 256次预热/8次预热 | GPU捕获成功用例 |
|---|---:|---:|---:|---:|---:|
| eager | 0 | 1.007 | 0.996 | 1.003 | 12/12 |
| Inductor default | 0 | 1.014 | 0.969 | 0.993 | 12/12 |
| max-autotune-no-cudagraphs | 0 | 1.019 | 0.986 | 0.998 | 12/12 |
| max-autotune | 0 | 1.012 | 0.994 | 0.994 | 0/12 |
| max-autotune + static address | 0 | 1.009 | 1.000 | 0.996 | 0/12 |
| F06 | 0 | 1.022 | 0.987 | 0.998 | 12/12 |

完整 max 路径在主测量之后复现旧脚本的全局 reset → 编译 F06 → 预热 max 8 次 → 计时过程，其耗时/独立路径耗时几何平均为 1.012。全局 reset 确实会清理 Dynamo 和 CUDA Graph 状态，建议从正式多路径测试中移除；该对照用于判断它是否是数倍差距的主要原因。

直接把 CUDA Events 包在普通 Python 循环外仍会计入 GPU 等待 CPU 发射的空闲间隙。该数值单独保存在 audit.csv 的 direct_cuda_events_us 字段，不冒充 GPU 内核时间。

## 输入复制与调用层级

每次调用的输入复制次数和 CUDA Graph launch 次数来自 profiler 的 5 次正常调用；profiler 时长是受插桩影响的诊断量，未混入上面的性能汇总。

| 路径 | 输入复制事件/调用的分布 | 原生 cudaGraphLaunch/调用的分布 |
|---|---|---|
| eager | {"0.0": 12} | {"0.0": 12} |
| Inductor default | {"0.0": 12} | {"0.0": 12} |
| max-autotune-no-cudagraphs | {"0.0": 12} | {"0.0": 12} |
| max-autotune | {"1.0": 12} | {"1.0": 12} |
| max-autotune + static address | {"0.0": 12} | {"1.0": 12} |
| F06 | {"0.0": 12} | {"0.0": 12} |

CPU cProfile 完整栈保存在每轮目录的 *-cpu.txt 和 *.pstats。PyTorch profiler 的完整 CPU/GPU trace 保存在 *-trace.json；results.json 包含事件名称、次数、耗时。CUDA Memset、Memcpy、输入 Copy kernel 和计算 kernel 在 audit.csv 分别统计；历史 profile_kernel_count 实际统计 CUDA 事件，不能全当作计算 kernel。

## 公平性判断

旧脚本使用同步包围计时、正确的 ns→μs 换算、相同输入和数学精度设置，编译与正确性检查在计时外。其指标是包含 Python、guard、运行时包装和图管理的普通调用吞吐；它可以描述这些具体 API 路径的成本，但不能单独代表算子融合后的 GPU 计算效率。

F06 使用 static_inference 的专用静态执行入口，小矩阵还走预准备 launcher；原生 torch.compile 使用 Dynamo/AOT 包装，完整 max 模式另有 CUDA Graph Trees 的状态管理和普通输入复制。二者主机调用层级不同。需要同时报告普通调用与统一 GPU 重放两种指标，不能把约 4× 的主机加速直接解释成算力或融合核加速。

固定地址对照额外承诺数据地址不变，不能泛化到每次换输入张量地址的应用。最大调优模式扩大内核选择并启用原生图，并不保证所有微型图的端到端延迟最低。

原 216 用例报告中，eager 与 max 的有效精度样本集不同；不能把两个汇总加速比直接相除来推导 max/eager。此次审计用同一组通过样本做直接对照，也不放宽原精度阈值。

## 官方机制说明

- [PyTorch 2.11 CUDA Graph Trees：普通 eager 输入需要复制到静态地址；参数/缓冲区等稳定地址输入可避免复制](https://docs.pytorch.org/docs/2.11/user_guide/torch_compiler/torch.compiler_cudagraph_trees.html)。
- [PyTorch 2.11 torch.compile：max-autotune 默认启用 CUDA Graph；no-cudagraphs 保留调优而关闭图](https://docs.pytorch.org/docs/2.11/generated/torch.compile.html)。

源码层面的 reset/mark_static_address 实现取自实测环境，见 implementation_audit.txt。GPU 监控、原始数据、脚本和分析文件均保存在本目录。
