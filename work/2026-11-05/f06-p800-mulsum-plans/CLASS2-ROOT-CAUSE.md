# 第二类根因：SDNN 多行（XBLOCK>1）归约算错

单卡 P800 7 号卡，`flagtree-0.7.1a1+xpu3.6` + #1458 修复 core。手写 Triton 核（不经过 Inductor），
`out[i] = sum_j a[i,j]*b[j]`，N 可整除、无 mask、无 where、2D 写回。探针：`sdnn-fix/maskless_probe.py`。

| 资源 | XBLOCK | R0 | N | 结果 | 耗时 |
|---|---:|---:|---:|---|---:|
| cluster | 64 | 256 | 256 | 正确 1.14e-5 | 50.1 µs |
| sdnn | 1 | 256 | 256 | 正确 1.14e-5 | 1317.7 µs |
| sdnn | 2 | 256 | 256 | **错误** max_abs 92.9 | 1313.6 µs |
| sdnn | 64 | 256 | 256 | **错误** max_abs 90.5 | 1403.7 µs |
| sdnn | 1 | 128 | 2048 | 正确 3.05e-5 | 11336.3 µs |
| sdnn | 64 | 128 | 2048 | **错误** max_abs 89.7 | 11927.3 µs |

关键细节：

- 无 mask、无循环（N=R0=256）时依旧错，排除 “归约里的 mask” 与 “循环累加器” 两个猜测。
- 2D 写回 `store(out + rows[:, None], sum(acc,1)[:, None])` 不改变结果，排除写回形状。
- XBLOCK=64 时同一 tile 内的输出**完全相同**（前四个值都是 -20.342，期望为
  -21.133 / 4.379 / -4.304 / -17.306）；XBLOCK=2 时各行不同但同样偏离。
- 同一核换 cluster 资源、同 tile 尺寸即正确（1.14e-5，50 µs）。
- 大 tile（R0=2048）额外触发 -714 设备异常，对应文档里的 LM 预算越界。

结论：第二类不是 mask、不是循环、不是写回，而是 **SDNN 在 XBLOCK>1 时对行维的处理错误**
（X 维被折叠或错配），XBLOCK=1 才是唯一正确形态；这也正是历史上把 SDNN 归约钉在 XBLOCK=1 的原因。

## 架构文档给出了什么、没给出什么

`third_party/xpu/docs/xpu3/how_to_write_kernel_skills/how_to_write_reduce/references/reduce_envelope.md`：

- 解释得通：LM 预算越界会导致编译失败/设备异常；归约轴 mask 在 LM tile 上会静默算错（不同 dtype）；
  归约轴必须是最后一轴；整除形状应零填充而不是 mask。
- 解释得通：`README.md` 的写回阶梯（XBLOCK=64 约 9 µs、512 约 0.7 µs）说明 XBLOCK=1 时
  每 program 只写一个标量、grid 上千，2.1 ms 的独立归约就是这么来的。
- 没覆盖：XBLOCK>1 时行维折叠导致的静默错误——文档是 `tle.gpu` 路径的实测，不含 SDNN 这条线。

## 对结论的影响

1. 第二类不能靠调参绕开：XBLOCK>1 就错，只能保持 XBLOCK=1（慢）或改用 cluster。
2. 性能上限是真实的：同 tile 下 cluster 50 µs vs SDNN 1318 µs，差 26×；这解释了
   SDNN 独立归约 2.1 ms 与历史 25.4 µs 的落差来自“正确形态只有 XBLOCK=1”。
3. 应把最小复现交给厂商：`out[i]=sum_j a[i,j]*b[j]`，f32，2048×256，XBLOCK=2/64、R0=256、
   num_warps=2/4，SDNN 资源下同 tile 行值异常；XBLOCK=1 正确。

## 补充：#1458 之外的第二个 SDNN 缺陷（Inductor 自动生成路径复核）

用纯 Inductor 路径（`compile_region(gm, ..., 'sdnn')`，不手写 kernel，只把超出 LM 预算的 tile
从 autotune 候选里剔除）复测 2048×2048 f32 的 Mul+Sum：

```
{"m": 2048, "n": 2048, "dtype": "float32", "kernels": 1,
 "max_abs": 159.32887268066406, "max_rel": 87.96, "us_graph": 16836.3}
```

与手写 kernel 强制 XBLOCK=1 时的 159.32887268066406 完全一致，说明这不是手写代码的问题：
**Inductor 自动生成的 SDNN 融合 Mul+Sum 同样是错的**。

结合前面矩阵：
- 分离区域（cluster 乘法 + SDNN 纯归约，XBLOCK=1）正确，但 2048² 约 2.2 ms；
- 任何 rank-2 tile 的 SDNN 归约（XBLOCK>1）都算错；
- 因此 SDNN 归约目前只在 rank-1（单行）tile 下正确，这是 #1458 之外的第二个后端缺陷。
