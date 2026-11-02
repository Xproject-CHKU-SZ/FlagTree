# F06 大矩阵 MatMul+Bias+Activation：原因、优化与公平复测

36 个受影响用例全部通过原精度阈值。GPU 几何平均相对旧 F06 加速 1.164×；相对 max-autotune-no-cudagraphs 从 0.831× 提高到 0.997×。相对 eager 为 1.385×。

基线比值大于 1 表示 F06 更快；优化前/优化后大于 1 表示此次改动有收益。先合并两轮中位数，再算逐例比值并取几何平均。失败项不计入速度汇总；各列有效集合可能不同。接近 1 的结果按基本持平解释，不声明显著胜负。

## 定位证据

1. 原实现只有 M≤64、N≤1024、K≤128 的小矩阵开启 GEMM autotune；大矩阵进入默认 compile_fx_inner，未开启 max_autotune/coordinate_descent_tuning。原大矩阵激活均为库 GEMM + 独立 Bias/Activation 后处理。
2. 消融中仅补齐调优，FP16 128×1024×128 ReLU 从 3.049 μs 降至 1.753 μs，FP32 512×1024×1024 从 38.678 μs 降至 30.079 μs；执行路径变为融合模板。这说明缺少调优是主要可修复原因。见 diagnostic-original、diagnostic-max_only 的 JSON 与 source-*.py。
3. 剩余 FP16 512×1024×1024 ReLU 差距与精度约束下的候选选择有关：原生基线 9.424 μs，原生加相同舍入保护后 11.155 μs，优化 F06 11.159 μs。基线模板在 FP32 accumulator 上直接加 bias、ReLU 后才输出；F06 保留 mm 和 add 的 dtype 舍入。严格原生对照也选择了库 GEMM + 后处理。此对照只用于归因，正式基线不变。
4. 尝试将 max_epilogue_benchmarked_choices 从 1 扩至 8，没有给中尺寸带来稳定改善，未采用；全部样本保留在 check-wide。当前方案不强制单核，也不声称全局最优。

## 实现

- 仅对小矩阵边界以外的 dense NVIDIA SM80+ MatMul+Bias+Activation 启用 max_autotune、coordinate_descent_tuning；保留 ATEN/TRITON 两种候选并开启 benchmark_epilogue_fusion。
- pattern_matcher=False，emulate_precision_casts=True，从 tracing 到 lowering 保留 MatMul、Add 的舍入边界。TF32、低精度 reduction 与容差均未改变。
- 保留原静态 guards、实时参数读取、独立输出和异常传播。小矩阵、bias-only、其他算子及 P800 原路径不变。
- [实现](/home/f/Documents/FlagTree/python/triton/experimental/graph_fusion/_inference.py)、[说明](/home/f/Documents/FlagTree/docs/python-api/graph-fusion.rst)与 CPU/CUDA 回归测试同时更新。

## GPU：同一外部 CUDA Graph 重放

两轮 profiler 均确认：优化前 36 例都是 2 个计算内核；优化后 24 例为 1 个、12 例为 2 个。Memset/Memcpy 不计为计算内核。36 例中 34 例 GPU 耗时下降；另两例 FP32 2048³ ReLU、GELU(tanh) 的前后比为 0.991×、0.992×，不声明改善。

| 组合/分组 | 优化前 vs Inductor | 优化后 vs Inductor | 优化后 vs eager | 优化前/优化后 |
|---|---:|---:|---:|---:|
| MatMul + Bias + ReLU | 0.821× (7/9) | 0.983× (7/9) | 1.418× (9/9) | 1.193× (9/9) |
| MatMul + Bias + GELU(exact) | 0.826× (6/9) | 1.002× (6/9) | 1.380× (9/9) | 1.168× (9/9) |
| MatMul + Bias + GELU(tanh) | 0.856× (6/9) | 1.000× (6/9) | 1.309× (9/9) | 1.115× (9/9) |
| MatMul + Bias + SiLU | 0.821× (6/9) | 1.006× (6/9) | 1.435× (9/9) | 1.182× (9/9) |

按 M 分组，三组 (M,N,K) 分别为 (128,1024,128)、(512,1024,1024)、(2048,2048,2048)。

| 组合/分组 | 优化前 vs Inductor | 优化后 vs Inductor | 优化后 vs eager | 优化前/优化后 |
|---|---:|---:|---:|---:|
| 128 | 0.664× (8/12) | 1.001× (8/12) | 1.988× (12/12) | 1.409× (12/12) |
| 512 | 0.881× (9/12) | 0.991× (9/12) | 1.242× (12/12) | 1.095× (12/12) |
| 2048 | 0.971× (8/12) | 1.000× (8/12) | 1.075× (12/12) | 1.023× (12/12) |

按 dtype：

| 组合/分组 | 优化前 vs Inductor | 优化后 vs Inductor | 优化后 vs eager | 优化前/优化后 |
|---|---:|---:|---:|---:|
| float32 | 0.827× (12/12) | 1.001× (12/12) | 1.342× (12/12) | 1.211× (12/12) |
| float16 | 0.822× (12/12) | 0.992× (12/12) | 1.490× (12/12) | 1.208× (12/12) |
| bfloat16 | 0.998× (1/12) | 1.009× (1/12) | 1.328× (12/12) | 1.079× (12/12) |

## 单次端到端延迟

31 次独立样本：同步清空先前工作后开始主机计时，一次普通调用，等待 GPU 完成后结束。编译/autotune 不计入；没有用 GPU 图重放代替普通调用。

| 组合/分组 | 优化前 vs Inductor | 优化后 vs Inductor | 优化后 vs eager | 优化前/优化后 |
|---|---:|---:|---:|---:|
| MatMul + Bias + ReLU | 1.320× (7/9) | 1.409× (7/9) | 1.032× (9/9) | 1.087× (9/9) |
| MatMul + Bias + GELU(exact) | 1.280× (6/9) | 1.407× (6/9) | 1.022× (9/9) | 1.099× (9/9) |
| MatMul + Bias + GELU(tanh) | 1.300× (6/9) | 1.427× (6/9) | 1.020× (9/9) | 1.099× (9/9) |
| MatMul + Bias + SiLU | 1.299× (6/9) | 1.447× (6/9) | 1.051× (9/9) | 1.114× (9/9) |

全部 36 例端到端：相对旧 F06 1.100×，相对 eager 1.031×，相对 Inductor 1.422×。普通调用 400 次批量均摊作为第三类指标保留在 CSV/JSON，未混作单次延迟。

## 正确性与覆盖

| 路径 | 大矩阵 Activation 两轮通过 | 全量 216 两轮通过 |
|---|---:|---:|
| eager | 36/36 | 216/216 |
| inductor | 25/36 | 155/216 |
| before | 36/36 | 仅重测受影响的 36 例 |
| f06 | 36/36 | 213/216 |

大矩阵阈值原样保留：FP32 atol=rtol=3e-4；FP16/BF16 atol=rtol=3e-3。F06 全量未通过的 3 个 BF16 MatMul+Bias 属于未改动的 bias-only 路径，与历史一致；原生基线未通过项同样如实保留。不得将其耗时计为正确执行的加速比。
44 项回归测试通过，无跳过：包含 CPU 路由/异常恢复/实时属性保护、原有精度/P800 路由检查、大矩阵 FP16/BF16 四种激活的抵消舍入和特殊值/缓存/独立输出检查，以及小矩阵 45 种报告组合的正确性和单计算内核检查。

## 协议与限制

- 本轮共 1368 条记录：eager、原生优化 Inductor、优化 F06 各 216×2；旧 F06 36×2。每路径每轮独立进程，第二轮反转路径和用例顺序。
- 沿用同一 input builders、seed=61、源数据哈希、设备地址使用方式、容差、GPU/CPU 及 PyTorch/Triton 二进制。CPU core 0、单线程；不改 GPU 时钟或功耗。
- GPU 每图 64 次调用；M=2048 的 MatMul 为 8 次。侧流预热 16 次，图重放预热 3 次，7 组×20 次重放，CUDA Events 除以实际调用总次数。各路径完全一致。
- 每例正常预热 256 次；排除编译、autotune 和 capture。输入变址、原地址修改后图重放、恢复原输入、参数不变性、计时区间编译计数以及无内部 CUDA Graph/fallback 全部检查。
- GPU 是固定形状、固定设备输入、热缓存重放吞吐；不是冷缓存、传输或完整模型性能。改动增加搜索的编译成本，本次主要衡量稳态性能。
- 实测 GPU：RTX 4090，PyTorch 2.11.0+cu130，Triton 3.6.0，驱动 615.71.10。只验证该环境，不外推 XPU 或全部 NVIDIA 代际。

| 36 例两轮 GPU 相对差 | 中位数 | 最大值 |
|---|---:|---:|
| eager | 0.55% | 2.85% |
| inductor | 0.68% | 1.99% |
| before | 0.52% | 5.25% |
| f06 | 0.44% | 1.79% |

相对差为 |A−B|/两轮均值，不是置信区间。所有样本保留，未择优删除；各组逐轮比值见 focus-summary.json。

## 可复查文件

- focus-cases.csv / focus-summary.json：36 例逐项耗时、前后与基线加速比、有效配对数、逐轮聚合。
- ALL_COMBINATIONS.md / cases.csv / summary.json：全部 216 例及大小矩阵分组。
- round-{a,b}-{eager,inductor,before,f06}/results.json：全部正式原始样本。
- diagnostic-*、check-candidate、check-wide：原因隔离与未采用方案的记录；不替代正式复测。
- source/ 为测试实现，before/ 为旧实现；source_manifest.json、validation.json、test-results.json 与 orchestration.json 保存核验依据。
- analyze.py：同时生成全量与改动范围的报告。

模式定义另见 [PyTorch 2.11 torch.compile 官方文档](https://docs.pytorch.org/docs/2.11/generated/torch.compile.html)。性能和归因数据均来自本轮实测。
