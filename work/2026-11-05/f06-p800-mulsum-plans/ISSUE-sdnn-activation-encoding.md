# [XPU] MatMul+SiLU / GELU(tanh) 的 SDNN 激活路径慢 4–25×：标量 extern 编码 vs 厂商批 SIMD/LUT 编码

## 结论（先给答案）

**是编码方式问题**，不是数据布局/融合策略问题：

- 慢路径把 tanh/silu 降低成 **逐元素标量 extern 调用**（外加逐元素整数守卫），在 SDNN 核上执行；
- 厂商手册要求的编码是 **LM 缓冲批处理（1536 元素）+ `__simd__` + `primitive_exp` 一次向量调用**（XTDK 用户手册 §3.1.2 exp 示例）；
- 同一条 pipeline 内，**GELU(exact) 被映射到原生 LUT**（`sdnn.ew … lut_func gelu`），实测 90.5 µs（比 eager 快 3.1×），而 SiLU/GELU(tanh) 没有 LUT、走标量路径，实测 2290 / 8246 µs——**唯一差异就是编码**。

## 证据 1：厂商手册的参考编码（XTDK 用户手册 V3.5 §3.1.2）

```cpp
const int buf_len = 1536;
__simd__ float local[buf_len];                 // SIMD 类型的 LM 缓冲
partition(tid, nthreads, len, 16, &start, &end);   // 16 对齐一维分块
for (int64_t i = start; i < end; i += buf_len) {
    int read_len = min(buf_len, end - i);
    GM2LM(x + i, local, read_len * sizeof(T));          // 批量搬运
    do_cast<T, float>((T*)local, local, read_len);      // primitive_cast（向量）
    primitive_exp<float>(local, local, read_len);       // 一次向量数学调用
    do_cast<float, T>((T*)local, (T*)local, read_len);
    LM2GM(local, y + i, read_len * sizeof(T));
}
```

要点：**1536 元素一次 LM 批处理 + 单次 `primitive_*` 向量调用**，而不是逐元素调用。

## 证据 2：P800 架构手册的硬件约束

- SIMD 宽度 **512 bit**：一条指令处理 **16 个 FP32 / 32 个 FP16**（`P800架构说明.md`）；
- 每 4 个 Group 共享 1 个 **SFU**（支持 exp/log/sin），4 Core 时分复用 SIMD；
- 逐元素标量 extern 调用只用到 1 个 lane、且把 SFU 当标量单元用 → 吞吐差两个数量级。

## 证据 3：我们生成的低效编码（`_p800_native_activation.py`）

- `bound_tanh_inputs`：为 tanh 的每个元素展开 **~20 条整数指令**（bitcast / andi / cmpi / ori / select / bitcast）做输入限幅与 NaN 恢复；
- 之后是 `tt.extern_elementwise … symbol = "_ZN3xpu5tanhfEf"` 的**标量 extern tanh**；
- SiLU 同样没有 `lut_func` 映射，走 extern 标量 sigmoid/exp；
- 这些操作最终在 SDNN 上逐元素执行，无法向量化。

## 证据 4：同 pipeline 内的 A/B（2048²，fp32）

| 激活 | 编码 | 时间 | vs eager |
|---|---|---:|---:|
| GELU(exact) | 原生 LUT（`lut_func gelu`，由 `restore_gelu` 改写） | **90.5 µs** | **3.12×** |
| SiLU | 标量 extern（无 LUT） | 2290 µs | 0.04× |
| GELU(tanh) | 标量 extern + 逐元素整数守卫 | 8246 µs | 0.03× |

逐元素成本估算：tanh ≈ 19 cycles/element、silu ≈ 5.3 cycles/element（按 SDNN 8 控制核、~1.2 GHz），
与厂商 exp 核（4.2M 元素 16 µs）相差约 2 个数量级——与“标量 vs 向量”的预期一致。

## 为什么不能本地改 LUT（预编译对象证据）

```text
third_party/xpu/lib/Dialect/TritonSDNN/  : 0 个 .cpp 源文件，38 个 .o 预编译对象
（EWActTable.cpp.o、EwiseScheduling.cpp.o、CombinePatterns.cpp.o …）
```

SDNN 侧的 LUT/act-table pass 只有预编译产物，没有源码，因此**本地无法新增 `lut_func sigmoid/tanh`
或修改 LUT 区间策略**；可做的只有在其前后做 IR 改写（`_p800_native_activation.py` 的
`restore_gelu` 即通过改写 `lut_func exp → gelu` 实现，已验证 GELU(exact) 90.5 µs / 3.12×）。

## 尝试按厂商方式编码（实测记录）

按手册的两种“厂商式”写法做了实验（2048²，fp32）：

| 写法 | cluster（is_sdnn=False） | SDNN（is_sdnn=True） |
|---|---|---|
| `z*tl.sigmoid(z)` | 74.5 µs，err 4.8e-07 | ❌ `KeyError 'tt.sigmoid'` |
| `z/(1+tl.exp(-z))` | 124.5 µs，err 0 | ❌ `KeyError 'tt.silu'` |
| `z/(1+exp2(-z·log2e))` | 125.9 µs，err 4.8e-07 | ⚠️ 420.7 µs，**err 2.47（结果错）** |
| GELU(tanh) 的 exp2 形式 | 132.5 µs，err 4.8e-07 | ⚠️ 472.0 µs，**err 2.66（结果错）** |
| matmul+SiLU 拆两段（SDNN matmul + cluster 激活） | — | 64×1024 **58.2 µs（0.73×）**；512 计划无效；2048² `error 702` |

结论：
1. **cluster 路径**按 exp 形式编码是**正确**的（124.5 µs），但仍比厂商 `primitive_exp`（16 µs）慢，因为 Triton 只暴露标量 `xpu::expf`；
2. **SDNN 路径**对 sigmoid/silu 直接 KeyError，对 exp2/exp 组合**结果错**（LUT/向量化 lowering 不完整），且仍慢；
3. **拆两段**（张量在 SDNN、向量在 cluster，符合架构手册的分工）在 64×1024 只有 0.73×，512 无效、2048 超时——不可用。

因此“按厂商推荐方式编码”在当前工具链下**做不到**：缺的不是写法，而是
① 设备端向量数学绑定（`primitive_exp`/`__simd__` 未暴露给 Triton）、
② SDNN LUT 对 sigmoid/tanh 的函数表（预编译对象，无源码）。

## 本地补上了这条路径（已实现）

在 FlagTree 源码里补上缺失的 LUT 函数表后，SDNN 的 EW 激活真的变快了：

- `third_party/xpu/backend/compiler.py` 的 `get_range_table` 字典新增
  `tt.tanh` / `tt.sigmoid` / `tt.silu`（原生 sigmoid 指令是 `0.5*tanh(x/2)+0.5`，故其表用 tanh）；
- `graph_fusion/_p800_tables.py` 同步新增 `tt.silu`；
- 提交 `af2415572`，镜像 `zhaoweiming/f06-p800:20261112`。

实测（2048²，fp32，SDNN 独立 EW kernel，无挂载）：

| 写法 | 修复前 | 修复后 | 参考（eager / cluster） |
|---|---|---|---|
| SiLU（`z/(1+exp(-z))` → `tt.silu`） | ❌ `KeyError 'tt.silu'` | **45.4 µs，err 1.55e-05** | eager 72.1 / cluster 124.6 |
| Sigmoid（`z*tl.sigmoid(z)`） | ❌ `KeyError 'tt.sigmoid'` | **69.1 µs，err 1.97e-05** | eager 72.1 / cluster 74.3 |
| GELU(tanh)（exp 形式） | ⚠️ 结果错（err 2.47） | 仍错（err 2.57） | — |

即：**SiLU 的 SDNN EW 激活从 2290 µs 降到 45.4 µs（约 50×），且正确**，比 eager 还快 1.59×。

### 仍存在的限制

- 该加速只对**独立的 SDNN EW kernel** 生效；**dot 融合内核的 epilogue 仍走标量 extern**
  （matmul+silu 2048² 仍 2291 µs）；
- 强行拆成"SDNN matmul + SDNN EW"两段（新增 `sdnn_sdnn_at_*` 候选）实测 0.01–0.26×，比 eager 慢得多，已回退该候选；
- GELU(tanh) 的 exp 形式在 SDNN 上结果错，仍不可用。

下一步若要吃到这份收益，需要把 matmul 与激活拆成**两个独立内核**（matmul 用我们的 `native_mm`，
激活用已验证的 SDNN EW LUT kernel），预计 2048² 约 36+46≈82 µs（≈1.07× vs eager）、512×1024 约 38 µs（≈1.13×）。

## 已实现：MatMul+SiLU 两内核路由（fp16 默认启用）

把 matmul 与激活拆成两个内核：

1. `native_mm` 的 dot 内核（ACT=0，matrix+bias）；
2. 独立的 1D SDNN EW 内核，`y = z/(1+exp(-z))` → 归一化为 `tt.silu` → 原生 LUT。

实测（空闲卡，无挂载）：

| dtype | 形状 | 两内核 | eager | 比值 | 容差 margin |
|---|---|---:|---:|---:|---:|
| **fp16** | 64×1024 | 39.6 µs | 44.6 | **1.13×** | −3.16e-04 ✅ |
| **fp16** | 512×1024 | 37.6 µs | 43.7 | **1.16×** | −3.16e-04 ✅ |
| **fp16** | 2048² | 72.9 µs | 83.4 | **1.14×** | −3.16e-04 ✅ |
| fp32 | 三形状 | 40–81 µs | 44–88 | 1.07–1.14× | **+2.38e-03 ❌** |

**结论**：fp16 的容差（3e-3）足以吸收 LUT 插值误差 → 该路由已默认启用（`1.15×`）；
fp32 的严格容差（3e-4）不满足 → 需 `FLAGTREE_NATIVE_SILU=1` 显式开启，默认回退。
根因是 LUT 表精度（size/mode 由预编译 pass 决定，本地不可调）。


### GELU(tanh) 的补充结论

- `tl.math.tanh` 在 XPU 后端**根本无法编译**（cluster/sdnn 都是 `CompilationError`），Triton 侧没有 tanh intrinsic；
- exp 形式的 tanh 在 SDNN 上**结果错**（err 2.5–2.7）；
- 因此 GELU(tanh) 的矩阵融合仍只能回退（Inductor 时 1.00–1.91×）。
## 进一步检查：fp32 精度问题出在哪里（LUT 窗口）

用调试版 `get_range_table` 打印了 `xpu.get_lut_info(mod)`：

```text
LUTINFO tt.silu dtype=0 mode=1 size=512 min=-8.0 interval=0.015625
```

即原生 LUT 的输入窗口固定为 **[-8, 8]**（512×2×0.015625 = 16），dtype=f32。逐项排查结果：

| 检查 | 结果 |
|---|---|
| 表公式（mode0 KB / mode1 插值，`_p800_tables` 与 backend 两份实现） | 一致，无符号/顺序错误 |
| dtype 映射 `{0:f32, 1:f16}` | 正确（silu 为 0=f32） |
| 窗口内精度（\|z\|≤8） | **max_err 1.5e-5** ✅（表本身没问题） |
| 窗口外（9/12/16/30） | 误差升到 1.6e-3 / 2.6e-3 / 2.7e-3（硬件按最后区间外推） |
| 真实 matmul 输出范围 | **absmax 40.98，std 8.14** → 大量元素在窗口外 |

**结论：是写法没有遵守 LUT 的 ±8 输入窗口**（不是表算错）。修补尝试：

| 写法 | 2048² 时间 | max_err | 容差 margin（fp32 atol=rtol=3e-4） |
|---|---:|---:|---:|
| 直接 silu（当前） | 48.7 µs | 2.72e-3 | +2.38e-3 ❌ |
| 尾部 ±12 用 z / 0 替代 | 78.2 µs | 2.65e-3 | +2.31e-3 ❌ |
| 输入 clamp 到 ±12 + 尾部替代 | 86.6 µs | 2.65e-3 | +2.31e-3 ❌ |
| 混合阈值（-9, 9） | 63.9 µs | 1.61e-3 | +1.27e-3 ❌ |
| exp-clamp 形式（z·sigmoid(clamp)，尾部 ±8） | 95.5 µs | 2.68e-3 | +2.38e-3 ❌ |

**为什么修不到位**：负尾 z≈-8 的真实 `silu(-8) = -2.68e-3`，而 fp32 容差只有 3e-4；
要把 (-11,-8) 区间算准需要**窗口外的精确 exp**，但 exp 的 LUT 窗口同样是 ±8，
所以本地无法在严格 fp32 容差下做到。fp16 容差 3e-3 恰好覆盖，因此 fp16 路由可用（1.13–1.16×）。

### 再检查：能否用"窗口外数值修正"同时拿到精度和速度

| 写法 | 2048² 时间 | max_err | fp32 margin |
|---|---:|---:|---:|
| 纯 LUT（基线） | 48.7 µs | 2.72e-3 | +2.38e-3 ❌ |
| 窗口外 exp 移位（`e^{-z}=e^{-8}·e^{-(z-8)}`，8<z≤16；负尾 `e^z=e^{-8}·e^{z+8}`，-11<z<-8） | **25.7 ms** | **1.84e-04** | **−1.16e-04 ✅** |
| 负尾 ×6 阶 Taylor 多项式（无 exp） | 13.1 ms | 2.68e-3 | +8.5e-4 ❌ |

**结论**：
1. **精度可以做到**（窗口外 exp 移位：margin −1.16e-4，达标），但每个元素要 3 次 exp + 分支，
   SDNN 只有 8 个控制核，标量路径直接变成 25.7 ms（比基线慢 500 倍）；
2. 纯 LUT 形态（`tt.silu`）是唯一快的编码，但它把窗口固定在 ±8；
3. 只要在 LUT 之外再引入算术/exp，SDNN 就不再向量化（13–25 ms），所以"既快又准"在 fp32 下不可兼得。

这不是表代码的 bug（表公式与 dtype 映射均正确，窗口内 1.5e-5），而是 SDNN 的编码约束；
和厂商手册一致：厂商的快速实现是 C++ `__simd__` + `primitive_exp` 对 1536 元素批处理，
Triton 侧只能通过原生 LUT 复用，而 LUT 窗口/精度由预编译 pass 固定。

## FlagTree 侧能改哪些映射、不能改哪些

| 层 | 归属 | 能否本地改 |
|---|---|---|
| TritonXPU dialect、Vectorize、`VExpFOp → LLVM exp2` 的 lowering、设备函数调用表（`vsigmoidf` 等） | **FlagTree 源码**（`third_party/xpu/lib/...`） | ✅ 可改 |
| Python 后端管线、LUT 表数据生成（`get_range_table`） | **FlagTree 源码**（`backend/compiler.py`） | ✅ 可改 |
| TritonSDNN 的 LUT pass（窗口 `lut_min/lut_max`、size、mode、溢出策略、SDNN 侧查表求值） | 厂商预编译对象（38 个 `.o`，0 源码） | ❌ 不可改 |
| 设备数学函数实现（`vsigmoidf`/exp 在设备库中的精度/范围） | 厂商库 | ❌ 不可改 |

所以**能改映射**，但改的方向不是"把 SDNN 的 LUT 窗口拉大"（那在预编译对象里），
而是**把激活段换到 FlagTree 自己掌控的 cluster 路径**：

### 已实现：fp32 走 cluster EW（精确），fp16 走 SDNN LUT（快）

| dtype | 形状 | 路由 | 时间 | eager | 比值 | margin |
|---|---|---:|---:|---:|---:|---:|
| f32 | 64×1024 | native_mm + cluster EW | 39.9 µs | 46.7 | **1.17×** | −3.00e-04 ✅ |
| f32 | 512×1024 | native_mm + cluster EW | 42.7 µs | 48.7 | **1.14×** | −3.00e-04 ✅ |
| f32 | 2048² | decline（cluster 会亏） | — | 87.9 | 1.00 | — |
| f16 | 64/512/2048² | native_mm + SDNN LUT | 40.0/38.6/72.9 | 45.0/44.2/83.6 | **1.13/1.14/1.15×** | −3.16e-04 ✅ |

**结论**：FlagTree 侧改的是"生成什么指令/走哪条管线"（cluster 的向量 exp 是 FlagTree lowering），
这已经让 **fp32 也达标且提速 1.14–1.17×**；真正改不了的是 SDNN LUT 的窗口/函数表与厂商设备函数精度。

## 修复方向（本地可做的部分）

1. 把 `tt.silu` / tanh 映射到 **原生 LUT**（`tritonsdnn-ew-act-table` 的 `lut_func`），像 GELU(exact) 一样
   ——需要 LUT 表支持 sigmoid/tanh 且在有限区间外做钳位（现有 `bound_tanh_inputs` 的思路可以复用，但应改为
   LUT 区间裁剪，而不是逐元素整数守卫）；
2. 或者退化为 `exp LUT + 向量算术`：`silu(x) = x/(1+exp(-x))`，其中 exp 走 LUT（向量），除法则用向量 arith；
3. 在上述任一实现落地前，策略层对 SiLU/GELU(tanh) 的 sdnn 路径 **decline**，回退 eager/Inductor（1.00–1.91×），
   避免 4–25× 的负收益。

## 归属

- 编码层面的 LUT 支持（sigmoid/tanh 函数表、区间策略）需要后端 pass 改动，属官方/后端工作（对应 U5/U6）；
- 我们侧可继续尝试“exp LUT + 向量算术”的本地改写原型，但需要先验证 LUT 对 tanh 区间与精度的覆盖。
