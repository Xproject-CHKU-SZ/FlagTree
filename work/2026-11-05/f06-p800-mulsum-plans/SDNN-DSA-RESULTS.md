# SDNN 的正确用法：tle.dsa 2D DMA（按算子开发规范复测）

规范来源：
`third_party/xpu/docs/xpu3/how_to_write_kernel_skills/how_to_write_copy/SKILL.md`、
`how_to_write_reduce/README.md`、`references/reduce_envelope.md`，参考实现
`FlagGems: src/flag_gems/runtime/backend/_kunlunxin/utils/tle_copy.py`。

关键写法（与参考实现一致）：

```python
@triton.jit(do_not_specialize=["a_ptr", "o_ptr", "rows", "cols", "s_row"])   # 避免每次调用重载
buf = tle.dsa.alloc([ROWS, COLS], tl.float32, tle.dsa.UNI_SRAM)
tle.dsa.copy(a_ptr + r[:, None] * s_row + c[None, :], buf, sizes=[ROWS, COLS])
acc += tle.dsa.to_tensor(buf) * b[None, :]      # 归约方向保留 per-column 累加器
part = tl.sum(acc, axis=1)[:, None]
tl.store(o_ptr + r[:, None], part)              # 2D 写回
```

启动：`kernel[grid](..., is_sdnn=True, num_stages=2)`，grid 只按行块划分，列方向在核内循环。
计时用 CUDA Graph 重放，排除启动/重载开销。

## 2048×2048 f32 实测

| 算子 | 配置 | 结果 | 图重放 |
|---|---|---|---|
| 广播乘 `a*b` | 64×256, w8 | 正确 0.0 | **44.1 µs** |
| 乘+行求和 | 64×256, w8 | 正确 4.96e-5 | **46.6 µs** |
| 乘+行求和 | 64×512, w8 | 正确 5.34e-5 | 46.7 µs |
| 乘+行求和 | 32×256, w8 | 正确 3.81e-5 | 50.9 µs |
| 乘+行求和 | 128×256, w8 | 正确 4.58e-5 | 51.4 µs |
| 乘+行求和 | 128×128, w8 | 正确 3.24e-5 | 61.6 µs |
| 乘+行求和 | 256×256, w8 | 正确 3.43e-5 | 68.3 µs |

对照（同一张卡、同尺寸）：

| 路径 | 耗时 |
|---|---|
| eager（torch mul+sum） | 35.6 µs |
| cluster 整图（Inductor 调优） | 156.6 µs |
| 旧 SDNN 拆分管线 | 2251 µs |
| **tle.dsa SDNN 单核** | **46.6 µs** |

## 结论

1. SDNN 在**广播逐元素**与**逐元素+行归约融合**上是可用的，且比 cluster 快 3.4×，
   接近 eager（46.6 vs 35.6 µs）。
2. 之前“SDNN 不适合任何计算”的结论作废：那是朴素 `tl.load` 点阵写法 + 未绑定启动造成的假象。
3. 要在 Inductor 上自动生成这个算子，需要让 codegen 按上述形态发射：
   `tle.dsa.alloc/copy(sizes)` 取 tile、归约方向用 per-column 累加器循环、2D 写回、
   `do_not_specialize` 指针，启动参数 `is_sdnn=True`。

## 注意

- 本次所有形状均可被 tile 整除，因此没有尾块；含尾块时必须用 `sizes`，不能用 mask
  （文档：归约里的 mask 会静默算错）。
- 之前观察到的“多行算错”是在朴素点阵核上得到的，尚不能作为厂商缺陷结论；
  需要用本规范重跑同一形状才能判定。
