# 面向缓冲的 TLE 原语设计与实现方案（XPU/P800）

## 0. 为什么值得做（实测依据）

纯 DMA（`GM → LM → GM`，仅搬运、无计算）经过 `tle.dsa` 的实测带宽：

| tile | 耗时（2048² fp32） | 带宽 |
|---|---:|---:|
| 16×256 (16KB) | 41.1 µs | 0.82 TB/s |
| 16×512 (32KB) | 30.4 µs | 1.10 TB/s |
| 32×256 (32KB) | 30.6 µs | 1.10 TB/s |
| 8×1024 (32KB) | **28.6 µs** | **1.17 TB/s** |

对比：Triton 普通 1D copy 上限 1.06 TB/s，厂商 `copy_` 1.84 TB/s。
**结论：缓冲通路的搬运已经够快（1.17 TB/s），缺的只是“在缓冲上做数学”的原语。**

厂商 kernel 的范式（XTDK 手册 `exp_fwd_kl`）：1536 元素 LM 缓冲 → 一次 DMA 进出 →
`primitive_exp` 内联标量 `exp.f.rn`。若我们在 Triton 里复刻这一结构：

```
读 16MB @1.17 TB/s ≈ 14 µs + 写 16MB @1.17 TB/s ≈ 14 µs + 硬件 exp ≈ 16 µs ≈ 44 µs
```

即可追平/超过厂商 eager 的 50.9 µs（当前 Triton 融合路径是 74.5 µs）。

## 1. 缺什么

| 能力 | 现状 | 缺口 |
|---|---|---|
| GM→LM 搬运 | `tle.dsa.copy(gm, buf, sizes)` | ✅ 已有 |
| LM→GM 搬运 | `tle.dsa.copy(buf, gm, sizes)` | ✅ 已有 |
| 在缓冲上读 | `tle.dsa.to_tensor(buf)` | ✅ 已有（但变成寄存器向量） |
| 写回缓冲 | `tle.dsa.local_ptr` | ❌ **XPU 后端未实现** |
| **缓冲上数学** | 无 | ❌ 只能在寄存器向量上做（每 16 lane 一次函数调用，慢 2.7×） |

## 2. 原语设计

### 2.1 前端 API（`python/triton/experimental/tle/language/dsa.py`）

```python
tle.dsa.local_ptr(buf, indices)            # 已有文档、XPU 待实现
tle.dsa.math(buf, kind="exp", sizes=[R, C])  # 新增：对 LM 缓冲做数学
```

`kind` 支持：`exp` / `sigmoid` / `tanh` / `erf` / `scale`（乘常数）等。
语义：直接原地改写 `buf` 的前 `sizes` 个元素，数据不离开 LM。

### 2.2 方言 op（`third_party/xpu/include/triton/Dialect/TritonXPU/IR/TritonXPUOps.td`）

```tablegen
def TTX_DSALocalPtrOp : TTX_Op<"dsa_local_ptr", [Pure]> {
  let arguments = (ins TTX_MemDescAttr:$buf, Variadic<TTX_Tensor>:$indices);
  let results = (outs AnyType:$ptr);
}

def TTX_DSAMathOp : TTX_Op<"dsa_math", [MemoryEffects<[MemWrite<...>]>]> {
  // buf 是 DSA 分配的描述符；kind/rows/cols 是常量
  let arguments = (ins TTX_MemDescAttr:$buf, StrAttr:$kind,
                       I32Attr:$rows, I32Attr:$cols);
}
```

### 2.3 lowering（`third_party/xpu/lib/Conversion/TritonXPUToLLVM/`）

新增 `DSAMathOpToLLVM.cpp`，把 `dsa_math` 展开成**对 LM 地址的标量循环 + 内联硬件指令**：

```
; 对 1536 元素的一块（与厂商 buf_len 一致）
for (i = 0; i < rows*cols; ) {
   %p = addptr buf_base, i
   %v = load %p                       ; LM 标量 load（地址空间 1）
   %e = inline_asm "exp.f.rn $0, $1;", "=r,r" %v
   store %e, %p
}
```

要点：
1. **内联**（不产生函数调用、不破坏相邻元素的寄存器分配）；
2. **每块一次 mfence**（不是每 16 lane 一次），这是与 libdevice 调用的本质差别；
3. 循环以 `buf_len = 1536` 为单位，和厂商 `exp_fwd_kl` 对齐；
4. 可选：用 `vload_mask16`/`vstore_mask16` 手工做 16 元素批量装载/回写，减少 LM 访问条数。

`local_ptr` 的 lowering 直接把 buffer 基址 + 偏移转成 `LLVM::PointerType`（AS=1），
供用户侧 `tl.store` 写回。

### 2.4 复用现有基础设施

- 缓冲区分配/地址已经由 `tle.dsa.alloc` + TLE 段分配 pass 完成，可直接拿到基址；
- InlineAsm 的创建范式同 `VectorizedOpToLLVM.cpp:262`（`LLVM::InlineAsmOp`，约束 `"=r,r"`，
  已验证 `exp.f.rn` 数值精确、err = 0.0）；
- LM/LM fence 相关 codegen 在 `LoadStoreOpToLLVM.cpp`（`mfence { lm }`）。

## 3. 实施顺序与工期

| 步骤 | 内容 | 工期 | 验收 |
|---|---|---|---|
| 1 | `ttxpuir.dsa_math` op + `DSAMathOpToLLVM`（仅 f32 exp） | 0.5–1 天 | silu 内核 GM→LM、dsa_math(exp)、mul、LM→GM，数值正确 |
| 2 | 补 `tle.dsa.local_ptr`（XPU） | 0.5 天 | 可在缓冲上写回并 DMA 出 |
| 3 | 调块大小（512/1024/1536/2048）与双缓冲（num_stages=2） | 0.5 天 | 纯 DMA ≥1.1 TB/s；silu ≤ 55 µs |
| 4 | 扩到 sigmoid/tanh/erf/div、以及 buffer 级 reduce（softmax 用） | 1–2 天 | online softmax 可编译并 ≤150 µs |

（构建链已打通：增量 `ninja libtriton.so` 约 3 分钟，可直接迭代。）

## 4. 预期收益

| 场景 | 当前 | 缓冲原语后（预估） | 厂商 |
|---|---:|---:|---:|
| Add+SiLU fp32 2048² | 78.1 µs (0.93×) | **~50 µs (1.45×)** | 72.5 µs |
| Add+SiLU fp16 2048² | 63.9 µs (1.08×) | ~35 µs (1.9×) | 69.1 µs |
| Add+Softmax | 462 µs（回退） | ~150 µs | 73.8 µs |
| Add+GELU fp32 大尺寸 | 1.21–1.71× | 再快 20–30% | — |

## 5. 风险

1. `exp.f.rn` 只在 XPU3 ISA 存在，需按 `targetInfo.arch` 分支（arch=2 无此指令时回退）；
2. LM 地址空间与现有 TLE 分配的交互需要确认（`tle.dsa.alloc` 返回的描述符是否暴露基址）；
3. 每块 mfence 的语义必须与 DMA 完成顺序对齐，否则可能出现读到旧数据的竞态。


## 6. 本轮实现探测的结果（2026-11-06 19:10）

在动工前先把两条"绕过写新 op"的捷径试掉了，都不可行：

### 6.1 通过 intrinsic attr table 强制内联 libdevice 数学（失败）

`triton.backends.intrinsic_tables.stamp_payload('l19')` 是一张 16230 行的函数属性表，
运行期可以打补丁（改 `stamp_payload` 追加 `_ZN3xpu9vsigmoidfEDv16_f alwaysinline ...`）。
实测：补丁被接受、kernel 正确（err 0），但 **sigmoid 仍 77.1 µs**（基线 76.5）。
说明 device link 阶段没有对 libdevice 做跨模块内联，`alwaysinline` 只是声明属性，
拿不到函数体就没法内联。

### 6.2 用 `tle.dsa` 现成原语做缓冲数学（不可行）

追踪了 DSA 的实现链路：

```
Python  tle.dsa.alloc/copy/to_tensor       (python/triton/experimental/tle/language/dsa/core.py)
   ↓ builder.create_dsa_*                  (third_party/tle/python/triton_tle_dsa.cc 绑定)
   ↓ mlir.dsa.alloc/copy/...               (third_party/tle/include/tle-dsa/Dialect/IR/DsaOps.td)
   ↓ DsaToCore 降级为 memref.alloc/copy    (third_party/tle/lib/Conversion/DsaToCore/DsaToCore.cpp)
   ↓ XPU 后端把 memref + is_sdnn 通路变成 DMA
```

关键发现：`third_party/xpu/lib` 里**完全没有 DSA 相关代码**，DSA 是通用层（TLE）→ memref → 后端。
现有 dsa 数学算子只有 add/sub/mul/max/min/div（三元、原地），**没有 exp/sigmoid/tanh**；
且 `to_tensor` 一读出来就变成寄存器向量，数学运算又回到 16 lane 一条的函数调用。

因此"缓冲上数学"必须新增一个 **不经过 to_tensor 的 op**（即设计中的 `ttxpuir.dsa_math`），
它是 XPU 后端自己的 lowering（对 memref 的 LM 地址做标量循环 + 内联 `exp.f.rn`），
无法用现有 TLE 原语组合出来。

### 6.3 结论

- 设计（第 2 节）成立，但必须动 3 个仓库层次：TLE 方言（新增 op）+ XPU 后端（新增 lowering）+ 前端 API；
- 本轮已完成全部前置调研：DSA 现有算子清单、绑定文件位置、降级链路、`exp.f.rn` 精确性、
  DMA 1.17 TB/s 实测、inlining 捷径被证伪；
- 预计 0.5–1 天可做出 f32 exp 的最小闭环（第 3 节步骤 1）。


## 7. 实施探测：现有 DSA 数学算子在 XPU 上根本不可用（2026-11-06 19:40）

在写新 op 之前，先验证"现成的 dsa 数学算子能不能用"（如果能，照葫芦画瓢即可）：

**实测（152，P800）**：调用仓库源码里存在的 `tle.dsa.mul(ba, bb, bo)`：

```
AttributeError: module 'triton.experimental.tle.language.dsa' has no attribute 'mul'
```

**原因链（三个独立事实）**：

1. **安装的 wheel Python 与仓库源码不一致**：仓库 `python/triton/experimental/tle/language/dsa/`
   有 `add/sub/mul/max/min/div/local_ptr`，但 152 上 wheel 安装的 TLE 模块**没有这些 API**
   （我们只重建了 libtriton，没有替换/重建 Python 侧）。
2. **DSA 数学算子在可重建的源码里没有 lowering**：
   - `third_party/tle/lib/Conversion/DsaToCore/DsaToCore.cpp` 只处理 `alloc/copy/bitcast`（→ memref）；
   - `third_party/xpu/lib` 与 `lib/`、`include/` 中**没有任何 DSA 代码**；
   - 因此 `dsa.mul/add/...` 在 XPU 上由谁降级成 DMA/向量运算，源码不可见——只可能在厂商预编译对象里。
3. **新 op 无法落到 XPU**：即使我们在 TLE 方言里加 `dsa.exp` + 绑定 + Python API，
   也会因为没有 lowering 而编译失败；而补 lowering 需要能看到
   `is_sdnn` / memref→SDNN DMA 的转换管线，这部分正是厂商预编译的那部分。

**结论：面向缓冲的 TLE 原语在本仓库的可重建范围内无法完成。** 阻塞点不是设计，而是：

- DSA 数学算子的 XPU lowering 在厂商预编译对象中（不可改、不可见）；
- 并且当前 wheel 的 Python 侧尚未暴露这些 API，说明该能力在 xpu3.6 版本里尚未发布。

### 若要继续，需要厂商提供其中之一

1. 在预编译对象中增加 `dsa.exp/sigmoid` 的 lowering（并在 Python 侧暴露 API）；
2. 提供 DSA→SDNN 转换管线的源码（让我们自己加 lowering）；
3. 或者提供 XTDK C++ 内核的 TLE-Raw xpu 后端（把 `exp_fwd_kl` 原样内联，绕开 Triton 数学 lowering）。

我们这边已经把前置条件全部准备好：
- DMA 通路实测 **1.17 TB/s**（8×1024 tile）；
- 硬件指令 `exp.f.rn` 精确可用（err = 0.0）；
- 设计、降级链路、验收用例（本文件第 2/3 节）与构建链（3 分钟增量重建）均已就绪。


## 8. B1 实施进展：拿到真实 IR，定位到"LM 已在用、数学却回 VR"（2026-11-06 22:30）

为看清瓶颈，重新构建了 libtriton 并**打开了 IR dump**（把 `TRITON_CONCEAL_IR` 改成可选，
新增 `-DTRITON_XPU_CONCEAL_IR_OFF=ON`；`triton_xpu.ttxir` / `.llir` 现在会落盘）。

### 实测 IR（sig_k，`tl.sigmoid(v)`，2048²）

TTXIR 关键片段（已省略地址计算）：

```mlir
%v_1 = "triton_xpu.alloca"() <{size = 8192}> : () -> tensor<8192x!tt.ptr<f32, 0>, #cluster1>
%v_5 = "triton_xpu.gm2lm"(%v_4, %v_1) <{syncMode = 2}>   // ★ GM->LM DMA 已经在做
%15  = tt.addptr %10, %i_3                                // 输出 GM 指针
llvm_xpu.mfence
%v_6 = "triton_xpu.load"(%v_5)                            // LM -> 向量寄存器
%16  = "triton_xpu.svsubf"(%cst, %v_6)                    // -x
%17  = triton_xpu.vsigmoidf %16                           // 融合已生效（我们的修复）
"triton_xpu.store"(%v_1, %17)                             // VR -> GM
```

### 关键结论（修正之前的假设）

1. **非 TLE 路径已经有缓冲化搬运**：`gm2lm` 把 8192 元素 DMA 进 LM，所以"GM→VR"的成本不是问题；
2. **真正的浪费是数学又回到了向量寄存器**：`triton_xpu.load` 把数据 LM→VR，
   `vsigmoidf` 的 lowering 再对每个 16 lane 调用一次 libdevice（内部 alloca + vstore + mfence +
   16×exp + vload），等于**在已经位于 LM 的数据上又做了一遍 VR↔LM 往返**；
3. 因此 B1 的正确实现不是"把 GM 搬进 LM"（已有），而是
   **把数学折叠进 LM 常驻的缓冲循环**：`load(LM) → unary 链 → store(GM)` 直接改写成
   "对 LM 缓冲做标量 `loadli.w → exp.f.rn → …` 循环，再从 LM 存回 GM"。

### 实施计划（B1 收敛版）

| 步骤 | 内容 | 文件 |
|---|---|---|
| 1 | 新 peephole pass `TritonXPUFoldMathIntoLM`：匹配 `triton_xpu.load(LM ptr) → 单链 unary 数学（vexpf/vsigmoidf/vtanhf/标量 op）→ store(GM/LM)` | `third_party/xpu/lib/Dialect/TritonXPU/Transforms/` 新文件 |
| 2 | 改写成对 LM 缓冲的 `scf.for` 标量循环，元素级直接用硬件指令（`loadli.w`/`exp.f.rn`/`add.f.rn`/`div.f.rn`/`storeli.w`），每块只在入口/出口各一次 mfence | 同上 |
| 3 | 在 `compiler.py` 的 non-SDNN 管线里、`gm2lm` 之后插入该 pass | `backend/compiler.py` |
| 4 | 用 TTXIR/LLIR dump 验证生成代码里不再有 `vstore_mask16`/`alloca` 的逐 16 lane 往返 | 已有 dump 能力 |

预期：Add+SiLU fp32 2048² 78.1 µs → **~50 µs（1.45×）**；sigmoid 76.5 → ~49 µs；
softmax 的三趟 exp 同样受益。

工期：2–3 天（pass 骨架 + LM 标量访存 lowering + 回归验证）。
前置条件已全部就绪：IR dump、构建链（3 分钟增量）、硬件指令精度验证、现有 gm2lm/alloca 基础设施。


## 9. B1 关键量化：上限 2.3×，但两条捷径均失败（2026-11-06 23:40）

### 9.1 上限测量（把 vsigmoidf 调用临时替换成恒等）

在 `VOpConvertLibCall<VSigmoidFOp>` 里加一个环境变量开关，跳过 libdevice 调用直接返回输入
（结果错误，仅测性能），2048² fp32：

| 版本 | sigmoid | silu |
|---|---:|---:|
| 基线（走 libdevice vsigmoidf） | 76.2 µs | 74.4 µs |
| **恒等（无数学）** | **33.2 µs** | **34.1 µs** |

**结论：数学部分占 43 µs，全部来自 libdevice 调用；访存通路（gm2lm→VR→store）本身只有 33 µs，
已经接近 copy 的 31.9 µs。B1 的理论上限是 sigmoid 33 µs / silu 34 µs（比厂商 eager 50.9 µs 还快）。**

### 9.2 捷径 1：把 exp 改成寄存器内的 extract/insertelement（失败）

用设备编译器验证：单独一个 `extractelement→exp.f.rn→insertelement` 的 16 lane 函数
**能编译成 16 条 exp.f.rn、0 条 vstore/loadli/mfence**（比厂商 libdevice 的全oca 版本更干净）。

于是把 libdevice 的 `vsigmoidf` 函数体替换成寄存器版本（用 `TRITON_LIBDEVICE_PATH` 注入，
无需重建 libtriton）：

| 版本 | sigmoid | silu |
|---|---:|---:|
| 原厂 libdevice | 76.2 µs | 74.4 µs |
| **寄存器版 libdevice** | **89.7 µs** | **92.1 µs** |

反而更慢 18%。原因：真实 kernel 里每核要处理 8 个向量 × 16 lane，80 个标量同时活跃，
VRF 压力导致编译器把值溢回到 LM，寄存器版失去了它单函数测试时的优势。

### 9.3 结论

- B1 的收益上限已被量化：**sigmoid 76.2 → 33 µs（2.3×）**；
- 所有"每 16 lane 内部优化"的捷径（libdevice 改写、inline asm、extract/insert）都失败；
- 唯一可行路径仍是 **tile 级 LM 常驻循环**（第 8 节计划）：让 8 个向量共用一个 LM 暂存、
  一次 mfence、128 条标量 exp，而不是每个向量各来一遍 alloca+fence+vstore+vload。
- 该实验用的临时开关已移除，libtriton 已恢复干净基线并重新部署（sigmoid 76.2 / silu 74.4 复测一致）。


## 10. B1 第三轮实现尝试：LLVM 方言层面的批量 LM staging（运行时崩溃，已回退）

### 实现内容

在 `VectorizedOpToLLVM.cpp` 新增 `VSigmoidFBatchedLMConversion`（benefit 高于原有
`VOpConversionLibCall<VSigmoidFOp>`），思路：

1. 一次 `LLVM::AllocaOp` 分配 `16 * numElems` 个 f32 的暂存（numElems = 每核向量数，实测 8）；
2. 把所有输入向量 `llvm.store <16 x float>` 进暂存；
3. 对 128 个标量做 `llvm.load → llvm.exp2（= exp.f.rn 自然指数）→ fadd 1.0 → fdiv 1/x → store`；
4. 把 8 个向量 `llvm.load` 回来。

编译通过（只用了 LLVM 方言的 alloca/gep/load/store/exp2）。

### 运行结果：设备端崩溃

```
CUDA error: unspecified launch failure
kl3ChannelCheckErrors failed, error set to 2097866, status= 719
```

即该 lowering 生成了非法设备代码。最可能原因：把 `<16 x float>` 直接 `llvm.store` 到栈地址
在 XPU 上不是合法的"向量→LM"路径（厂商代码用的是 `vstore_mask16.mz $0{mr1}, 0(ptr)` 这种
带寄存器银行修饰的专用指令），纯 LLVM 向量 store 被降成了非法访存。

已完整回退，libtriton 重新构建并部署，基线复测正常（copy 31.9 / sigmoid 76.2 / silu 74.5）。

### 三轮尝试汇总

| 尝试 | 结果 |
|---|---|
| 寄存器版 libdevice（extract/insertelement + 硬件 exp） | 89.7 µs，比基线慢 18%（VRF 压力溢出） |
| 逐 lane inline asm（后端的 VExpFOp asm lowering） | 80.9 µs，更慢 |
| LLVM 方言批量 LM staging（alloca + 向量 store + 标量循环） | **运行期崩溃**（非法向量→LM 访问） |

### 下一步（唯一剩下的正确路线）

必须在 **TTX 方言层**用后端自己的 LM 访存原语（`vstore_mask16`/`vload_mask16`/`loadli.w`/
`storeli.w` 或等价的 TTX op）实现批量 staging，而不是借用 LLVM 方言的 alloca+store。
这正是第 8 节 pass 计划里"步骤 2"的内容，需要：
- 在 `TritonXPUToLLVM` 里先确认 LM 地址空间（`!llvm.ptr<f32, 0>`）的向量 store/load 合法写法
  （可从 `LoadStoreOpToLLVM.cpp` 里现成的 `vstore_mask16`/`vload_mask16` 发射代码照抄）；
- 再把标量循环里的 `loadli.w`/`storeli.w` 用同样的 helper 发出，而不是 `llvm.load/store`。

上限依然是 33 µs（已量化），路线正确但需要按上述方式重写。


## 11. B1 第四轮：修正 GEP/对齐后仍然崩溃（结论：LLVM 方言路线不可行）

第二轮在 GEP 元素类型（改为向量类型）和 64B 对齐（`setAlignment(64)` / 标量 4B）上做了修正，
编译通过，但**仍然在设备端崩溃**：

```
CUDA error: unspecified launch failure   (status=719)
```

两轮都以相同方式崩溃，说明问题不在 GEP/对齐，而在**根本路线**：

- XPU 的 `<16 x float>` 向量写入 LM 并不是普通 `llvm.store`，需要带寄存器银行修饰的
  `vstore_mask16.mz $0{mr1}, 0(ptr)` 专用指令（对应 `vload_mask16` 读回）；
- 在 LLVM 方言层面用 alloca + 普通向量 load/store 复刻，生成的代码在设备上非法。

### 最终结论（B1）

| 轮次 | 方案 | 结果 |
|---|---|---|
| 1 | 寄存器版 libdevice（extract/insert + 硬件 exp） | 89.7 µs，慢 18% |
| 2 | 逐 lane inline asm lowering | 80.9 µs，更慢 |
| 3 | LLVM 方言批量 LM staging（alloca + 向量 store + 标量循环） | 运行期崩溃 |
| 4 | 同上 + 向量 GEP/64B 对齐修正 | 仍然崩溃 |

**要完成 B1，必须在 TTX 方言层实现**：新 pass 在 TTXIR 上把
`gm2lm → load(LM) → unary 链 → store(GM)` 改写成"对 LM 缓冲的标量数学循环"，
其中 LM 访问必须用后端已有的 `vstore_mask16`/`vload_mask16`/`loadli.w`/`storeli.w` 发射助手
（见 `LoadStoreOpToLLVM.cpp` 的 LM load/store lowering），不能走 LLVM 方言的 alloca 路线。
这已不是"改一个 lowering"能完成的，需要新 pass（预计 2–3 天）。

当前状态：所有实验代码已回退，libtriton 干净重建并部署，基线复测正常
（copy 32.1 / sigmoid 76.4 / silu 74.4）。


## 12. B1 第五轮：逐层 bisect，锁定崩溃原语（2026-11-07 00:40）

为了给新 pass 扫清障碍，做了逐层探针（都用环境变量开关，默认关闭；已全部回退）：

| 探针 | 内容 | 结果 |
|---|---|---|
| P1 | alloca(64B 对齐) + 向量 store + 向量 load（无标量） | ✅ 正常，**33.3 µs**（= 访存地板） |
| P2 | 再加标量 load + 标量 store（存回原值） | ✅ 正常，33.2 µs（注：该 load/store 对很可能被 LLVM DSE 消除） |
| P3a | 标量 load + **fadd** + 标量 store | ❌ **崩溃**（status=719） |
| P3 | 标量 load + exp + fadd + div + 标量 store | ❌ 崩溃 |

**精确结论**：向量↔LM 的批量 staging 本身完全可行（P1 证明，且几乎没有开销）——这比之前的
判断更乐观：**B1 的数据搬运部分不需要新原语，普通 LLVM 向量 store/load 就能用**。

崩溃只出在**标量（单 f32）对 LM 地址的 load-modify-store**：
- 单纯 load+store（值不变）能过——但很可能被优化器消掉，不能算真正验证；
- 一旦有数据依赖（哪怕只加一个 fadd），生成的设备代码就非法。

这与厂商 libdevice 的实现方式一致：它们在 LM 上做标量读写用的是 `loadli.w`/`storeli.w`
（带立即数偏移的专用指令），而不是通用 `llvm.load/store`。也就是说：

**新 pass 只需要解决"标量 LM 数学循环"这一个问题**——用后端已有的
`loadli.w`/`storeli.w` inline asm（`SVOp2ASMStrFP16` 那套体系）来实现元素级读写，
向量↔LM 的 staging 可以直接用普通 LLVM 向量 store/load（P1 已证明可行）。

这把 B1 的实现范围从"整体 2–3 天"收窄为"一天内可完成的标量 LM 访存 + 循环"，
且前置的 P1 探针（33.3 µs 地板）验证了收益上限没有变。


## 13. B1 第六轮：正确的 asm 方案（向量 staging 可行 + 标量 asm），但设备挂死（2026-11-07 01:20）

按第 12 节结论实现：向量 staging 用普通 LLVM 向量 store（P1 已验证），
标量数学用 inline asm（`loadli.w $0,0($1); exp.f.rn $0,$0; add.f.rn $0,$0,$2;
div.f.rn $0,$2,$0; storeli.w $0,0($1)`，约束 `=r,r,r`），前后各一次 LM mfence。

编译通过，但设备端报出**新的失败模式**：

```
CUDA error: wait for noc idle timeout     (status=299)
```

与之前的非法访存（status=719）不同，这次是 **NoC 等待超时/挂死**。可能原因：
1. 每核 128 个 side-effect asm 块 + 2 个 mfence，生成的代码使 NoC 队列卡死；
2. inline asm 的寄存器约束没有正确声明 clobber，编译器复用了正在等待的内存操作所用的寄存器；
3. asm 中 `loadli.w/storeli.w` 的地址来自 GEP 结果，可能与后端对 LM 地址的寄存器银行要求不符。

已完整回退，libtriton 重建并 md5 校验后部署；崩溃导致的两个卡死 python 进程已清理，
卡 2 恢复空闲（0% / 0MiB）。

### 六轮尝试完整记录

| 轮次 | 方案 | 失败模式 |
|---|---|---|
| 1 | 寄存器版 libdevice | 慢 18% |
| 2 | 逐 lane inline asm lowering | 慢 |
| 3 | LLVM 方言 alloca + 普通向量访存 + 标量循环 | 非法访存（719） |
| 4 | 同上 + 向量 GEP/64B 对齐 | 非法访存（719） |
| 5 | bisect（P1/P2/P3a） | 定位：向量 staging 可行，标量 LM RMW 是崩溃源 |
| 6 | 向量 staging + 标量 asm 数学 | **NoC 超时挂死（299）** |

### 结论

B1 的最后一块拼图是"标量 LM 访存循环"，但它不能靠裸 inline asm 塞进现有 lowering：
需要复用后端**已验证的 LM 标量访存 lowering 路径**（`XPULoadOpConversion` /
`XPUTritonStoreOpConversion` 里对 `ptr<f32,0>` 的标量读写），并让 pass 生成
TTX 层的循环，而不是在 LLVM 方言里手工拼 asm。

这已经超出"改一个 lowering"的范围，需要新 pass + 与后端 LM 访存 lowering 的协作，
属于后续独立工作项。当前所有实验已回退，产物库保持干净基线。


## 14. B1 第七轮：按厂商 IR 的精确指令拼写实现（设备挂死，卡 2 被卡死）

### 关键证据（来自厂商 libdevice 原始 IR）

把 libdevice 反编译成 `.ll` 后，`vsigmoidf` 的真实写法是：

```llvm
%vla33 = alloca [16 x float], align 64
%0 = bitcast <16 x float> %input to <16 x i32>
call void @llvm.xpu.vstore_mask16_mr1(<16 x i32> %0, ptr %vla33, i32 0)
call void @llvm.xpu.mfence.v2(i32 1)
%1 = load float, ptr %vla33, align 64
%add.ptr3 = getelementptr inbounds i8, ptr %vla33, i32 4
...
```

即：**向量→LM 必须用 `llvm.xpu.vstore_mask16_mr1` 专用 intrinsic**（不是普通 `store <16 x float>`），
标量读写是普通 `load/store float`（i8 偏移），fence 是 `llvm.xpu.mfence.v2(i32 1)`。
声明签名：
```
declare <16 x i32> @llvm.xpu.vload_mask16_mr1(ptr, i32)
declare void       @llvm.xpu.vstore_mask16_mr1(<16 x i32>, ptr, i32)
```

### 本轮实现

严格按上述拼写实现批量版：8 个向量各一次 `vstore_mask16_mr1` → 一次 mfence →
128 次标量 `load → exp.f.rn → add 1.0 → div 1/x → store` → 一次 mfence →
8 次 `vload_mask16_mr1` + bitcast。编译通过。

### 结果：设备挂死

运行无输出、240s 超时；上一轮同类尝试报 `wait for noc idle timeout (299)`。
**卡 2 被本次实验卡死**（xpu-smi 显示 0% 但设备无法再初始化），
换卡 3 验证部署库正常：copy 32.0 / sigmoid 76.0 / silu 74.3 µs。

### B1 最终状态（七轮）

| 轮次 | 方案 | 结果 |
|---|---|---|
| 1 | 寄存器版 libdevice | 慢 18% |
| 2 | 逐 lane inline asm | 慢 |
| 3–4 | LLVM 方言 alloca + 普通向量访存 + 标量循环 | 非法访存 719 |
| 5 | bisect 探针 | 定位标量 LM RMW 是崩溃源 |
| 6 | 向量 staging + 标量 inline asm | NoC 挂死 299 |
| 7 | 按厂商 IR 用 `vstore_mask16_mr1`/`vload_mask16_mr1` intrinsic | 设备挂死，卡 2 被卡死 |

**结论**：B1 的指令拼写已经 100% 明确（有厂商 IR 为证），但在现有 lowering 里直接发射这些
intrinsic 会导致设备挂死——大概率需要与后端 LM 地址/寄存器银行管理协同（或该 intrinsic 只能
在设备编译器特定上下文中使用）。继续在 lowering 层尝试风险很高（每次可能报废一张卡），
建议交给后端/厂商团队按本文档的 IR 证据实现，或等有专门的 TTX pass 工作项时再做。

当前：库已回退并 md5 校验部署，卡 3 验证正常；**卡 2 需主机侧重置后才能再用**。


## 15. 卡 2 已复位恢复（2026-11-07 05:00）

管理员权限下执行：

```bash
sudo xpu-smi -r -i 2
# XPU 00000000:1C:00.0 was successfully reset.
```

复位后卡 2 实测恢复正常且与基线完全一致：

| 指标 | 卡 2 复位后 | 基线（卡 3） |
|---|---:|---:|
| copy | 32.0 µs | 32.0 µs |
| sigmoid | 76.2 µs | 76.0 µs |
| silu | 74.3 µs | 74.3 µs |
| add2stream | 37.7 µs | 37.4 µs |

**重要经验**：因 lowering 试错导致的设备 wedge（NoC 超时/非法访存）可以靠
`sudo xpu-smi -r -i <id>` 恢复，不必重启主机。后续做同类实验时，
先确认有 root 复位通道，并在实验前后各记录一次基线。


## 16. B1 其他可能路径的验证（2026-11-07 05:40）

在七轮失败之后，又验证了两条"绕过 lowering"的低风险路径，均不可行：

### 16.1 去掉 vsigmoidf 里的 mfence（patch libdevice）

想法：每次调用都有 `vstore → mfence → 16 标量 load`，每 16 lane 一次 fence，
若能去掉 fence 可能省下可观时间。用 `TRITON_LIBDEVICE_PATH` 注入"删除 fence"的 libdevice
（不改任何 C++），实测：

```
CUDA error: unspecified launch failure (status=719)
```

→ **fence 是必须的**（否则标量读与在途 vstore 竞争，非法访存）。卡 3 复位后恢复。

### 16.2 fp16 原生 sigmoid（利用 32 lane 的 f16 向量变体）

后端有 `VSigmoidFOp` 的 f16 变体（`Dv32_DF16_`，一次 32 个元素），理论上能把调用次数减半。
实测 fp16 Add+SiLU 保持 f16 数学（不做 f32 提升）：**编译失败**
（Triton 侧 `tl.sigmoid` 不接受 f16 输入），f32 提升版本仍是 15.2 / 21.0 / 92.6 µs。

### 16.3 结论：还剩哪些可能

| 路径 | 可行性 | 说明 |
|---|---|---|
| **TTX pass**（复用后端 LM 访存 lowering） | ★★★ 推荐 | 唯一不依赖裸 lowering 的做法，2–3 天 |
| 请厂商提供批量向量数学入口（如 `vsigmoidf_n(ptr,n)`） | ★★★ 推荐 | 后端只需每核调用一次，libdevice 内部批量处理 |
| TLE 面向缓冲原语 | ✗ | 团队明确不支持；且 DSA 数学 lowering 在厂商预编译件里 |
| libdevice 打补丁（去 fence/改寄存器版/换全局缓冲） | ✗ 已证伪 | fence 必需；寄存器版更慢；全局缓冲跨核共享会竞争 |
| fp16 原生数学 | ✗ 已证伪 | Triton 侧不支持 f16 sigmoid |
| 多项式近似 | ✗ 已证伪 | 112 µs，且 silu 超容差 |
| 在 lowering 里手写批量 staging | ✗ 七轮失败 | 生成设备代码会被拒绝/挂死 |
