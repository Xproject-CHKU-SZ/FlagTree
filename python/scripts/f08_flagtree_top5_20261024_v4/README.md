# Qwen v4：峰值诊断，不实施新优化

## 范围与源码身份

仅 Qwen/Qwen3-Embedding-0.6B，固定 v3 模型 revision、64 句、B32/S24、FP32、cache-off。
基于已验证的 v3 服务器快照，execution/qwen/mul_kernel/tuple_bindings/support/export_adapter
六文件逐字节保持，见 V3-PINS.json。不是采用本地“阅读版注释”覆盖服务器模块。
原 DEPENDENCIES.json 的13项保持原样；共享 bridge/planner/wheel/venv 不改。
PRIOR-BASELINE.json 固定已验证v3包的原始MANIFEST、case、revision、图/输入/编译身份；
不能通过“改了旧文件再重算旧清单”替换本轮的历史参考。
新增诊断不会产生新的 FlagTree 优化收益，SiLU 仍为原生算子，Mul 才走真实 FlagTree。

## 方法

- 独立 run_diagnostics.py 只解析 Qwen 一项，不运行旧 run_top5.py 的多模型流程。
- fresh gate 保留严格 0/0 与输入/参数保护、四阶段编译和真实 PPU 启动。
- 正常对照：out/inplace 各1个独立进程，5预热+30测量，每轮2个B32 batch。
  qwen_measure 原函数不改；这些样本是当轮对照，不构成稳定性能结论。
- 同步诊断：两臂各2个独立进程，顺序 out/inplace、inplace/out；每进程采集两个batch。
  每节点同步/重置峰值，调用原 execution._execute，records=None。
  不调用共享 GELU execute_node，不用 trace 的中间量保活路径冒充推理峰值。
- storage_snapshot 将 max.dim 两叶子与 getitem/view 在当前快照内去重，
  记录 dtype/shape/stride/byte offset/device/底层容量与地址，以及逻辑producer/consumer来源。
  计划ID保持原逻辑身份，实际inplace别名单独反映，不强行与原计划裸指针相同。
- 元数据catalog共享常驻placeholder记录；新增view可替换静态记录，容量不重复算。
  指针只在每个检查点内用来去重；catalog hash不是分配生命周期ID。
- 日志、catalog和汇总不持有Tensor/Storage，不clone，不对每个节点进行哈希。
  只在各batch末端/计时外校验输出。
- 全部并列峰值节点保留；详细窗口固定选最早3个与最后1个并列峰值及其相邻节点，
  每窗口列最多8个最大非持久缓冲。完整记录仍可从raw catalog恢复，不删除离群值。

## 测试（服务器容器内）

```bash
cd /workspace/zhoulexian/FlagTree
ENTRY=python/scripts/f08_flagtree_top5_20261024_v4
sha256sum -c "$ENTRY/MANIFEST.sha256"
MINI=/data/ppu-benchmark/venvs/.venv_py3_12_sentence-transformers__all-MiniLM-L6-v2/bin/python
QWEN=/data/ppu-benchmark/venvs/.venv_py3_12_Qwen__Qwen3-Embedding-0.6B/bin/python
F08_REQUIRE_TORCH=1 "$MINI" -B -m unittest discover -s "$ENTRY" -p 'test_*.py' -v
F08_REQUIRE_TORCH=1 "$QWEN" -B -m unittest discover -s "$ENTRY" -p 'test_peak_diagnostics.py' -v
```

预期105/105全量、30/30诊断专项，无跳过。Mac本地目前是77通过/28跳过，
其中新专项23通过/7跳过；已完成无设备dry-run，不宣称真实CPU张量或PPU验证。

服务器禁止设置 F08_TEST_PLANNER_DIR 来绕过现场依赖。它只为本地测试选择已有冻结快照；
共享依赖若SHA不匹配应停止，不自动覆盖/更新清单。测试完成后冻结，再启动设备任务，
运行中不修改任何源码、测试、配置。

## 一条设备执行命令

先人工确认授权卡范围/预约并用 --exclude-cards 排除预约卡，不自动放宽18MiB上限。
下面只会选择安全空闲许可卡并整组固定；每worker复核占用与PID映射，不杀他人进程。

```bash
"$QWEN" -B "$ENTRY/run_diagnostics.py" \
  --prior-bundle /workspace/zhoulexian/Docs/f08_qwen_g1_tuple_20261023-01 \
  --output-dir /workspace/zhoulexian/FlagTree/logs/f08/qwen-peak-diagnostic-20261024-01 \
  --physical-card auto --idle-mib-max 18
```

若输出目录已存在，换新的编号，不删旧结果。只计划、不选卡可追加 --dry-run，
但仍需提供真实的本地v3证据包（读取并校验，不执行模型）。

## 产物与解释

- configuration.json、resolved-resources.json、prior-baseline-index.json：固定输入/来源。
- gate/：v4新身份的门禁，不修改v3 gate，不把旧baseline变成新实验。
- normal-flagtree-{out,inplace}/：正常对照，baseline-index.json保护其文件。
- diag-{1,2}-diagnose-{out,inplace}/diagnostic.json：每batch逐节点计数与storage catalog。
- peak-summary.json、PEAK-DIAGNOSIS.md：两臂节点对齐、并列峰值、28个选中Mul的局部峰值比较。
- selection/preflight/mapping/exit-occupancy：安全选卡与归还证据；最终MANIFEST排除自身。

逐节点同步会改变分配重叠，不能用其峰值或耗时替代正常结果。
peak-max(before,after)只是端点没捕获的分配；allocated减去已观察storage的差额
也可能含图外对象/分配粒度等，均标为未归因，不直接命名为GEMM/attention工作区。
原始v3包只读核对，不混入当前样本；不做STS/长稳/扩模型/新融合/arena优化/日报。

本轮在诊断报告完成后停止，由人审核：
1. 两次重复、两个batch的峰值位置是否一致，是否接近正常对照？
2. Mul同址是否只降低局部峰值但不影响整图峰值？
3. 存活大缓冲由谁持有、最后消费者何时执行？
4. 有无可安全释放/复用且能落到真实FlagTree的候选？
无证据充分候选就明确停止，不能自动进入优化。
