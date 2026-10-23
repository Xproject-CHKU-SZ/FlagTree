# Qwen G1 多输出绑定适配 v3

## 目标、假设与方法

TOP5是搜/广/推各五个模型。本轮只推进搜索重点
`Qwen/Qwen3-Embedding-0.6B`，revision `97b0c614be4d77ee51c0cef4e5f07c00f9eb65b3`。
BGE-M3上一轮stage-complete与8.125MiB收益保留，不重复测量，不扩其他模型。

v2已在真实PPU上消除vmap包装：28个SiLU与28个直接Mul保留。
当前失败在pooling的aten.max.dim：返回values/indices两个Tensor，G1原适配器不支持tuple。
乘法尚未编译，不能说FlagTree kernel失败，也不能跳过输出或编造storage。

沿用v2已验证的官方 `ExportedProgram.run_decompositions(decomp_table={})`，使用空可选分解表
做导出函数化，不手工替换mask，不更换注意力后端，不默认全面分解模型。
不改变v2构图路线。v3的多输出适配尚未完成真实Qwen/PPU验证，本地缺torch。

新增tuple_bindings.py，只支持aten.max.dim与其显式getitem(0/1)，不泛化未知tuple算子。
分别观测values/indices真实storage；max任务有两个输出，不给tuple容器分配虚构storage。
getitem投影与对应叶子按实际指针/容量/偏移/shape/stride合并别名，不重复计算容量。
每个tuple用户在计划中引用两个叶子作为保守所有权边：tuple最后一次使用前都不能释放；
投影后的Tensor若被晚消费，其storage生命周期继续延长。计算图和运行时tuple不改写。
operator.getitem在计划中使用合法稳定ID python.operator.getitem，实际算子仍为operator.getitem。
不修改G1 schema或planner。未知容器用户、动态投影、伪造别名/布局等明确拒绝。
计时外逐节点比较同时覆盖两个分量；正常计时没有新增哈希/tuple遍历或同步。

同时先把完整wrapper和tokens移到实际PPU再导出。CPU导出中的device字面量不会随
参数`.to(cuda)`迁移；v2不粗暴重写device节点，直接在正确设备上下文生成原图/派生图。
三臂使用同一派生图、新gate与新基线。构图修正本身不是优化收益。

## 边界

保持原FlagTree Mul kernel逐字节不变，仅接通过当次G1/G03的真实SiLU→等形状Mul。
SiLU原生，不是完整SwiGLU融合、全模型FlagTree或新MLIR Pass。
共享bridge、planner、G03、wheel/venv、G02负结果、BGE与旧Qwen失败包均不改。

规范化后检查：无functorch/vmap全局操作、无未知Python/高阶副作用节点、无遗留原地写；
输入/state合同、SiLU数量、直接SiLU→Mul数量保持。旧图SiLU有28个，不能套MiniLM的6个。
结构通过仅允许继续真实观测；storage仍来自执行期untyped_storage，失败定位报错不吞掉。

随后沿用完整SentenceTransformer.forward含原pooling/normalization、FP32、两路径共同
cache-off、当次PPU布局及G1/G03、真实FlagTree四阶段与launch、N=1/255/257及中间量探针、
返回目标指针/另一操作数不变、逐节点与全图严格0/0、参数/输入未变，才进行三臂。
若规范化/签名/多输出映射/别名/数值失败，保留原图、派生图、报告与traceback停止。
不手写mask凑通过，不尝试其他分解或后端碰运气，不以原生运行代替FlagTree成功。

## 工具与验证

- export_adapter：单次公开导出规范化，保存两图、算子计数、合同和候选覆盖。
- 既有G1/G03：真实storage生命周期、别名与同址合法性，不放宽。
- 原FlagTree Mul：真实PPU编译/执行，非ATen out生产结果。
- 三臂：torch参考、flagtree-out基线、flagtree-inplace候选；同模型/图/输入/设备/kernel。
- 64句、B32/S24、FP32、warmup5/measured30，总峰值allocated/reserved，原始30样本。
- 共75项：v2的48项+tuple新增27项（20项纯合同/G1生命周期、7项真实CPU）。
  本地54项通过、21项缺torch跳过；服务器MiniLM环境75/75、Qwen环境新增27/27无跳过。
  CPU回归不代替真实模型或PPU。纯合同使用固定哈希的既有schema/liveness，未放宽校验。

## 执行（个人容器，每一步通过才进入下一步）

```bash
cd /workspace/zhoulexian/FlagTree
MINI='/data/ppu-benchmark/venvs/.venv_py3_12_sentence-transformers__all-MiniLM-L6-v2/bin/python'
QWEN='/data/ppu-benchmark/venvs/.venv_py3_12_Qwen__Qwen3-Embedding-0.6B/bin/python'
ENTRY='python/scripts/f08_flagtree_top5_20261023_v3'
sha256sum -c "$ENTRY/MANIFEST.sha256"
F08_REQUIRE_TORCH=1 "$MINI" -B -m unittest discover -s "$ENTRY" -p 'test_*.py' -v
F08_REQUIRE_TORCH=1 "$QWEN" -B -m unittest discover -s "$ENTRY" -p 'test_tuple_bindings.py' -v
"$MINI" -B "$ENTRY/run_top5.py" --stage qwen \
  --output-dir logs/f08/qwen-g1-tuple-20261023-01 --physical-card auto
```

先MiniLM环境75项，再Qwen环境27项（含真实tuple 7项）均无跳过；若失败保留原始证据。
实际模型通过门禁后直接三臂各3进程，不停在审核完成处。
默认stage=qwen，all/bge只为兼容保留，本轮不运行。完整Qwen组为gate+9测量进程。
目录已存在就换新编号，不覆盖/拼接旧gate。DEPENDENCIES13项不匹配先报告，不覆盖凑哈希。
第13项固定本适配器调用的共享graph.py；原12项不变。测试用F08_TEST_PLANNER_DIR只为本地
读取已校验的服务器快照，服务器不要设置此覆盖项，直接使用仓库现有planner；无论路径均固定哈希。
自动选择许可空闲PPU，18MiB上限不自动增加，完整进程表/0利用率/PID映射，整组同卡。
--exclude-cards排除预约禁用卡，不终止他人任务、不清共享缓存。

## 交付

原/派生图、各自指纹、规范化报告、tuple-bindings.json、G1/G03、FlagTree四阶段/探针、3×3原始样本、
baseline-index、实际收益或阻塞、模型环境/物理映射/退出占用。失败也保留原始现场。
不更新日报，不下载/安装，不改共享环境，不追加长稳/STS/A100，不预先承诺收益。
完成后回报：做了什么、用了什么方法/工具、结果、局限、下一步与F08/FlagTree方向。

官方接口依据（不等于本模型已验证）：
https://docs.pytorch.org/docs/2.10/export.html
https://github.com/pytorch/pytorch/blob/v2.10.0/torch/export/exported_program.py
