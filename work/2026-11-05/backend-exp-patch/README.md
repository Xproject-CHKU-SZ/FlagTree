# P800 后端 exp/log/tanh 快速数学补丁

## 问题

`third_party/xpu/lib/Conversion/TritonXPUToLLVM/ElementwiseOpToLLVM.cpp` 当前把
`math.exp`/`math.log` 直接映射为 `LLVM::Exp2Op`/`LLVM::Log2Op`，最终落到通用软件实现。
实测（2048×2048 fp32）：

| 实现 | 算术开销 |
|---|---:|
| `tl.exp`（当前） | 44 µs |
| 厂商 libdevice 向量版 | 16 µs |

厂商实现在 `torch_xmlir/include/xpu/kernel/cluster_math.h` 里：`__builtin_xpu_exp2f` /
`__builtin_xpu_log2f` / `__builtin_xpu_mulf`，即硬件 exp2 + log2e 缩放。

## 补丁

把 `math::ExpOp` / `math::LogOp` / `math::TanhOp` 改为对厂商 libdevice 符号的 extern 调用
（复用同文件 `PreciseSqrtOp -> _ZN3xpu10__fsqrt_rnEf` 的既有范式）：

```
_ZN3xpu8xpu_expfEf   xpu::xpu_exp
_ZN3xpu5log2fEf      xpu::log2f
_ZN3xpu5tanhfEf      xpu::tanhf
```

标量符号是安全兜底；进一步优化应接到 16 宽向量符号（`Dv16_f`）与 `llvm.xpu.exp2f`。

## 验证注意

- 用 Python 层 `extern_elementwise` 直接调标量符号，实测 **比 `tl.exp` 还慢**（silu 137 vs 74 µs），
  所以**必须同时确认向量化路径**，否则补丁可能变慢：先用一个最小 kernel（copy / exp / silu）
  在 2048² 上确认 `tl.exp` 的耗时下降再继续。
- `tl.math.exp2` 目前结果错误（err 1078），补丁后需一并验证 exp2 的正确性。

## 重建步骤（约 1–2 小时）

```bash
# 1) 依赖
python3 -m pip install --user cmake ninja
# 2) 从离线 wheel 解出 LLVM 19 与 xpu3 设备库（之前构建用的就是 wheel 里的）
unzip -q offline-payload/flagtree-0.7.1a1+xpu3.6-cp310-cp310-linux_x86_64.whl \
      'triton/backends/xpu/llvm19/*' -d /tmp/wheelext
# 3) 配置（target 只构建 libtriton.so）
cmake -G Ninja -S . -B build-patch \
  -DLLVM_INCLUDE_DIRS=/tmp/wheelext/triton/backends/xpu/llvm19/include \
  -DLLVM_LIBRARY_DIR=/tmp/wheelext/triton/backends/xpu/llvm19/lib \
  -DTRITON_BUILD_PYTHON_MODULE=ON \
  -DTRITON_CODEGEN_BACKENDS="nvidia;xpu" \
  -DCMAKE_BUILD_TYPE=Release
ninja -C build-patch libtriton.so
# 4) 替换并验证
sha256sum build-patch/third_party/xpu/lib/libtriton.so
F06_PHYSICAL_DEVICE=2 bash run_env.sh sdnn-fix/dbg_sigmoid_cost.py
```

> 提示：本会话此前已用同样流程成功重建过一次（sha256 `001cbc11…`，用于 #1458 修复），
> 说明该路径可行；本次只需额外拉取 cmake/ninja（网络可用）。
