F06 当前实现加速比复测（2026-10-20）
====================================

本轮实际重新运行。冻结当前本地源码；未修改生产融合实现。所有结果、测试脚本、源码快照及日志保留本地。

总体结果
--------

每台设备 117 项：13 个模板 × FP32/FP16/BF16 × (M,N)=(16,128),(32,256),(64,1024)，矩阵 K=64。
每条路线两轮独立进程。先取各轮 7 个 batch 的中位数，再取两轮中位数，按逐例加速比计算几何平均。
加速比=基线耗时/当前耗时，大于 1 表示更快。表中 PyTorch 均为 eager。

.. list-table:: 全部 117 项相对 PyTorch eager
   :header-rows: 1

   * - 设备
     - 默认配置
     - 捕获前选参
     - 默认胜出数
     - 选参胜出数
   * - p800
     - 1.3831x
     - 1.4661x
     - 111/117
     - 113/117
   * - rtx4090
     - 1.4218x
     - 1.4267x
     - 117/117
     - 117/117

两台设备当前实现两轮均 117/117 通过：同输入数值、输入不变、输出新分配/保留、多次调用及实际 fused 模式检查。
不将编译或数值失败、eager 回退计为融合性能。选参采用当前 select_configs + FlagTune event benchmark 的有限候选评测，未启用外部模型。
选参发生在捕获前；最终计时使用固定配置。本轮测量逻辑调用耗时，不是 CUDA Graph replay 或完整模型端到端吞吐。

P800 原始 Inductor→FlagTree 对照
-------------------------------

原始包每轮测试 117 项，通过数分别为 94、94；共同有效比较集 94 项。
共同有效集上，默认配置相对原始包融合性能为 3.0112x，选参后为 3.1962x（几何平均）。
以各进程配对 eager 归一化后分别为 3.0092x、3.1940x；原始/当前进程 eager 耗时比的几何平均为 1.0007。
原始包在其有效集上相对 eager 为 0.4607x。上述对比仅覆盖通过数值检查的子集，不外推到失败用例。

原始包快照 SHA-256：3ddad73d0124321977c533b582ffdd230aa1a43f2057a61a50f5d54932f2f2a7。
每个原始进程核验 1194 项文件；原始包与当前包、进程、缓存隔离。原始进程不载入 F06、无 compiler/driver 覆盖、无本周 LLVM19 选项。
沿用既有 triton_key/AttrsDescriptor/目标元数据/launch hook/do_bench 接口兼容层，及 assert_indirect_indexing=False 发布配置；不修改融合划分、调度、lowering。
fullgraph=True、suppress_errors=False、mock compile=false；生成代码、外部库调用及编译产物保留。相同输入字节哈希和参数哈希逐例匹配。
RTX4090 本轮仅对比 eager；没有把当前安装的 NVIDIA 包冒充为“本周工作前”的原始包。

原始包数值失败分布（按第一轮，完整错误见 summary.json）：

* matmul_bias_gelu_tanh, torch.float32: 3 项。
* matmul_bias_gelu_tanh, torch.float16: 3 项。
* matmul_bias_gelu_tanh, torch.bfloat16: 3 项。
* matmul_bias_silu, torch.bfloat16: 3 项。
* add_layernorm_affine, torch.bfloat16: 3 项。
* mul_sum, torch.float16: 1 项。
* mul_sum, torch.bfloat16: 3 项。
* mul_sum_keepdim, torch.float16: 1 项。
* mul_sum_keepdim, torch.bfloat16: 3 项。

仍慢于 PyTorch 的 P800 用例
---------------------------

以下列出默认或选参任一路线不超过 1x 的项目；不是只展示最快配置。

* add_gelu_exact, torch.bfloat16, [64, 1024]: 默认 0.318x，选参 0.318x；eager/default/tuned = 21.007/66.049/66.018 us。
* add_gelu_exact, torch.float16, [64, 1024]: 默认 0.331x，选参 1.527x；eager/default/tuned = 21.230/64.069/13.902 us。
* add_layernorm_affine, torch.bfloat16, [32, 256]: 默认 0.885x，选参 1.601x；eager/default/tuned = 28.978/32.737/18.099 us。
* add_softmax, torch.bfloat16, [64, 1024]: 默认 0.814x，选参 0.820x；eager/default/tuned = 20.879/25.643/25.453 us。
* matmul_bias_gelu_exact, torch.bfloat16, [32, 256]: 默认 0.995x，选参 0.996x；eager/default/tuned = 46.526/46.767/46.701 us。
* matmul_bias_gelu_exact, torch.bfloat16, [64, 1024]: 默认 0.535x，选参 0.535x；eager/default/tuned = 46.880/87.687/87.673 us。

分模板几何平均
--------------

.. list-table:: 相对 PyTorch eager
   :header-rows: 1

   * - 模板
     - P800 默认/选参
     - RTX4090 默认/选参
   * - add_gelu_exact
     - 1.066/1.278x
     - 1.243/1.252x
   * - add_gelu_tanh
     - 1.434/1.450x
     - 1.250/1.255x
   * - add_layernorm
     - 1.341/1.736x
     - 1.576/1.587x
   * - add_layernorm_affine
     - 1.179/1.466x
     - 1.314/1.320x
   * - add_silu
     - 1.503/1.521x
     - 1.264/1.264x
   * - add_softmax
     - 1.158/1.159x
     - 1.092/1.099x
   * - matmul_bias
     - 1.581/1.589x
     - 1.376/1.376x
   * - matmul_bias_gelu_exact
     - 1.332/1.373x
     - 1.810/1.824x
   * - matmul_bias_gelu_tanh
     - 1.563/1.583x
     - 1.827/1.834x
   * - matmul_bias_relu
     - 1.702/1.708x
     - 1.779/1.776x
   * - matmul_bias_silu
     - 1.570/1.598x
     - 1.841/1.845x
   * - mul_sum
     - 1.362/1.368x
     - 1.224/1.229x
   * - mul_sum_keepdim
     - 1.345/1.349x
     - 1.197/1.196x

协议、开销和边界
----------------

* 同一设备每例同输入、同 dtype/精度设置；1 CPU thread，TF32 和 FP16/BF16 reduced-precision reduction 关闭。
* 预热 8 次，每例 CPU 预热 0.5 秒；7 轮 × 40 调用；路线顺序轮换，batch 前后同步。计时含 Python 调用和新输出分配。
* P800 单 GPU5/CPU96；RTX4090 单卡/CPU0。监控选中 GPU 的外来进程，全部正式运行无外来进程冲突。主机其余 GPU 可有其他任务，未修改系统频率策略。
* P800 顺序 original A→candidate A→candidate B→original B；各自配对 eager，用相同标量容差检查。绝对吞吐不跨设备直接比较。
* 编译首调用与选参开销单独记录并排除；选参使用 warmup=5 ms、measurement=15 ms、use_cache=False。旧三模板保留已验证固定策略。
* P800 BF16 矩阵融合可能使用 native mm + Triton epilogue；fused 标签不等于一个 GPU kernel，实际调用见 execution 字段。
* 本轮覆盖规定的 3 组对齐形状，没有重测尾部形状、八卡任务或真实大模型。

p800：每例选参耗时中位数 0.7634s，最大 1.9313s；两轮整体默认/选参加速比分别为 1.3789/1.4657x, 1.3874/1.4667x。仅新增 90 项的默认/选参几何平均为 1.3606/1.4665x。

rtx4090：每例选参耗时中位数 0.1481s，最大 0.2843s；两轮整体默认/选参加速比分别为 1.4388/1.4425x, 1.4048/1.4108x。仅新增 90 项的默认/选参几何平均为 1.4321/1.4379x。

本地交付与清理
--------------

* per_case.csv：234 行逐例汇总；含 P800 原始包有效对比列。
* summary.json：两轮通过数、失败明细、负收益项及统计。
* source/ 与 source_manifest.json：冻结源码及 39 项哈希；source_acceptance.json 证实实现源码未修改。
* evidence/：完整逐例测量、生成代码、编译缓存、运行环境及设备监控；两份 evidence.tar.gz 已校验 SHA-256 和逐文件清单。
* 原始基线失败保留，不调整误差阈值、不修改原始数学表达式。
* 初次 P800 系统盘空间不足的未完成副本已移除，运行目录迁往数据盘。两台机器的本次临时目录均在证据回收校验后清除；清理记录见 cleanup.json。
