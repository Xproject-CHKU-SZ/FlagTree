# FlagTree 模型级统一 IR 语义规范

## 目的与边界

本模块规范 PyTorch、ONNX 和 TensorFlow 模型进入 FlagTree 前的共同语义，解决“图已经转成 Core ATen，但算子、类型、布局和动态维度含义是否仍一致”的问题。

FlagTree 现有编译器仍负责 Kernel 级编译和 XPU 执行；本模块位于模型接入层与现有编译器之间，不改变 TTIR、Triton 后端或 XPU 后端的职责。

```text
PyTorch ───────────────┐
ONNX ── onnx2torch ───┼─> ExportedProgram / Core ATen
TensorFlow ─ tf2onnx ─┘              │
                                     v
                         FlagTree 统一语义契约
                         算子 / 类型 / 布局 /
                         动态维度 / 扩展属性
                                     │
                                     v
                       TorchInductor -> FlagTree -> XPU
```

## 实现

独立源码位于 `python/flagtree_model_ir`，并通过 `python/triton/tools/model_ir_semantics` 提供与 FlagTree `triton.tools` 一致的兼容入口：

- `registry.py` 是版本化规范注册表，定义规范数据类型、布局分类、动态维度规则、扩展命名空间和常用算子族。
- `contract.py` 从 Core ATen manifest 提取张量与算子语义，将 ONNX 前端算子和 Core ATen 算子映射到同一算子族，并执行结构化校验。
- 每份契约包含注册表版本与 SHA-256，可判断两个产物是否依据同一版规范生成。

TensorFlow 经 tf2onnx 后，语义契约按实际交接图的 ONNX 算子解释，同时保留 `tensorflow_via_onnx` 来源信息。这样不会错误地把 tf2onnx 输出当成 TensorFlow 原生图。

## 产物协议

模型接入层每次导出必须同时落盘：

- `model.core_aten.pt2`：可回读的统一执行图；
- `manifest.json`：图结构、类型、Shape、控制流和来源摘要；
- `semantics.json`：本模块定义的规范化语义契约；
- `validation.json`：数值回读与语义校验结果。

`semantics.json` 的错误会中止导出。未注册算子保留在契约中并产生 warning，避免丢失信息；warning 不等价于后端已支持该算子。

## 当前规则

- 类型：以 Core ATen/PyTorch dtype 为规范名称，禁止静默窄化；转换和累加类型必须显式。
- 布局：区分 scalar、contiguous、二维/三维 channels-last、strided、symbolic-strided 和 unknown，同时保存 stride。
- 动态维度：区分 static 与 symbolic，符号名和取值范围随产物保存；静态特化不能冒充动态保留。
- 算子：当前注册表定义 39 个算子族，覆盖逐元素、Clip、卷积、矩阵乘、池化、激活、归一化、类型转换、Shape、索引、归约与范数、比较、逻辑、选择、Attention、控制流、张量创建与复制等常见语义；每个已注册算子都会携带 dtype、shape 和 layout 三类规则。
- 扩展：使用 `flagtree.model_ir` 命名空间；未知扩展可保留，但不能据此声称后端支持。

## 验证

FlagTree 单元测试覆盖注册表不可变副本、稳定哈希、跨框架算子映射、非法类型/布局/维度拒绝以及 PyTorch 内存布局识别。模型接入集成测试验证动态 Shape Core ATen 导出会真实生成并引用 `semantics.json`。独立包不依赖 FlagTree/Triton 的原生扩展，因此也能在只安装模型接入运行时的环境中先完成语义校验；完整 FlagTree 构建会由 `setup_helper.py` 将其一并打包。

### 模型集覆盖审计

`flagtree_model_ir.onnx_coverage` 可扫描一个或多个 ONNX 模型目录，递归统计主图和 If/Loop/Scan 子图中的算子，并与当前语义注册表逐项比对。当前注册表版本为 `2026.09.15`。审计会按文件 SHA-256 去重，默认跳过 `.venv`、`python_deps*`、历史 `artifacts` 等依赖缓存或重复产物，输出：

- `onnx_semantic_coverage.json`：逐模型、逐算子及聚合覆盖数据；
- `onnx_semantic_coverage.md`：面向评审的覆盖率与待补算子清单。

“注册表已覆盖”只表示该算子的 dtype、Shape 和 layout 规则已经定义，不等价于 onnx2torch 转换、FlagTree lowering 或 XPU Kernel 已经实现。后续应把语义覆盖、转换覆盖和后端执行覆盖分开统计。
