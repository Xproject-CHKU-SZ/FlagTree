"""Validate both independent rounds, then aggregate only correctly paired cases."""
import csv
import hashlib
import json
import math
from pathlib import Path
import statistics
from collections import Counter

ROOT = Path(__file__).resolve().parent
ROUTES = ('eager', 'inductor', 'f06')
METRICS = ('gpu_us', 'e2e_us', 'host_batch_us')
KINDS = ('matmul_bias', 'matmul_bias_relu', 'matmul_bias_gelu_exact', 'matmul_bias_gelu_tanh',
         'matmul_bias_silu', 'add_layernorm', 'add_layernorm_affine', 'add_layernorm_weight',
         'add_layernorm_bias', 'add_softmax', 'mul_sum', 'mul_sum_keepdim')
NAMES = dict(zip(KINDS, ('MatMul + Bias', 'MatMul + Bias + ReLU', 'MatMul + Bias + GELU(exact)',
    'MatMul + Bias + GELU(tanh)', 'MatMul + Bias + SiLU', 'Add + LayerNorm',
    'Add + LayerNorm（weight+bias）', 'Add + LayerNorm（weight）', 'Add + LayerNorm（bias）',
    'Add + Softmax', 'Mul + ReduceSum', 'Mul + ReduceSum（keepdim）')))
FAMILIES = ('matmul_bias','matmul_bias_relu','matmul_bias_gelu_exact','matmul_bias_gelu_tanh',
            'matmul_bias_silu','add_layernorm','add_softmax','mul_sum')

from coverage_cases import cases
expected = {c['case_id']: c for c in cases()}
assert len(expected) == 216
manifest = json.loads((ROOT/'source_manifest.json').read_text())
for name, digest in manifest.items():
    assert hashlib.sha256((ROOT/name).read_bytes()).hexdigest() == digest, name
hardware = json.loads((ROOT/'hardware.json').read_text())
runner = json.loads((ROOT/'orchestration.json').read_text())
assert runner['status'] == 'completed' and len(runner['runs']) == 6
assert all(r['returncode'] == 0 for r in runner['runs'])
runs = {}
reference_identity = json.loads((ROOT/'baseline_identity.json').read_text())
for route in ROUTES:
    runs[route] = []
    for round_name in 'ab':
        r = json.loads((ROOT/f'round-{round_name}-{route}'/'results.json').read_text())
        assert r['status'] == 'completed' and len(r['cases']) == 216
        assert r['identity'] == reference_identity and r['source_manifest'] == manifest
        assert r['route'] == route
        mapped = {c['case_id']: c for c in r['cases']}
        assert set(mapped) == set(expected)
        runs[route].append(mapped)

rows = []
failures = []
round_differences = {m: [] for m in METRICS}
for cid, spec in expected.items():
    row = {k: spec[k] for k in ('case_id', 'kind', 'dtype', 'M', 'N', 'K')}
    row['size'] = 'small' if spec['M'] <= 64 else 'large'
    row['family'] = 'add_layernorm' if spec['kind'].startswith('add_layernorm') else 'mul_sum' if spec['kind'].startswith('mul_sum') else spec['kind']
    row['tolerance'] = json.dumps(spec['tolerance'])
    reference_binding = runs['eager'][0][cid]['input_binding']
    for route in ROUTES:
        records = [r[cid] for r in runs[route]]
        assert all(r['input_binding'] == reference_binding for r in records), cid
        assert all(r['tolerance'] == spec['tolerance'] for r in records)
        statuses = [r['status'] for r in records]
        row[route+'_status'] = statuses[0] if statuses[0] == statuses[1] else '|'.join(statuses)
        row[route+'_status_stable'] = statuses[0] == statuses[1]
        row[route+'_max_abs_error'] = max(r.get('max_abs_error',0) for r in records)
        if all(s == 'passed' for s in statuses):
            for r in records:
                assert r['counters_before_host'] == r['counters_after_host']
                assert r['counters_before_gpu'] == r['counters_after_gpu']
                assert r['execution'].get('fallback_calls',0) == 0
                assert not any(e['name'] == 'cudaGraphLaunch' for e in r['profile_cpu_graph_events'])
            for metric in METRICS:
                values = [r[metric]['median_us'] for r in records]
                row[route+'_'+metric] = statistics.median(values)
                row[route+'_'+metric+'_a'], row[route+'_'+metric+'_b'] = values
                round_differences[metric].append(abs(values[0]-values[1])/statistics.mean(values))
        else:
            for metric in METRICS:
                row[route+'_'+metric] = row[route+'_'+metric+'_a'] = row[route+'_'+metric+'_b'] = None
            failures.append(dict(case_id=cid, route=route, statuses=statuses,
                                 stages=[r.get('stage') for r in records],
                                 errors=[r.get('error') for r in records],
                                 max_abs_errors=[r.get('max_abs_error') for r in records]))
    for baseline in ('eager', 'inductor'):
        for metric in METRICS:
            row[baseline+'_speedup_'+metric] = row[baseline+'_'+metric]/row['f06_'+metric] if row[baseline+'_status'] == row['f06_status'] == 'passed' else None
    rows.append(row)
with (ROOT/'cases.csv').open('w') as f:
    writer = csv.DictWriter(f,fieldnames=list(rows[0]));writer.writeheader();writer.writerows(rows)

def geomean(values):
    return math.exp(statistics.mean(math.log(x) for x in values)) if values else None

def aggregate(selected):
    result = dict(count=len(selected), statuses={route:dict(Counter(r[route+'_status'] for r in selected)) for route in ROUTES})
    for metric in METRICS:
        result[metric] = {}
        for baseline in ('eager','inductor'):
            paired = [r for r in selected if r[baseline+'_speedup_'+metric] is not None]
            ratios = [r[baseline+'_speedup_'+metric] for r in paired]
            result[metric][baseline] = dict(n=len(paired), speedup=geomean(ratios), wins=sum(x>1 for x in ratios),
                round_speedups=[geomean([r[baseline+'_'+metric+'_'+rnd]/r['f06_'+metric+'_'+rnd] for r in paired]) for rnd in 'ab'])
    return result

summary = dict(overall=aggregate(rows),families={},variants={},dtypes={},matrix_shapes={},failures=failures,
               statuses_stable=all(r[route+'_status_stable'] for r in rows for route in ROUTES),
               round_relative_differences={m:dict(median=statistics.median(v),max=max(v)) for m,v in round_differences.items()})
for key, field, values in [('families','family',FAMILIES),('variants','kind',KINDS),('dtypes','dtype',('float32','float16','bfloat16'))]:
    for value in values:
        summary[key][value] = {size:aggregate([r for r in rows if r[field] == value and r['size'] == size]) for size in ('small','large')}
for shape in ((16,128,64),(32,256,64),(64,1024,64),(128,1024,128),(512,1024,1024),(2048,2048,2048)):
    summary['matrix_shapes'][str(shape)] = aggregate([r for r in rows if (r['M'],r['N'],r['K']) == shape])
(ROOT/'summary.json').write_text(json.dumps(summary,indent=2))

def fmt(group, metric, baseline):
    v = group[metric][baseline]
    return f"{v['speedup']:.2f}× ({v['n']}/{group['count']})" if v['n'] else f"— (0/{group['count']})"

def table(groups, metric):
    result = ['| 融合组合 | 小：vs eager | 小：vs 优化 Inductor | 大：vs eager | 大：vs 优化 Inductor |',
              '|---|---:|---:|---:|---:|']
    for kind, pair in groups.items():
        result.append('| '+NAMES.get(kind,kind)+' | '+' | '.join(fmt(pair[size],metric,base) for size in ('small','large') for base in ('eager','inductor'))+' |')
    return result

lines = ['# F06 全量公平重测：统一 GPU 图重放与独立端到端计时','',
    '范围：F06-G03 核心组合共 12 个语义变体 × 3 种 dtype × 6 个尺寸 = 216 个用例。eager、max-autotune-no-cudagraphs、F06 各跑两轮独立进程，共 1296 个路径/用例/轮次记录。',
    '', '原生优化基线明确使用 `torch.compile(graph, backend="inductor", fullgraph=True, dynamic=False, mode="max-autotune-no-cudagraphs")`。F06 源码与上一轮保持一致，未修改项目实现。',
    '', '加速比 = 基线耗时 / F06 耗时，大于 1 表示 F06 更快。先对两轮各自的中位数取中位数，再算逐例比值并取几何平均。仅纳入两轮双方均通过全部检查的配对；括号为有效数/总数。eager 与 Inductor 的配对集合可能不同，不能直接相除两个汇总值。',
    '', '## GPU 主指标：所有路径统一外部 CUDA Graph 重放','',
    '三条路径使用完全相同的捕获与计时规则；原生内部 CUDA Graph 关闭。该指标移除逐调用 Python 发射间隙，衡量固定设备输入、热缓存条件下的 GPU 重放吞吐，不包括编译、autotune、图捕获、CPU 调度或输入从主机传入设备的时间。','']
lines += table(summary['families'],'gpu_us')
lines += ['', 'LayerNorm 汇总包含无 affine、weight、bias、weight+bias；ReduceSum 包含 keepdim=False/True。',
    '', '## 端到端主指标：单次普通调用到 GPU 完成','',
    '每次先同步清空此前工作，再启动主机计时，执行一次普通调用并同步等待 GPU 完成后停止。31 次独立样本取中位数。包含 Python、检查、正常输出分配、内核提交与完成等待；不包含编译或图捕获。该指标仍体现不同执行入口的主机开销。','']
lines += table(summary['families'],'e2e_us')
lines += ['', '## 普通调用批量均摊耗时：用于衔接历史主机指标','',
    '每组同步后执行 400 次普通调用，再同步；每次平均耗时取 7 组中位数。这是吞吐意义的均摊耗时，不能与上面的单次完成延迟混称。','']
lines += table(summary['families'],'host_batch_us')
lines += ['', '## 逐语义变体：GPU 加速比',''] + table(summary['variants'],'gpu_us')
lines += ['', '## 逐语义变体：端到端加速比',''] + table(summary['variants'],'e2e_us')
lines += ['', '## 按 dtype 汇总：GPU',''] + table(summary['dtypes'],'gpu_us')
lines += ['', '## MatMul 分尺寸结果','', '| (M,N,K) | GPU vs eager | GPU vs Inductor | 端到端 vs eager | 端到端 vs Inductor |','|---|---:|---:|---:|---:|']
for shape, group in summary['matrix_shapes'].items():
    lines.append('| '+shape+' | '+' | '.join(fmt(group,m,b) for m in ('gpu_us','e2e_us') for b in ('eager','inductor'))+' |')
lines += ['', '## 正确性与测量核验','', '| 路径 | 两轮均通过 | 其他状态 |','|---|---:|---|']
for route in ROUTES:
    counts = summary['overall']['statuses'][route]
    other = {k:v for k,v in counts.items() if k!='passed'}
    lines.append(f"| {route} | {counts.get('passed',0)}/216 | {json.dumps(other)} |")
lines += ['', '| 两轮同路径耗时相对差 | 中位数 | 最大值 |','|---|---:|---:|']
for metric,values in summary['round_relative_differences'].items():
    lines.append(f"| {metric} | {values['median']*100:.2f}% | {values['max']*100:.2f}% |")
lines += ['', '相对差定义为两轮耗时差的绝对值除以两轮均值；这是观测波动，不是置信区间。接近 1× 的比值应结合该波动解读。各组的两轮独立加速比也保存在 summary.json。', f"两轮正确性状态完全一致：{summary['statuses_stable']}。失败用例不计入速度结论；具体断言、阶段、误差和阈值保存在原始 JSON、cases.csv 和 summary.json。",'',
    '所有通过样本都核验了：初始输出、保留输出快照、换地址且扰动数值的输入、图重放输出、原地址修改内容后的重放、恢复原输入后的重放、输入与参数不变性。主机和 GPU 计时区间编译计数均不变。普通调用 profiler 无原生 cudaGraphLaunch，F06 fallback_calls 为 0。', '',
    'CPU 单核绑定 core 0、单线程；每例预热 256 次，CPU 预热 0.2 s。GPU 图捕获前侧流预热 16 次；每图 64 次调用，2048³ MatMul 为 8 次，按用例固定且三路一致；图重放预热 3 次；7 组 × 20 次重放，用 CUDA Events 计时并除以实际调用总数。第二轮反转路径和用例次序。', '',
    '原始 profiler 放在正式计时之后，只用于确认执行路径，其耗时不参与速度统计。GPU 监控与独占锁记录在 orchestration.json。', '',
    '## 输入范围与限制','',
    '- CPU：'+hardware['cpu_model']+'；测试绑定 core 0；本次未修改 GPU 时钟或功耗设置。',
    '- GPU 驱动及显存：'+hardware['gpu']+'。',
    '- RTX 4090；PyTorch '+reference_identity['torch']+'；Triton '+reference_identity['triton']+'。',
    '- dtype：FP32、FP16、BF16；固定 seed=61；关闭 TF32 及低精度 MatMul reduction；沿用此前逐例精度阈值，不放宽。',
    '- 小 (M,N)：(16,128)、(32,256)、(64,1024)，MatMul K=64。',
    '- 大 (M,N)：(128,1024)、(512,1024)、(2048,2048)，MatMul K=128、1024、2048。',
    '- 非 MatMul 输入为 (M,N) 与广播向量 (N,)；Softmax/Reduce 沿最后一维；LayerNorm epsilon=1e-3。',
    '- 固定形状推理微基准；不包含主机到设备的数据传输、冷缓存、动态形状、XPU 或模型级验收。',
    '- F06 表示当前编译路径，不保证大 MatMul 是单内核；本次比较实际 GPU 工作和完整调用。','',
    '## 文件','',
    '- bench_worker.py / run_4090.py：完整协议与独立进程运行器。',
    '- source_manifest.json / baseline_identity.json：输入源码与编译环境哈希。',
    '- round-{a,b}-{eager,inductor,f06}/results.json：两轮原始时间、误差、输入摘要、计数器和执行信息。',
    '- cases.csv：逐例三种指标、两轮耗时、状态和配对加速比。',
    '- summary.json / analyze.py：全部分组统计与可复现分析。','']
lines[2:2]=[f"GPU 配对几何平均：F06 相对 eager 为 {summary['overall']['gpu_us']['eager']['speedup']:.2f}×，相对优化 Inductor 为 {summary['overall']['gpu_us']['inductor']['speedup']:.2f}×。单次端到端对应为 {summary['overall']['e2e_us']['eager']['speedup']:.2f}× 和 {summary['overall']['e2e_us']['inductor']['speedup']:.2f}×。这两类指标分开解释，不能把主机入口收益当成 GPU 计算收益。",'','个别用例存在跨轮波动，全部原始样本保留，没有删除或选择性重测。尤其大尺寸 ReduceSum 对优化 Inductor 的 GPU 分组比值两轮约为 0.99×、0.89×，大 Softmax 约为 1.01×、0.95×；接近 1× 的值不用于声称显著胜负。','']
(ROOT/'REPORT.md').write_text('\n'.join(lines))
print(json.dumps({k:summary[k] for k in ('overall','statuses_stable','round_relative_differences')},indent=2))
