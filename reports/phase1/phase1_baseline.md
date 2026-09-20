# FlagTree 第一阶段原生编译优化基线

## 基线信息

| 项目 | 值 |
|---|---|
| 工作树 | `D:\flagtree\worktrees\dev-rzh` |
| 分支 | `dev/rzh` |
| 基线提交 | `5eda9956b` |
| 优化层级 | TTIR / TTGIR / LLIR |
| 首选设备 | PPU |
| 当前状态 | IR 基线已固化，最小 PPU Kernel 正确性已通过，设备性能待测 |

## 已确认能力

- PPU TTIR 已接入 Canonicalizer、Triton Combine、CSE、Symbol DCE 和 Loop Unroll。
- PPU TTGIR 已接入 Layout 清理、Thread Locality、MatMul、Loop-aware CSE、条件循环融合、Prefetch、数据复制处理、SCCP 和 CSE。
- Triton Combine 已存在 `Dot + Add`、连续 `AddPtr`、Select/Masked Load 等 Kernel 内模式。
- Layout 清理和数据复制处理已有独立 MLIR Pass 与回归测试。
- 仓内未发现 PyTorch FX/ATen/ONNX 图前端，因此本阶段不实施模型图级融合。
- 远程 `xbench-ppu` 容器中的最小 `add_kernel` 已在 PPU-ZW810E 上真实编译、加载和执行通过。

## 首批样例

| 样例 | 目标 |
|---|---|
| `test/Triton/phase1-normalization.mlir` | 常量折叠、纯表达式 CSE、不同表达式不误合并 |
| `test/Triton/phase1-cast-boundary.mlir` | 保护潜在有损整数窄化/扩展链 |
| `test/Triton/combine.mlir` | Dot+Add、AddPtr 及其负例 |
| `test/Triton/loop_cse.mlir` | 循环内 CSE |
| `test/TritonGPU/reduce-data-duplication.mlir` | Layout/数据复制保留与清理边界 |
| `test/TritonGPU/fuse-nested-loops.mlir` | 可融合与不可融合循环 |

## 当前未宣称通过的项目

- PPU 真实设备最小 Kernel 编译和正确性已通过；优化规则的 Kernel 性能对比尚未执行。
- NVIDIA/AMD 设备回归尚未执行。
- Cast 清理尚未新增通用规则；需先由样例确认现有 Canonicalizer 存在真实缺口。
- 搜广推场景融合和 PyTorch 模型图融合不属于第一阶段。

## 后续执行命令

在具备 FlagTree 构建产物的环境中执行：

```bash
python scripts/phase1_ir_stats.py \
  test/Triton/phase1-normalization.mlir \
  test/Triton/combine.mlir \
  test/Triton/loop_cse.mlir \
  test/TritonGPU/reduce-data-duplication.mlir \
  --output reports/phase1/ir_input_stats.json

cmake --build <build-dir> --target check-triton-lit-tests
```

设备验证使用远程 `xbench-ppu` 容器和真实 PPU；最小 Kernel 结果见 `reports/phase1/ppu_smoke_result.json`，不能以该 smoke test 代替具体优化规则的性能对比。
