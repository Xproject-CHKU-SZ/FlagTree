# F08-G01 模型级张量生命周期语义合同

状态：草案 v0.1

基线：`main @ 5eda9956b8c802a0d136eca6519d5c6810216244`
适用范围：F08-G01 模型级生命周期分析

## 一、目标

F08-G01 接收已经形成的模型任务图、张量信息和别名语义，计算跨 Kernel 的模型级
张量与底层存储生命周期，并输出可追溯的理论峰值显存报告。

本模块必须支持从任意峰值存储对象反查以下信息：

```text
峰值 buffer
  -> 底层 storage
  -> 张量及别名成员
  -> 生产任务
  -> 最后消费者
  -> 原模型节点
  -> 大小计算依据
```

G1 的直接交付物是生命周期与追溯信息，不是缓冲地址分配或设备性能收益。

## 二、与现有内核级分析的边界

当前 `lib/Analysis/Allocation.cpp` 处理单个 Kernel 或函数内部的共享内存：

- 收集显式共享内存、临时 scratch 和调用相关虚拟缓冲；
- 使用 MLIR Liveness 计算值的活跃范围；
- 使用 SharedMemoryAliasAnalysis 合并共享内存别名；
- 结合活跃区间和异步区域关系建立干涉约束；
- 通过 first-fit 图着色生成共享内存 offset 和总量。

F08-G01 不扩展这套分析的作用域，也不把 Kernel 内共享内存对象解释成模型张量。
两层通过 Kernel 任务标识和资源摘要连接：

| 层次 | 分析对象 | 本阶段输出 |
| --- | --- | --- |
| 模型级 G1 | 跨 Kernel 的模型张量、底层 storage、控制流和任务依赖 | 生命周期、理论峰值、来源链 |
| Kernel 级 Allocation | Kernel/函数内共享内存、scratch、虚拟缓冲 | offset、共享内存总量 |

## 三、本阶段包含和排除的工作

### 包含

1. 校验模型任务图、张量表和别名信息。
2. 为任务建立确定性事件序号和 happens-before 关系。
3. 计算每个张量的定义事件和最后使用事件。
4. 将共享底层存储的张量归并为别名组。
5. 计算每个底层 storage 的保守生命周期。
6. 扫描执行事件，计算理论峰值及峰值贡献对象。
7. 输出结构化报告、诊断和不可判定原因。

### 排除

- G2 的跨 Kernel 缓冲复用、offset 分配和运行时内存池改写；
- G3 的原地计算合法性判断与 IR/图改写；
- G4 的 layout、copy 和设备搬运删除；
- Kernel 内共享内存分配算法修改；
- Backend ABI、Pass 顺序和 Driver 接口修改；
- 未经真实设备验证的峰值显存或性能收益结论。

## 四、输入合同

输入可以先使用 JSON 表达。正式模型图入口确定后，可以增加适配器，但不得绕过本合同
中的字段和校验规则。

### 4.1 模型计划

| 字段 | 必需 | 含义 |
| --- | --- | --- |
| `plan_id` | 是 | 本次模型计划的稳定标识 |
| `schema_version` | 是 | 输入合同版本 |
| `model_id` | 是 | 模型或子图标识 |
| `tasks` | 是 | Kernel 任务集合 |
| `tensors` | 是 | 模型张量集合 |
| `storages` | 是 | 底层存储集合 |
| `regions` | 否 | 分支、循环或异步区域；缺失时只允许线性/DAG分析 |
| `shape_bindings` | 否 | 动态维的实际值、范围或上界 |

### 4.2 Kernel 任务

| 字段 | 必需 | 含义 |
| --- | --- | --- |
| `task_id` | 是 | 计划内唯一任务标识 |
| `kernel_id` | 是 | 实际 Kernel 或调用入口标识 |
| `predecessors` | 是 | 必须先完成的任务列表，可为空 |
| `inputs` | 是 | 输入张量 ID 列表，可为空 |
| `outputs` | 是 | 输出张量 ID 列表，可为空 |
| `source_node` | 是 | 原模型节点或算子来源 |
| `region_id` | 否 | 所属控制流或异步区域 |
| `device` | 是 | 执行设备标识 |
| `stream` | 否 | 执行流；缺失时不得推断跨流并发关系 |

约束：

- `task_id` 必须唯一；
- `predecessors` 必须引用已存在任务；
- 除显式循环区域外，依赖关系必须无环；
- 每个非图输入张量必须有且只有一个生产任务；
- 每个任务输入必须存在于张量表；
- 执行序号由稳定拓扑排序产生，不使用哈希表遍历顺序。

### 4.3 模型张量

| 字段 | 必需 | 含义 |
| --- | --- | --- |
| `tensor_id` | 是 | 计划内唯一张量标识 |
| `storage_id` | 是 | 所属底层存储标识 |
| `producer` | 条件必需 | 生产任务；图输入和参数可为空 |
| `consumers` | 是 | 消费任务列表，可为空 |
| `dtype` | 是 | 元素类型 |
| `shape` | 是 | 静态维或符号维表达式 |
| `storage_offset_bytes` | 是 | 相对底层存储的字节偏移，未知时显式标记 |
| `source_value` | 是 | 原模型值或节点输出来源 |
| `is_graph_output` | 是 | 是否为模型输出 |
| `is_persistent` | 是 | 是否跨本次计划保留 |
| `is_mutated` | 是 | 是否可能被原地修改 |

### 4.4 底层存储

| 字段 | 必需 | 含义 |
| --- | --- | --- |
| `storage_id` | 是 | 计划内唯一存储标识 |
| `size_bytes` | 条件必需 | 已知静态大小 |
| `size_expression` | 条件必需 | 动态大小表达式 |
| `size_upper_bound` | 否 | 动态大小的可靠上界 |
| `alignment` | 是 | 对齐要求 |
| `device` | 是 | 所属设备 |
| `allocation_kind` | 是 | input、parameter、temporary、output或cache |
| `source` | 是 | 大小和存储对象的来源 |

`size_bytes`、`size_expression` 至少提供一项。动态表达式无法绑定且没有可靠上界时，
该对象仍进入生命周期报告，但不得计入伪精确的数值峰值。

### 4.5 控制流与并发区域

| 字段 | 必需 | 含义 |
| --- | --- | --- |
| `region_id` | 是 | 区域唯一标识 |
| `kind` | 是 | `branch`、`loop`或`async` |
| `parent_region` | 否 | 外层区域 |
| `members` | 是 | 区域包含的任务 |
| `exclusive_groups` | 否 | 已证明互斥的分支组 |
| `loop_carried_tensors` | 循环必需 | 循环携带张量 |
| `happens_before` | 否 | 已证明的额外先后关系 |

## 五、生命周期语义

### 5.1 张量生命周期

- 图输入和参数从计划开始前即为存活。
- 普通张量从其生产任务完成后开始存活。
- 普通张量在所有消费者完成后结束存活。
- 没有消费者且不是模型输出的张量，在生产事件后即可结束存活，但必须报告为未使用值。
- 模型输出存活至计划结束。
- `is_persistent=true` 的对象不在本次计划内释放。

### 5.2 别名组生命周期

- 同一 `storage_id` 的所有张量属于同一别名组。
- 别名组生命周期是所有成员生命周期的并集。
- view、slice、reshape、transpose 等是否共享 `storage_id` 由 F02 语义或上游转换结果提供，
  G1 不根据算子名称自行猜测。
- 某个别名成员发生突变时，整个别名组保持存活，直到所有可能观察该突变结果的消费者结束。
- `storage_offset_bytes` 未知时，仍按整个 storage 处理，不做局部区间复用推断。

### 5.3 控制流与并发

- 分支只有在输入显式提供互斥证明时才按互斥处理；否则按可能同时存活处理。
- 循环携带张量至少覆盖完整循环区域；未建立循环固定点分析前，不缩短其生命周期。
- 不同 stream 或异步区域之间没有 happens-before 证明时，相关对象按可能并发处理。
- 执行顺序不完整时可以输出生命周期关系和诊断，但不得输出可直接供 G2 使用的复用结论。

## 六、失败关闭规则

以下情况不得静默忽略：

| 情况 | G1 行为 |
| --- | --- |
| 未知张量或任务引用 | 拒绝输入并定位字段 |
| 非循环依赖图成环 | 拒绝输入并输出环路径 |
| 缺少别名语义 | 将相关对象标为不可判定并保守延长 |
| 动态大小无绑定或上界 | 保留生命周期，数值峰值标为不完整 |
| 控制流互斥性未知 | 按可能并发处理 |
| stream关系未知 | 不推断跨stream释放或复用 |
| storage跨设备 | 拒绝把它们合并为同一可复用对象 |
| producer与consumers不一致 | 拒绝输入并输出不一致记录 |

## 七、输出合同

### 7.1 每张量记录

```text
tensor_id
storage_id
source_value
producer_task
consumer_tasks
definition_event
last_use_events
lifetime_start
lifetime_end
is_graph_output
is_persistent
is_mutated
diagnostics
```

### 7.2 每存储记录

```text
storage_id
alias_members
allocation_kind
source
size_bytes或size_expression
size_upper_bound
alignment
device
lifetime_start
lifetime_end
peak_events
conservative_reasons
```

### 7.3 峰值事件记录

```text
event_id
task_id
live_storage_ids
known_peak_bytes
unknown_size_storage_ids
contributions
```

如果 `unknown_size_storage_ids` 非空，报告必须使用“已知对象峰值下界”，不能使用
“模型峰值显存”这一无条件表述。

## 八、确定性和可追溯要求

- 相同输入必须生成相同事件序号、排序和报告内容。
- 所有输出对象必须保留原始 `task_id`、`tensor_id`、`storage_id` 和 `source`。
- 保守延长生命周期时必须记录具体原因。
- 报告不得把底层 storage 和张量 view 重复计入峰值。
- 参数、缓存、临时量和模型输出必须分开统计。
- 理论峰值与设备实际峰值必须使用不同字段和不同结论口径。

## 九、G1 完成判据

G1 只有在以下条件全部满足后才能进入验收收口：

1. 线性链、多消费者、别名、分支、循环、动态大小和异步关系均有正反例。
2. 每个峰值 storage 均可追溯到模型来源、生产任务、消费者和大小依据。
3. 已知大小的合成用例峰值与手工计算一致。
4. 未知别名、动态大小和并发关系触发保守路径及明确诊断。
5. 大模型与检索模型代表用例能够产生完整生命周期报告。
6. 输出Schema具备版本号，并能被后续G2读取。
7. 本地逻辑测试、服务器模型验证和真实设备指标分别报告，不混为同一证据。

以下内容不属于G1完成判据：

- 复用后峰值显存下降；
- 设备延迟改善；
- 原地计算已经启用；
- Kernel内共享内存offset发生变化。

## 十、当前冻结结论和待确认项

### 当前冻结

- G1是模型级只读分析，不修改模型图或Kernel IR。
- 第一版以稳定拓扑顺序为基础，控制流和并发采用保守语义。
- storage是峰值统计单位，tensor是语义和来源追踪单位。
- F02或上游负责提供别名、突变和副作用事实，G1负责消费和校验。
- G1输出生命周期和峰值来源，G2决定复用。

### 接口接入前待确认

1. 上游模型任务图最终来自统一IR、`torch.export`/FX适配层还是独立运行时计划。
2. F02对view、slice、reshape、transpose和原地操作采用何种稳定表示。
3. 动态Shape是否提供实际绑定、Bucket上界或符号范围。
4. 跨stream事件和同步关系由哪个运行时组件提供。
5. 参数、KV cache、检索索引和模型输出的持久生命周期边界。

这些待确认项不阻塞使用合成JSON任务图实现和测试G1核心算法，但会阻塞与真实模型入口
的最终集成。

## 十一、机器可校验产物

- JSON Schema：[`schemas/f08-g01-model-plan.schema.json`](schemas/f08-g01-model-plan.schema.json)
- 最小有效样例：
  [`examples/f08-g01/minimal-linear-alias.json`](examples/f08-g01/minimal-linear-alias.json)
- 错误样例：`examples/f08-g01/invalid-*.json`
- 跨记录语义校验：`python/flagtree/memory_planner/schema.py`
- 命令行入口：`python/scripts/validate_model_plan.py`
- 单元测试：`python/test/unit/memory_planner/test_schema.py`
- 生命周期分析：`python/flagtree/memory_planner/liveness.py`
- 生命周期命令行：`python/scripts/analyze_model_liveness.py`
- 生命周期单元测试：`python/test/unit/memory_planner/test_liveness.py`

从仓库根目录验证一份输入：

```bash
python3 python/scripts/validate_model_plan.py \
  docs/project-plan/examples/f08-g01/minimal-linear-alias.json
```

生成模型级张量与别名 storage 生命周期报告：

```bash
python3 python/scripts/analyze_model_liveness.py \
  docs/project-plan/examples/f08-g01/minimal-linear-alias.json
```

JSON Schema负责字段、类型和局部约束；Python校验器额外检查ID唯一性、引用完整性、
producer/consumer双向一致性、区域成员关系，以及显式循环区域之外的依赖环。

当前生命周期分析器使用闭区间事件：计划开始为0，任务完成事件为1至N，计划结束为N+1。
任务输入和新产生输出在完成边界上保守重叠。显式循环依赖的固定点分析尚未进入v0，
遇到无法线性化的循环时分析器会明确拒绝，不会生成可供G2误用的结果。

峰值扫描按storage而不是tensor计数，因此共享同一storage的view不会重复累加。报告中的
`peak_kind`区分三种口径：静态大小的线性化调度精确值、采用动态上界的保守上界，以及
存在未知大小时的已知对象峰值下界。任务偏序不能确定唯一顺序时，报告使用稳定拓扑序
给出`linearized_schedule_estimate`并附带`incomplete_happens_before`诊断，不作为G2复用依据。
