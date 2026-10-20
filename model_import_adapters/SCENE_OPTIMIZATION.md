# PPU小型MLP场景优化与冻结模型回归

本目录的场景入口对已冻结的Core ATen/PT2进行显式改写，再通过
TorchInductor和FlagTree PPU编译。它不替换默认模型前端，不全局接管ATen，
也不重新实现已有Canonicalize/CSE/DCE/layout Pass。

## 代码分层

| 范围 | 入口 | 职责 |
|---|---|---|
| 精度配置 | `PrecisionConfig.input_precision`、`dot_with_precision` | None保留原allow_tf32行为；显式值接通既有dot lowering |
| 场景Kernel | `triton_kernels.ppu_mlp` | FP32小M AddMM/Bias/exact GELU，使用可被Inductor编译的triton_op |
| 图接入 | `model_import_adapters.scene_fusion` | 单用户AddMM→View→exact GELU的合法性匹配，返回新图而不修改原图 |
| B0编排 | `scripts/run_scene_optimization_campaign.py` | 冻结301模型的四路基线、独立尝试、逐模型审计与断点 |
| B0独立审计 | `scripts/audit_scene_optimization_campaign.py` | 保留未完成模型的分母，核对原任务/输入/配置/快照与证据 |
| 诊断 | `scripts/profile_accepted_text_case.py` | 真实模型热点归因；不作为正式配对性能证据 |
| 精度/模型探测 | `scripts/probe_scene_matmul_precision.py`、`scripts/probe_scene_model_fusion.py` | 显式精度及代表模型的开发验证 |
| 正式局部性能 | `scripts/benchmark_scene_pair.py` | 先冻结A/A噪声门槛，再进行B0/B2配对测量 |
| 单模型B2 | `scripts/replay_scene_model_case.py` | 新PPU eager/compiled输出、真实中间Tensor的runtime guard与编译证据 |
| 全量B2 | `scripts/run_scene_replay_campaign.py` | 确认B0进程及全量门禁，顺序回放301模型，冻结入口/源码身份 |
| 总验收 | `scripts/collect_scene_acceptance.py` | 独立重开逐模型证据、重算局部门槛，保留精确检查点快照 |

调用图改写函数即主动选择新场景；不调用时保持原编译路径。模板资格为PPU、
FP32、K=384/N=1536、1≤M≤64、行连续激活及转置线性权重。
实际回归覆盖M=8/48/16/64；M=256选择原路径，不能据此宣称整个连续M域都已测试。
验证入口逐候选检查实际shape/dtype/device/stride，任一区域不满足时整个输入保留原图。
其他任务、精度、几何和芯片需要独立验证。

内部乘法显式使用已有TF32x3分解，输入/参数/输出仍为FP32；这不是逐次IEEE FP32乘加。
标准与persistent MatMul都接入精度字段，但本轮PPU设备探测为非persistent路径。

## 运行前提

- 厂商Torch、FlagTree PPU后端、兼容Transformers及已运行的PPU容器；
  本工具不安装驱动、不替换Torch、不管理容器生命周期。
- 已审核的301条`accepted-models.json`，包含真实原任务、revision、命令和证据路径；
  每模型固定五组`(B,L)=(1,8),(2,24),(4,64),(2,8),(1,64)`。
- 已冻结的适配器与语义文件快照，源根有`source-baseline.json`，其
  `dirty_overlay_files`列出相对路径和原始SHA256；不是仅传入一个任意当前checkout。
- 原模型缓存、原验收case、PT2及基线引用数组仍可访问。
- B2的`--source`指向冻结适配器根，`--kernel-root`指向包含`triton_kernels/`包的目录。
  不把整个源码`python/`放入PYTHONPATH覆盖已编译的Triton ABI。

所有脚本提供`--help`。模型数据与输出应放在宿主bind mount，勿写入镜像writable layer。
只顺序占用所选PPU；不同时运行其他同卡测评。

## 典型命令

下列路径是已有冻结工程环境的示例。先准备上述真实输入及快照，修改R/S/K与设备号；
已有证据目录不要覆盖。301是这套验收脚本的固定合同，不是通用任意模型数接口。

```bash
R=/workspace/scene-optimization-301-20261019
S="$R/source-scene-v3"
K="$R/scene-kernels-v3/python/triton_kernels"
PY=/workspace/deps/venv/bin/python

# 新B0；使用新输出目录，不依靠历史通过数替代本次运行。
"$PY" model_import_adapters/scripts/run_scene_optimization_campaign.py \
  --accepted "$R/accepted-models.json" --source "$R/source-b0" \
  --output "$R/b0-new" --physical-device 8

# B2入口会等待并核验指定B0；不重新导出或下载模型。
"$PY" model_import_adapters/scripts/run_scene_replay_campaign.py \
  --accepted "$R/accepted-models.json" --baseline "$R/b0-new" \
  --source "$S" --kernel-root "$K" \
  --case-script "$PWD/model_import_adapters/scripts/replay_scene_model_case.py" \
  --output "$R/b2-new" --physical-device 8

# 正式局部性能：使用真实模型采集的fixture manifest，不是随机权重。
CUDA_VISIBLE_DEVICES=8 "$PY" model_import_adapters/scripts/benchmark_scene_pair.py \
  --phase calibrate --fixtures "$R/real-minilm-mlp-fixtures/manifest.json" \
  --kernel-root "$K" --output "$R/aa-new"
CUDA_VISIBLE_DEVICES=8 "$PY" model_import_adapters/scripts/benchmark_scene_pair.py \
  --phase compare --fixtures "$R/real-minilm-mlp-fixtures/manifest.json" \
  --kernel-root "$K" --calibration "$R/aa-new/report.json" --output "$R/pair-new"

# 资源报告需对应实际二进制，不能拿另一Kernel的属性冒充。
"$PY" model_import_adapters/scripts/collect_scene_acceptance.py \
  --accepted "$R/accepted-models.json" --baseline "$R/b0-new" \
  --optimized "$R/b2-new" --baseline-source "$R/source-b0" \
  --paired-report "$R/pair-new/report.json" --calibration "$R/aa-new/report.json" \
  --resource-report "$R/scene-kernel-resources-v2.json" \
  --output "$R/acceptance-new" --verify
```

上述三个设备执行阶段必须串行；B2结束后才运行A/A和A/B。
资源参数路径仅在该报告与本次实际二进制/配置匹配时有效，否则先重新采集。
原正式记录的测量顺序是先A/A冻结门槛再A/B，与示例中其相对顺序相同。

精度合同为`abs(error) <= 3e-4 + 3e-4*abs(reference)`，并检查shape/dtype/有限值。
本回归使用原任务及新PPU四路参考，不额外执行CPU模型前向。
`--verify`缺失时总状态永远为incomplete。全部301/1505、源码身份、局部性能、
资源及待复核项闭合后才退出0；incomplete退出2。公共失败暂停批次，保留原尝试，
不能删掉模型来改善通过率。修改冻结源码后使用新campaign目录。

## 已验收结果与边界（2026-10-20）

301模型/1505输入B0和B2独立审计均通过；43模型/172输入命中新模板，1333输入
保留原路径。另行重读数组完成7525次联合容差比较，无违规项。
四组真实MiniLM来源的局部MLP配对几何平均加速1.3614倍。
局部加速不等于301模型端到端、服务吞吐、其他芯片或A100 80%认证。

测评环境为PPU-ZW810E、Torch2.10.0、Triton模块3.6.0、FlagTree发行包0.6.1+ppu3.6；
本源码HEAD不是对实际wheel构建SHA的声明。原始PT2、数组、日志、版本哈希和报告
作为实验数据单独归档，不把数百GiB模型或机器专属缓存提交到Git。

## 最小单测

```bash
python -m unittest discover -s model_import_adapters/tests -p 'test_scene_optimization_campaign.py' -v
python -m unittest discover -s model_import_adapters/tests -p 'test_scene_pair_statistics.py' -v
python -m unittest discover -s model_import_adapters/tests -p 'test_scene_runtime_guard.py' -v
python -m unittest discover -s model_import_adapters/tests -p 'test_scene_acceptance.py' -v
PYTHONPATH=model_import_adapters/src:python/triton_kernels \
  python -m pytest -q model_import_adapters/tests/test_scene_fusion.py \
  python/triton_kernels/tests/test_matmul_input_precision.py
```

共55项：8+7+3+15+9+13。前四组为stdlib契约测试；后两组需要兼容Torch/Triton，
是CPU合成合法性/配置测试，不代替PPU设备或模型验证。
