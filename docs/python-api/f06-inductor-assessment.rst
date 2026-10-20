F06：基于 Inductor 的融合模板与 FlagTree 后端适配
================================================

评估日期：2026-10-19。范围是 F06 的已有能力、复用边界、缺口和实施顺序。
本次不新增融合实现，不修改原始工作簿，不将源码存在等同于目标芯片验证通过。

后续实测已保存至 ``zhaoweiming/f06_inductor_20261019/REPORT.rst``：
实际可用用户环境是 Torch 2.5.1+cu118，被测 FlagTree 包为
0.7.0+xpu.gitc6fe922a.local（Triton 3.6.0）。两个组合的 eager 对照正确，
Inductor 接入因旧接口 triton_key 缺失而受阻；当前工作树已重导出该符号，
应优先同步已有实现并核对完整版本兼容面。原配 Triton 3.1 的对照确认生成了
Add+Softmax 融合及 MM + Bias/ReLU 尾段融合，但 NVIDIA 产物未在 P800 上加载成功。
本轮尚未证明编译后图的 XPU 正确性或性能；详细证据和未测试范围见实测报告。

需求依据为 ``功能拆分表12项功能子模块拆分与周计划.xlsx``：
``功能进度表!C11:M11``、``缺口明细!A30:L34``。
这是一份工程规划评估表；本文按其中五项完成判据组织，不沿用其历史完成百分比。

结论与职责
----------

F06 交付模型图上的融合模板能力。图捕获、标准算子规范化、符号 Shape、
依赖分析、通用融合调度、代码生成和编译缓存优先复用 PyTorch 编译栈。
项目负责目标芯片的兼容接入、必要的模板或候选实现、额外适用条件、
数值契约、选择诊断和精度/性能验收。

.. code-block:: text

    PyTorch 模型 / FX 图
        -> Dynamo / AOTAutograd：捕获、规范化、guards
        -> Inductor：图优化、融合调度、候选选择、代码生成
             + F06：芯片策略、确有缺口的模板/候选、诊断与验证
        -> Triton kernel 或外部库调用
        -> FlagTree：Triton kernel 优化、目标芯片 lowering 与运行时

外部库调用不经过 Triton 编译器。只有实际生成并编译的 Triton 路径才能用于
证明 FlagTree 后端接入。一个 fullgraph 图也可能生成多个 kernel。

不建设另一套 FX 执行器、通用模板匹配器、符号 Shape 引擎、融合调度器、
tiling/layout 搜索器、通用 cost model 或编译缓存。
Inductor 已有的模式若能在目标芯片正确高效执行，只登记能力并补验收证据。

F06 与其他功能的分工
-------------------

F06 不等同于全部 Inductor 多芯片适配。整图进入编译主链、设备/运行时接入和
通用 lowering 主要对应 F10；F06 使用这条链路交付融合能力。
依据是 ``功能进度表!L15:M15`` 对 Core ATen 整图桥接和多芯片 lowering 的定义，
以及 ``缺口明细!L30:L34`` 中 F06 对 F04、F02、F10、F03/F12、F11 的依赖。

.. list-table:: 责任边界
   :header-rows: 1
   :widths: 18 42 40

   * - 功能
     - 主责
     - F06 的使用方式
   * - F10 后端接入
     - 图到编译后端的桥接、设备与 runtime、通用 lowering、产物加载。
     - 提出融合候选所需能力；遇到通用编译/运行缺陷，归入后端修复。
   * - F06 融合
     - 指定算子组合的模板登记、合法条件、数值契约、芯片实现差异和收益门禁。
     - 对融合的匹配、实际执行、正确性、收益和回退形成验收证据。
   * - F03 / F02
     - 符号 Shape 与基础算子语义。
     - 复用通用约束，只增加具体融合模板的前提及数值验证。
   * - F04 选算
     - 能力矩阵与原生库、融合、生成代码等路径选择。
     - 提供融合候选及拒绝原因，避免再建全局选算器。
   * - F11 调优
     - 通用搜索、配置库和 Benchmark 协议。
     - 用相同协议验证融合策略和芯片参数，不复制调优框架。
   * - F12 缓存与回退
     - 缓存键、失效和跨版本/回退治理。
     - 提供模板及策略版本、依赖和原因码，复用统一机制。

因此，“Inductor 能在芯片上运行”是基础适配结果；
“指定融合组合在该芯片上可解释地选择、正确执行，并通过收益和回退验证”
才是 F06 的结果。前者不自动证明后者；后者也不要求每种组合都新增代码。

F06 逐项对照
------------

.. list-table:: 五项需求的复用和新增边界
   :header-rows: 1
   :widths: 14 26 28 32

   * - 需求
     - Inductor 可复用
     - 当前项目基础
     - 需要补齐
   * - G01 模板注册
     - PatternMatcherPass、register_replacement、图 pass 扩展点、算子 lowering 和候选选择。
     - fusion.compile 是直接调用入口；独立 graph_fusion 有 ID、版本、优先级和三种 matcher，但后端 check/prepare 仍按 kind 硬编码。
     - 版本兼容适配；薄的模板/策略登记，绑定现有扩展点、开关和后端候选。新增受支持模板无需修改主流程。不能把旧 Registry 原样扩成第二套引擎。
   * - G02 合法性与数值约束
     - 原生 IR、依赖/别名/变更处理、广播、dtype 及融合合法性检查；版本支持时可用 emulate_precision_casts。
     - 原型有外部消费者/相邻节点限制、广播检查、显式舍入及拒绝原因；新入口有 CPU 数值选项测试。
     - 只补自定义模板的额外条件和芯片数值契约；覆盖低精度舍入、TF32/FMA、NaN/Inf、别名、autocast 和训练边界。原生分析不能自动证明新增重写等价。
   * - G03 核心融合组合
     - MM/addmm、模板 epilogue、逐元素及归约融合、Norm/Softmax 分解、候选 autotune。
     - graph_fusion 覆盖 MM+Bias、MM+Bias+ReLU、Add+Softmax；XPU 有 kernel 内 Bias/ReLU 等 pass；FlagGems 和归档有其他手写组合。
     - 先在目标芯片验证原生 Inductor 的真实选择；只为未覆盖、不能编译或实测不足的组合补 lowering/候选/后端修复。建立模型图到实际执行产物的证据链。
   * - G04 动态 Shape
     - SymInt/ShapeEnv、guards、特化与重编译、动态代码生成和缓存。
     - 新入口透传 dynamic，CPU 测试覆盖变化的 Shape/stride；旧原型是静态元数据不符即执行原图。
     - 将芯片对齐、尺寸和资源条件接入现有 guards/候选过滤；证明条件跨界后不会错误复用产物。静态失败回退不能算动态融合完成。
   * - G05 跨芯片收益治理
     - 现有融合启发式、算法选择、可配置 benchmark/autotune、缓存、日志和指标。
     - 新 benchmark 保存生成代码、版本及墙钟样本；归档有 XPU/RTX 实验，也有明确负收益。
     - 复用测量机制，补同一编译栈的扩展开/关 A/B、芯片及版本化启用策略、拒绝原因和回退证据。至少两类芯片分别验收。

上述五项都已有可复用基础，但当前证据不足以将任一整项标记为闭环。
原生 Inductor 能力在目标芯片完成对应验收后可以计入交付，无需改写以证明工作量。

当前代码和证据
--------------

1. **Inductor 入口已接通到公共 API，尚无项目扩展注册。**
   ``python/triton/experimental/fusion.py:21`` 的 compile 最终直接调用
   ``torch.compile(backend="inductor", ...)``。它保留原生 guards、重编译和错误行为，
   没有模板注册、芯片策略或 F06 选择报告。
   ``python/test/unit/runtime/test_fusion_inductor.py`` 已有真实 CPU codegen、
   动态 Shape/stride、autograd 和数值选项测试；CUDA 用例检查生成的 Triton 源码。
   上一轮验证记录为 17 passed、1 skipped，GPU 跳过；不代表 XPU 或 NVIDIA 已验收。
   记录位于 ``/tmp/flagtree-fusion-rewrite-results/validation.json``，是临时验证记录。

2. **三模板 FX 原型可迁移测试和约束，执行框架不作为新主线。**
   ``python/triton/experimental/graph_fusion/_patterns.py:17`` 定义注册对象，
   ``_backend.py:17`` 仍只接受三个固定 kind；新增 matcher 不等于新增可执行实现。
   ``_runtime.py`` 自行解释 FX 并维护静态输入 guards，且没有接入 Inductor。
   当前限制包括连续非空二维输入、推理模式；XPU 矩阵仅 FP32、K<=1024，
   Softmax 宽度需为 128 的倍数且 <=1024。
   ``_kernels.py:46`` 的 XPU 矩阵用向量归约绕开该原型记录的 SDNN dot 问题。
   这是特定实现的限制，不能提升为所有 XPU 算子的通用能力上限；新版本需复测。
   ``python/test/unit/runtime/test_graph_fusion.py`` 的数值边界、拒绝条件和回退用例可复用。

3. **XPU kernel 编译有基础，Inductor 端接入仍需确认版本和激活路径。**
   ``third_party/xpu/backend/compiler.py:434`` 起的 SDNN 路径已有 combine、layout、
   bufferize 等处理，arch==4 使用 fuse_mma_vector_bias，另有 fuse_relu_activation。
   这些处理作用于收到的 kernel IR，不能单独证明模型子图自动识别成功。
   ``backend/_inductor_201`` 和 ``backend/_inductor_210`` 保存旧版适配；
   后者代码注释指向 PyTorch 2.1.0，并直接替换 TritonKernel、TritonScheduling、
   reduction 和 grid。部分调度固定 CLUSTER_NUM=8、CORE_NUM=64，限制一维 tiling。
   本次在现有入口与安装辅助代码中未找到将它们按当前 Torch 版本自动选择的连接点；
   厂商环境可能另有初始化，需现场确认，不能仅凭目录存在认定已生效。
   ``third_party/xpu/python/test/unit/operators/test_inductor.py:7`` 整个模块被 skip；
   文件内用例主要直接启动 Triton kernel，不能作为当前 torch.compile 整图通过的证据。
   此处 XPU 指 FlagTree 的昆仑芯后端；不能直接套用 upstream Intel XPU 的设备注册。

4. **已有手写算子和历史实验不应丢弃，也不能直接算作新的 Inductor 集成。**
   相邻 FlagGems 仓库的 ``src/flag_gems/fused/matmul_bias_activation.py``
   有 MatMul+Bias+ReLU 及测试，但从所检查实现看是直接调用 kernel。
   ``zhaoweiming/f06_g03_20261016_opt`` 的 overlay/报告另包含激活变体、
   Add+LayerNorm、Add+Softmax、Mul+Sum 等候选及旧环境测试。
   其矩阵数值约定与原型保留中间舍入的约定不同，迁移前须逐个核对。
   REPORT.md 明确说明多数用例尚未超过原生 Torch；这些应当是候选与回归资产，
   不应默认替换 Inductor 原生结果。本文核对了报告和相关源码，没有重跑历史实验，
   也没有重新审验全部原始样本或归档哈希。
   ``zhaoweiming/flagtree_graph_vs_torch_20261018`` 测的是旧 launch-capture 路径，
   其收益不能转移到当前 Inductor 入口。

5. **kernel 内专用优化与 F06 分开计量。**
   当前工作树另有 ``triton-eliminate-intermediate-memory``，见
   :doc:`intermediate-memory-elimination`。它处理已组合并内联的 TTIR，
   有固定 CTA 映射和调用方契约，默认流水线未开启，Inductor 入口也未调用。
   它可以独立保留，但不承担 F06 的图级匹配、融合选择或动态 Shape 管理。

Inductor 扩展方式
----------------

扩展点以实际部署的 Torch 版本为准，所有 ``torch._inductor`` 接口集中放入
兼容适配层。当前本地检查用的是 PyTorch 2.14.1+cpu，
git version ``5c4886908584029761b579af026dcfb627c84070``；
它是源码/接口检查基线，不是昆仑芯部署版本承诺。
历史 XPU 报告记录的是厂商 Torch 2.9.0 环境，应先取得该环境的实际兼容矩阵。

.. list-table:: 按缺口选择最小扩展
   :header-rows: 1
   :widths: 26 44 30

   * - 已证实的问题
     - 选用的机制
     - 边界
   * - 原生组合已正确且有收益
     - 保留原生 Inductor；只补支持记录、诊断和验收用例。
     - 不增加重写、不复制模板。
   * - 模型表达形式未命中既有组合
     - 必要时用 PatternMatcherPass/register_replacement 和 post-grad 自定义 pass 做等价规范化。
     - 优先使用规范化 ATen 图；新增重写单独证明合法性。
   * - 芯片需要不同实现或资源参数
     - 在目标版本的 lowering、模板/算法候选或 backend scheduling 入口加入芯片实现和配置；复用选择器。
     - 不预设所有候选必须单 kernel；保留合法的原生/外部库选择。
   * - 芯片特定组合不应融合
     - 使用已有配置或兼容适配层的候选/融合筛选，沿用上游依赖合法性检查。
     - InductorChoices.can_fuse 是启发式接口，不能代替别名/依赖合法性检查。
   * - 设备代码生成或 runtime 不兼容
     - 修复 FlagTree 对应 backend 与 Inductor 适配。
     - 注册方式取决于真实设备身份；CUDA 兼容设备不能无条件覆盖全局 cuda 后端。

当前本地版本可见 post_grad_custom_pre_pass/post_grad_custom_post_pass、CustomGraphPass.uuid、
register_backend_for_device，以及算法选择的 preprocessing/feedback 扩展。
这些都是候选接入点，需在目标版本验证签名、初始化时机、并发隔离和缓存行为。
不能因为本地 API 存在，就将其视为所有厂商 Torch 版本都具备的稳定公共接口。

模板登记只存项目增量：ID/版本、后端与版本范围、适用条件、数值约定、
开关/优先级、候选提供入口、验证依据。匹配和执行交给 Inductor。
对上游已有组合，登记条目可以仅引用原生能力，无需复制其匹配实现。
优先级也不能绕过合法性和收益选择。

自定义 pass 或策略影响编译结果时，将代码、策略、后端能力和数值模式的版本
纳入已有缓存身份；可使用当前版本支持的 CustomGraphPass.uuid 等机制。
仅在运行时日志记录策略版本不足以保证缓存正确。该衔接复用 F12 的缓存工作，
不新建第二套缓存；能力数据复用 F04，评测协议复用 F11。

实施顺序与完成判据
------------------

1. **先固定版本和打通真实后端。**
   记录 Torch/厂商补丁、FlagTree/Python/native 库、SDK/驱动、设备身份和初始化步骤。
   在 XPU 上从原生 Inductor 跑通逐元素、MatMul+Bias+ReLU、Add+Softmax 三个探针；
   记录实际代码生成路径、库调用、编译产物和执行结果，并保留 NVIDIA 对照。
   完成判据是确实执行目标芯片代码且溯源完整，不是 import 成功或 CPU 测试通过。

2. **建立原生能力矩阵，再决定新增内容。**
   覆盖 MM+Bias、MM+Bias+ReLU，后续激活变体，以及 Add+LayerNorm、Add+Softmax、
   Mul+Sum 等代表组合。后几种是现有资产支持的首批建议，不把它们解释为表格唯一组合。
   按 dtype、形状、stride、广播、芯片/版本分别记录：正确且有收益、正确但不融合、
   无合法实现、编译失败、数值不符、负收益。
   原生已满足的项直接进入验收；只有记录了具体缺口的项才进入开发。

3. **补最小策略/模板适配，并迁移已有测试。**
   优先解决 G01/G02/G03 的首个有证据的缺口，不批量重写原生组合。
   默认关闭尚未验证的自定义候选，未命中或约束不满足时保留原生图/候选。
   训练/autocast 仅在新增实现被验证后启用；否则保留原生 Inductor 路径。
   设备执行失败不得吞掉异常后重放原图。
   完成判据：模板开关可隔离、拒绝原因可见、加模板无需修改主流程，
   且原生通过的场景没有因新增策略退化为另一套 Python 解释执行。

4. **补动态边界与缓存验证。**
   测量符号形状范围内复用、对齐和资源阈值跨界、非连续 stride、空张量、
   新存储/新数值、模板策略升级后的重编译或失效。
   完成判据：合法性假设可追溯，跨界不会误用旧产物；不以零重编译作为目标。

5. **补两芯片收益门禁和可审查报告。**
   主 A/B 为同一 Torch、同一 FlagTree 后端、同一数值模式下的
   原生 Inductor 与启用项目扩展的 Inductor。Torch eager 用于参考/额外基线；
   若隔离 FlagTree 编译器收益，另做兼容环境下的上游 Triton 对照。
   保留合法未融合或外部库候选，记录编译时、稳态端到端延迟、必要的设备时间、
   launch/中间存储证据和显存指标。重复交错测量，报告离散程度与回归场景。
   按芯片、版本、形状/数值模式形成可回退策略；不根据单次最快值开启模板。
   上游 autotune 不保证所有新模板正确，也不保证所有 shape 都有端到端收益。

每个验收案例至少保留输入元数据、数值策略、实际后端身份、模板/候选选择或拒绝原因、
生成代码与编译产物身份、正确性结果、动态 guards/重编译信息、原始计时样本。
模式命中、编译成功、实际发生融合、数值通过、性能通过应分开记录。
回退执行不能记为融合成功；多 kernel 的合法选择也不能仅因数量大于一判为失败。

源码与外部参考
--------------

FlagTree 基础提交为 ``f4463cbb9d6a75523663e298af7c6bc7975f8a5a``，
但本评估针对带本地修改和未跟踪文件的当前工作树，提交号不代表全部被检查内容。
本轮只做源码、既有报告和本地接口核对，没有重新运行芯片性能实验。

本地 PyTorch 源码根目录是
``/tmp/flagtree-graph-rewrite-env/lib/python3.12/site-packages/torch/_inductor``：

* ``pattern_matcher.py``：register_replacement、PatternMatcherPass。
* ``config.py:304``、``fx_passes/post_grad.py:202``：自定义图 pass 的注册与调用。
* ``custom_graph_pass.py:15``：自定义 pass 的缓存身份。
* ``kernel/mm.py:327``、``kernel/mm.py:631``：MM/addmm lowering 与算法选择。
* ``decomposition.py:279``、``lowering.py:7963``：LayerNorm 分解、sum lowering。
* ``scheduler.py:8066``、``choices.py:628``：融合合法性与启发式分工。
* ``select_algorithm.py:6092``：算法选择入口及相关扩展。
* ``codegen/common.py:431``：设备后端注册。
* ``config.py:3164``：低精度中间转换模拟选项。

官方参考用于确认复用机制，具体实现仍以部署版本源码为准：

* `Inductor 模式匹配扩展示例 <https://docs.pytorch.org/tutorials/intermediate/torch_compile_conv_bn_fuser.html>`_
* `Inductor choices 源码 <https://github.com/pytorch/pytorch/blob/main/torch/_inductor/choices.py>`_
* `设备自动加载与 Inductor 注册 <https://docs.pytorch.org/docs/main/accelerator/autoload.html>`_
* `Inductor 图 IR 与融合设计 <https://dev-discuss.pytorch.org/t/torchinductor-a-pytorch-native-compiler-with-define-by-run-ir-and-symbolic-shapes/747>`_
