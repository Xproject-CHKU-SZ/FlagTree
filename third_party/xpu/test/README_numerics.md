# P800 SDNN 数值回归

这些测试对应真实 P800（arch=3）SDNN 路径，不以 CPU 或其他后端结果替代设备结果。
源码基线是冻结的 main `84c3ce789b8eea0884d399a24697eac0ba873351`；合并分支基线为
`e651adcefc9482a622848731cc670e2894affe60`，原生后端实现相同。

## 编译层变更

- `PreserveBF16Rounding.cpp` 在 ConvertType 前处理静态 TTIR 的 FP32→BF16。
  默认/显式 RTNE 预先执行最近偶数舍入；显式 RTZ 只预截断有限值，并保留 NaN 分类。
  frontend 的 `tt.fp_to_fp` RTZ 在此归一化为带相应舍入属性的 `arith.truncf`。
- 标量和静态 RankedTensor 被覆盖；动态 Tensor、vector、其他 dtype 和其他舍入模式不改写。
  未改写不等于当前 SDK 对这些情况的数值支持已通过验证。
- `Rank1Wrap.cpp` 的 Capture/Repair 分别位于厂商转换前，以及融合后、LoopGrid 前；
  匹配正周期、rank-1、前缀 mask 的回绕读取，拒绝未识别的地址合同。
- 以上 Pass 仅在 arch=3 的 SDNN 分支接入，不改变 cluster 或其他架构 Pipeline。

需要重新构建原生扩展与 Python 后端，不能只复制 `compiler.py`。构建依赖应与
实际预编译 SDNN 对象包、LLVM 和 pybind11 ABI 一致；环境恢复、wheel 和工具 hash
以配套验证包为准。不要将 `compat/legacy_sdnn/prepare.py` 的旧版编译器补丁强行用于新版 main。

## 测试命令

在安装了匹配 XPU wheel 的 Python 环境中，从源码根目录运行：

```sh
FLAGTREE_BACKEND=xpu python -m pytest third_party/xpu/test/test_preserve_bf16_rounding.py -q

FLAGTREE_BACKEND=xpu CUDA_VISIBLE_DEVICES=0 python -m pytest \
  third_party/xpu/test/test_rank1_wrap_device.py \
  third_party/xpu/test/test_bf16_conversion_device.py -q
```

第一条是无需设备的17项 IR 测试，覆盖两种 frontend 表示、舍入模式、范围和幂等。
设备回归包含12项取模位级检查，以及默认/RTNE/RTZ、整块/尾块的6项转换检查。
后者对全部65,536个 BF16 高位字组合5种 FP32 低位边界；非有限值检查遵循操作语义，
不要求 NaN payload 逐位一致。输出以哨兵初始化以识别未写入，不扩大模型输入。

## 其他验收合同

FP32 原始 MM 反例为64³计算、256³ tile：3个固定种子，每个种子3组冷/热缓存的新进程，
每进程100次，合计1800次；要求无非有限值、逐次逐位稳定且最大绝对误差不超过1e-3。
冻结 main 已解决该旧版反例，未额外添加名义上的 FP32 修复 Pass。

BLAS 集成保持已有 FlagGems dtype/reduce_dim 判据，并保存绝对、相对及 ULP 误差。
旧 block-pointer 适配还需单独应用 `compat/legacy_sdnn/07-flaggems-blas-stride-contract.patch`
以正确传递 BMM 的真实 stride，并避免 ADDMM 转置 A 进入当前环境不支持的复制路径。
该补丁是算子调用合同修复，不是 BF16 编译 Pass；必须分层记录版本和补丁。

## SDK 边界

本次 SDNN 对象包中的 `StripAllOps` 自述会清空名称含 `conv` 的函数。
`convert`、`bf16_conversion_kernel` 已有清空前后 IR 和哨兵不变的负例。
这里的转换测试使用明确的 cast 名称，不声称修复或支持该 SDK 过滤路径。
SDK 内部单提交归因、该过滤规则的完整范围和硬件 DMA 舍入配置仍需厂商资料确认。

共享低负载卡上的同步主机耗时包括 Python/launch 开销，不等于硬件 kernel 时间；
数值错误的旧 BF16 实现不能作为可用的性能基线，不据此宣称提速。
