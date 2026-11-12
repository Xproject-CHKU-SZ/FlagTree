# Inductor 整核替换 + FlagTree autotune（tle.dsa 行归约）

## 做了什么

1. 新增 `python/triton/experimental/graph_fusion/_p800_dsa.py`
   - `match(gm, inputs)`：识别 `sum(-1)` 单节点区域（以及 `mul → sum(-1)` 两节点区域），要求 2D 输入、f32、形状可被 tile 整除。
   - `compile(spec, inputs)`：返回 `run(xs) -> (out,)`，内部发射文档规定的 `tle.dsa` 形态：
     `alloc([ROWS,COLS], dtype, UNI_SRAM)` → 循环内 `dsa.copy(..., sizes=[ROWS,COLS])` →
     `to_tensor().to(f32)` → per-column 累加器 → `sum(axis=1)` → 2D `store`。
   - autotune：候选 tile `(64,256,8)、(64,512,8)、(32,256,8)、(128,256,8)、(128,128,8)、(256,256,8)`，
     逐个编译、与 FP32 参考对拍、CUDA event 取中位数，选最快且正确的。
   - 缓存：`FLAGTREE_DSA_CACHE` → 否则 `TRITON_CACHE_DIR` 下的 `flagtree-dsa-autotune/<sha>.json`，
     记录 `rows/cols/warps/us/version/measured_at`，命中即跳过调优。
2. `_resource_runtime.prepare_regions` 挂接：`resource == 'sdnn'` 且匹配成功时走整核替换，
   否则保持原生 `compile_region`（其余资源/图型零影响）。

## 实测（P800 7 号卡，2048×2048）

| 用例 | 原生 `cluster_sdnn_at_1` | 整核替换后 |
|---|---:|---:|
| f32 精度 | 失败（max_abs 159.3） | 正确 3.8e-5 |
| f32 整条路线耗时 | 2251 µs | **104 µs**（其中归约核 22.25 µs） |
| f32 第二次运行 | — | `autotune=cached`，首调 4.4 s → 2.6 s |
| f16 | 失败（159.3，11.2 ms） | 回落到原生（尚未支持） |

证明链路：`compile_candidate(gm, inputs, cluster_sdnn_at_1)` →
`prepare_regions` → 匹配到 `sum` 区域 → 发射 dsa 核 → `emitted=[null, "tle.dsa"]`，
tiles 从缓存读出，`launch_count` 仍为 1（单核审计通过）。

## 当前边界

- 仅 f32：`tle.dsa` 的 staging buffer 不接受 bf16，f16 仍未通过验证；其它 dtype 自动回落原生路径。
- 仅整除形状：`M % ROWS == 0` 且 `N % COLS == 0`；带尾块需要改用 `sizes` 路线（未实现，先回落）。
- 只替换归约区域；乘法区域仍由 Inductor 生成（`cluster` 或 `sdnn` 由候选决定）。

## 下一步

1. f16/bf16：按 `_DSA_MOVE_DTYPE`/`_DSA_BUF_DTYPE` 的位宽思路走 f32 中转，或在切片上用 `sizes` 处理尾块。
2. 尾块支持：把 `rt/ct` 传给 `sizes`，归约时对 `to_tensor` 的越界列清零（需先验证不会触发文档里的 mask 缺陷）。
3. 把 `sdnn_sdnn_at_1`（乘法也走 SDNN）纳入整核替换，避免乘法区域走朴素 codegen 的多行缺陷。

## 追加：位宽中转与尾块（dsa-v3）

**位宽中转**：f16/bf16 走 `int16` staging buffer（`tle.dsa` 不接受 bf16 元素），
到位后在寄存器里还原：
- f16：`bits.to(tl.float16, bitcast=True).to(tl.float32)`
- bf16：`(bits.to(tl.uint16).to(tl.uint32) << 16).to(tl.float32, bitcast=True)`（bf16 是 f32 高 16 位）

**尾块**：行方向 `sizes=[row_tail, COLS]` + 带 mask 的 2D store；列方向仍要求整除
（staging buffer 静态满宽，文档明确归约里的 mask 不可靠）。

### 结果（2048×2048，`cluster_sdnn_at_1`，7 号卡）

| dtype | 原生 | 整核替换 | 说明 |
|---|---:|---:|---|
| f32 | 2251 µs（且算错） | **103 µs**，3.8e-5 | 归约核 22.0 µs |
| f16 | 11248 µs（且算错） | **1133 µs**，0.030 | 归约核 1053 µs（int16 DMA 慢 48×） |
| bf16 | 11442 µs | 回落原生 | kernel 单独跑正确 4.96e-5，pipeline 里出现非有限值，暂关闭 |

尾块验证（直接调用核）：`m=2000 f32` 3.8e-5、`m=2000 f16` 4.6e-5、`m=2047 f32 rowsum` 3.8e-5，全部正确。

### 待办

1. f16 的 int16 DMA 比 f32 慢约 48×：下一步试把两个 f16 打包进一个 f32 字（4 字节搬运）。
2. bf16 在 prepared-region 上下文里出现非有限值（单独跑正常），需定位是 shift 重解释还是缓冲区未填满。

### bf16 非有限值的判别结果

判别实验（`dbg_bf16_ctx.py` + 管线内打点）：

1. 同一组数据（cluster 乘法产出的乘积语义值）单独跑 → 正确 1.53e-5；
2. 同样数据在 `target_scope()` 下跑 → 正确 1.53e-5；
3. 管线里跑 → 输出的参考值本身就是 NaN，且**输入张量已有 53,295 个非有限值**。

结论：不是 shift 重解释，也不是缓冲区没填满，而是**上游 cluster bf16 乘法写出的乘积张量已经含 NaN/Inf**。
我们的核与参考在同一份干净输入上一致；bf16 继续留在原生路径，待上游修复。

## 形状静态化：让 SDNN 乘法不再被拒

**原因**：被拒的乘法核里，取模周期和 mask 上界都是运行时值（`xnumel`），而 #1458 的
`CaptureRank1Wrap` 只接受“常量 PERIOD + 常量 LENGTH”的形态，于是 fail closed。

**做法**：乘法区域也用整核替换，把 `N / ROWS / COLS` 全部写成 `tl.constexpr`，grid 由 host 算，
kernel 里没有 `xnumel` 这种运行时入参，也就没有取模可被拒绝：

```python
@triton.jit(do_not_specialize=['a_ptr','b_ptr','o_ptr'])
def _dsa_ew_kernel(a_ptr, b_ptr, o_ptr, N: tl.constexpr, ROWS: tl.constexpr,
                   COLS: tl.constexpr, BROW: tl.constexpr):
    ...
    tle.dsa.copy(v * other, o_ptr + idx, sizes=[ROWS, COLS])
```

**结果（2048×2048 f32，`sdnn_cluster_at_1`）**：

| 项 | 值 |
|---|---|
| 乘法区域（SDNN，tle.dsa） | 25.97 µs，tile 64×512 |
| 整条路线 | **89.1 µs**，max_abs 3.05e-5 |
| 之前 | SDNN 乘法核编译失败，该候选不可用 |

f16/bf16 的乘法替换尚未启用（f32 staging buffer 限制；bf16 上游乘法本身仍产出 inf）。

## f16/bf16 乘法整核替换

乘法区域也走位宽中转：`int16` staging buffer → 还原为 f32 → 相乘 → 窄化回原 dtype 的位型再写回。
bf16 的窄化不能用 `.to(tl.bfloat16)` 的 32→16 位转换（后端报 `Cannot bitcast data-type of
size 32 to data-type of size 16`），改为位运算 RNE：

```python
u = prod.to(tl.uint32, bitcast=True)
u = (u + 0x7FFF + ((u >> 16) & 1)) >> 16
res = u.to(tl.uint16).to(tl.int16, bitcast=True)
```

结果（2048×2048，`sdnn_cluster_at_1`，乘法区域走 SDNN）：

| dtype | 乘法区域 | 整条路线 | 精度 |
|---|---:|---:|---|
| f32 | 25.97 µs (64×512) | 88.6 µs | 3.05e-5 |
| f16 | 1836.6 µs | 1941.1 µs | 0.062 |
| bf16 | 5015.0 µs (128×128) | 5107.9 µs | 0.504 |

低精度比 f32 慢 70–190×，根因是 2 字节搬运路径 + 位运算还原；f32 才是这条路的甜点。

## bf16 上游乘法问题定位

原生 Inductor 的 bf16 广播乘法核：`load(bf16) -> .to(f32) -> .to(bf16)`，产出的核在
finite 输入上出现 **130 个 ±inf**（eager 为 0），分布是 65 行 × 48 列、列号呈 16 的步长
（166/182/360/376/424/440…）。样例：`a=0.633, b=0.934` 的位置输出 `-inf`，说明是
**load 或 f32→bf16 转换读到了错误数据**，不是数值溢出；与我们的资源管线无关（同图单独跑
cluster 资源即可复现，eager 干净）。

现在这条路线已由整核替换绕开，那个坏核不再执行；但原生路径本身的缺陷仍需厂商侧修复。

### bf16 乘法缺陷：进一步定位到 coordinate-descent 调优

| 条件 | 非有限值 |
|---|---:|
| eager | 0 |
| 强制 XBLOCK 1024–8192 × warps 4/8/16 × stages 1/2（逐个配置） | **全部 0** |
| 默认 autotune（`coordinate_descent_tuning=True`） | 130 / 128 / 135（每次编译不同，进程内稳定） |
| `max_autotune=False` | 135 |
| **`coordinate_descent_tuning=False`** | **0** |

结论：不是 bf16 的 load/cast 代码生成问题（所有强制配置都干净），而是 **Inductor 的
coordinate-descent 搜索**在这个 bf16 EW 核上引入了损坏——计数随搜索变化、进程内确定，
指向搜索期间的基准启动（输出缓冲复用/竞态）或选中了写回异常的配置。

**已落地的规避**：`_resource_codegen.compile_region` 检测到任一输入为 bf16 时关闭
`coordinate_descent_tuning`。验证：同一张图 `eager 0 / cluster 0`（原 130）。

### bf16 缺陷根因确认：XBLOCK≥4096 的 bf16 pointwise 核算错

冷缓存（真正清空 inductor/triton cache）后强制单一配置复测：

| dtype | XBLOCK | 非有限值 |
|---|---:|---:|
| bf16 | 4096 | **61,349** |
| bf16 | 8192 | **80,765** |
| bf16 | 2048 / 1024 | 0 |
| f32 | 4096 | 0 |
| f16 | 4096 | 0 |

结论：**搜索空间里确实有坏配置**——bf16 pointwise 在 XBLOCK≥4096 时算错，而 2048 及以下正常，
f32/f16 同尺寸正常。coordinate-descent 用耗时选配置（4096 最快约 0.256 ms，2048 约 0.31 ms），
又没有任何正确性校验，于是稳定挑中坏配置。

CD 的 trial 现在能看到了（冷缓存 + `CoordescTuner.call_func` 钩子）：12 次左右，
XBLOCK ∈ {1024, 2048, 4096}、warps ∈ {1,2,4,8,16}，最优落在 4096。

**修法**：bf16 把 XBLOCK 上限压到 2048（或在 tuner 里加正确性门控）。
注意：我目前在 `generated_resource` 里对 `CoordescTuner.get_neighbour_values` 的裁剪
没有生效（trial 仍出现 4096），说明 CD 的候选不是全部经这条路径生成；在修好之前，
bf16 仍保持“关闭 CD”的规避。

### bf16 失效边界与性质

冷缓存强制单配置（2048×2048 广播乘，随机种子固定）：

| dtype | XBLOCK | 非有限值 | 备注 |
|---|---:|---:|---|
| bf16 | 1024 / 2048 | 0 | 干净 |
| bf16 | 2560 | 0 | 干净 |
| bf16 | 3072 | 105 | 开始出错，行 103 / 列 62 |
| bf16 | 4096（warps 1/4/8/16 均测） | ~60,000 | 大面积坏，全部 2048 行 |
| bf16 | 6144 | 46,589 | 全行，469 列 |
| bf16 | 8192 | 80,765 | — |
| bf16 | 16384 | 93,631 | — |
| f32 | 4096 | 0 | 干净 |
| f16 | 16384 | 0 | 干净（32 KB tile） |

两点结论：

1. **不是“所有 >4096 都坏”，而是 2560 还干净、3072 起开始坏、4096 以上大面积坏**，严重程度随 XBLOCK 增长。
2. **不是架构容量问题**：f16 在 16384（32 KB tile）干净，f32 在 4096（16 KB）干净；
   出错元素的下标 mod 64 全部是偶数，指向 bf16 的“成对/4 字节向量化 + f32→bf16 窄化”这条路。
   所以是 **bf16 窄化代码生成的缺陷**，不是 LM/带宽等硬件上限。

规避阈值取 XBLOCK ≤ 2048（2560 也干净，留一点余量用 2048）。

### 继续定位 bf16：已排除项与剩余嫌疑

坏值形态：`out = ±inf`，位型 `0x7F80 / 0xFF80`（bf16 的 ±inf），且只出现在**偶数下标**；
坏值与相邻元素的正确值无关（`ref[idx±1]` 匹配数为 0），排除“索引偏移一个元素”。

已排除：

| 猜测 | 结论 |
|---|---|
| 架构容量 / LM 限制 | 否：f16 在 XBLOCK=16384（32 KB tile）干净，f32 在 4096（16 KB）干净 |
| 并发/核数 | 否：warps 1/4/8/16 都复现 |
| `emulate_precision_casts` 造成的多余 cast | 否：on 62,948 / off 61,052，两者都坏 |
| 搜索过程写坏缓冲 | 否：选定配置后单独复跑，同一产物稳定复现 |
| 算术本身 | 否：把 Inductor 的核体（含 bf16↔f32 往返、evict 提示）原样写成裸 Triton 核，XBLOCK=4096 干净 |

剩余嫌疑集中在 **Inductor 生成核特有的部分**：`xmask = tl.full([XBLOCK], True, tl.int1)` 的常量真掩码、
`xnumel` 特化、以及 launcher 的 grid/config 配对；目前尝试直接用其 launcher 复跑时卡在
`CachingAutotuner.run()` 的 `stream`/`grid` 参数约定上，未完成。

下一步：dump 该核的 LLIR/TTGIR，检查 store 前的 f32→bf16 窄化和谓词；或在裸核里补上
`xmask` 与 `xnumel` 特化后逐项对齐，二分出触发条件。

### bf16 最终根因链（定位完成）

1. **正确率 = 1024 / XBLOCK**：实测 1024→100%、2048→50%、3072→33.3%、4096→25%，
   说明被写的元素数恒为 `grid × 1024`，即**实际执行的核每 program 只处理 1024 个元素**。
2. dump 出的 wrapper 印证：装饰器是 `@_flagtree_resource_heuristics.pointwise(size_hints=...)`，
   **没有 `configs=`**，配置由 Inductor 的 pointwise 启发式生成（基准 XBLOCK=1024）。
3. 当被请求/被 CD 选中的配置 `XBLOCK>1024` 时，该配置的 launcher 在 bf16 上编译失败
   （此前已捕获到 `OutOfResources: out of resource: uni_sram`），运行期**静默回落到基准 1024 的 launcher**，
   但 grid 仍按请求的 XBLOCK 计算 → 只写 `1024/XBLOCK` 的输出，其余保持未初始化。
4. bf16 未初始化内存常为 `0x7F80`（bf16 +inf），所以表现为散落 inf；f16/f32 在 4096 能正常编译，
   launcher 存在，因此没有部分写入（f16@4096 实测 100% 正确）。

**性质**：不是算术、不是容量上限本身、也不是并发；是“**配置编译失败后的静默回落 + grid 未随之修正**”。
**修复**：bf16 把 XBLOCK 限制在 1024（已验证 100% 正确、0 inf）；根治应让 fallback 同步修正 grid，
或让 bf16 的 tile 在 SRAM 预算内编译成功。
