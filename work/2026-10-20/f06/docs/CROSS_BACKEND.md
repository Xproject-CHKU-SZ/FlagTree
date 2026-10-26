# NVIDIA 与 P800 的差异：已有证据和研究入口

本说明只针对 2026-10-20 的静态 FX 模板融合版本。后续资源规划、混合调度和其他未完成开发不属于此归档。

## 先统一比较口径

| 数据集 | 比较基线 | 有效样本 | 默认 / 选参加速比 |
|---|---|---:|---:|
| P800，2026-10-20 | 原始包 Inductor→FlagTree | 94 | 3.0112× / 3.1962× |
| RTX 4090，2026-10-20 同进程 | 默认 Inductor | 100 | 4.3472× / 4.4400× |
| P800，2026-10-20 | PyTorch eager | 117 | 1.3831× / 1.4661× |
| RTX 4090，2026-10-20 历史 eager 批次 | PyTorch eager | 117 | 1.4218× / 1.4267× |
| RTX 4090，2026-10-26 对应 eager 复测 | PyTorch eager | 117 | 1.4149× / 1.4206× |

前两行的基线软件栈与有效样本集不同，不能用总加速比直接证明某种硬件架构更适合融合。相对 eager 的 117 项结果在算子组合、形状、精度和计时设计上更接近，但仍不能将跨设备的总均值当成纯设备内核效率比较。

所有报告性能都包含 Python 调用、输出分配和设备执行。编译和选参开销已经排除。静态小算子链的速度比不能外推为完整模型吞吐。

## 源码可确认的执行差异

| 路径 | 代码证据 | 可确认的差异 |
|---|---|---|
| NVIDIA MatMul+Bias(+激活) | `source/python/triton/experimental/graph_fusion/_kernels.py`、`_kernels_f06.py` | 合格路径使用 Triton matmul + epilogue 的单内核实现 |
| P800 对齐 FP16 矩阵路径 | `_xpu_lowp.py`、`_kernels_f06.py` | SDNN dot 加独立扁平 epilogue，存在中间结果与多个 kernel |
| P800 BF16 及有界尾部路径 | `_xpu_lowp.py`、`_kernels_f06.py` | 包含 native `aten.mm` 加 Triton epilogue 的路径 |
| 后端资格和回退 | `_backend.py`、`_runtime.py` | dtype、形状、步长、推理模式和后端条件共同决定是否融合 |
| 选参 | `_tuning.py` | 每个后端的有限候选集合不同；正确性通过后按设备事件耗时择优，最终报告使用主机计时 |

实际路径应以逐例 `execution` 里的 `mode`、`kernel_launches`、`native_operators` 和 scope 为准。标签 `fused` 本身不能保证一个 GPU kernel。

低精度中间舍入、GELU exact/tanh 语义以及归约语义均需保留，不能以放宽精度或更换近似算法解释为同等实现的加速。

## 尚未证明的根因

目前证据不能将全部差距归因于 Python、LLVM、某个具体 pass 或硬件架构。报告已记录：P800 原始包的 Mul+Sum 大形状路径虽然已融合为 Triton 内核，耗时仍大幅增长；仅用固定 Python 包装成本不足以解释。P800 BF16 exact GELU 的慢点也没有完成根因定位。

进一步研究可从相同有效用例开始：分别测量主机调用时间与设备事件时间，核对实际 kernel/native 调用数，再固定输入、算法和精度，对归约布局、块大小和编译选项做单变量对照。以上是后续研究步骤，本次归档没有声称已完成这些实验。

证据入口：`evidence/historical/f06_speedup_20261020/inductor_slowdown_analysis.json`、两台设备历史逐例 `results.json`、`REPORT.md` 及本次 4090 数据。
