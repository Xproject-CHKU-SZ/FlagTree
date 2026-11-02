import json,statistics,math,csv,hashlib
from pathlib import Path
from collections import Counter
ROOT=Path(__file__).resolve().parent
runs=[json.loads((ROOT/r/'results.json').read_text()) for r in ('round-a','round-b')]
assert all(r['status']=='completed' and len(r['cases'])==216 for r in runs)
assert runs[0]['identity']==runs[1]['identity']
assert runs[0]['source_manifest']==runs[1]['source_manifest']
assert all('mode=max-autotune' in r['route_definitions']['inductor'] for r in runs)
assert all(r['mode_options']['max-autotune']['triton.cudagraphs'] for r in runs)
for r in runs:
 for c in r['cases']:
  for rec in c['routes'].values():
   for src in rec.get('generated_sources',[]):
    p=ROOT/('round-a' if r['repeat_index']==0 else 'round-b')/src['file']
    assert hashlib.sha256(p.read_bytes()).hexdigest()==src['sha256']
rows=[]
for a,b in zip(*(r['cases'] for r in runs)):
 assert a['case_id']==b['case_id']
 assert a['tolerance']==b['tolerance']
 row={k:a[k] for k in ('case_id','kind','dtype','M','N','K')}
 row['size']='small' if a['M']<=64 else 'large'
 row['family']='add_layernorm' if a['kind'].startswith('add_layernorm') else 'mul_sum' if a['kind'].startswith('mul_sum') else a['kind']
 row['tolerance']=json.dumps(a['tolerance'])
 for label in ('eager','inductor','current_static'):
  recs=[x['routes'][label] for x in (a,b)]
  row[label+'_status']=recs[0]['status'] if recs[0]['status']==recs[1]['status'] else '|'.join(r['status'] for r in recs)
  row[label+'_status_stable']=recs[0]['status']==recs[1]['status']
  row[label+'_median_us']=statistics.median(r['median_us'] for r in recs) if all('median_us' in r for r in recs) else None
  row[label+'_round_a_us']=recs[0].get('median_us')
  row[label+'_round_b_us']=recs[1].get('median_us')
  row[label+'_kernels']='|'.join(str(r.get('profile_kernel_count','NA')) for r in recs)
  row[label+'_max_abs_error']=max(r.get('max_abs_error',0) for r in recs)
  row[label+'_native_graph_launch']=all(any('cudaGraphLaunch' in e['name'] for e in r.get('profile_cpu_events',[])) for r in recs)
 row['plan']=a['routes']['current_static'].get('execution',{}).get('plan_info',{}).get('kind')
 row['fallback_calls']=max(x['routes']['current_static'].get('execution',{}).get('fallback_calls',0) for x in (a,b))
 for base in ('eager','inductor'):
  row[base+'_speedup']=row[base+'_median_us']/row['current_static_median_us'] if row[base+'_status']==row['current_static_status']=='passed' else None
 rows.append(row)
with (ROOT/'cases.csv').open('w') as f:
 w=csv.DictWriter(f,fieldnames=list(rows[0]));w.writeheader();w.writerows(rows)
def gm(v):return math.exp(statistics.mean(math.log(x) for x in v)) if v else None
def aggregate(subset):
 out=dict(count=len(subset),statuses={route:dict(Counter(r[route+'_status'] for r in subset)) for route in ('eager','inductor','current_static')},plans=dict(Counter(r['plan'] for r in subset)),kernel_counts={route:dict(Counter(r[route+'_kernels'] for r in subset)) for route in ('eager','inductor','current_static')})
 for base in ('eager','inductor'):
  valid=[r for r in subset if r[base+'_speedup'] is not None]
  out[base]=dict(n=len(valid),host_speedup=gm([r[base+'_speedup'] for r in valid]),wins=sum(r[base+'_speedup']>1 for r in valid))
 return out
summary={'overall':aggregate(rows),'families':{},'variants':{},'dtype':{}}
for field,key in [('family','families'),('kind','variants'),('dtype','dtype')]:
 for value in dict.fromkeys(r[field] for r in rows):
  summary[key][value]={size:aggregate([r for r in rows if r[field]==value and r['size']==size]) for size in ('small','large')}
summary['large_matmul_shapes']={str((m,n,k)):aggregate([r for r in rows if r['K'] and (r['M'],r['N'],r['K'])==(m,n,k)]) for m,n,k in ((128,1024,128),(512,1024,1024),(2048,2048,2048))}
summary['native_cuda_graph_verified']=sum(r['inductor_native_graph_launch'] for r in rows)
summary['all_statuses_stable']=all(r[route+'_status_stable'] for r in rows for route in ('eager','inductor','current_static'))
summary['failures']=[{k:v for k,v in r.items() if k in ('case_id','kind','dtype','size','M','N','K','tolerance') or 'status' in k or 'max_abs_error' in k} for r in rows if r['current_static_status']!='passed' or r['inductor_status']!='passed']
(ROOT/'summary.json').write_text(json.dumps(summary,indent=2))
names={'matmul_bias':'MatMul + Bias','matmul_bias_relu':'MatMul + Bias + ReLU','matmul_bias_gelu_exact':'MatMul + Bias + GELU(exact)','matmul_bias_gelu_tanh':'MatMul + Bias + GELU(tanh)','matmul_bias_silu':'MatMul + Bias + SiLU','add_layernorm':'Add + LayerNorm','add_layernorm_affine':'Add + LayerNorm（weight+bias）','add_layernorm_weight':'Add + LayerNorm（weight）','add_layernorm_bias':'Add + LayerNorm（bias）','add_softmax':'Add + Softmax','mul_sum':'Mul + ReduceSum','mul_sum_keepdim':'Mul + ReduceSum（keepdim）'}
def fmt(x,base):
 v=x[base];return f"{v['host_speedup']:.2f}× ({v['n']}/{x['count']})" if v['n'] else f"— (0/{x['count']})"
def table(groups):
 result=['| 融合组合 | 小：vs eager | 小：vs max-autotune | 大：vs eager | 大：vs max-autotune |','|---|---:|---:|---:|---:|']
 for kind in names:
  if kind not in groups:continue
  pair=groups[kind]
  result.append('| '+names.get(kind,kind)+' | '+' | '.join(fmt(pair[size],base) for size in ('small','large') for base in ('eager','inductor'))+' |')
 return result
lines=['# F06 核心融合组合：RTX 4090，原生 max-autotune 基线','','## 口径与范围','','功能表 F06-G03 指定 MatMul+Bias、MatMul+Bias+Activation 及 Norm/Softmax/Reduce 组合。本次测试其 12 个语义变体，每变体 3 dtype × 6 尺寸，共 216 个用例，每例重新执行两轮。独立 Add+GELU/SiLU 不纳入核心汇总。','','原生基线：`torch.compile(graph, backend="inductor", fullgraph=True, dynamic=False, mode="max-autotune")`，包括该安装版本预设的 CUDA Graph、GEMM autotuning 和 coordinate descent tuning。F06 仍使用当前代码的 `graph_fusion.compile(..., static_inference=True, avoid_bias_materialization=True)`；未修改项目实现。','','这是原生完整 max-autotune 预设，不是 C/C++ 的 -O3，也不保证每个用例在所有 Inductor 配置中最快。','','加速比 = 基线耗时 / F06 耗时；大于 1 表示 F06 更快。仅使用两轮中双方均正确的样本，先对两轮各自的中位耗时取中位数，再计算逐例比值并取几何平均。括号是有效配对数 / 用例数。eager 与 Inductor 的有效集合可能不同，不宜直接相除比较两个汇总值。','','## 核心组合结果','']
lines+=table(summary['families'])
lines+=['','| 大 MatMul 尺寸 (M,N,K) | vs eager | vs max-autotune |','|---|---:|---:|']
for shape,g in summary['large_matmul_shapes'].items():lines.append('| '+shape+' | '+fmt(g,'eager')+' | '+fmt(g,'inductor')+' |')
lines+=['','LayerNorm 汇总含无 affine、weight、bias、weight+bias 四个变体；ReduceSum 含 keepdim=False/True。','','## 逐语义变体','']+table(summary['variants'])
lines+=['','## 正确性与实际执行','','以下通过/失败按既定 eager 对齐容差与输入/输出检查判定，不代表任何精度设置下的普遍结论。','','两轮正确性状态一致：'+str(summary['all_statuses_stable'])+'。','','| 路径 | 两轮均通过 | 其他状态 |','|---|---:|---|']
for route,label in [('eager','eager'),('inductor','Inductor max-autotune'),('current_static','F06')]:
 counts=summary['overall']['statuses'][route];lines.append(f"| {label} | {counts.get('passed',0)}/216 | {json.dumps({k:v for k,v in counts.items() if k!='passed'},ensure_ascii=False)} |")
lines+=['','F06 的 3 项失败均为大尺寸 BF16 MatMul+Bias，(M,N,K) 分别为 (128,1024,128)、(512,1024,1024)、(2048,2048,2048)，初次输入最大绝对误差分别为 0.25、1.0、1.0。原生基线的 61 项均为 assert_close 数值容差失败（53 项 BF16、8 项 FP16 ReduceSum），无编译错误或别名检查失败。',f"原生基线两轮均在 profiler 中确认 cudaGraphLaunch 的用例：{summary['native_cuda_graph_verified']}。失败用例不提供速度结论，逐例误差、阈值和状态保存在 cases.csv / summary.json，完整断言与生成代码保存在 round-a、round-b。",'','| 组合 | 尺寸 | F06 执行计划 | F06 CUDA 事件数（两轮计数: 用例数） |','|---|---|---|---|']
for kind,pair in summary['families'].items():
 for size,g in pair.items():lines.append(f"| {names[kind]} | {size} | {json.dumps(g['plans'])} | {json.dumps(g['kernel_counts']['current_static']).replace(chr(124),chr(92)+chr(124))} |")
lines+=['','CUDA 事件数来自单次正常调用的 profiler，原始事件名称可核查。这里只用于诊断实际执行，不能把 profiler 单次耗时当作稳定 GPU 内核基准。调用路径采用 static 计划并不自动证明所有算子进入一个内核；应同时检查生成代码和事件。','','## 结果解释与边界','','F06 小 MatMul 专用路径的形状条件为 M≤64、N≤1024、K≤128（source/python/triton/experimental/graph_fusion/_inference.py 的 _find_small_matmul）。本次大 MatMul 超出该条件，使用一般静态 Inductor 计划，实际可能发出多个内核。这里的 F06 指当前完整编译路径，不能将大矩阵结果标成自定义单内核的收益。','','该实验衡量包含 Python 调度的正常调用耗时。相同数量的 GPU 内核也可能因调用路径不同产生不同主机端耗时；本表不能直接解释为 GPU 内核本体获得了同样倍数的加速。','','## 测量条件','','- GPU：RTX 4090；PyTorch '+runs[0]['identity']['torch']+'；Triton '+runs[0]['identity']['triton']+'。','- 小尺寸 (M,N)：(16,128)、(32,256)、(64,1024)，MatMul K=64。','- 大尺寸 (M,N)：(128,1024)、(512,1024)、(2048,2048)，MatMul K 分别为 128、1024、2048。','- 非 MatMul 组合输入为 (M,N) 与广播向量 (N,)；Softmax/Reduce 沿最后一维；LayerNorm epsilon=1e-3。MatMul Bias 是运行时输入。','- FP32、FP16、BF16；固定 seed=61，关闭 TF32 和低精度 matmul reduction，保持历史 dtype/算子容差（逐例记录，不放宽阈值）。','- 每路径预热 8 次；每轮计时 7 组 × 40 次，组间同步 GPU，轮转路径次序；CPU 绑定 core 0，单线程，计时前 CPU 预热 0.5 s。','- 主指标是主机墙钟批量平均调用耗时，含 Python 调度、正常输出分配和最后同步；不含编译、autotune、首次图捕获及正确性检查。','- CUDA Graph 输出允许存储复用；每次正确性快照 clone 均在计时外。另检查扰动输入、输入/参数不变性、计时后正确性。','- 运行器监控 GPU，外部计算进程或超时会终止本次运行；完整监控见 orchestration.json。','- 本次是 4090 固定形状推理微基准；未覆盖 F06 计划要求的 XPU、动态形状和模型级验收。','','## 证据与复现','','- `bench_current.py`：三条路径和完整测量协议。','- `coverage_cases.py`：216 个核心用例定义；沿用历史输入定义并补齐大尺寸 Norm/Softmax/Reduce。','- `source_manifest.json`、`baseline_identity.json`：测试源码及原生软件身份。','- `round-a/results.json`、`round-b/results.json`：两次独立进程原始结果、输入摘要、生成代码哈希、执行计划及 profiler。','- `cases.csv`：逐例两轮耗时、精度状态、配对加速比。','- `summary.json`：按组合、变体和 dtype 汇总。','- `analyze.py`：校验原始生成代码后重建所有汇总。','']
lines[2:2]=['> 计时审计补充：本表是普通 API 调用的主机耗时，包含 Dynamo/AOT 包装、CUDA Graph 管理及输入复制。不能把约 4× 直接解释为 GPU 计算核加速。独立进程、固定地址和统一 GPU 重放对照见 [计时公平性审计](../f06-timing-audit-4090/REPORT.md)。','']
lines[2:2]=['> 最新全量公平口径结果已完成：见 [216 用例统一 GPU 重放与独立端到端报告](/home/f/Documents/FlagTree/work/2026-10-31/f06-fair-gpu-4090/REPORT.md)。本页保留此前基线或原因审计的数据。', '']
(ROOT/'REPORT.md').write_text('\n'.join(lines))
print(json.dumps({k:summary[k] for k in ('overall','families','native_cuda_graph_verified','all_statuses_stable')},indent=2))
