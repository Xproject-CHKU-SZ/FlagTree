# F08-G02：FlagTree 绑定接入审计（2026-10-21）

## 本轮任务与方向

将已经验证的 FlagTree 真实模型编译节点，和既有 G01 生命周期、G02 offset planner
对接，先明确缓冲绑定边界。不是重新写一套 ATen 优化，也不是重写规划器。

本工具只读历史证据、执行 CPU/静态分析；不导入 torch/Triton，不占用设备，
不修改冻结评测目录、原始测量或日报，不安装依赖。新输出文件已存在时拒绝覆盖。

## 做了什么

- 逐文件核对所用模型 gate 下的 MANIFEST、严格 0/0 探针和全图结果、参数/输入完整性。
  只校验当前 gate 范围，不声称重新校验整包其他测量文件；清单不是数字签名。
- 重新计算原始计划身份，核对 lowering、绑定、历史 PPU scope/物理卡记录与图身份。
- 核对 TTIR、TTGIR、LLIR、hgbin 实际文件哈希/大小及历史真实 launch 标记。
  当前只读取历史证据，不是本次重新上卡。
- 核对当前 kernel.py / graph.py 与历史门禁的源码身份，检查零 storage-offset 合同。
  这不核验当前完整环境，也不授权当前设备执行。
- 仅选取已经编译的 exact dense fp32 GELU 的**输出 storage**，限定临时、单成员、
  无突变、非图输出，输入和输出保持不同 storage；不把 G03 同址合并写成 G02。
- 使用历史绑定中的实测 offset=0，在计划副本中补齐选中输出的 offset；原计划不变。
- 动态加载调用者明确指定的既有 offset_planner、liveness、schema，记录三份源码哈希；
  调用 plan_arena_with_report / verify_matches，不复制算法，不替换仓库主实现。
- 记录每事件的图 storage 与常驻 arena+非入池 storage 记账；保留 planner 的
  offline_candidate_only / runtime_applied=false 和全部运行时 blockers。

## 六组本地复算结论

| 模型 | 形状 | 可分析输出数 | arena 容量 | 各 placement offset | 静态图 storage 峰值变化 |
|---|---|---:|---:|---|---:|
| MiniLM | B32/S24 | 6 | 4.5 MiB | 全部 0 | 0 B |
| MiniLM | B32/S128 | 6 | 24 MiB | 全部 0 | 0 B |
| MiniLM | B64/S24 | 6 | 9 MiB | 全部 0 | 0 B |
| BGE-large | B32/S24 | 24 | 12 MiB | 全部 0 | 0 B |
| BGE-large | B32/S128 | 24 | 64 MiB | 全部 0 | 0 B |
| BGE-large | B64/S24 | 24 | 24 MiB | 全部 0 | 0 B |

这些 GELU 输出在后续 GELU 写入前已经结束生命期，因此可复用同一 offset=0 区间。
这证明现有规划器能消费真实 FlagTree 子集的 storage 合同，但还没有实施运行时绑定。

**不能把多次分配大小之和减去 arena 容量，当成相对 PyTorch/FlagTree-out 的显存收益。**
及时释放基线本来就不同时保留所有 GELU 输出。常驻 arena 在每个事件至少容纳当前
入池活跃 storage，因此在相同生命周期下，理想图 storage 记账不会因常驻 arena 降低。
六组复算峰值持平。这是静态记账，不是 allocated/reserved 或延迟预测；没有排除通过
减少碎片、改变调度/计算、及时归还 arena 等机制产生真实收益的可能性。

当前桥接拒绝非零 tensor.storage_offset，是**通用 arena 扩展**的接口缺口；但六组当前
布局的 offset 全为 0，所以不能把它写成这六组最小机制试验的阻塞项。
arena 基址对齐、slot 布局、引用释放、别名以及 stream 完成合同仍需运行时重新证明。

## 当前停点与下一步

1. G01 / G03 历史成果保留；本轮不新增或替换它们的收益结论。
2. G02 本轮完成“真实 FlagTree 节点 → 既有 planner”的只读接入审计，不是运行时完成。
3. **不直接启动 GELU-only 常驻 arena 的完整收益 A/B**，避免把同址成果重复包装成
   跨 kernel 收益。若要先完成最小 G02 机制验证，可以单独确认一个有界任务：
   MiniLM B32/S24、同一编译 kernel、两次不同 GELU 生命周期复用同一 slot 的写入/最后读取证据，
   严格全图 compare；即使跑通，也只记“机制成立”，不预先承诺显存下降。
4. 更有收益潜力的主线需先确认团队的模型级分配/执行入口，以及能接收外部 buffer 的
   FlagTree 生产者集合；由 G01/G02 给出节点、slot、生命期和保护对象，后端负责执行绑定。
   需要非零偏移时，在新版本入口增加基址/offset/stride/容量/重叠校验，不删除原护栏。
5. 收益实验仍需新 gate → 逐 kernel/全图 0/0 → 指针/别名/执行顺序检查 → 独立进程 A/B。
   明确相对 FlagTree-out 与当前 G03-inplace 两个对照，不以静态 no-reuse 容量冒充基线。
6. FlagGems-on 卡死是模型适配环境支线，仍未解决；不擅自换树、跳过算子或改共享环境。
   若需优先解阻，应先取得团队已经验证的版本和运行入口，再单模型有界复现。

## 容器内复现（仅 CPU，无设备初始化）

上传后的目录名为 `f08_flagtree_g2_admission_20261021`，与旧冻结评测分开。
若路径或源码身份不匹配，停止核查，不重算旧清单来放行。

```bash
cd /workspace/zhoulexian/FlagTree
sha256sum -c python/scripts/f08_flagtree_g2_admission_20261021/MANIFEST.sha256
python3 -B -m unittest discover \
  -s python/scripts/f08_flagtree_g2_admission_20261021 -p 'test_*.py' -v

python3 -B python/scripts/f08_flagtree_g2_admission_20261021/audit_bindings.py \
  --run-root logs/f08/g03-shapes-b32s128-20261013-01 \
  --model model-01 --planner-dir python/flagtree/memory_planner \
  --output logs/f08/g2-admission-20261021-01/minilm-b32s128.json
```

注意：上面的 MANIFEST 使用仓库根相对路径，上传包内已经采用服务器目录名生成。
本地源码目录的校验请在目录内使用 SOURCES.sha256（交付包），不要把两份清单混用。
服务器 planner 源码哈希必须先与本轮结果内 planner_source_sha256 对照；不同则先报告差异，
不能默认为相同版本，也不能覆盖服务器 planner。

## 验证口径

新增审计合同测试 22 项；本地旧 memory_planner 39 项通过。
本地冻结桥接工作树回归枚举 45 项：40 项执行通过，5 项 torch CPU 测试因本地未装 torch 跳过。
服务器另有 18 MiB 合同的 46 项版本，**未在本轮冒充已重跑**；不上传本地旧 contracts.py。
本轮未运行 PPU、未形成新的性能表，未更新日报。
