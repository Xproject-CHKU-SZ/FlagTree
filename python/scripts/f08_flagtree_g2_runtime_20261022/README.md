# F08-G02：真实 FlagTree 跨 kernel 缓冲绑定（2026-10-22）

这次是功能实现，不是再次 admission 审计。复用既有 G01/G02 planner 和已跑通的
FlagTree PPU GELU kernel，把规划的逻辑 storage 绑定到一个真正参与写入的 arena。
旧评测、旧 CPU 审计和历史原始记录均不改。

## 实现与明确边界

- `runtime.py`：读取既有 planner 的 assignment，创建真正的 arena 与输出 view；不同
  GELU kernel 的 Y 参数指向同一已规划区间，不调用 ATen out= 代替 FlagTree、不计算后 copy。
- 起步子集是 static dense fp32、full-size offset=0、单成员临时输出 storage；保护输入、
  参数、图输出和突变对象。未知别名、非零偏移、异形 slot 明确拒绝，不宣称通用 arena Pass。
- 复用前检查整个逻辑输出的最后消费者位置。所有臂在相同选中节点前执行设备完成屏障，
  确认旧消费者已经完成，再执行写入。这是保守的初版机制，不是低开销生产执行器。
- `worker.py`：复用旧 bridge 的真实导出器与 `compile_call`，而不是旧的卡14-only main；
  新入口贯通本次选中卡号、G03 evidence/expected_physical_card、进程映射和来源身份。
- 四臂：`torch / flagtree-out / flagtree-arena / flagtree-inplace`。前三者中 G02 只改变输出
  缓冲绑定；G03 inplace 是独立对照，必须通过当次 G03 合法性，不把两者收益相加。
- 每模型当前图重新通过逐 kernel、全图和 native wrapper 的严格 0/0；记录全部节点摘要、
  输入/参数未变、真实 TTIR/TTGIR/LLIR/hgbin、每次 arena 写入指针及完成合同。
- 性能进程不跑 trace/逐节点 hash/指针日志，不保活全部中间量；释放辅助引用的函数边界
  在四臂一致。arena 在预热前常驻并计入**总峰值**，不能用峰值减预热后冒充节省。
- `run_models.py` 自动选择当前空闲 PPU，显式传给 worker；同一整组实验固定卡号。
  默认空载上限沿用已批准 18 MiB，不自动放宽。已知保留卡用 `--exclude-cards` 排除。
  每个子进程前重新检查，PID/物理/逻辑映射不明则停，只终止本任务进程组。

## 这轮直接跑什么

默认：MiniLM-L6 → BGE-large-en-v1.5，B32/S24、每轮64句、warmup5、measured30、
四臂各3个独立进程。每个模型先通过新 gate，再进入该模型四臂，首模型失败不扩展。
总计2个新门禁和24个测量进程。不安装/下载，不改共享 venv，不启用 FlagGems-on 支线。

新 gate 的 `g2_runtime_applied_in_this_gate=true` 才是本次机制执行证据。
既有 planner 的 `offline_candidate_only/runtime_applied=false` 仍保留原意，不能改成 true；
规划器报告与新运行时证据分层，不把旧报告的 false 误读为本轮任务不能继续执行。
本轮范围由用户“弄完这个多多推进，实用 FlagTree，然后跑模型”新要求指定，
旧 admission 的 CPU-only 停点已经完成，不需再重复该审计或逐卡询问。

## 容器内：一次测试，然后直接跑模型

```bash
cd /workspace/zhoulexian/FlagTree
sha256sum -c python/scripts/f08_flagtree_g2_runtime_20261022/MANIFEST.sha256

PY='/data/ppu-benchmark/venvs/.venv_py3_12_sentence-transformers__all-MiniLM-L6-v2/bin/python'
F08_REQUIRE_TORCH=1 "$PY" -B -m unittest discover \
  -s python/scripts/f08_flagtree_g2_runtime_20261022 -p 'test_*.py' -v

python3 -B python/scripts/f08_flagtree_g2_runtime_20261022/run_models.py \
  --physical-card auto \
  --output-dir logs/f08/g2-flagtree-runtime-20261022-01
```

测试应为26项执行通过、无跳过；有失败/跳过不执行下一条。源代码在开始 gate 后冻结，
不一边跑一边补测试/改 README/重算身份；修复另存版本与全新输出组，保留失败现场。
若输出目录已存在，另取新编号；不删除旧目录。没有空闲卡就等待/报告，不杀他人任务。
若 MiniLM 先跑：可加 `--limit-models 1`；但本轮默认两模型已在任务范围内，不必为第二模型再停问。

有已知保留卡时添加 `--exclude-cards 4 12` 等现场准确名单，这里只是语法示例，不是实际预约信息。
如必须指定卡可 `--physical-card 7`，仍会检查其空闲和映射，不默认认定7可用。

## 结果入口和可汇报内容

- `RESULTS.md`：全部完成后自动生成的人可读四臂表，不是自动更新日报。
- `suite-summary.json` 和各模型 `summary.json`：完整结果才汇总；不拼接缺臂/混卡实验。
- `gate/arena-writes.json`：不同节点实际绑定同一地址的证据。
- `gate/runtime-binding.json`：原计划→派生 offset→逻辑 storage→arena、最后消费者合同。
- `gate/compiler/`、各臂 `compiler/`：真实 FlagTree 四阶段产物。
- `rep-*/result.json`：全部30样本、总峰值 allocated/reserved、arena常驻与观测增量。
- `selection.json`、`mapping.json`、`exit-snapshot.json`：选卡、PID映射和退出状态。

只有服务器真实运行后才能写“机制通过/模型通过”。G2 若总峰值不降，照实写机制完成但
收益未通过；不把静态累计 no-reuse 容量或历史 G03 的3.21/8.125 MiB写成本轮 G02 收益。
新四臂都含同位置完成屏障，延迟只在本轮内对照，不与旧无屏障表直接比较，也不宣称全模型FlagTree。
S24 输入是沿用基准的两句文本重复，并非正式任务评测语料；全图严格一致性不是 STS12 验收。

## 本地交付时的证据等级

本地未装 torch/无 PPU：20项纯 CPU/规划/选卡/汇总测试通过，6项实际 torch CPU测试跳过；
服务器必须以 F08_REQUIRE_TORCH=1 跑完26项后立即按上述顺序执行新功能。另有语法与两模型
dry-run通过，均不是设备结果。未更新日报，未改任何旧冻结代码或原始记录。
