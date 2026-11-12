# FlagTree XPU 后端（third_party/xpu）缺陷清单

环境：FlagTree 0.7.1a1+xpu3.6 / P800 OAM (arch=3, warp_size=1) / LLVM 22.1.8 /
torch 2.9.0 + torch_xmlir。全部结论都来自实测，可复现脚本在
`work/2026-11-05/build/dbg_*.py`、`work/2026-11-05/host152/sdnn-fix/`。

## 归属总表（2026-11-07 复核）

判定依据：`third_party/xpu/docs/xpu3/how_to_write_kernel_skills/`（copy / reduce / norm 三份
官方"怎么写算子"文档）+ 用官方 wheel 原库复现的结果。

| # | 问题 | 归属 | 说明 |
|---|---|---|---|
| 1 | `tl.math.exp2` 返回 e^x | **官方缺陷** | 标准 Triton 算子语义错误，与写法无关；已本地修复 |
| 2 | sigmoid 融合从未生效（两处 bug） | **官方缺陷** | 后端逻辑 bug；已本地修复 |
| 3 | `VSigmoidFOp` 走 libdevice 慢 2.7× | **官方性能限制** | 后端选型问题，写法规避不了 |
| 4 | softmax `uni_sram`（编码不匹配） | **官方缺陷 + 我方写法** | 报错误导与缺 convert_layout 是官方问题；但**触发写法（循环内归约+一维携带累加器）违反官方文档 "elementwise adds only" 折叠规则**，按文档两趟写法可避免 |
| 5 | SDNN `core_specialize` 编码 / SDNN 归约结果错 | **官方缺陷** | 厂商预编译对象，无文档可依 |
| 6 | 宽 XBLOCK 下 GELU 触发 SmallVector 崩溃 | **官方缺陷 + 我方配置** | 崩溃是后端 bug；但把 XBLOCK 推到 8192+ 是**我们不按文档"tile 必须实测"**的选择，已用 `_XBLOCK_CAP` 限回 2048 |
| 7 | `tle.dsa.local_ptr` 在 XPU 缺失 | **官方文档-实现不一致** | `tle_cn.md` 3.3.2.1.3 有描述，只有 Ascend 实现 |
| 8 | 通过 extern 调 libdevice 标量数学极慢 | 官方性能特性 | 已回退，非缺陷 |
| 9 | 构建坑（-Werror / getStrEnvXPU / LLVMExports） | **官方打包问题** | 与业务写法无关 |
| 10 | bf16 静默少写 + bf16 cast 被折叠 | **官方缺陷** | 见 `bf16-xblock/` 两份 ISSUE |
| 11 | SDNN 路径 layer-norm 结果错（max_err 63.7） | **官方缺陷** | 厂商预编译对象 |
| 12 | "f16 访存未加宽" | **已撤回：我方配置** | 实为程序数 1024 > 768 核的尾效应；官方文档也要求 grid 按"一个 cluster 一个 program"并实测 tile |

### 我方"没按官方文档写"的问题（已全部修复，不入官方 issue）

| 问题 | 官方要求 | 修复 |
|---|---|---|
| `_p800_flat` / `_p800_reduce` 指针进 specialization key | 「指针别进 specialization key，否则每次调用重新加载 kernel」 | 加 `do_not_specialize` |
| `_p800_reduce` 每次调用重建 launcher | 「launch 用 flat launcher 绑定一次（省 ~9us）」 | 绑定 `state['launcher']` |
| 三个 match 不校验连续性 | 「最内段 stride≠1 / stride 0 / int→float cast 必须在 host 侧挡掉，否则静默算错」 | 加 `is_contiguous()` + `stride(-1)==1` 门禁 |
| f16 reduce 慢（121 µs） | 官方文档已注明 f16 在 LM/TLE 路径的已知编译限制，应走 plain/两趟 | 按文档保留 plain 路径；进一步优化需官方 B2 修复 |

---

## 1. [正确性，已定位+已本地修复] `tl.math.exp2` 返回 e^x 而不是 2^x

- **组件**：`lib/Dialect/TritonXPU/Transforms/LegalizeExternEW.cpp`（注释明确了设计）
  + `lib/Conversion/TritonXPUToLLVM/ElementwiseOpToLLVM.cpp:191`
- **现象**：`tl.exp(x)` 正确（sigmoid err = 0.0），但 `tl.math.exp2(x)` 输出等于是 e^x：
  2048×2048 fp32 上 `max_err = 1078 ~ 1665`。
- **根因**：XPU ISA 指令 `exp.f.rn` 计算的是**自然指数 e^x**，而后端把 `math.exp` 映射到
  `LLVM::Exp2Op`（其 XPU lowering 就是 `exp.f.rn`）。`math.exp2` 没有独立 lowering，
  也落到同一条 `exp.f.rn`，于是返回 e^x 而非 2^x。
- **本地修复**（已验证，err 从 1e3 降到 **1.5e-5**）：在 `LegalizeExternEW`
  里加 `exp2(x) -> exp(x * ln2)` 的 greedy rewrite（该 pass 在 `convert_triton_to_triton_xpu`
  之前运行，覆盖非 SDNN 路径）。
- **建议**：合入同等修复，或给 `math.exp2` 建独立 lowering；补 lit 测试覆盖 exp/exp2。

---

## 2. [性能/逻辑 bug] 向量 sigmoid 融合从未生效（两处独立缺陷）

- **组件**：`lib/Dialect/TritonXPU/Transforms/Vectorize.cpp`（"Sigmoid Fusion" 段，
  原代码约 2730–2830 行）
- **现象**：`1/(1+exp(-x))` 永远不会被改写成 `VSigmoidFOp`，厂商向量 sigmoid 快速路径形同虚设。
- **缺陷 A（指针比较）**：

```cpp
if (isa_and_nonnull<triton::xpu::VExpFOp>(addLhsOp) && addRhsOp == lhsOp)  // 原代码
```

用 **Operation 指针** 比较分母的 1.0 和加法的 1.0，CSE 之后二者不是同一个 op → 永远不匹配。

- **缺陷 B（pass 顺序）**：`Div -> Mul`（`VvdivToVvmul`）在 sigmoid 融合**之前**执行，
  把 `vvdivf` 改写成 `vvmul`，融合前置条件消失。
- **修复**（本地已验证）：(a) 改为比较 splat 值而非 op 指针；(b) 把 `Div -> Mul` 移到融合之后。
  验证方式：临时在融合点加 `llvm::errs() << "FUSED"`，修复前 0 次、修复后每次编译 2 次。
- **注意**：修复后融合确实生效，但走到 libdevice 调用仍然是 76 µs（见 Issue 3），
  所以这个修复本身不带来性能提升，但它是 Issue 3 的前提。

---

## 3. [性能] `VSigmoidFOp` 经 libdevice 调用的开销比厂商 kernel 高 2.7×

- **组件**：`lib/Conversion/TritonXPUToLLVM/VectorizedOpToLLVM.cpp:54`
  `VLibOp2DevCall(triton::xpu::VSigmoidFOp, "_ZN3xpu9vsigmoidfEDv16_f")`
- **实测**（2048×2048 fp32，单核 16MB 读 + 16MB 写）：

| 实现 | 耗时 |
|---|---:|
| 厂商 eager `torch.sigmoid` | **48.8 µs** |
| Triton（融合生效后走 libdevice `vsigmoidf`） | **76.5 µs** |
| Triton 软件 exp2 路径 | 76.2 µs |

- **根因**：把 libdevice 的 `vsigmoidf` 反汇编后可以看到它内部就是
  `vstore_mask16`（向量→LM）+ 16×`loadli` + 16×`exp.f.rn` + 16×`div.f.rn` + 回写。
  与厂商 kernel 指令完全一致，慢的 27 µs 全部是 **函数调用 ABI 的向量值序列化/反序列化**。
- **建议**：把这条序列作为**内联** lowering 写进 `VSigmoidFOp`（不必走 extern 调用），
  或让 libdevice 的向量数学函数在 LTO/inline 阶段被内联。

---

## 4. [正确性 + 误导性报错] 在线 softmax 编译失败，真实错误被伪装成 `OutOfResources: uni_sram`

- **组件**：`backend/compiler.py:620-626`（异常包装）+ XPU layout 分配（scf.for iter_arg）
- **现象**：flash 式在线 softmax（running max/sum）全 tile 组合都报
  `OutOfResources: out of resource: uni_sram`。
- **真实错误**（被包装层掩盖）：
  ```
  'arith.subf' op requires the same encoding for all operands and results
    s = s * tl.exp(m - m_new) + ...
  ```
  即 **循环携带的 1D 累加器（`tl.zeros([R])`）与 reduction 结果（`tl.max(v, 1)`）被分配了
  不同的 ClusterLayout 编码**（前者 cpg=[1]，后者 cpg=[g]），与 `TLECoreTiling.cpp` 里
  已记录过的一类问题相同，但非 TLE 路径没有等价修复。
- **第二个问题**：`compiler.py` 把 `make_ttxir` 期间**任何**异常都包成
  `OutOfResources(0, 0, f"uni_sram {e}")`，导致大量非资源类 bug 被误报为"显存不足"。
- **DSL 侧规避**（已验证）：把累加器改成 2D + `keep_dims=True`
  （`m: [R,1]`, `m_new = tl.max(v,1,keep_dims=True)`, `s = ... + tl.sum(...,1,keep_dims=True)`）→
  能编译、数值正确（err 1.5e-8），但 669 µs，仍慢于 native 462 µs。
- **建议**：① 为 scf.for 携带值插入 convert_layout（或让 layout 分配从 yielded 值反向传播）；
  ② 不要把所有异常都包成 OutOfResources。

### 归属确认（2026-11-07）：官方问题，非本地代码

- 用 **官方 wheel 原库**（`libtriton.so.prev`，未打任何本地补丁）跑同一个纯 Triton 内核
  （`dbg_softmax_online.py`，只用 `tl.zeros([R])` / `tl.max(v,1)` / 循环携带），
  报出**完全相同**的错误：
  ```
  'arith.subf' op requires the same encoding for all operands and results
  → OutOfResources: out of resource: uni_sram
  ```
- 相关文件均在 upstream 且我们未修改：
  | 文件 | upstream 提交 | 本地修改 |
  |---|---:|---|
  | `third_party/xpu/lib/Conversion/TritonToTritonXPU/TritonToTritonXPUPass.cpp` | 3 | 无 |
  | `third_party/xpu/lib/Dialect/TritonXPU/Transforms/TLECoreTiling.cpp` | 2 | 无 |
  | `third_party/xpu/backend/compiler.py`（异常包装） | 5 | 无 |
- 触发内核是纯 Triton DSL，不经过我们任何 graph_fusion 代码。
- 结论：**B2 是 FlagTree 官方后端的 layout 缺陷**，修复应在官方仓库完成。

---

## 5. [已澄清] 二维行块广播：非 SDNN 路径正常，SDNN 路径有编码 bug

- **原报告**：`tt.expand_dims op operand #0 must be ranked tensor ... but got 'tensor<64xvector<16xf32>>'`。
- **复测结论（2026-11-06）**：用三种写法（`b[None,:]` 广播、显式 `tl.expand_dims`、大 tile 64×512）
  在**非 SDNN 路径**上全部通过（err 4.8e-7），wheel 原库与我们重建的库表现一致 →
  该报错**无法用这些写法复现**，原触发应是特定 SDNN 配置。
- **真正的 bug（SDNN 路径可复现）**：
  ```
  'sdnn.core_specialize' op region entry block argument #0 type 'tensor<16xf32>'
  does not match operand type 'tensor<16xf32, #sdnn.rc<layout = "RC", blockColHeight = 16>>
  ```
  触发条件：SDNN 路径（`is_sdnn=True`）+ layer-norm 式"2D tile → 1D reduction → 再广播回 2D"的链
  （`rstd = 1.0 / tl.sqrt(var + 1e-5)`）。
- **DSL 规避（已验证）**：把 mean/var/rstd 全用 `keep_dims=True` 保持 2D，
  `sdnn.core_specialize` 错误消失、kernel 能编译。
- **但随即暴露第二个 bug**：同样内核在 SDNN 路径上**结果错误**（2048² layer-norm 场景
  max_err = 63.7，非 SDNN 路径 1.9e-6）→ 见 issue 11。
- **组件**：`TritonSDNN` 方言与转换全部在厂商预编译对象里
  （`third_party/xpu/include/triton/Dialect/TritonSDNN/IR/` 只有 CMakeLists.txt），不可本地修复。

---

## 6. [崩溃] 宽 XBLOCK 下的 GELU 链触发 `SmallVector unable to grow`

- **现象**：`LLVM ERROR: SmallVector unable to grow. Requested capacity (4294967296)`
- **复现**：`gelu_exact` 链在 XBLOCK ≥ 8192 时确定性崩溃（XBLOCK 2048 正常）。
- **推测根因**：某个 `getTotalElemsPerThread`/stride 计算在宽 tile 下溢出为 2^32。
- **影响**：宽块优化（本会话把 copy 带宽从 0.16 → 1.06 TB/s 的关键）在 GELU 上不可用。

---

## 7. [API 缺口] `tle.dsa.local_ptr` 在 XPU 后端缺失

- **现象**：`AttributeError: module 'triton.experimental.tle.language.dsa' has no attribute 'local_ptr'`
- **文档**：`tle_cn.md` 3.3.2.1.3 描述了 `local_ptr`，但只在 Ascend 后端实现。
- **影响**：无法把计算结果写回 DSA buffer 再 `LM2GM`，因此**厂商自己的 kernel 结构**
  （`GM2LM → 计算 → LM2GM`，见 XTDK 手册 exp 示例）在 Triton 侧无法复现；
  只能 "DMA 搬入 + 普通 `tl.store` 搬出"，实测更慢（dsa 搬入 0.52 TB/s < 普通大块 load 1.06 TB/s）。

---

## 8. [性能] 通过 extern 调用 libdevice 标量数学函数极慢

- **实测**（2048×2048 fp32）：

| 调用 | 耗时 |
|---|---:|
| `tl.exp`（内建） | 69.8 µs |
| `_ZN3xpu8xpu_expfEf`（xpu::xpu_exp，标量 extern） | **137.4 µs** |
| `_ZN3xpu5exp2fEf`（xpu::exp2f，标量 extern） | **15526 µs（15.5 ms）** |

- **影响**：任何按语义把 `math.exp` 映射到 libdevice 符号的后端改动都会造成 2–200× 回退；
  我们在本地验证过这条路径（exp→extern）并已回退。建议后端不要使用 libdevice 标量数学，
  而是直接内联硬件指令（`exp.f.rn`）。

---

## 9. [构建] 从源码构建的三处坑（已在本地绕过）

1. **`-Werror` 与 LLVM 22 冲突**：`ElementwiseOpToLLVM`/`NewAnalysis` 多处
   `deprecated-declarations`，在 `-Werror` 下直接编译失败（`cmake/FlagTreeOptions.cmake` 硬编码 `-Werror`）。
2. **`getStrEnvXPU` 未定义**：`third_party/xpu/include/triton/Analysis/VectorizabilityAnalysis.h:205`
   引用它，但只有 `-DFLAGTREE_BACKEND=xpu` 时 `spec_cpp/include/triton/Tools/Sys/GetEnv.hpp`
   才会进 include path；否则报 "not a member of mlir::triton::tools"。
3. **LLVMExports.cmake 引用未随包发布的构建期二进制**：仓库自己在
   `setup_tools/utils/xpu.py::_patch_llvm_exports()` 里做了补丁，建议直接在 LLVM 包里修掉。

---

## 10. [正确性，已单独成文] bf16 pointwise 静默少写 & bf16 cast 被折叠

- 详见 `work/2026-11-05/bf16-xblock/ISSUE.md`：
  XBLOCK > 1024 的 bf16 pointwise 只写回 `1024/XBLOCK` 的输出（其余为未初始化，常见 ±inf）。
- 详见 `work/2026-11-05/bf16-xblock/ISSUE-2-bf16-narrowing.md`：
  XPU3 无 bf16 转换指令，`f32→bf16→f32` 被折叠成恒等，导致 bf16 数学静默错误。


## 11. [正确性] SDNN 路径的 layer-norm 式归约结果错误（max_err 63.7）

- **现象**：kernel（2D tile 两趟累计 → `tl.sum(...,1,keep_dims=True)` → 再广播回 2D）
  在 `is_sdnn=True` 下编译通过但结果完全错误：2048² 场景 max_err **63.7**；
  同一 kernel 在非 SDNN 路径 max_err **1.9e-6**。
- **复现**：`work/2026-11-05/build/dbg_ln_keepdims.py`（`is_sdnn=False` 正确、`True` 错误）。
- **影响**：SDNN 路径目前只适合最简单的 reduce（我们已验证 mul+sum/keepdim 正确），
  任何"归约后原地广播复用"的形态都需要逐例验证。
- **建议**：为 SDNN 路径补 layer-norm/softmax 类内核的 lit 测试（当前回归集覆盖不到）。


## 12. [已撤回] "f16 带宽减半"是程序数/尾效应造成的，并非后端访存未加宽

原报告称 f16 访存带宽只有 f32 一半（0.59 vs 1.09 TB/s），据此怀疑后端未加宽 16-bit 访问。
**后续实验推翻了该结论**（2026-11-07）：

| 配置 | 耗时 | 带宽 |
|---|---:|---:|
| f16 copy BLK=8192（1024 programs） | 56.7 µs | 0.59 TB/s |
| **f16 copy BLK=16384（512 programs）** | **32.3 µs** | **1.04 TB/s** |
| f32 copy BLK=8192（512 programs） | 32.4 µs | 1.04 TB/s |
| i32 copy（同字节） | 32.0 µs | 1.05 TB/s |

即 **f16 与 f32 在"程序数 ≤ ~512"时达到相同带宽（1.04 TB/s）**；
之前的 0.59 TB/s 是**程序数 1024（超过 768 核，出现 1.76× 尾效应）**造成的假象。
因此：
- 后端 **不需要**为 f16 做打包/加宽修改（本计划中的路径 B 已取消）；
- 真正的修复点在**分块/程序数选择**（我们自己的 kernel 配置），以及 reduce 内层循环效率；
- Vectorizer 的 `vecWidth=32`（64B）决策本来就是对的，无需改动。

> 保留此条目作为诊断记录，避免后续再次误判。


## 附：已在 FlagTree 范围内本地修复的问题（2026-11-07）

| 修复 | 文件 | 验证 |
|---|---|---|
| `tl.math.exp2` 语义错（返回 e^x） | `third_party/xpu/lib/Dialect/TritonXPU/Transforms/LegalizeExternEW.cpp`（新增 `Exp2ToExpScaledPattern`） | max_err 1665 → **1.5e-5** |
| sigmoid 融合从未生效（操作数指针比较 + Div2Mul 顺序） | `third_party/xpu/lib/Dialect/TritonXPU/Transforms/Vectorize.cpp` | 融合已触发（`[SIGDBG] FUSED`） |
| `uni_sram` 误报掩盖真实错误 | `third_party/xpu/backend/compiler.py` | 同一内核现在报 `RuntimeError: 'arith.subf' op requires the same encoding ...`（原为 `OutOfResources: uni_sram`） |
| 构建：LLVM 22 下 `-Werror` 阻断 | `cmake/FlagTreeOptions.cmake`、`CMakeLists.txt` | 构建通过 |
| IR dump 不可用（`TRITON_CONCEAL_IR=1` 硬编码） | `cmake/FlagTreeOptions.cmake`（新增 `TRITON_XPU_CONCEAL_IR_OFF` 选项） | 可 dump `.ttxir/.llir` |
| 探针残留（B1 批量 exp inline-asm 实验代码曾注册进 patterns） | `third_party/xpu/lib/Conversion/TritonXPUToLLVM/VectorizedOpToLLVM.cpp`、`ElementwiseOpToLLVM.cpp` | 已回退到干净基线并重建 |


## 状态更新（2026-11-07 19:20）

- 工作区事故后已从 U 盘备份恢复构建链与文档；
- 干净源码（无 B1 探针）已重建并部署到 152：`libtriton.so` md5 `7cf9afb7…`、225 MB、GLIBC ≤ 2.17；
- 与旧部署库 A/B 性能在噪声内一致；`tl.math.exp2` 验证 max_err = 0.0；
- `compiler.py` 的 `uni_sram` 误报修复已在 152 生效。
