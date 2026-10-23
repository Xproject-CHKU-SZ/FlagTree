# 清单驱动的 FlagTree 多模型优化前后对比

## 本轮做什么

沿用已在 PPU 验证过的 exact fp32 GELU FlagTree kernel 和 G1/G03 合法性分析，扩展代表模型。
每个模型先重新分析真实执行图、别名与最后消费者，再做真实 FlagTree 编译、启动、逐位正确性门禁。
门禁通过后，交错运行三条路径各三独立进程：

1. torch：同导出图的原生参考。
2. flagtree-out：同一 FlagTree kernel 写独立输出，作为未启用原地复用的匹配基线。
3. flagtree-inplace：同一 kernel 合法同址写入，作为优化后结果。

既有 arena 原型不修改、不删除，也不拿它的负收益做新基线。这里复用原有单 stream 图执行器，
不引入 G02 常驻 arena，不通过给 G02 屏障传 no-op 来绕过其完成合同。
这是已有 G03 优化的模型覆盖和实用执行路径验证，不是新增完整编译 Pass 或“全模型 FlagTree”。

## 模型安排与原表依据

源表只读，SHA-256 与行号记录在 catalog.json。TOP5模型 页实际是三场景15个推荐项。
默认依次尝试：MiniLM（回归）、BGE-M3（检索重点）、E5、MxBai（不同家族）、BGE-large（回归）。
其余三项可用 --models 指定；不是默认全部适配成功的列表。

Qwen、GTE、Snowflake 的旧原生适配结果保留，但是否适用 exact GELU 必须重新导出、审计。
没有合法 exact GELU 就 not_applicable。资源缺失就 resource_blocked_not_run。
CLIP、Reranker、Qwen-VL、DIN/DLRM/OneRec 等需专用图输入和任务适配器，不强套 sentence_embedding。
TOP5重点不等于现有优化都适用。原表适配状态为空只代表未记录，不能推断为通过。

BGE-M3 首次从已有 refs/main 读取唯一 revision，固定写入本轮 case；不任选 snapshot、不下载。
其他模型优先使用已留档 revision。缺本地 modules.json/权重/可执行 venv 或含 auto_map 就不擅自继续。
这只是本地资源前置检查，不代表模型一定能导出、运行或收益为正。

## 基线与统计

输出目录必须不存在，所有结果以 exclusive-create 写入。不得覆盖历史目录。
保存每次原始30样本、加载/编译身份、模型 revision、图与输入/权重摘要、设备映射和峰值。
baseline-index.json 记录本轮 torch/out 的全部产物哈希；收尾独立复验。
独立输出 vs 原地输出必须来自同一次 gate、同一模型/输入/设备/编译身份与协议，缺臂拒绝汇总。
各臂独立输出结果始终保留，任何负结果原样报告。跨模型/跨协议/跨卡数据不拼表计算收益。

固定64句，warmup5，measured30，每轮按 batch_size 分批。冷启动和编译不计入稳态；
预热后同步并重置峰值；表中使用总峰值 allocated/reserved，不能拿“峰值减预热”冒充显存节省。
报告 p50、p95、吞吐和每臂峰值的跨进程中位数；不删离群值。新脚本无逐节点全局屏障，
因此与旧 G02 有屏障表不直接计算加速率。

默认文本沿用项目既有64句，S128 是固定形状，不保证每句有128个非padding token；
实际 token 形状与非padding长度写入 gate/pipeline。需要满长文本时，显式传新的 --texts-config，
并为其重跑匹配基线。这里不自动更换任务 prompt 或把 SentenceTransformer.forward 当 encode 评测。

--longrun 可选在每模型短程完成后，对 out/inplace 各运行1000轮，每100轮记录存活 allocated/reserved、
输出摘要，始终不保留历轮 tensor、不 empty_cache。长稳检查点含计时外哈希工作，
不纳入短程延迟/纯前向峰值收益结论。不自动把有限观察写成“完全无泄漏”。

0/0 门禁只证明固定输入三路径数值一致，不替代 STS/Recall/MRR 等任务精度或 A100 对齐。
缺少匹配的 revision、数据和协议就明确未测，不借用旧 A100 分数作为本轮达标证明。

## 执行（个人服务器容器）

```bash
cd /workspace/zhoulexian/FlagTree
MINI='/data/ppu-benchmark/venvs/.venv_py3_12_sentence-transformers__all-MiniLM-L6-v2/bin/python'
ENTRY='python/scripts/f08_flagtree_model_compare_20261022'
sha256sum -c "$ENTRY/MANIFEST.sha256"
F08_REQUIRE_TORCH=1 "$MINI" -B -m unittest discover -s "$ENTRY" -p 'test_suite.py' -v
```

服务器应27/27，无跳过；本地无 torch 时只能完成22项纯软件检查，5项必须在服务器真正执行。
通过后开始真实模型，不需要再单独申请一个 CPU 审计阶段：

```bash
"$MINI" -B "$ENTRY/run_models.py" \
  --output-dir logs/f08/model-compare-20261022-01 --physical-card auto
```

需要长稳时，给首次执行命令加 --longrun；旧目录已经运行过则改为全新 -02。
支持 --models 精确选择模型、--exclude-cards 排除预约卡、--batch-size 32/64、--seq-len 24/128。
只读使用现有共享资源，自动选安全空闲且允许使用的卡；上限仍为18MiB，不自动上调。
整个套件固定一张卡，每个子进程启动前复核占用，进程内核实物理卡/PID/cuda:0；失去空闲条件就停止。
无任何终止他人进程/清共享缓存/安装依赖/改共享 wheel 的操作。

输出 RESULTS.md 是本次实际结果汇总，不是日报。新数据没有生成之前，不填预测收益。
未更新日报、冻结评测源码、旧 G1/G2 交付或旧原始测量。

## 依赖

同级已有 f08_flagtree_g2_runtime_20261022/common.py 与 run_models.py 仅复用选卡、
进程隔离、超时终止本任务进程组等功能；G2 runtime.py 不被执行。
编译器入口复用同级 f08_flagtree_eval/{worker,graph,kernel}.py；合法性依赖
python/flagtree/memory_planner/inplace_legality.py 及其 schema/liveness/offset_planner。
新 gate 按真实设备记录新身份，禁止调用旧硬编码14号卡的 main/gate 入口。
