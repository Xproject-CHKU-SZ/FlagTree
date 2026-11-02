# F06 核心融合组合：RTX 4090，原生 max-autotune 基线

> 最新全量公平口径结果已完成：见 [216 用例统一 GPU 重放与独立端到端报告](/home/f/Documents/FlagTree/work/2026-10-31/f06-fair-gpu-4090/REPORT.md)。本页保留此前基线或原因审计的数据。

> 计时审计补充：本表是普通 API 调用的主机耗时，包含 Dynamo/AOT 包装、CUDA Graph 管理及输入复制。不能把约 4× 直接解释为 GPU 计算核加速。独立进程、固定地址和统一 GPU 重放对照见 [计时公平性审计](../f06-timing-audit-4090/REPORT.md)。

## 口径与范围

功能表 F06-G03 指定 MatMul+Bias、MatMul+Bias+Activation 及 Norm/Softmax/Reduce 组合。本次测试其 12 个语义变体，每变体 3 dtype × 6 尺寸，共 216 个用例，每例重新执行两轮。独立 Add+GELU/SiLU 不纳入核心汇总。

原生基线：`torch.compile(graph, backend="inductor", fullgraph=True, dynamic=False, mode="max-autotune")`，包括该安装版本预设的 CUDA Graph、GEMM autotuning 和 coordinate descent tuning。F06 仍使用当前代码的 `graph_fusion.compile(..., static_inference=True, avoid_bias_materialization=True)`；未修改项目实现。

这是原生完整 max-autotune 预设，不是 C/C++ 的 -O3，也不保证每个用例在所有 Inductor 配置中最快。

加速比 = 基线耗时 / F06 耗时；大于 1 表示 F06 更快。仅使用两轮中双方均正确的样本，先对两轮各自的中位耗时取中位数，再计算逐例比值并取几何平均。括号是有效配对数 / 用例数。eager 与 Inductor 的有效集合可能不同，不宜直接相除比较两个汇总值。

## 核心组合结果

| 融合组合 | 小：vs eager | 小：vs max-autotune | 大：vs eager | 大：vs max-autotune |
|---|---:|---:|---:|---:|
| MatMul + Bias | 1.17× (9/9) | 4.05× (6/9) | 0.98× (6/9) | 1.85× (6/9) |
| MatMul + Bias + ReLU | 1.62× (9/9) | 3.99× (6/9) | 0.98× (9/9) | 1.72× (7/9) |
| MatMul + Bias + GELU(exact) | 1.58× (9/9) | 3.99× (6/9) | 0.97× (9/9) | 1.62× (6/9) |
| MatMul + Bias + GELU(tanh) | 1.59× (9/9) | 4.01× (6/9) | 0.97× (9/9) | 1.63× (6/9) |
| MatMul + Bias + SiLU | 1.63× (9/9) | 4.05× (6/9) | 0.99× (9/9) | 1.62× (6/9) |
| Add + LayerNorm | 1.10× (36/36) | 3.45× (30/36) | 1.20× (36/36) | 3.44× (30/36) |
| Add + Softmax | 0.91× (9/9) | 3.86× (9/9) | 1.08× (9/9) | 3.77× (9/9) |
| Mul + ReduceSum | 1.01× (18/18) | 3.92× (10/18) | 1.09× (18/18) | 3.91× (6/18) |

| 大 MatMul 尺寸 (M,N,K) | vs eager | vs max-autotune |
|---|---:|---:|
| (128, 1024, 128) | 0.90× (14/15) | 2.47× (10/15) |
| (512, 1024, 1024) | 0.97× (14/15) | 1.73× (11/15) |
| (2048, 2048, 2048) | 1.06× (14/15) | 1.12× (10/15) |

LayerNorm 汇总含无 affine、weight、bias、weight+bias 四个变体；ReduceSum 含 keepdim=False/True。

## 逐语义变体

| 融合组合 | 小：vs eager | 小：vs max-autotune | 大：vs eager | 大：vs max-autotune |
|---|---:|---:|---:|---:|
| MatMul + Bias | 1.17× (9/9) | 4.05× (6/9) | 0.98× (6/9) | 1.85× (6/9) |
| MatMul + Bias + ReLU | 1.62× (9/9) | 3.99× (6/9) | 0.98× (9/9) | 1.72× (7/9) |
| MatMul + Bias + GELU(exact) | 1.58× (9/9) | 3.99× (6/9) | 0.97× (9/9) | 1.62× (6/9) |
| MatMul + Bias + GELU(tanh) | 1.59× (9/9) | 4.01× (6/9) | 0.97× (9/9) | 1.63× (6/9) |
| MatMul + Bias + SiLU | 1.63× (9/9) | 4.05× (6/9) | 0.99× (9/9) | 1.62× (6/9) |
| Add + LayerNorm | 1.25× (9/9) | 3.90× (9/9) | 1.35× (9/9) | 3.87× (9/9) |
| Add + LayerNorm（weight+bias） | 1.00× (9/9) | 3.06× (6/9) | 1.09× (9/9) | 3.04× (6/9) |
| Add + LayerNorm（weight） | 1.09× (9/9) | 3.37× (6/9) | 1.20× (9/9) | 3.37× (6/9) |
| Add + LayerNorm（bias） | 1.08× (9/9) | 3.36× (9/9) | 1.18× (9/9) | 3.36× (9/9) |
| Add + Softmax | 0.91× (9/9) | 3.86× (9/9) | 1.08× (9/9) | 3.77× (9/9) |
| Mul + ReduceSum | 1.02× (9/9) | 3.93× (5/9) | 1.10× (9/9) | 3.94× (3/9) |
| Mul + ReduceSum（keepdim） | 1.00× (9/9) | 3.90× (5/9) | 1.08× (9/9) | 3.87× (3/9) |

## 正确性与实际执行

以下通过/失败按既定 eager 对齐容差与输入/输出检查判定，不代表任何精度设置下的普遍结论。

两轮正确性状态一致：True。

| 路径 | 两轮均通过 | 其他状态 |
|---|---:|---|
| eager | 216/216 | {} |
| Inductor max-autotune | 155/216 | {"numerical_failure": 61} |
| F06 | 213/216 | {"numerical_failure": 3} |

F06 的 3 项失败均为大尺寸 BF16 MatMul+Bias，(M,N,K) 分别为 (128,1024,128)、(512,1024,1024)、(2048,2048,2048)，初次输入最大绝对误差分别为 0.25、1.0、1.0。原生基线的 61 项均为 assert_close 数值容差失败（53 项 BF16、8 项 FP16 ReduceSum），无编译错误或别名检查失败。
原生基线两轮均在 profiler 中确认 cudaGraphLaunch 的用例：155。失败用例不提供速度结论，逐例误差、阈值和状态保存在 cases.csv / summary.json，完整断言与生成代码保存在 round-a、round-b。

| 组合 | 尺寸 | F06 执行计划 | F06 CUDA 事件数（两轮计数: 用例数） |
|---|---|---|---|
| MatMul + Bias | small | {"inductor_small_matmul_single_kernel": 9} | {"1\|1": 9} |
| MatMul + Bias | large | {"inductor_static_inference": 9} | {"1\|1": 5, "2\|2": 1, "NA\|NA": 3} |
| MatMul + Bias + ReLU | small | {"inductor_small_matmul_single_kernel": 9} | {"1\|1": 9} |
| MatMul + Bias + ReLU | large | {"inductor_static_inference": 9} | {"2\|2": 7, "3\|3": 2} |
| Add + Softmax | small | {"inductor_static_inference": 9} | {"1\|1": 9} |
| Add + Softmax | large | {"inductor_static_inference": 9} | {"1\|1": 9} |
| MatMul + Bias + GELU(exact) | small | {"inductor_small_matmul_single_kernel": 9} | {"1\|1": 9} |
| MatMul + Bias + GELU(exact) | large | {"inductor_static_inference": 9} | {"2\|2": 7, "3\|3": 2} |
| MatMul + Bias + GELU(tanh) | small | {"inductor_small_matmul_single_kernel": 9} | {"1\|1": 9} |
| MatMul + Bias + GELU(tanh) | large | {"inductor_static_inference": 9} | {"2\|2": 7, "3\|3": 2} |
| MatMul + Bias + SiLU | small | {"inductor_small_matmul_single_kernel": 9} | {"1\|1": 9} |
| MatMul + Bias + SiLU | large | {"inductor_static_inference": 9} | {"2\|2": 7, "3\|3": 2} |
| Add + LayerNorm | small | {"inductor_static_inference": 36} | {"1\|1": 36} |
| Add + LayerNorm | large | {"inductor_static_inference": 36} | {"1\|1": 36} |
| Mul + ReduceSum | small | {"inductor_static_inference": 18} | {"1\|1": 18} |
| Mul + ReduceSum | large | {"inductor_static_inference": 18} | {"1\|1": 18} |

CUDA 事件数来自单次正常调用的 profiler，原始事件名称可核查。这里只用于诊断实际执行，不能把 profiler 单次耗时当作稳定 GPU 内核基准。调用路径采用 static 计划并不自动证明所有算子进入一个内核；应同时检查生成代码和事件。

## 结果解释与边界

F06 小 MatMul 专用路径的形状条件为 M≤64、N≤1024、K≤128（source/python/triton/experimental/graph_fusion/_inference.py 的 _find_small_matmul）。本次大 MatMul 超出该条件，使用一般静态 Inductor 计划，实际可能发出多个内核。这里的 F06 指当前完整编译路径，不能将大矩阵结果标成自定义单内核的收益。

该实验衡量包含 Python 调度的正常调用耗时。相同数量的 GPU 内核也可能因调用路径不同产生不同主机端耗时；本表不能直接解释为 GPU 内核本体获得了同样倍数的加速。

## 测量条件

- GPU：RTX 4090；PyTorch 2.11.0+cu130；Triton 3.6.0。
- 小尺寸 (M,N)：(16,128)、(32,256)、(64,1024)，MatMul K=64。
- 大尺寸 (M,N)：(128,1024)、(512,1024)、(2048,2048)，MatMul K 分别为 128、1024、2048。
- 非 MatMul 组合输入为 (M,N) 与广播向量 (N,)；Softmax/Reduce 沿最后一维；LayerNorm epsilon=1e-3。MatMul Bias 是运行时输入。
- FP32、FP16、BF16；固定 seed=61，关闭 TF32 和低精度 matmul reduction，保持历史 dtype/算子容差（逐例记录，不放宽阈值）。
- 每路径预热 8 次；每轮计时 7 组 × 40 次，组间同步 GPU，轮转路径次序；CPU 绑定 core 0，单线程，计时前 CPU 预热 0.5 s。
- 主指标是主机墙钟批量平均调用耗时，含 Python 调度、正常输出分配和最后同步；不含编译、autotune、首次图捕获及正确性检查。
- CUDA Graph 输出允许存储复用；每次正确性快照 clone 均在计时外。另检查扰动输入、输入/参数不变性、计时后正确性。
- 运行器监控 GPU，外部计算进程或超时会终止本次运行；完整监控见 orchestration.json。
- 本次是 4090 固定形状推理微基准；未覆盖 F06 计划要求的 XPU、动态形状和模型级验收。

## 证据与复现

- `bench_current.py`：三条路径和完整测量协议。
- `coverage_cases.py`：216 个核心用例定义；沿用历史输入定义并补齐大尺寸 Norm/Softmax/Reduce。
- `source_manifest.json`、`baseline_identity.json`：测试源码及原生软件身份。
- `round-a/results.json`、`round-b/results.json`：两次独立进程原始结果、输入摘要、生成代码哈希、执行计划及 profiler。
- `cases.csv`：逐例两轮耗时、精度状态、配对加速比。
- `summary.json`：按组合、变体和 dtype 汇总。
- `analyze.py`：校验原始生成代码后重建所有汇总。
