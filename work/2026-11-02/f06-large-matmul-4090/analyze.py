"""Reproduce the fair full-suite and affected-case before/after analysis."""
import contextlib
import csv
import hashlib
import io
import json
import math
from pathlib import Path
import runpy
import statistics
from collections import Counter

ROOT = Path(__file__).resolve().parent
with contextlib.redirect_stdout(io.StringIO()):
    full = runpy.run_path(str(ROOT/'analyze_full.py'))
rows, runs = full['rows'], full['runs']
METRICS = full['METRICS']
ROUTES = ('eager','inductor','before','f06')
NAMES = full['NAMES']
manifest = json.loads((ROOT/'source_manifest.json').read_text())
focus = [dict(r) for r in rows if r['K'] and r['M'] >= 128 and r['kind'] != 'matmul_bias']
assert len(focus) == 36
ids = {r['case_id'] for r in focus}
runs['before'] = []
for rnd in 'ab':
    data = json.loads((ROOT/f'round-{rnd}-before/results.json').read_text())
    assert data['status'] == 'completed' and data['source_manifest'] == manifest
    mapped = {r['case_id']:r for r in data['cases']}
    assert set(mapped) == ids
    assert data['identity'] == full['reference_identity']
    runs['before'].append(mapped)

def gm(values):
    return math.exp(statistics.mean(math.log(x) for x in values)) if values else None

# Check every retained sample, not just the aggregates.
validated = 0
for route in ROUTES:
    for records in runs[route]:
        for cid, r in records.items():
            assert r['input_binding'] == runs['eager'][0][cid]['input_binding']
            assert r['tolerance'] == full['expected'][cid]['tolerance']
            assert r['status'] in ('passed','numerical_failure'), (route,cid,r.get('error'))
            if r['status'] != 'passed':
                continue
            assert r['stage'] == 'completed'
            assert r['counters_before_host'] == r['counters_after_host']
            assert r['counters_before_gpu'] == r['counters_after_gpu']
            assert not any(e['name']=='cudaGraphLaunch' for e in r['profile_cpu_graph_events'])
            assert r['execution'].get('fallback_calls',0) == 0
            assert r['gpu_us']['invocations_per_graph'] == (8 if r['K'] and r['M']==2048 else 64)
            assert r['gpu_us']['replays_per_sample']==20
            for metric, count in (('gpu_us',7),('e2e_us',31),('host_batch_us',7)):
                assert len(r[metric]['samples_us']) == count
                assert r[metric]['median_us'] == statistics.median(r[metric]['samples_us'])
                assert r[metric]['median_us'] > 0
            validated += 1

for row in focus:
    cid = row['case_id']
    rr = [m[cid] for m in runs['before']]
    row['before_status'] = '|'.join(r['status'] for r in rr) if rr[0]['status'] != rr[1]['status'] else rr[0]['status']
    for metric in METRICS:
        vals=[r[metric]['median_us'] for r in rr] if row['before_status']=='passed' else [None,None]
        row['before_'+metric+'_a'],row['before_'+metric+'_b']=vals
        row['before_'+metric]=statistics.median(vals) if vals[0] is not None else None
    for route in ('before','f06'):
        counts=[]
        for records in runs[route]:
            r=records[cid]
            kernels=[e for e in r.get('profile_gpu_events',[]) if not e['name'].startswith(('Memset','Memcpy'))]
            counts.append(len(kernels))
        row[route+'_compute_kernels_ab']=str(counts)
    for metric in METRICS:
        for base in ('before','eager','inductor'):
            row[f'{base}_over_f06_{metric}']=(row[base+'_'+metric]/row['f06_'+metric]
                if row[base+'_status']==row['f06_status']=='passed' else None)
        row[f'inductor_over_before_{metric}']=(row['inductor_'+metric]/row['before_'+metric]
            if row['inductor_status']==row['before_status']=='passed' else None)

comparisons=('before_over_f06','eager_over_f06','inductor_over_before','inductor_over_f06')
def group(selected):
    out=dict(n=len(selected),status={r:dict(Counter(x[r+'_status'] for x in selected)) for r in ROUTES})
    for metric in METRICS:
        out[metric]={}
        for comp in comparisons:
            paired=[r for r in selected if r[comp+'_'+metric] is not None]
            base,den=comp.split('_over_')
            ratios=[r[comp+'_'+metric] for r in paired]
            out[metric][comp]=dict(n=len(paired),geomean=gm(ratios),wins=sum(x>1 for x in ratios),
                round_geomeans=[gm([r[base+'_'+metric+'_'+rnd]/r[den+'_'+metric+'_'+rnd] for r in paired]) for rnd in 'ab'])
    return out
summary=dict(overall=group(focus),activation={},shape={},dtype={})
for field, values in [('kind',('matmul_bias_relu','matmul_bias_gelu_exact','matmul_bias_gelu_tanh','matmul_bias_silu')),('M',(128,512,2048)),('dtype',('float32','float16','bfloat16'))]:
    name={'kind':'activation','M':'shape','dtype':'dtype'}[field]
    for value in values:
        summary[name][str(value)]=group([r for r in focus if r[field]==value])
summary['round_relative_differences']={}
for route in ROUTES:
    summary['round_relative_differences'][route]={}
    for metric in METRICS:
        v=[abs(r[route+'_'+metric+'_a']-r[route+'_'+metric+'_b'])/r[route+'_'+metric]
           for r in focus if r[route+'_status']=='passed']
        summary['round_relative_differences'][route][metric]=dict(median=statistics.median(v),max=max(v),over_10_percent=sum(x>.1 for x in v))
(ROOT/'focus-summary.json').write_text(json.dumps(summary,indent=2))
with (ROOT/'focus-cases.csv').open('w') as f:
    writer=csv.DictWriter(f,fieldnames=list(focus[0]));writer.writeheader();writer.writerows(focus)

# Assert that only the requested large activation subset received the new policy.
for rec in runs['f06']:
    for cid,r in rec.items():
        info=r.get('execution',{}).get('plan_info',{})
        assert ('large_matmul_compiler_options' in info) == (cid in ids)
        if cid in ids:
            options=info['large_matmul_compiler_options']
            assert options['emulate_precision_casts'] and not options['pattern_matcher']
            assert options['max_autotune'] and options['coordinate_descent_tuning']
            assert options['benchmark_epilogue_fusion'] and not options['triton.cudagraphs']
            assert info['precision_policy']=='eager_materialization_boundaries'
old=ROOT.parents[1]/'2026-10-31/f06-fair-gpu-4090'
# Previous data establishes identical inputs/tolerances and unchanged failure set;
# speed comparisons above exclusively use this run's fresh baselines.
history={r['case_id']:r for r in json.loads((old/'round-a-f06/results.json').read_text())['cases']}
for r in rows:
    cid=r['case_id']
    assert history[cid]['input_binding']==runs['f06'][0][cid]['input_binding']
    assert history[cid]['tolerance']==runs['f06'][0][cid]['tolerance']
    assert history[cid]['status']==r['f06_status']
monitor=json.loads((ROOT/'orchestration.json').read_text())
run_pids={r['label']:r['pid'] for r in monitor['runs']}
for obs in monitor['monitoring']:
    allowed=set() if obs['phase']=='preflight' else {run_pids[obs['phase']]}
    assert {r['pid'] for r in obs['processes']} <= allowed
tests=json.loads((ROOT/'test-results.json').read_text())
assert tests['successful'] and tests['testsRun']==44 and not tests['skipped']
validation=dict(raw_records=sum(len(r) for route in runs.values() for r in route),valid_timed_records=validated,
    affected_cases=36,all_cases=216,tests=tests,unchanged_historical_tolerances_and_input_bindings=True,
    unchanged_full_suite_failure_set=True,policy_only_on_36_affected_cases=True,
    all_sample_counts_and_divisors_correct=True,compiler_counters_unchanged=True,
    no_native_graph_or_fallback=True,gpu_monitoring_samples=len(monitor['monitoring']),no_foreign_gpu_compute_observed=True)
(ROOT/'validation.json').write_text(json.dumps(validation,indent=2))

def fmt(g,metric,comp):
    v=g[metric][comp]
    return f"{v['geomean']:.3f}× ({v['n']}/{g['n']})" if v['n'] else f"— (0/{g['n']})"

def table(groups,metric):
    lines=['| 组合/分组 | 优化前 vs Inductor | 优化后 vs Inductor | 优化后 vs eager | 优化前/优化后 |',
           '|---|---:|---:|---:|---:|']
    for label,g in groups.items():
        lines.append('| '+NAMES.get(label,label)+' | '+' | '.join(fmt(g,metric,c) for c in ('inductor_over_before','inductor_over_f06','eager_over_f06','before_over_f06'))+' |')
    return lines

s=summary['overall'];gpu=s['gpu_us'];e2e=s['e2e_us']
lines=['# F06 大矩阵 MatMul+Bias+Activation：原因、优化与公平复测','',
    f"36 个受影响用例全部通过原精度阈值。GPU 几何平均相对旧 F06 加速 {gpu['before_over_f06']['geomean']:.3f}×；相对 max-autotune-no-cudagraphs 从 {gpu['inductor_over_before']['geomean']:.3f}× 提高到 {gpu['inductor_over_f06']['geomean']:.3f}×。相对 eager 为 {gpu['eager_over_f06']['geomean']:.3f}×。",'',
    '基线比值大于 1 表示 F06 更快；优化前/优化后大于 1 表示此次改动有收益。先合并两轮中位数，再算逐例比值并取几何平均。失败项不计入速度汇总；各列有效集合可能不同。接近 1 的结果按基本持平解释，不声明显著胜负。', '',
    '## 定位证据','',
    '1. 原实现只有 M≤64、N≤1024、K≤128 的小矩阵开启 GEMM autotune；大矩阵进入默认 compile_fx_inner，未开启 max_autotune/coordinate_descent_tuning。原大矩阵激活均为库 GEMM + 独立 Bias/Activation 后处理。',
    '2. 消融中仅补齐调优，FP16 128×1024×128 ReLU 从 3.049 μs 降至 1.753 μs，FP32 512×1024×1024 从 38.678 μs 降至 30.079 μs；执行路径变为融合模板。这说明缺少调优是主要可修复原因。见 diagnostic-original、diagnostic-max_only 的 JSON 与 source-*.py。',
    '3. 剩余 FP16 512×1024×1024 ReLU 差距与精度约束下的候选选择有关：原生基线 9.424 μs，原生加相同舍入保护后 11.155 μs，优化 F06 11.159 μs。基线模板在 FP32 accumulator 上直接加 bias、ReLU 后才输出；F06 保留 mm 和 add 的 dtype 舍入。严格原生对照也选择了库 GEMM + 后处理。此对照只用于归因，正式基线不变。',
    '4. 尝试将 max_epilogue_benchmarked_choices 从 1 扩至 8，没有给中尺寸带来稳定改善，未采用；全部样本保留在 check-wide。当前方案不强制单核，也不声称全局最优。', '',
    '## 实现','',
    '- 仅对小矩阵边界以外的 dense NVIDIA SM80+ MatMul+Bias+Activation 启用 max_autotune、coordinate_descent_tuning；保留 ATEN/TRITON 两种候选并开启 benchmark_epilogue_fusion。',
    '- pattern_matcher=False，emulate_precision_casts=True，从 tracing 到 lowering 保留 MatMul、Add 的舍入边界。TF32、低精度 reduction 与容差均未改变。',
    '- 保留原静态 guards、实时参数读取、独立输出和异常传播。小矩阵、bias-only、其他算子及 P800 原路径不变。',
    '- [实现](/home/f/Documents/FlagTree/python/triton/experimental/graph_fusion/_inference.py)、[说明](/home/f/Documents/FlagTree/docs/python-api/graph-fusion.rst)与 CPU/CUDA 回归测试同时更新。', '',
    '## GPU：同一外部 CUDA Graph 重放','',
    '两轮 profiler 均确认：优化前 36 例都是 2 个计算内核；优化后 24 例为 1 个、12 例为 2 个。Memset/Memcpy 不计为计算内核。36 例中 34 例 GPU 耗时下降；另两例 FP32 2048³ ReLU、GELU(tanh) 的前后比为 0.991×、0.992×，不声明改善。','']
lines+=table(summary['activation'],'gpu_us')
lines+=['','按 M 分组，三组 (M,N,K) 分别为 (128,1024,128)、(512,1024,1024)、(2048,2048,2048)。','']+table(summary['shape'],'gpu_us')
lines+=['','按 dtype：','']+table(summary['dtype'],'gpu_us')
lines+=['','## 单次端到端延迟','',
    '31 次独立样本：同步清空先前工作后开始主机计时，一次普通调用，等待 GPU 完成后结束。编译/autotune 不计入；没有用 GPU 图重放代替普通调用。','']+table(summary['activation'],'e2e_us')
lines+=['',f"全部 36 例端到端：相对旧 F06 {e2e['before_over_f06']['geomean']:.3f}×，相对 eager {e2e['eager_over_f06']['geomean']:.3f}×，相对 Inductor {e2e['inductor_over_f06']['geomean']:.3f}×。普通调用 400 次批量均摊作为第三类指标保留在 CSV/JSON，未混作单次延迟。",'',
    '## 正确性与覆盖','',
    '| 路径 | 大矩阵 Activation 两轮通过 | 全量 216 两轮通过 |','|---|---:|---:|']
for route in ROUTES:
    fullpass=full['summary']['overall']['statuses'].get(route,{}).get('passed')
    lines.append(f"| {route} | {s['status'][route].get('passed',0)}/36 | {str(fullpass)+'/216' if fullpass is not None else '仅重测受影响的 36 例'} |")
lines+=['',
    '大矩阵阈值原样保留：FP32 atol=rtol=3e-4；FP16/BF16 atol=rtol=3e-3。F06 全量未通过的 3 个 BF16 MatMul+Bias 属于未改动的 bias-only 路径，与历史一致；原生基线未通过项同样如实保留。不得将其耗时计为正确执行的加速比。',
    '44 项回归测试通过，无跳过：包含 CPU 路由/异常恢复/实时属性保护、原有精度/P800 路由检查、大矩阵 FP16/BF16 四种激活的抵消舍入和特殊值/缓存/独立输出检查，以及小矩阵 45 种报告组合的正确性和单计算内核检查。', '',
    '## 协议与限制','',
    '- 本轮共 1368 条记录：eager、原生优化 Inductor、优化 F06 各 216×2；旧 F06 36×2。每路径每轮独立进程，第二轮反转路径和用例顺序。',
    '- 沿用同一 input builders、seed=61、源数据哈希、设备地址使用方式、容差、GPU/CPU 及 PyTorch/Triton 二进制。CPU core 0、单线程；不改 GPU 时钟或功耗。',
    '- GPU 每图 64 次调用；M=2048 的 MatMul 为 8 次。侧流预热 16 次，图重放预热 3 次，7 组×20 次重放，CUDA Events 除以实际调用总次数。各路径完全一致。',
    '- 每例正常预热 256 次；排除编译、autotune 和 capture。输入变址、原地址修改后图重放、恢复原输入、参数不变性、计时区间编译计数以及无内部 CUDA Graph/fallback 全部检查。',
    '- GPU 是固定形状、固定设备输入、热缓存重放吞吐；不是冷缓存、传输或完整模型性能。改动增加搜索的编译成本，本次主要衡量稳态性能。',
    '- 实测 GPU：RTX 4090，PyTorch 2.11.0+cu130，Triton 3.6.0，驱动 615.71.10。只验证该环境，不外推 XPU 或全部 NVIDIA 代际。', '',
    '| 36 例两轮 GPU 相对差 | 中位数 | 最大值 |','|---|---:|---:|']
for route in ROUTES:
    v=summary['round_relative_differences'][route]['gpu_us']
    lines.append(f"| {route} | {100*v['median']:.2f}% | {100*v['max']:.2f}% |")
lines+=['','相对差为 |A−B|/两轮均值，不是置信区间。所有样本保留，未择优删除；各组逐轮比值见 focus-summary.json。', '',
    '## 可复查文件','',
    '- focus-cases.csv / focus-summary.json：36 例逐项耗时、前后与基线加速比、有效配对数、逐轮聚合。',
    '- ALL_COMBINATIONS.md / cases.csv / summary.json：全部 216 例及大小矩阵分组。',
    '- round-{a,b}-{eager,inductor,before,f06}/results.json：全部正式原始样本。',
    '- diagnostic-*、check-candidate、check-wide：原因隔离与未采用方案的记录；不替代正式复测。',
    '- source/ 为测试实现，before/ 为旧实现；source_manifest.json、validation.json、test-results.json 与 orchestration.json 保存核验依据。',
    '- analyze.py：同时生成全量与改动范围的报告。',
    '', '模式定义另见 [PyTorch 2.11 torch.compile 官方文档](https://docs.pytorch.org/docs/2.11/generated/torch.compile.html)。性能和归因数据均来自本轮实测。','']
(ROOT/'REPORT.md').write_text('\n'.join(lines))
print(json.dumps(dict(overall=summary['overall'],validation=validation),indent=2))
