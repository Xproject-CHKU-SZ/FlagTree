# 产物对比：eager 的生成产物 vs 当前 Triton 产物

## 0. 产物获取

| 产物 | 位置 | 可读性 |
|---|---|---|
| 我们的 Triton kernel | `sm.xpubin` / `sm.elf`（2048×1024 softmax，R=8, N=1024, w=4），已拷回 `work/2026-11-05/build/sm.{xpubin,elf}` | 可拿到设备二进制，但**没有公开的 XPU 反汇编器**（`llvm-objdump` 不识别 xpu 目标） |
| eager 的 kernel | 厂商 `.so`（XBLAS/XDNN）内，未导出符号 | 不可反汇编 |
| FlagGems 参考 | `_kunlunxin/ops/softmax.py` TLE 源码 | 可读源码 |

## 1. 行为级分解（2048×1024，fp32）

| 阶段 | 我们的 Triton | eager |
|---|---:|---:|
| 仅 load + 行 max | **87 µs** | — |
| 完整 softmax（无 add） | 105 µs | **33 µs** |
| 完整 softmax（含 1D bias add） | 134 µs | 48 µs |
| 3 流拷贝地板（同尺寸） | ~39 µs（2048² 实测 1288 GB/s） | — |

**关键**：我们"只做 load + 行 max"就已经 87 µs，超过 eager **整个** softmax 的 33 µs（2.6×）。
完整 softmax 相比 max-only 只增加 18–47 µs（exp/div/归一化）。
→ **差距不在趟数、也不在纯写回，而在"行归约 + 逐 lane exp"的代码生成**。

## 2. 结构性对比

| 维度 | eager 产物 | 我们的 Triton 产物 |
|---|---|---|
| 内核数 | 1 | 1 |
| 数据流 | 1 读 + 1 写，单趟 online | 1 读 + 1 写（multirow 已无多趟） |
| 行归约 | LM 批处理内寄存器/SFU 归约（512-bit SIMD） | `triton_xpu.reduce`：跨核 staged reduce，带 layout conversion / barrier / mfence |
| exp | 向量 `primitive_exp`（16 lane/指令） | 标量 `xpu::expf`，逐 lane |
| 归一化广播 | LM 内 batch 完成 | `e / z[:, None]` 触发额外 `convert_layout` |
| 搬运 | 2D DMA（行连续） | 2D tile `[R,N]` 指针寻址（未走描述符 DMA） |
| 实测 | 33 µs | 105 µs（2.2× 差距） |

## 3. 为什么归约会贵

- `triton_xpu.reduce` 只锚定最后一维（`TLECoreTiling.cpp:383`），`[8,1024]` tile 的行归约被拆成
  跨核展开 + 共享内存 staging + `mfence`；
- FlagGems 用的 TLE 路径（`tle.gpu.alloc/copy` + `[XBLOCK]` 流式 running state）把归约留在
  **单核寄存器**里，避免了这条跨核链——所以同样 Triton，它是 85 µs 而我们 105–135 µs；
- eager 的 C++ 更进一步：归约在 LM batch 内完成，exp 走 SFU 向量指令，整个 softmax 只有 33 µs。

## 4. 结论

1. **内存层面已无差距**（都是 1 读 + 1 写，地板 ~39 µs），差距在归约与数学指令的生成方式；
2. 当前 gap 分解：行归约 ≈ 48 µs（相对拷贝地板）+ exp/归一化 ≈ 18–47 µs；
3. 可继续压缩的本地手段：接入 TLE 描述符 DMA + `[XBLOCK]` 流式归约（FlagGems 结构，预期 105→85 µs）；
4. 要追平 eager 的 33 µs，必须有**向量 exp** 与**不跨核的行归约**——这两项在官方后端手里。
