# [XPU] P800 上 Softmax / LayerNorm 的 Triton 路径性能瓶颈（多档编码实测）

## 问题

在 P800（arch 3，KL3）上，同一算子按不同"编码方式"实现的性能差 2–25×：

### Softmax（fp32，连续最后一维）

| 形状 | eager（厂商 C++/XBLAS） | FlagGems（`flag_gems.enable()`，vendor Triton） | 我们的 3-pass chunked | 我们的 multirow（本次重写） |
|---|---:|---:|---:|---:|
| 2048×1024 | **33.2 µs** | 85.0 µs（0.39×） | ~200 µs | 约 106 µs（独立 kernel）/ 25.9 µs @64×1024（0.88×） |
| 512×1024 | **12.6 µs** | 37.3 µs（0.34×） | 525 µs | 39.3 µs（0.54×） |
| 2048×2048 | **53.2 µs** | 167.0 µs（0.32×） | 409 µs | 291.0 µs（0.26×） |

### LayerNorm（fp32）

| 形状 | eager | FlagGems | 我们（双 `[R,C]` 累加器） |
|---|---:|---:|---:|
| 2048×1024 | 17.9 µs | 486.4 µs（0.04×） | — |
| 2048×2048 | 28.9 µs | 495.2 µs（0.06×） | 215.8 µs（0.23×） |
| 512×1024 | 15.2 µs | 124.8 µs（0.12×） | 24.5 µs（1.13×，小尺寸赢） |

### MatMul + SiLU / GELU(tanh)（fp32）

| 形状 | eager | 我们（cluster 两内核 / LUT） |
|---|---:|---:|
| 512×64×1024 | 48.7 µs | 42.7 µs（1.14×，fp32 走 cluster 精确 exp） |
| MatMul+GELU(tanh) 2048² | 248.9 µs | 回退（sdnn 0.03×，无 tanh intrinsic） |

**核心事实：即使按厂商 Triton 库（FlagGems）的推荐编码，softmax 也只有 eager 的 0.32–0.39×，LayerNorm 只有 0.04–0.12×。**

## 复现

```bash
# 1) FlagGems 参考（vendor Triton 编码）
PYTHONPATH=/data/flaggems/src GEMS_VENDOR=kunlunxin TRITON_XPU_ARCH=3 \
  python -c "import flag_gems; flag_gems.enable(); ... torch.softmax(x,-1) ..."
# 结果：2048x1024 = 85.0 us，eager = 33.2 us

# 2) 我们的 multirow 编码（本次重写，提交 69a8fc39d）
FLAGTREE_FALLBACK_HEURISTIC=0 python reduce_sm_probe.py
# 结果：64x1024 = 25.9 us（eager 22.9，0.88x）；512x1024 = 39.3 us（0.54x）；2048^2 = 291 us（0.26x）

# 3) eager 基线
python -c "import torch; x=torch.randn((2048,1024),device='cuda'); ... torch.softmax(x,-1)"
```

## 定位

1. **Reduce lowering 是主瓶颈**：XPU 的 `triton_xpu.reduce` 只锚定最后一维
   （`TLECoreTiling.cpp:383`）；普通指针 kernel 的逐行 reduce 会被 tiling 拆成
   跨核串行链，2048×1024 的 1D per-row 版本要 1155 µs（我们实测），
   而 **multirow `[TILE_M=16, N]` + 全行 1D arange + 无 mask** 能到 105 µs；
2. **FlagGems 的 TLE 编码更快**（85 µs）：它用 `tle.gpu.alloc(lmem)` +
   描述符 DMA `tle.gpu.copy`、`[XBLOCK]` 流式 running max/sum、主 tile 无 mask、
   尾部 copy clamp + `-inf` 预填；这要求 `tle.gpu` 路径（我们尚未接入）；
3. **没有向量 exp**：Triton 侧只有标量 `xpu::expf`，TLE/SDNN 的 `primitive_exp`
   等价物不可用；softmax 里 exp 计算量占主导（厂商 C++ 有向量 exp）；
4. **LayerNorm 的瓶颈是累加器**：双 `[R,C]` f32 累加器（32 KB）溢出 VRF → spill；
   官方 norm 文档的方案是统计量走 `tle.gpu.smem`（代码里已有
   `emitCoalescedSM2GM`），我们尚未按此重写；
5. **MatMul+Activation**：fp32 accumulator 上接激活会触发 `uni_sram`/dominate
   编译失败，FlagGems 也是拆成独立 pointwise；fp32 SiLU 我们改走 cluster 的向量
   exp（FlagTree 自己的 lowering）才能 1.14–1.17×。

### 补充：本地接入 TLE 结构后的实测（fp32）

按 FlagGems `_tle_softmax_fused_kernel` 结构（`tle.gpu.alloc(lmem)` + 描述符 DMA +
`[XBLOCK]` 流式 running max/sum）在本地实现并验证：

| 形状 | TLE（本地） | 我们的 multirow | FlagGems | eager |
|---|---:|---:|---:|---:|
| 2048×1024 | **63.1 µs（0.53×）** | 105 µs | 85.0 µs | 33.7 µs |
| 512×1024 | **22.9 µs（0.59×）** | 30.4 µs | 37.3 µs | 13.4 µs |
| 2048×2048 | 待测（YB=512 时 2 chunk） | 235 µs | 167 µs | 53.2 µs |

- 前置修复：libtriton 原来**没有绑定** `add_tritonxpu_reconcile_layouts_pass`
  （`compiler.py:429` 调用但符号缺失），TLE kernel 一编译就报 AttributeError；
  已补绑定（提交 `43ff8bdca`，lib md5 `e672d054b07e`）。
- 集成进 `add_softmax`（含 1D bias 广播）的三个方案与结果：
  1. 普通 GM 指针 load → **miscompile**（err 3.7–5.4）；
  2. 1D 描述符每 chunk 拷贝 → 正确但 **1.2 ms**（per-chunk 传输太贵）；
  3. **单 chunk（YB=N）+ bias 只拷一次** → 正确且快：
     `64x1024 = 20 µs（0.96× eager）`、`512x1024 = 33 µs（0.67×）`、
     `2048x1024 = 104 µs（0.45×）`；
- 模块内还发现并修复一个 **`dict.setdefault` 饥饿求值** bug：每次调用都会重建
  JITFunction 导致 ~900 µs 的重复 JIT/缓存往返（修复后回到 ~30 µs）；
- 因每次调用要重建 out/descriptor 约 +15 µs，抵消了 64/512 形状的收益，故模块内
  仍以 `FLAGTREE_SOFTMAX_TLE=1` 门控（提交 `2363dca7f`）。
- 追加 **descriptor + 4 槽输出环缓存**（提交 `45d07d19a`）：64×1024 从 36 µs 降到
  **26.8 µs**，但仍略慢于 multirow 的 23.5 µs（eager 19.3 µs）；TLE 单独运行是
  19.1 µs，剩余 ~7 µs 是 Python 调用链/发射开销。结论：TLE 结构已可用、正确，
  但在这几个尺寸上仍以 multirow 为默认。

### 补充：TLE 单 chunk LayerNorm（本地实现）

把整行放入 LM（`[XB, N]`，XB·N ≤ 16384 元素），统计量与归一化在同一份 LM tile 上完成
（**1 次 GM 读 + 1 次 GM 写**），bias/weight/eps 全部只拷一次：

| 形状 | TLE LN | cluster LN（原） | eager | 结论 |
|---|---:|---:|---:|---|
| 512×1024（affine） | 33.3 µs（0.98×） | 43.4 µs（0.66×） | 32.7 µs | TLE 更好 |
| 2048×1024（affine） | **53.3 µs（0.60×）** | 161.9 µs（0.20×） | 32.2 µs | TLE 8× 优于 cluster |
| 2048×2048（affine） | **90.6 µs（0.57×）** | 338.0 µs（0.15×） | 51.7 µs | TLE 3.7× 优于 cluster |
| 2048×2048（无 affine） | **72.8 µs（0.69×）** | 215.7 µs（0.23×） | 50.2 µs | 同上 |
| 64×1024 / 512×1024（无 affine） | 30.1 / 27.1 µs | **23.5 / 25.6 µs** | 27.9 / 27.3 µs | cluster 更好，保持 |

- 顺带修复了一个 **affine 图匹配 bug**：`F.layer_norm(a+b, shape, w, bias, eps)` 的
  weight/bias 在 fx 里是 **kwargs**（`get_attr`），原实现只读 `args[2]` → 被判成
  non-affine，输出错误（err ~15）。已补 kwargs 回退（提交 `95a47bba5`）。
- 策略：LN 的 fallback 阈值从 4M 元素收紧到 **1M 元素**——2048×1024 的 cluster 只有
  0.20×，而 TLE 也只有 0.60×，都低于 eager，直接回退更划算；512×1024 / 64×1024
  继续用 cluster（1.13–1.19×）。

## 影响

- 这三类模板（softmax、layernorm 大尺寸、matmul+tanh/silu）当前**全部回退 eager**，
  即在我们 72 用例里贡献 1.00×（不亏但也不赚）；
- 若按 FlagGems 的 TLE + multirow 重写，softmax 可从 0.13–0.18× 提到 0.32–0.44×，
  但仍达不到 eager；要真正超过 eager 需要：向量 exp、reduce lowering 或 TLE 全路径；
- LayerNorm 即使按 norm 文档走 SM 写回，预计 60–90 µs，仍难超过 eager 的 49.6 µs
  （厂商 C++ 单趟 + 批量 SIMD）。

## 建议（按优先级）

1. **官方**：暴露向量 exp（`primitive_exp`/`__simd__` 等价物）给 Triton；
2. **官方**：修 reduce/tiling 的跨核串行链（或暴露 `tle.gpu` 的 reduce 原语），
   使 1D per-row reduce 不再退化；
3. **本地**：softmax 已改为 multirow 编码（提交 `69a8fc39d`），下一步接入 TLE
   结构（预期 105→85 µs）；LayerNorm 按 norm 文档重写 SM 写回；
4. **本地**：matmul 采用 FlagGems 的 tile/warps 规则（fp32 wide-N warps=16，
   fp16 BK=256），并把激活继续放在独立 pointwise/cluster 路径。

## 附件

- `FlagGems参考检查-20261107.md`（FlagGems 代码与实测）
- `F06各模板性能瓶颈定位-20261107.md`（地板与归因）
- 提交：`69a8fc39d`（multirow softmax + broadcast-fold 修复）
