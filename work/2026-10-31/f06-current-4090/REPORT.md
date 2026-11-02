> 最新 F06 核心组合完整重测：见 [216 个用例、完整 max-autotune 基线报告](../f06-core-max-baseline-4090/REPORT.md)。本页保留历史数据。

> 主基线已按后续要求替换为完整 `mode="max-autotune"`；当前结果见 [新基线复测报告](/home/f/Documents/FlagTree/work/2026-10-31/f06-max-baseline-4090/REPORT.md)。本文保留原实验口径。

# F06 当前工作区 RTX 4090 融合性能与问题定位

本次测试当前工作区源码快照（包含已有未提交修改），不是历史恢复版本。两轮独立进程各完成 180 项，均正常退出；当前路径每轮通过 177/180，原生 Inductor 每轮通过 148/180。当前实现的三个失败项均为大矩阵 BF16 MatMul+Bias。未修改融合实现。

## 结果

表内数值是 baseline/current 的逐例加速比几何平均，>1 表示当前更快。先取每个进程七批计时的中位数，再取两个进程中位数。每一列仅使用当前和相应基线在两轮均数值通过的共同样本，所以 eager 与 Inductor 两列的样本数不同。

| 组别（M×N×K） | 当前通过 | 相对 eager 端到端 | 相对原生 Inductor 端到端 | 相对 eager GPU | 相对原生 Inductor GPU | 共同样本 eager/Inductor |
|---|---:|---:|---:|---:|---:|---:|
| 小矩阵：16×128×64、32×256×64、64×1024×64 | 45/45 | 1.497× | 3.200× | 2.908× | 1.946× | 45/39 |
| 点算子、Norm、Softmax、Reduce | 90/90 | 1.027× | 2.387× | 2.615× | 0.998× | 90/76 |
| 128×1024×128 | 14/15 | 0.931× | 1.978× | 1.421× | 1.000× | 14/11 |
| 512×1024×1024 | 14/15 | 0.985× | 1.459× | 1.148× | 0.999× | 14/11 |
| 2048×2048×2048 | 14/15 | 1.063× | 1.004× | 1.056× | 0.993× | 14/11 |
| 全部 | 177/180 | 1.121× | 2.299× | 2.233× | 1.190× | 177/148 |

GPU 列来自单独 CUDA Graph replay 诊断，不包含 Python 主机路径，不用于替代端到端结论。0.993×/1.004× 等接近 1 的差异不应视为稳定收益。当前通过项两轮端到端差异（绝对差/两轮中位数）的中位数 1.08%，最大 3.93%；本次仅两轮，不提供统计置信区间。

## 当前问题及证据

### 1. 大矩阵 BF16 精度约束未保留

三个 `large:matmul_bias:bfloat16` 在两轮均失败：

| M×N×K | 相对 eager 最大绝对误差 | 保留 mm/add 边界后的误差 |
|---|---:|---:|
| 128×1024×128 | 0.25 | 0 |
| 512×1024×1024 | 1.0 | 0 |
| 2048×2048×2048 | 1.0 | 0 |

生成代码 `round-a/141-current_static-0.py`、`142-current_static-0.py`、`143-current_static-0.py` 均调用 `extern_kernels.addmm`。补充 GPU 诊断证明当前输出与直接 `torch.addmm` 完全相等；对相同图使用 `pattern_matcher=False, emulate_precision_casts=True` 后，三个用例均通过，且与 eager 完全一致，见 `rounding_diagnosis.json` 和 `diagnose-*.py`。

根因是大矩阵走默认编译配置，`mm + add` 被改写成 `addmm`，失去了 eager 的 matmul 输出 BF16 舍入边界。小矩阵路径已有禁止该改写和保留 cast 的配置，但大矩阵没有同样的保障。这里不是用放宽容差掩盖误差。补充配置只用于定位，未纳入性能对比，也未写回实现。

此外，设置了 `avoid_bias_materialization=True` 仍未进入原生复用路线：本组 bias 是显式输入，而该路线要求 get_attr bias，记录的拒绝原因是 `bias_must_be_a_get_attr`。

### 2. 大矩阵未获得额外 GEMM/epilogue 融合收益

`_inference.py` 的 `_find_small_matmul` 限定 `M<=64, N<=1024, K<=128`，三个大矩阵组均记录 `outside_small_matmul_bounds`，plan 为 `inductor_static_inference`。

生成代码与 profiler 对应：带激活大矩阵通常仍为外部 `mm` 加独立 Triton pointwise epilogue，实际有 2–3 个 kernel（库 GEMM 可能包含内部辅助 kernel）；纯 bias 部分可由原生 addmm 执行，不能将一个 kernel 一概视为项目额外融合。当前与默认 Inductor 的 GPU 耗时几乎相同。2048³ 时 GPU 计算占主导，端到端相对 Inductor 仅 1.004×。

### 3. 小工作量仍存在主机开销与收益门禁缺口

所有 45 个小矩阵当前路径实际 profiler kernel 数均为 1，fallback_calls 均为 0。原生 Inductor 的 39 个数值通过项有 1–3 个 kernel；因此小矩阵存在真实融合收益。

但收益不是每例都成立。小矩阵相对 eager 44/45 胜出；128×1024×128 大矩阵的 14 个正确项全部慢于 eager。例子（两轮汇总，微秒）：

| 用例 | eager | 原生 Inductor | 当前 |
|---|---:|---:|---:|
| MatMul+Bias FP32 128×1024×128 | 12.391 | 29.213 | 14.856 |
| MatMul+Bias FP16 512×1024×1024 | 13.043 | 29.649 | 14.977 |

当前 `_prepare` 每次仍检查 forward/hook、模式、精度状态、TensorGuards、storage/view/grad、别名，再调用 runner。主机批量计时与 GPU replay 的分离，以及相同 GPU kernel 的对照，支持“主机调用开销影响收益”的判断；本次没有对每一个 guard 进行因果消融，不能把全部差额归于某一项 guard。

点算子/归一化组相对 Inductor 端到端 2.387×，GPU 为 0.998×，说明这部分相对 Inductor 的收益主要来自主机入口，不是生成了更快的 GPU 算术。相对 eager 仅 1.027×，90 项中 53 项胜出，尚缺收益门禁。

## 建议顺序

1. 优先修复大矩阵 BF16 MatMul+Bias 的舍入约束，并在相同输入、原容差下复测正确性及性能。本次诊断已提供可验证配置方向。
2. 对大矩阵评估原生 Inductor GEMM+epilogue 自动融合候选，保持 eager 舍入边界，并与默认 Inductor、eager 同时比较。不要仅扩大小矩阵阈值后假定收益。
3. 以端到端指标建立 shape/dtype/组合收益门禁；尤其是 128×1024×128 和小型点算子，默认 Inductor 基线过慢不能证明优于 eager。
4. 对低开销调用继续分析守卫、属性绑定和 launcher，但保留现有语义保障，通过消融确认瓶颈后再改。

## F06 功能表对应范围

依据 `功能拆分表12项功能子模块拆分与周计划.xlsx`：G01 模板注册；G02 合法性与数值约束；G03 MatMul/Bias/Activation、Norm/Softmax/Reduce 组合；G04 动态 Shape；G05 跨芯片性能治理。

本次覆盖 G03 在 NVIDIA 上的固定 shape 性能、G02 的常规数值对照，并给出 G05 收益治理证据。没有验证动态 shape、别名/副作用/非有限值的完整拒绝矩阵、Transformer 模型命中率、训练、P800/XPU 或跨芯片验收；不能据此宣称 F06 全部完成。

## 环境、协议与复现

- RTX 4090，UUID `GPU-da47d8df-895f-3898-85ec-271176ad3d82`；PyTorch `2.11.0+cu130`，Triton `3.6.0`。原生二进制、NVIDIA compiler/driver 及 PyTorch 融合文件哈希已逐项验证，存于结果 identity。设备及 CPU 信息见 `environment.txt`。
- 180 用例：5 种 GEMM epilogue × 3 dtype × 3 小 shape =45；90 个点算子/Norm/Softmax/Reduce；5×3×3 个较大 GEMM=45。dtype 为 FP32、FP16、BF16。
- eager：原 FX 图；原生 Inductor：`torch.compile(..., backend='inductor', fullgraph=True, dynamic=False)`，默认 mode/options；当前：`graph_fusion.compile(..., static_inference=True, avoid_bias_materialization=True, fullgraph=True, dynamic=False)`。
- 关闭 TF32、低精度 reduced-precision reduction；torch.no_grad；单 CPU 线程并绑定 CPU0。输入保持固定 seed=61，历史用例输入及参数哈希验证通过。
- 每路线 8 次预热，CPU 预热 0.5 秒；7 批交替顺序，每批 40 次，批前后同步，计入 Python、守卫、输出分配和 GPU，排除编译。这是批量调用的每调用平均耗时，不是逐次同步的单请求延迟。
- GPU 诊断每路线 5 次交替 CUDA Graph replay，每次 20ms；在计时之外对单次正常调用采集 profiler kernel 名称/数量。
- 使用原始报告容差：矩阵 FP32 atol/rtol=3e-4，FP16/BF16=3e-3；其他组合见 CASES.json。校验扰动输入、保留的多次输出、独立输出存储、输入和参数未修改。数值失败不计时，不放宽容差。
- 两轮串行，GPU 进程监控共 117 条采样；runner 检测其他计算进程时中止，本次无此中止。初始测试因沿用的小矩阵专用断言应用到大矩阵而中断，修正测试断言的 shape 范围后重新完整跑两轮。中断结果保留在 aborted-*，不参与统计。编译缓存复用，setup_seconds 不能解释为纯冷启动编译成本。

源码快照和哈希：`source/`、`source_manifest.json`、`revision.json`。两轮完整数据：`round-a/results.json`、`round-b/results.json`；逐例表 `cases.csv`；聚合 `summary.json`；调度记录 `orchestration.json`；生成代码在两个轮次目录。`analyze.py` 可在本目录直接重新聚合。

远端复现入口：`/tmp/f06-current-4090-20261031/run_4090.py`，使用 `/home/f/flagtree/.venv/bin/python`。runner 拒绝覆盖现有 round-a/round-b；再次运行应建立新输出目录并同步修改 ROOT。运行所需完整环境变量见 run_4090.py。
