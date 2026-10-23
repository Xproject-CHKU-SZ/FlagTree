# TOP5重点模型：BGE-M3峰值定位与Qwen FlagTree候选

## 范围

用户2026-10-23确认按项目重点模型推进：BGE-M3为主要优化对象，
Qwen/Qwen3-Embedding-0.6B为下一重点接入。MiniLM只作回归，不默认扩大相似模型列表。
本入口独立另存，不改已完成的五模型短程、长稳、G1/G2冻结产物或共享环境。

### BGE-M3

复用原样的FlagTree GELU kernel、导出器、G1/G03、正常执行器。
重新fresh gate和三臂短程，保存本轮匹配基线；再以两个独立进程做out/inplace逐节点峰值诊断。
诊断复用原节点执行/引用释放函数，只保存storage指针、容量、节点名及统计，不clone或保活中间量。
记录峰值节点前后存活storage与计划storage ID，以及节点内高于端点的未定位分配。

诊断每节点同步会改变执行/分配重叠，因此其峰值、耗时不可代替正常执行结果或直接作性能归因。
本轮不先承诺LayerNorm、Add、SDPA或copy必然是下一优化目标。

### Qwen3-Embedding-0.6B

完整保留SentenceTransformer.forward的本地模块序列、pooling与normalization；
不强制改成mean pooling，不使用encode文本prompt作为另一个基线。
本入口显式FP32；该revision原配置标注BF16，不能与旧BF16结果混算。
单次Embedding不评测生成/KV-cache，显式在原生wrapper和导出图共同关闭use_cache，记录原值。
原配置来源：https://huggingface.co/Qwen/Qwen3-Embedding-0.6B/raw/97b0c614be4d77ee51c0cef4e5f07c00f9eb65b3/config.json

候选仅为**SiLU直接输出接等形状乘法**：保留原生SiLU，乘法通过新的FlagTree PPU kernel执行。
不是SiLU融合、不是完整SwiGLU融合、不是全模型FlagTree，也不是新增MLIR Pass。
选择乘法SiLU输入为同址目标，必须是临时storage且G03在当次真实PPU证据下允许覆盖；
两输入与输出均须FP32、等形状、连续、offset=0、完整storage且原生三个storage互不重叠。
不接入广播、mask乘法、标量乘法、未知alias或图输入/参数等受保护storage。

kernel每lane读取两个同位置元素再写回，正常两臂复用同一kernel，仅destination绑定不同。
不调用ATen out=完成生产计算、不计算后copy、不全局patch分配器。

fresh gate顺序：完整真实图→G1计划/布局证据→现有G03逐输入合法性→
真实PPU编译四阶段→N=1/255/257边界探针及真实中间量探针→全图严格0/0及逐节点摘要→三臂。
每次同址探针核对返回指针与目标指针，未覆盖的另一个操作数不变。
compiled启动包括全部constexpr源参数，避免重现旧18/15参数问题。

torch.export、实际图tuple/多输出绑定或cache-off流水线若不支持，保留构图协议、实际算子/图结构
（在已导出时）与failure.json，停止该阶段，不以原生跑通、GELU或放宽0/0替代。
本地没有torch，不能预先声称Qwen导出/FlagTree启动或收益已经通过。

## 运行

```bash
cd /workspace/zhoulexian/FlagTree
MINI='/data/ppu-benchmark/venvs/.venv_py3_12_sentence-transformers__all-MiniLM-L6-v2/bin/python'
ENTRY='python/scripts/f08_flagtree_top5_20261023'
sha256sum -c "$ENTRY/MANIFEST.sha256"
F08_REQUIRE_TORCH=1 "$MINI" -B -m unittest discover -s "$ENTRY" -p 'test_top5.py' -v
"$MINI" -B "$ENTRY/run_top5.py" \
  --output-dir logs/f08/top5-focus-20261023-01 --physical-card auto
```

要求29/29无跳过。CPU乘法回调只是执行器测试stand-in，不是FlagTree/PPU证据；
生产入口只加载mul_kernel.compile_call，真实门禁另行验证。

默认先BGE-M3、后Qwen，各fresh gate+三臂×3；BGE另有2个诊断进程，总计22个子进程。
输入固定64句、B32/S24、FP32、warmup5、measured30；形状和非padding token长度保存于pipeline。
延迟采用每轮前后同步；无正常计时路径的逐节点全局屏障、指针采集、clone或哈希。
不把S128选项的padding当作128个真实token。无本轮长稳/STS/A100任务评测。

可选 --stage bge 或 --stage qwen 独立运行单阶段；--gate-only 只做门禁；
--dry-run 不访问PPU或模型、不代表资源存在或执行成功；不使用它生成性能数据。
输出目录必须不存在，已有目录换新编号，不覆盖或混用其他卡/其他环境的旧gate。

自动选安全空闲且允许使用的PPU；--exclude-cards 排除预约/禁用卡，默认上限18MiB，
不自动放宽，整组固定同卡，每个worker核对PID→物理卡→cuda:0。只清理本任务超时子进程组。
没有下载、安装、清共享缓存或修改wheel/venv的操作，不更新日报。

输出：每模型case、gate/编译产物/数值证据、9份原始样本、summary，
BGE额外node-events，根目录baseline-index与RESULTS.md。缺臂不生成完整性能表，
先完成的BGE阶段另存stage-complete，Qwen失败不抹掉BGE结果。

## 依赖及边界

DEPENDENCIES.json固定已验证的比较入口6文件、共享选卡/子进程函数2文件、G1/G03模块4文件。
检查不匹配先留档，不覆盖服务器实现来使哈希通过。bridge.environment在gate与测量中记录现场身份。
不调用旧bridge中写死物理14的main/correctness_gate；复用的build、编译函数和新的门禁显式传当前卡。
原始G03报告runtime_release不修改，显式新执行器在真实门禁中证明使用情况。

本阶段目标是BGE真实峰值来源与Qwen重点模型的可验证候选，不保证新候选节省显存或加速。
两臂总峰值allocated/reserved与p50/p95/吞吐如实对比，原生列另列替换开销。
CPU/静态/编译产物存在/真实启动/全图正确/短程收益分别报告。
