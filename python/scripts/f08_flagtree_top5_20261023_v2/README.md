# Qwen G1 导出适配 v2

## 目标、假设与方法

TOP5是搜/广/推各五个模型。本轮只推进搜索重点
`Qwen/Qwen3-Embedding-0.6B`，revision `97b0c614be4d77ee51c0cef4e5f07c00f9eb65b3`。
BGE-M3上一轮stage-complete与8.125MiB收益保留，不重复测量，不扩其他模型。

原失败：causal-mask图含functorch/vmap包装张量，读取BatchedTensorImpl的storage失败。
乘法尚未编译，不能说FlagTree kernel失败，也不能跳过节点或编造storage。

v2尝试官方 `ExportedProgram.run_decompositions(decomp_table={})`，使用空可选分解表
做导出函数化，不手工替换mask，不更换注意力后端，不默认全面分解模型。
该接口能否消除现场vmap包装必须用实际torch与真实Qwen验证；本地缺torch，尚未证明。

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
- 共48项：原29项+新增19项；新增含6项真实torch CPU四层vmap导出回归。
  本地34项通过、14项缺torch跳过；服务器必须48/48无跳过。CPU回归不代替真实模型或PPU。

## 执行（个人容器，每一步通过才进入下一步）

```bash
cd /workspace/zhoulexian/FlagTree
MINI='/data/ppu-benchmark/venvs/.venv_py3_12_sentence-transformers__all-MiniLM-L6-v2/bin/python'
QWEN='/data/ppu-benchmark/venvs/.venv_py3_12_Qwen__Qwen3-Embedding-0.6B/bin/python'
ENTRY='python/scripts/f08_flagtree_top5_20261023_v2'
sha256sum -c "$ENTRY/MANIFEST.sha256"
F08_REQUIRE_TORCH=1 "$MINI" -B -m unittest discover -s "$ENTRY" -p 'test_*.py' -v
F08_REQUIRE_TORCH=1 "$QWEN" -B -m unittest discover -s "$ENTRY" -p 'test_export_adapter.py' -v
"$MINI" -B "$ENTRY/run_top5.py" --stage qwen \
  --output-dir logs/f08/qwen-g1-normalize-20261023-01 --physical-card auto
```

先MiniLM环境48项，再Qwen环境19项（含真实导出6项）均无跳过；若失败停留原始证据。
实际模型通过门禁后直接三臂各3进程，不停在审核完成处。
默认stage=qwen，all/bge只为兼容保留，本轮不运行。完整Qwen组为gate+9测量进程。
目录已存在就换新编号，不覆盖/拼接旧gate。DEPENDENCIES12项不匹配先报告，不覆盖凑哈希。
自动选择许可空闲PPU，18MiB上限不自动增加，完整进程表/0利用率/PID映射，整组同卡。
--exclude-cards排除预约禁用卡，不终止他人任务、不清共享缓存。

## 交付

原/派生图、各自指纹、规范化报告、G1/G03、FlagTree四阶段/探针、3×3原始样本、
baseline-index、实际收益或阻塞、模型环境/物理映射/退出占用。失败也保留原始现场。
不更新日报，不下载/安装，不改共享环境，不追加长稳/STS/A100，不预先承诺收益。
完成后回报：做了什么、用了什么方法/工具、结果、局限、下一步与F08/FlagTree方向。

官方接口依据（不等于本模型已验证）：
https://docs.pytorch.org/docs/2.10/export.html
https://github.com/pytorch/pytorch/blob/v2.10.0/torch/export/exported_program.py
