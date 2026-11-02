> 最新 F06 核心组合完整重测：见 [216 个用例、完整 max-autotune 基线报告](../f06-core-max-baseline-4090/REPORT.md)。本页保留历史数据。

# F06 RTX 4090：以完整 max-autotune Inductor 替换原生基线

本文为当前主结果，替换此前使用默认 Inductor 的加速比口径。重新运行两轮，每轮 180 项，计算的是“优化后的原生 Inductor 基线耗时 / 当前 F06 耗时”，不是“默认 Inductor / 优化 Inductor”。

主基线代码为：

```python
baseline = torch.compile(
    graph, backend="inductor", fullgraph=True, dynamic=False,
    mode="max-autotune",
)
```

本环境该预设展开为 `max_autotune=True, coordinate_descent_tuning=True, triton.cudagraphs=True`。两轮所有 137 个基线数值通过项的 profiler 均观察到实际 `cudaGraphLaunch`。F06 使用现有 `static_inference=True, avoid_bias_materialization=True` 路径。编译、调优和捕获准备时间排除于稳态计时。

PyTorch 没有对应 C/C++ 的统一 `-O3` 等级；这里用完整的原生最高调优预设代表所要求的优化基线。该预设并不保证每个 shape 的端到端耗时在所有模式中最短。

## 重新计算的加速比

> 加速比 = 基线耗时 / 当前 F06 耗时；大于 1 表示 F06 更快，小于 1 表示 F06 更慢。每项先取进程内 7 批中位数，再取两进程中位数，组内取逐项加速比几何平均。

| 组别 M×N×K | 相对 eager | eager 共同正确项 | 相对新 Inductor 主基线（max-autotune） | Inductor 共同正确项 |
|---|---:|---:|---:|---:|
| 小矩阵：16×128×64、32×256×64、64×1024×64 | 1.490× | 45 | **3.947×** | 30 |
| 128×1024×128 | 0.890× | 14 | **2.424×** | 10 |
| 512×1024×1024 | 0.958× | 14 | **1.691×** | 11 |
| 2048×2048×2048 | 1.063× | 14 | **1.117×** | 10 |
| 大矩阵合计 | 0.968× | 42 | **1.662×** | 31 |
| 所有矩阵合计 | 1.210× | 87 | **2.543×** | 61 |
| 点算子、Norm、Softmax、Reduce | 0.983× | 90 | **3.613×** | 76 |
| 全部用例 | 1.089× | 177 | **3.090×** | 137 |

性能比较仅使用对应基线与 F06 在两轮均数值通过的样本。eager 和 Inductor 列样本集合不同，不能把两列当作同一集合的直接比较。小矩阵新基线的 30 项共同正确样本为 FP32/FP16；BF16 的 15 项未通过，不提供这部分加速比。

两轮数值状态逐例一致：

| 路线 | 正确 | 数值失败 |
|---|---:|---:|
| eager | 180/180 | 0 |
| 新原生 Inductor 基线（完整 max-autotune） | 137/180 | 43 |
| 当前 F06 | 177/180 | 3 |

F06 的 3 个失败项仍为大矩阵 BF16 MatMul+Bias。没有放宽精度容差，也没有把错误输出计作性能收益。新基线的数值失败不能用来宣称 F06 覆盖所有 dtype 的性能优势。

## 结果边界：完整预设不等于每例最快配置

此次完整 max-autotune 在许多小工作量用例中出现了 CUDA Graph 主机入口开销，导致比此前 `max-autotune-no-cudagraphs` 更慢。上述加速比含主机包装、守卫、原生 replay 等影响，不能解释成 GPU 算术或融合 kernel 同比例更快。

为了区分“完整预设”和“编译优化同样开启、关闭 CUDA Graph”，下面保留上一轮已完成的独立实验结果，方向同样为“该优化 Inductor / 同轮 F06”：

| 组别 | 完整 max-autotune，本次 | max-autotune-no-cudagraphs，上次独立复测 |
|---|---:|---:|
| 小矩阵 | 3.947× | 2.567× |
| 128×1024×128 | 2.424× | 1.595× |
| 512×1024×1024 | 1.691× | 1.431× |
| 2048³ | 1.117× | 0.986× |
| 全部 | 3.090× | 2.089× |

右列来自 `../f06-max-autotune-4090/summary.json` 的 `inductor_max.host_speedup`，不是默认 Inductor 比优化 Inductor；每个比值使用其各自实验中同轮的 F06。两次实验协议在 CUDA Graph 及输出保留检查上存在下述差异，不能将两列相除当作严格的模式 A/B。

如果验收要求是“击败所有原生模式中每例最快者”，本次不能据完整预设的 3.947×/1.117×作出该结论；此前关闭 CUDA Graph 的优化基线在 2048³ 上比 F06 略快，仍然有效。本次按指定完整预设替换主基线，并保留这项限制。

## 测试与复现

- NVIDIA RTX 4090，UUID `GPU-da47d8df-895f-3898-85ec-271176ad3d82`；PyTorch 2.11.0+cu130，Triton 3.6.0。
- F06 源码与最初测试快照逐文件相同；两个进程的 source manifest、编译器二进制和融合相关文件哈希均核对通过。无实现改动。
- 45 小矩阵 + 45 大矩阵 + 90 其他组合；每种矩阵组覆盖 Bias、ReLU、exact GELU、tanh GELU、SiLU 及 FP32/FP16/BF16。输入 seed=61，shape/容差与此前保持一致。
- 单 CPU 线程固定 CPU0；no_grad；关闭 TF32、FP16/BF16 reduced-precision reduction；两轮串行运行并监控外部 GPU 进程。
- 8 次预热，0.5 秒 CPU 预热，7 批交替路线顺序，每批调用 40 次，批前后同步。计入各路线正常主机调用和分配行为。原生 CUDA Graph 复用自己的存储；F06 使用其正常输出分配。
- 数值测试检查原输入、扰动输入、输入/参数未修改、输出不别名输入。在计时之外立即 clone 保存每次调用输出，随后校验快照。这样允许原生 CUDA Graph 复用输出缓冲区；计时内没有额外 clone。
- 原脚本要求多次输出存储独立，该条件与原生 CUDA Graph replay 不兼容。初次烟雾检查因此失败，保存在 `smoke-storage-check*`，不参与正式统计；适配快照检查后，重新完成烟雾测试和完整两轮。
- 不额外套 CUDA Graph，不进行外部 replay GPU 基准；只测正常调用端到端时间，并在计时外采集 kernel 和 cudaGraphLaunch profiler。此前报告的纯 GPU replay 加速比不与这里混用。
- 编译缓存复用此前调优缓存，排除编译与捕获准备时间，不能视作冷编译测量。
- 两轮每例耗时差异（绝对差/两轮中位数）：Inductor 中位数 1.35%、最大 6.57%；F06 中位数 1.76%、最大 7.20%。只跑两轮，未构造统计置信区间。

`bench_current.py` 为新的三路线入口；`run_4090.py` 为远端串行运行入口；`analyze.py` 可重算 `cases.csv` 与 `summary.json`。两轮完整 JSON 和生成代码在 `round-a/`、`round-b/`，运行/GPU 占用记录在 `orchestration.json`，源码和哈希在 `source/`、`source_manifest.json`。

远端目录：`/tmp/f06-max-baseline-4090-20261031`。runner 拒绝覆盖已有输出，复测时应使用新目录。旧默认基线报告保留作历史记录，本报告为替换主基线后的结果。
