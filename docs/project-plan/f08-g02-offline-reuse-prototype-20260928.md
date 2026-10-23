# F08 G02 离线缓冲复用规划第一阶段

日期：2026-09-28。当前状态：**静态候选规划与验证完成，运行时绑定尚未实现**。

## 本次目标与边界

从 G1 的 storage 生命周期推进到字节级 offset 规划，回答“哪些底层 storage 能共用一段地址”。
本次增加纯 Python 离线规划器与独立检查器，不修改 FlagTree 编译 pass、不替换 PyTorch allocator、不占用算卡。
所有候选产物标记 `offline_candidate_only`、`runtime_applied=false`、`default_runtime_policy=disabled`。
原 G1 v3 交付包不修改；本次 SHA-256 校验仍为 52/52 通过。

## 已实现内容

- 同一 storage 的别名成员只分配一次，使用 G1 合并后的整个 storage 生命周期。
- 只规划具体大小的内部 temporary；输入、参数、cache、持久对象、图输出以及突变组均留在原分配器。
- 生命周期使用闭区间。任务完成事件处，输入与输出同时存活，不能在同一事件提前覆盖输入。
- 按起点、大小、storage ID 确定性排序，进行 address first-fit；不同设备使用独立字节池。
- offset 满足每个 storage 的 alignment；池基址采用各 alignment 的最小公倍数。
- 独立验证器重新计算生命周期、来源、大小、覆盖范围、地址冲突、复用链与统计字段，不重跑 first-fit 来判断安全性。
- 分支、循环、异步、多流、未知 stream 和无具体大小的候选存储失败关闭。动态上界不能直接当成已绑定的运行时分配大小。

G1 的稳定拓扑排序不等于设备实际执行顺序。无完整先后关系时，默认拒绝；`--serial-candidate` 只能提出一个未来需要执行器强制满足的串行顺序，不能作为 PPU 已串行执行的证据。

未知 tensor storage offset 不影响“整个 storage 的字节地址冲突”判断，但阻止实际 view 绑定。CPU 观察到的别名也不能直接升级为 PPU 后端别名证明。

## 本地验证

新增 25 项 G2 单测，覆盖同事件冲突、已死亡 storage 复用、别名、多消费者、输出逃逸、突变、未知 offset、动态大小、控制流、多流、跨设备、非二次幂对齐、零大小、确定性、输入不变性、结果篡改与 CLI。
其中随机测试固定种子，验证 50 组不同大小与对齐的链式计划。

当前本地回归共 **39 项通过**，日志为 `reports/f08-g02/20260928/unit-tests.log`。
这包括本地既有 14 项和新增 25 项，不能混写成服务器 v3 历史 30 项单测的新一轮复跑。
本地 G1 源码与服务器 v3 不是同一套完整修订，但本次两个具体形状、无控制流的 G1 报告经重算，与 v3 原始报告逐字段一致。未用旧版 G1 推断控制流复用。

## 两个真实图的候选结果

输入均为冻结的 G1 v3 B32/S24 计划；候选顺序使用 `--serial-candidate`。

| 模型 | 可规划 temporary storages | 排除 storages | 候选临时池容量 MiB | 同顺序存活 storage 峰值 MiB | 待补 offset 的 tensor |
| --- | ---: | ---: | ---: | ---: | ---: |
| all-MiniLM-L6-v2 | 93 | 110 | 13.710999 | 10.195312 | 158 |
| BGE-large-en-v1.5 | 306 | 398 | 36.214172 | 27.070557 | 555 |

两个候选均通过独立验证。每个 placement 包含 offset、大小、对齐、生命周期、别名成员、来源和 `reuses_address_from`。

这些数字不包含参数、外部输入输出或 kernel 工作区。池容量高于存活字节峰值的部分来自本算法的放置和碎片，不是模型工作区测量。
`no_reuse_arena_bytes` 是“每个中间 storage 都独占地址”的假设性参照，不是现有 PyTorch 的峰值。不能拿这个参照计算实际显存优化百分比。
也不能把候选池容量与 G1 实测峰值增量的数值相近解释成准确预测，更不能将它们作为优化前后对照。

## 可复现命令

以下在 Mac 的 `FlagTree` 目录运行，不需要 torch、原生 Triton 扩展或算卡：

```bash
python3 -m unittest discover -s python/test/unit/memory_planner -p 'test_*.py' -v

python3 python/scripts/plan_buffer_reuse.py \
  ../参考资料/f08-g01_real_graph_bundle_20260923_v3/plans/minilm-real-graph/minilm-l6-b32-s24-plan.json \
  --serial-candidate \
  --output reports/f08-g02/20260928/minilm-l6-b32-s24-reuse-plan.json

python3 python/scripts/plan_buffer_reuse.py \
  ../参考资料/f08-g01_real_graph_bundle_20260923_v3/plans/minilm-real-graph/minilm-l6-b32-s24-plan.json \
  --verify reports/f08-g02/20260928/minilm-l6-b32-s24-reuse-plan.json
```

成功校验输出 `VALID STATIC CANDIDATE ONLY; runtime application is not validated`。
BGE 对应输入 `bge-large-real-graph/bge-large-b32-s24-plan.json`。

一次重跑全部静态检查并保存命令、代码哈希、环境及失败关闭日志：

```bash
python3 python/scripts/run_g2_offline_validation.py \
  --plan-root ../参考资料/f08-g01_real_graph_bundle_20260923_v3/plans \
  --output-dir reports/f08-g02/20260928
```

预期输出 `11/11 checks passed; STATIC ONLY, no device execution`。这 11 个检查组包含 39 项单测、两模型规划与独立校验，以及两模型未证明顺序、动态形状、循环标注的六个拒绝用例。

## 下一阶段真正需要补的工作

1. 在个人服务器目录进行只读接口审计：确认谁创建模型张量、谁控制执行顺序、谁能接收预分配输出。不能将 kernel 级 scratch allocator 当成模型级接口。
2. 以新 companion 文件补 tensor 的实际 byte offset、dtype、shape、stride 和底层 nbytes，并在 PPU 上核实别名关系；不覆盖 G1 v3。
3. 先做一个 4–5 个算子的显式输出 buffer 小链，证明 executor 确实使用规划地址，数值正确且能关闭回退。不要靠多一次 copy 到 arena 假装实现复用。
4. 对照组用正常及时释放的 eager 实现，不用“保留所有中间张量”的劣化实现冒充当前基线。预分配 arena 必须计入总峰值，不能以测量阶段增量变成零宣称显存减少。
5. 确认实际接口能承接真实模型后，再按固定 64 句、warmup 5、测量 30、3 次独立进程进行模型级 A/B；首次编译单列，不计入稳态耗时。

运行时工作交接指令见 `f08-g02-runtime-handoff.md`。在上述步骤完成前，G2 只能汇报为“已完成离线规划原型”，不能汇报“模型复用优化完成”。
