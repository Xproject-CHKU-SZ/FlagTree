# ONNX与TensorFlow模型接入适配器

本目录实现《三框架模型接入_基于现有FlagTree基础的指导方案》中非PyTorch模型的薄接入链。代码不在FlagTree内部增加模型级编译器，而是完成以下工作：

- ONNX模型加载、合法性校验、Shape推断和结构摘要；
- ONNX模型的输入、输出、类型、Shape、opset及结构化控制流子图记录；
- ONNX Runtime基准执行，以及可选的ONNX到PyTorch转换核对；
- TensorFlow函数或SavedModel经tf2onnx转换为ONNX；
- TensorFlow与转换后ONNX的数值核对；
- 转换完成后，生成可保存、可回读的ExportedProgram/Core ATen统一图，并经
  `torch.compile`衔接FlagTree XPU执行。

## 当前验收能力（2026-09-14）

三条前端路径统一汇入同一种Core ATen产物：

```text
PyTorch ------------------------------> torch.export -> Core ATen
ONNX -> 校验/Shape推断 -> onnx2torch -> torch.export -> Core ATen
TensorFlow -> tf2onnx -> ONNX --------> onnx2torch -> torch.export -> Core ATen
                                                        |
                                                        v
                                             torch.compile -> FlagTree XPU
```

控制流不再只保存文字摘要：

- ONNX `If`（包括分支对子图外部值的词法捕获）lower为`torch.cond`；
- ONNX `Loop` lower为`torch.while_loop`；无scan输出时trip-count和condition
  可选其一，带scan输出时按显式trip-count预分配缓冲区并按真实迭代次数裁剪；
- ONNX `Scan`（状态变量、scan输入/输出、轴和正反方向）lower为
  `torch.while_loop`及函数式输出缓冲区，支持长度为0；
- 多scan输入/输出、非0轴、输入/输出反向扫描及`If -> Loop`嵌套控制流
  均进入自动回归；
- TensorFlow `tf.cond`和`tf.while_loop`经tf2onnx后走同一控制流路径；
- 每个控制流节点的子图签名、输入输出、状态数量、轴、方向和可执行能力均写入
  `control_flow_contract`，结构不合法时在lowering前报错。

当前CPU回归为20项全通过；ONNX `If/Loop/Scan`、带scan输出的`Loop`、
复杂轴/方向/多输入输出`Scan`、`If -> Loop`嵌套图，以及TensorFlow
`tf.cond/tf.while_loop`的代表性Core ATen产物均已在FlagTree XPU容器通过
`torch.compile(fullgraph=True)`执行，CPU/XPU最大绝对误差为0。

## 目录结构

```text
model_import_adapters/
├── pyproject.toml
├── requirements-server.txt
├── requirements-onnx-to-torch.txt
├── src/model_import_adapters/
│   ├── __init__.py
│   ├── control_flow.py
│   ├── compiled_execution.py
│   ├── hf_fixtures.py
│   ├── onnx_adapter.py
│   ├── unified_ir.py
│   └── tensorflow_adapter.py
├── scripts/
│   ├── run_tests.sh
│   ├── run_unified_ir_xpu.py
│   ├── test_hf_onnx.py
│   └── test_hf_tensorflow.py
└── tests/
    ├── test_control_flow.py
    ├── test_tensorflow_control_flow.py
    └── ...
```

## 测试模型

两条测试链使用Hugging Face仓库
`optimum-intel-internal-testing/tiny-random-MobileBertModel`，固定版本为
`43d7391e161501d14a4d6ef7484ba17ec08066a7`：

- ONNX测试下载`onnx/model.onnx`；
- TensorFlow测试下载`tf_model.h5`和`config.json`，由Transformers加载后转换为ONNX。

选择同一网络结构的两种模型格式，可以减少模型差异对接入链验证的干扰。该模型仅用于验证模型加载、图信息提取和格式转换，不代表通用算子覆盖结论。

## 服务器环境

服务器FlagTree镜像中已有PyTorch、ONNX、ONNX Runtime、Transformers和Hugging Face Hub。TensorFlow与tf2onnx安装在测试目录内的独立虚拟环境，不修改镜像原有Python环境。

```bash
python -m venv --system-site-packages .venv
.venv/bin/pip install -r requirements-server.txt
.venv/bin/pip install --no-deps -r requirements-onnx-to-torch.txt
.venv/bin/pip install -e . --no-deps
```

可选的ONNX到PyTorch转换器以`--no-deps`方式安装，直接复用FlagTree镜像已有的PyTorch，避免pip在测试虚拟环境中另行安装上游Triton包。

## 运行

先运行本地验收。脚本会在Python启动前关闭XPU镜像的全局导入钩子，且
`pyproject.toml`已限制只收集`tests/`，不会误跑历史结果目录：

```bash
bash scripts/run_tests.sh -q
```

ONNX模型导入与推理测试：

```bash
.venv/bin/python scripts/test_hf_onnx.py --work-dir artifacts/onnx
```

增加`--try-torch`后，脚本会尝试通过onnx2torch转换为PyTorch模型并比较输出。转换器覆盖范围有限，转换结果会单独记录，不与ONNX格式导入结果混为一谈。

TensorFlow模型加载、TensorFlow到ONNX转换及结果比较：

```bash
.venv/bin/python scripts/test_hf_tensorflow.py --work-dir artifacts/tensorflow
```

两个脚本都会在工作目录中生成JSON报告。测试下载使用Hugging Face Hub标准接口；需要代理时，由运行环境设置`HTTPS_PROXY`和`HTTP_PROXY`。

## 中型模型与XPU测试

中型ONNX测试使用`Xenova/distilbert-base-uncased-finetuned-sst-2-english`中约268 MB的`onnx/model.onnx`；中型TensorFlow测试使用`distilbert/distilbert-base-uncased-finetuned-sst-2-english`中约268 MB的`tf_model.h5`。两者均锁定仓库revision，避免测试材料随`main`分支变化。

在服务器XPU容器中，目标设备通过PyTorch的CUDA兼容设备接口暴露为`cuda:0`。ONNX测试命令为：

```bash
.venv/bin/python scripts/test_hf_onnx.py \
  --work-dir artifacts/medium-onnx-distilbert-xpu \
  --repo-id Xenova/distilbert-base-uncased-finetuned-sst-2-english \
  --revision 0b6928efcb76139cae2c6881d49cda67fe119f42 \
  --model-file onnx/model.onnx \
  --require-torch --torch-device cuda:0 --torch-compile
```

TensorFlow测试先完成TensorFlow到ONNX的CPU转换及参考比对，再将ONNX模型转为PyTorch模块在XPU上执行：

```bash
.venv/bin/python scripts/test_hf_tensorflow.py \
  --work-dir artifacts/medium-tensorflow-distilbert-xpu \
  --repo-id distilbert/distilbert-base-uncased-finetuned-sst-2-english \
  --revision 714eb0fa89d2f80546fda750413ed43d93601a13 \
  --model-file tf_model.h5 \
  --model-kind sequence-classification \
  --require-torch --torch-device cuda:0 --torch-compile
```

`--require-torch`使转换后的PyTorch/XPU执行失败时脚本返回非零退出码，避免将仅CPU转换成功误记为XPU测试通过。`--torch-compile`要求转换后的PyTorch模块先进入PyTorch编译接口再执行；该选项验证上游编译入口与XPU环境的衔接，不将PyTorch上游能力表述为FlagTree原创能力。

## 已有 Core ATen 产物的语义规则审计

不重新执行前端转换，也可以直接检查已有 PT2 中每个 Core ATen 算子实例的
dtype、Shape 和 layout 规则：

```bash
.venv/bin/python scripts/audit_core_aten_semantic_rules.py \
  --core-aten artifacts/model.core_aten.pt2 \
  --output-dir artifacts/semantic-rule-audit \
  --entry organization/model-name \
  --source-kind onnx \
  --dynamic-shapes-requested
```

输出包括 `manifest.json`、`semantics.json`、`semantic_rule_audit.json` 和
`semantic_rule_audit.md`。报告把已执行、尚未实现和元数据不足分别计数；只有
`passed` 与 `failed` 会进入真实执行比例，不能用注册表登记覆盖率替代该指标。

## 验收结论与能力边界

按《功能拆分表-0811》第一项“将主流框架模型转换为统一中间表示，保留模型结构、
类型、Shape和控制流信息”的范围，三框架、四类信息、保存回读和XPU衔接均已有
机器可检查实现与自动回归，可以按功能项100%验收。

这里的100%是该功能项的语义闭环，不等于任意第三方模型100%可执行。规模化兼容
仍有以下边界：

- 子图内部普通算子仍受onnx2torch算子覆盖范围约束；
- 带scan输出且省略trip-count的`Loop`没有有限缓冲区上界，当前会在lowering前
  明确拒绝；带scan输出的`Loop`默认最大预分配迭代数为4096；
- 20项回归和代表性模型/XPU图通过，不能替代500模型级算子兼容率与精度统计；
- 配置的dump目录未发现Triton阶段文件时，只证明Core ATen经`torch.compile`
  在目标XPU正确执行，不据此声称每个内部算子都生成了FlagTree自有Kernel。

FlagTree仍从TorchInductor生成的Triton Kernel、Triton AST或TTIR等现有入口
承接后端编译。任意模型兼容率和大规模性能应作为后续覆盖指标独立推进。
