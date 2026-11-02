import csv,json,math,statistics
from pathlib import Path
from collections import Counter

ROOT=Path(__file__).resolve().parent
ROUTES=['eager','default','max_no_cg','max','max_static','f06']
data={}
for route in ROUTES:
    runs=[json.loads((ROOT/f'round-{r}-{route}'/'results.json').read_text()) for r in 'ab']
    assert all(r['status']=='completed' and len(r['cases'])==12 for r in runs)
    for a,b in zip(runs[0]['cases'],runs[1]['cases']):
        assert a['case_id']==b['case_id'] and a['status']==b['status']=='passed'
        data.setdefault(a['case_id'],{})[route]=(a,b)

def med(records,key):
    return statistics.median(r[key]['median_us'] for r in records) if all(key in r for r in records) else None
def event_type(name):
    if 'Memset' in name:return 'memset'
    if 'Memcpy' in name:return 'memcpy'
    if 'multi_tensor_apply' in name and 'Copy<' in name:return 'input_copy'
    return 'compute'
rows=[]
for case,routes in data.items():
    for route,records in routes.items():
        row={k:records[0][k] for k in ('case_id','kind','M','N','K','dtype')};row['route']=route
        for key in ('before_validation_host40','after_validation_host40','host40','host400','direct_cuda_events_us','uniform_graph_gpu_us','after_reset_and_f06_host40'):row[key]=med(records,key)
        row['timing_graph_delta']=sum(r['counters_after_timing'].get('stats',{}).get('unique_graphs',0)-r['counters_before_timing'].get('stats',{}).get('unique_graphs',0) for r in records)
        row['capture_errors']=' | '.join(sorted({r['capture_error'].splitlines()[0] for r in records if 'capture_error' in r}))
        for typ in ('compute','input_copy','memset','memcpy'):
            row[typ+'_events_per_call']=statistics.mean(sum(event_type(e['name'])==typ for e in r['profiler_gpu_events'])/5 for r in records)
            row[typ+'_profile_us_per_call']=statistics.mean(sum(e['us'] for e in r['profiler_gpu_events'] if event_type(e['name'])==typ)/5 for r in records)
        row['native_graph_launch_per_call']=statistics.mean(sum(e['count'] for e in r['profiler_cpu'] if e['name']=='cudaGraphLaunch')/5 for r in records)
        rows.append(row)
with (ROOT/'audit.csv').open('w') as f:
    w=csv.DictWriter(f,fieldnames=list(rows[0]));w.writeheader();w.writerows(rows)
lookup={(r['case_id'],r['route']):r for r in rows}
def gm(v):return math.exp(statistics.mean(map(math.log,v)))
checks={}
for route in ROUTES:
    rs=[r for r in rows if r['route']==route]
    checks[route]={
        'timing_unique_graph_delta':sum(r['timing_graph_delta'] for r in rs),
        'capture_success':sum(r['uniform_graph_gpu_us'] is not None for r in rs),
        'host40_over_400_gm':gm([r['host40']/r['host400'] for r in rs]),
        'validation_after_over_before_gm':gm([r['after_validation_host40']/r['before_validation_host40'] for r in rs]),
        'warm256_over_warm8_gm':gm([r['host40']/r['after_validation_host40'] for r in rs]),
        'input_copy_events_per_call':dict(Counter(r['input_copy_events_per_call'] for r in rs)),
        'native_graph_launch_per_call':dict(Counter(r['native_graph_launch_per_call'] for r in rs)),
    }
    if route=='max':checks[route]['reset_f06_over_isolated_gm']=gm([r['after_reset_and_f06_host40']/r['host40'] for r in rs])
summary=dict(checks=checks,cases={},f06_speedups={})
for group in ('all','small','large'):
    ids=[case for case in data if group=='all' or ('small' if data[case]['eager'][0]['M']<=64 else 'large')==group]
    summary['f06_speedups'][group]={'n':len(ids),'host_vs_max':gm([lookup[c,'max']['host400']/lookup[c,'f06']['host400'] for c in ids]),'gpu_vs_max_no_cg':gm([lookup[c,'max_no_cg']['uniform_graph_gpu_us']/lookup[c,'f06']['uniform_graph_gpu_us'] for c in ids])}
for case in data:
    summary['cases'][case]={route:lookup[case,route] for route in ROUTES}
(ROOT/'summary.json').write_text(json.dumps(summary,indent=2))
labels={'eager':'eager','default':'Inductor default','max_no_cg':'max-autotune-no-cudagraphs','max':'max-autotune','max_static':'max-autotune + static address','f06':'F06'}
def short(r):
    kind={'matmul_bias_gelu_exact':'MM+Bias+GELU','add_softmax':'Add+Softmax','add_layernorm':'Add+LN','mul_sum':'Mul+Sum','add_layernorm_affine':'Add+LN affine'}[r['kind']]
    return f"{kind} {r['dtype']} {r['M']}×{r['N']}"+(f"×{r['K']}" if r['K'] else '')
lines=['# F06 / Inductor 计时公平性审计','','## 设计与证据范围','','同一 RTX 4090、PyTorch 2.11.0+cu130、Triton 3.6.0、源码快照、输入及精度阈值。选择 12 个此前所有被测路径均通过的代表用例，覆盖 FP32 的 MatMul+Bias+GELU、Add+Softmax、Add+LayerNorm、Mul+ReduceSum 的大小尺寸，以及 FP16 MatMul 和 affine LayerNorm 的大小尺寸。每条路径单独启动进程，执行两轮；第二轮反转路径次序。每个新用例只在编译前重置 Dynamo；主计时不混入其他路径编译。','','6 条路径分别是 eager、默认 Inductor、max-autotune-no-cudagraphs、完整 max-autotune、完整 max-autotune 加固定输入地址标记、原 F06 static_inference。固定地址路径使用 torch._dynamo.mark_static_address(t, guard=True)，仅适用于地址不变的输入；它是诊断对照，不替代一般 API 基线。','','## 主机调用耗时（μs/次）','','以下数字是两轮中位数的中位数。每组同步后执行 400 次普通调用，再同步；7 组取中位数。预先编译并额外预热 256 次。输出仍正常产生；计时外验证数值、扰动输入和输入/参数不变性。','','| 用例 | eager | default | max 无原生图 | max 完整 | max 固定地址 | F06 |','|---|---:|---:|---:|---:|---:|---:|']
for case,routes in data.items():lines.append('| '+short(routes['eager'][0])+' | '+' | '.join(f"{lookup[case,r]['host400']:.2f}" for r in ROUTES)+' |')
lines+=['','## GPU 工作耗时（统一外部 CUDA Graph，μs/次）','','对能安全外部捕获的路径，用同一种协议把多次调用录入图，再以 CUDA Events 测量重放；每张图内 64 次调用（2048³ MatMul 为 8 次），每组重放 20 次，7 组取中位数。这样避免逐算子 Python 发射间隙占据 GPU 计时。结果是固定输入、热缓存、多调用图重放吞吐，不等于单请求端到端延迟。','','本次完整 max-autotune 及固定地址原生图路径的嵌套外部捕获均报 Attempt to trace generator，因此记录为不可用，绝不填入替代数字。其复制和计算开销另由 profiler 事件诊断。max 无原生图保留相同的 max_autotune 与 coordinate_descent_tuning 优化开关，因此可用于单独观察优化后的计算工作。','','| 用例 | eager | default | max 无原生图 | max 完整 | max 固定地址 | F06 |','|---|---:|---:|---:|---:|---:|---:|']
for case,routes in data.items():
    values=[lookup[case,r]['uniform_graph_gpu_us'] for r in ROUTES]
    lines.append('| '+short(routes['eager'][0])+' | '+' | '.join('不可用' if v is None else f'{v:.2f}' for v in values)+' |')
lines+=['','以上代表用例按基线/F06计算，几何平均如下。host 与 GPU 列分别标明基线运行路径，不能互换。','','| 代表用例组 | 样本数 | 普通调用：vs 完整 max | GPU重放：vs max 无原生图 |','|---|---:|---:|---:|']
for group,v in summary['f06_speedups'].items():lines.append(f"| {group} | {v['n']} | {v['host_vs_max']:.3f}× | {v['gpu_vs_max_no_cg']:.3f}× |")
lines+=['','## 计时方法排查','','| 路径 | 计时内新增编译图 | 40次/400次 耗时比 | 校验后/校验前 | 256次预热/8次预热 | GPU捕获成功用例 |','|---|---:|---:|---:|---:|---:|']
for route,c in checks.items():lines.append(f"| {labels[route]} | {c['timing_unique_graph_delta']} | {c['host40_over_400_gm']:.3f} | {c['validation_after_over_before_gm']:.3f} | {c['warm256_over_warm8_gm']:.3f} | {c['capture_success']}/12 |")
lines+=['',f"完整 max 路径在主测量之后复现旧脚本的全局 reset → 编译 F06 → 预热 max 8 次 → 计时过程，其耗时/独立路径耗时几何平均为 {checks['max']['reset_f06_over_isolated_gm']:.3f}。全局 reset 确实会清理 Dynamo 和 CUDA Graph 状态，建议从正式多路径测试中移除；该对照用于判断它是否是数倍差距的主要原因。",'','直接把 CUDA Events 包在普通 Python 循环外仍会计入 GPU 等待 CPU 发射的空闲间隙。该数值单独保存在 audit.csv 的 direct_cuda_events_us 字段，不冒充 GPU 内核时间。','','## 输入复制与调用层级','','每次调用的输入复制次数和 CUDA Graph launch 次数来自 profiler 的 5 次正常调用；profiler 时长是受插桩影响的诊断量，未混入上面的性能汇总。','','| 路径 | 输入复制事件/调用的分布 | 原生 cudaGraphLaunch/调用的分布 |','|---|---|---|']
for route,c in checks.items():lines.append(f"| {labels[route]} | {json.dumps(c['input_copy_events_per_call'])} | {json.dumps(c['native_graph_launch_per_call'])} |")
lines+=['','CPU cProfile 完整栈保存在每轮目录的 *-cpu.txt 和 *.pstats。PyTorch profiler 的完整 CPU/GPU trace 保存在 *-trace.json；results.json 包含事件名称、次数、耗时。CUDA Memset、Memcpy、输入 Copy kernel 和计算 kernel 在 audit.csv 分别统计；历史 profile_kernel_count 实际统计 CUDA 事件，不能全当作计算 kernel。','','## 公平性判断','','旧脚本使用同步包围计时、正确的 ns→μs 换算、相同输入和数学精度设置，编译与正确性检查在计时外。其指标是包含 Python、guard、运行时包装和图管理的普通调用吞吐；它可以描述这些具体 API 路径的成本，但不能单独代表算子融合后的 GPU 计算效率。','','F06 使用 static_inference 的专用静态执行入口，小矩阵还走预准备 launcher；原生 torch.compile 使用 Dynamo/AOT 包装，完整 max 模式另有 CUDA Graph Trees 的状态管理和普通输入复制。二者主机调用层级不同。需要同时报告普通调用与统一 GPU 重放两种指标，不能把约 4× 的主机加速直接解释成算力或融合核加速。','','固定地址对照额外承诺数据地址不变，不能泛化到每次换输入张量地址的应用。最大调优模式扩大内核选择并启用原生图，并不保证所有微型图的端到端延迟最低。','','原 216 用例报告中，eager 与 max 的有效精度样本集不同；不能把两个汇总加速比直接相除来推导 max/eager。此次审计用同一组通过样本做直接对照，也不放宽原精度阈值。','','## 官方机制说明','','- [PyTorch 2.11 CUDA Graph Trees：普通 eager 输入需要复制到静态地址；参数/缓冲区等稳定地址输入可避免复制](https://docs.pytorch.org/docs/2.11/user_guide/torch_compiler/torch.compiler_cudagraph_trees.html)。','- [PyTorch 2.11 torch.compile：max-autotune 默认启用 CUDA Graph；no-cudagraphs 保留调优而关闭图](https://docs.pytorch.org/docs/2.11/generated/torch.compile.html)。','','源码层面的 reset/mark_static_address 实现取自实测环境，见 implementation_audit.txt。GPU 监控、原始数据、脚本和分析文件均保存在本目录。','']
lines[2:2]=['审计结论：普通调用变慢主要来自 Dynamo/AOT 包装、CUDA Graph Trees 管理和输入复制。旧计时能描述 API 调用成本，但两条路径的主机调用层级不同，不能据此宣称 F06 计算核快约 4 倍。',f"12 个代表用例的统一 GPU 重放中，F06 相对 max-autotune-no-cudagraphs 为 {summary['f06_speedups']['all']['gpu_vs_max_no_cg']:.3f}×（基线/F06；整体略慢）；完整 max 普通调用对比则为 {summary['f06_speedups']['all']['host_vs_max']:.3f}×。两者衡量不同层面的成本。",'六条路径计时区间均无新增编译图；40→400 次循环、8→256 次预热的组平均影响约为 0–2%。复现旧脚本 reset 后再预热的影响约为 1.2%，不足以解释数倍差距。','']
lines[2:2]=['> 最新全量公平口径结果已完成：见 [216 用例统一 GPU 重放与独立端到端报告](/home/f/Documents/FlagTree/work/2026-10-31/f06-fair-gpu-4090/REPORT.md)。本页保留此前基线或原因审计的数据。', '']
(ROOT/'REPORT.md').write_text('\n'.join(lines))
print(json.dumps(checks,indent=2))
