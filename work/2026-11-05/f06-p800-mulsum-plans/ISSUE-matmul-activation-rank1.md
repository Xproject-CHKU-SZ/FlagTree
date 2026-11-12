# [XPU] MatMul+Activation 融合编译失败：rank-1 wrap pass 拒绝无 mask 的 modulo 广播 load

## 问题

P800 上 MatMul+Bias+Activation 的融合路径（`sdnn` 单内核 / SDNN 激活段）编译失败，报：

```
error: unsupported P800 SDNN rank-1 modulo load: expected a direct argument plus
       (pid * BLOCK + lane) % PERIOD with positive constant PERIOD and x < LENGTH mask
note: Pipeline failed while executing [`{anonymous}::CaptureRank1Wrap` on 'builtin.module']
```

在端到端基准中表现为 `matmul_bias_silu` 512/2048 的 `error 702`（launch timeout）——
702 是**次生现象**：一个用例编译/执行失败后设备上下文超时，后续用例级联报错。

## 触发条件

- 图：`(a @ b) + bias` 后再接 SiLU / GELU；
- 路由：含 `tl.dot` → sdnn 计划；bias/激活段由 Inductor 生成 rank-1 广播 kernel，例如：

```python
xindex = xoffset + tl.arange(0, XBLOCK)
x0 = xindex % 2048
tmp1 = tl.load(in_ptr0 + x0)        # 注意：没有 mask
```

- 该 load 含 `arith.remsi`（modulo），但**没有 `arith.cmpi slt` 形式的 `x < LENGTH` mask**。

## 根因

`third_party/xpu/lib/Dialect/TritonXPU/Transforms/Rank1Wrap.cpp`（#1458 修复引入的 `CaptureRank1Wrap`）：

1. 遍历所有 rank-1 且指针含 modulo 的 `tt.load`；
2. 要求其形式严格等于 `arg + (pid*BLOCK + lane) % PERIOD`，且 mask 为 `arith.cmpi slt` + 常量上界；
3. **任何不匹配都走 `reject()` → `signalPassFailure()`**（第 103 行）；
4. Inductor 的激活段广播 load 无 mask，必然不匹配 → 整条 SDNN pipeline 失败。

该 pass 在 `third_party/xpu/backend/compiler.py:494` 被无条件加入 SDNN pipeline，
因此所有经过 SDNN 激活段的 MatMul+Activation 区域都会失败。

## 复现（A/B）

同一 kernel、同一镜像，仅替换 `libtriton.so`：

| 库 | 结果 |
|---|---|
| 修复前（md5 `b210d283628b`） | `plans ['eager','inductor','sdnn']` → 编译报上述错误 |
| 修复后（md5 `4d51b3f34f57`） | `sdnn compiled` / `ran err 1.97e-05` |

## 修复

`Rank1Wrap.cpp`：不匹配的 load **跳过**（保留匹配模式的 wrap 修复；跳过时 `emitRemark` 计数），
不再终止 pipeline。匹配 #1458 原模式的 load 仍会走 `CaptureRank1Wrap` + `RepairRank1Wrap`。

## 固化

修复已同时固化进个人镜像 `zhaoweiming/f06-p800:20261110`（`libtriton.so` md5 `4d51b3f34f57`，
graph_fusion 为当前版本），镜像内无挂载即可验证：

| 用例（镜像内、无挂载） | 结果 |
|---|---|
| `silu 64×64×1024` | plans `['eager','inductor']`（按策略 decline，不再进入 sdnn） |
| `gelu_e 512×1024` | `sdnn compiled`，`max_err 2.47e-05` |
| `relu 512×1024` | `native_mm compiled`，`max_err 0.0` |

## 影响

- 修复后 MatMul+GELU(exact)：fp32 **1.22/1.54/3.12×**（64/512/2048），fp16 **1.28/1.62/3.06×**；
- GELU(tanh)/SiLU 的 SDNN 激活 lowering 仍走标量路径（4–25× 慢），已按实测 decline（回退 eager/Inductor）；
- 与另一类 `KeyError 'tt.sigmoid'/'tt.silu'` 区分：那是"把激活融进 dot 单内核"时 linalg op 表缺项（官方 U5），
  与本 issue 的 mask 形式判定无关。
