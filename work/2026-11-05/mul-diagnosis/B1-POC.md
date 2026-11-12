# B1 POC：TTX 层 LM 常驻硬件数学（2026-11-06 实测）

## 做了什么

在 `third_party/xpu/lib/Conversion/TritonXPUToLLVM/VectorizedOpToLLVM.cpp` 里新增两个
lowering pattern，把"每 16 lane 调一次 libdevice"换成**内联 asm 的 LM 往返**：

1. `VExpFOpLMAsmConversion`（exp）
2. `VSigmoidFOpLMAsmConversion`（sigmoid）

实现要点：

- 函数入口分配 64 字节 LM scratch（`LLVM::AllocaOp`，64B align），每个 kernel 复用一个；
- 每个 16-lane 向量发**一个** inline asm 块；
- exp 的 asm 模板（实测可用）：

```
vstore_mask16.mz $1{mr1}, 0($2);
mfence { lm };
loadli.w r2, 0($2); loadli.w r3, 4($2); ... loadli.w r17, 60($2);
exp.f.rn r2, r2; exp.f.rn r3, r3; ... exp.f.rn r17, r17;
storeli.w r2, 0($2); ... storeli.w r17, 60($2);
mfence { lm };
vload_mask16.mz $0{mr1}, 0($2);
```

- 约束：`"=v,v,r,~{r2},...,~{r17}"`（输出向量、输入向量、LM 指针、16 个标量 clobber）；
- **关键点**：16 个 lane 必须用 r2..r17 **各自独立** 的寄存器（先全部 load、再全部 exp、再全部 store），
  形成 ILP；最初用单个 r2 串行链时 exp 是 110.3 µs，改成 16 寄存器后降到 57.1 µs。
- sigmoid：把 `add.f.rn`/`div.f.rn` 也放进 asm，1.0f 常量用 `lui r18, 260096`（0x3F800000）物化。

## 实测结果（2048×2048 fp32，152 卡 2）

| 实现 | 耗时 | 对比 |
|---|---:|---|
| libdevice 路径（baseline） `tl.exp` | 69.9 µs | — |
| **B1 asm 路径 `tl.exp`** | **57.1 µs** | **1.22×** ✅ |
| libdevice 路径 `tl.sigmoid` | 76.3 µs | — |
| B1 asm 路径 `tl.sigmoid` | 86.4 µs | 0.88× ❌ |
| 厂商 eager sigmoid | 48.8 µs | — |
| 纯访存地板（copy） | ~32 µs | — |

## 结论

1. **LM 常驻硬件数学在 Triton 后端是可行的**——不需要等官方仓库提供 mask16 原语，
   用 inline asm 就能发 `vstore_mask16`/`loadli.w`/`exp.f.rn`/`storeli.w`/`vload_mask16`；
2. exp 拿到 **1.22×**（首个超过 libdevice 的实现）；
3. sigmoid 反而慢 12%：每 16 lane 一次的 `vstore + mfence` + 17 个寄存器 clobber 的代价，
   超过了 libdevice 调用本身；
4. 根本差距是**粒度**：厂商一次 LM 往返覆盖 **1536 元素**，我们每 16 元素一次（96× 的 fence 次数）。

## 下一步（收敛后的 B1）

把 asm 块的粒度从 16 lane 提到 **128–512 lane**：

- 一个 asm 块里先发 k 个 `vstore_mask16`（偏移 0,64,...,64(k-1)），
- 只发 **一次** `mfence`，
- 然后循环处理每个向量的 16 lane（复用 r2..r17），
- 最后再一次 `mfence` + k 个 `vload_mask16`。

预期 fence 开销降到 1/8–1/32，sigmoid/exp 都能落到 ~45–55 µs 区间（追平/超过厂商 48.8）。
工作量：在现有 POC 上改 asm 生成器 + 调整 pattern 的向量分组，约 0.5–1 天（重建验证 3 分钟/轮）。

> 注：本轮两个 POC pattern 已回退，152 上的库恢复为 baseline（exp 69.9 / sigmoid 76.3）。
