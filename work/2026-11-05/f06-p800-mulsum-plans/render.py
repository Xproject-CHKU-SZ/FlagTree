from pathlib import Path
import json,statistics,hashlib,collections

def render(local):
 base=local/'remote-final';done=json.loads((base/'complete.json').read_text());assert len(done)==36
 rows=[];verified=0;attempts=[];components=[];decisions=[]
 for hp in (base/'results').glob('case-*/hardware.json'):
  h=json.loads(hp.read_text());attempts.append((h['before']['at'],h['after']['at'],h['before']['card']))
 attempts.sort();assert attempts and {d for _,_,d in attempts}=={7}
 assert all(a[1]<=b[0] for a,b in zip(attempts,attempts[1:])), 'overlapping GPU workers'
 wall=lambda t:statistics.median(x for batch in t['e2e_round_samples_us'] for x in batch)
 for key,entry in sorted(done.items(),key=lambda x:int(x[0])):
  folder=base/entry['path'];case=json.loads((folder/'result.json').read_text());hw=json.loads((folder/'hardware.json').read_text())
  assert case['status']=='complete' and case['timed_bindings_unchanged']
  assert not hw['contaminated'] and hw['before']['idle'] and hw['after']['healthy'] and not hw['after']['pids']
  s=case['case'];rr=case['routes'];assert int(key)==s['ordinal'] and entry['device']==7
  assert s['tolerance']==dict(atol={'float32':.0003,'float16':.003,'bfloat16':.03}[s['dtype']],rtol=.0003 if s['dtype']=='float32' else .003)
  dual='sdnn_old_dual' if s['N']<=256 else 'sdnn256_cluster_old_dual'
  old='sdnn_parallel' if s['N']<=256 else 'sdnn256_cluster_parallel'
  case_rows=[]
  for name,r in rr.items():
   t=r.get('timing',{});bind=r.get('binding',[]);errs=r.get('stress',{}).get('errors',{})
   row=dict(case=int(key),kind=s['kind'],dtype=s['dtype'],M=s['M'],N=s['N'],device=7,route=name,status=t.get('status',r.get('status','missing')),all_gates=bool(r.get('eligible') and t.get('status')=='passed'),invalid_zero_errors=errs.get('invalid_zero'),class_errors=errs.get('classes'),wide_errors=errs.get('finite_pairs'),GPU_us=t.get('gpu_us'),E2E_us=None,kernel_count=r.get('proof',{}).get('kernel_count'),error=(r.get('error') or t.get('error') or '').strip()[-1800:])
   if t.get('status')=='passed':
    assert len(t['gpu_samples_us'])==18 and len(t['capture_samples_us'])==3 and all(len(x)==6 for x in t['capture_samples_us'])
    assert len(t['e2e_round_samples_us'])==2 and all(len(x)==128 for x in t['e2e_round_samples_us']) and t['checks']['graph_fresh_data']
    row['E2E_us']=wall(t);row['E2E_round_us']=[statistics.median(a) for a in t['e2e_round_samples_us']]
   for label,ref in [('old_parallel',old),('old_dual',dual),('eager','eager'),('inductor','inductor')]:
    row['vs_'+label+'_GPU']=row['vs_'+label+'_E2E']=None
    b=rr.get(ref,{}).get('timing',{})
    if t.get('status')==b.get('status')=='passed':
     assert b['calls_per_graph']==t['calls_per_graph']
     row['vs_'+label+'_GPU']=b['gpu_us']/row['GPU_us'];row['vs_'+label+'_E2E']=wall(b)/row['E2E_us']
   for b in bind:
    for ext,suffix in [('elf','.elf'),('xpubin','.xpubin'),('ir','.mlir')]:
     p=folder/'binaries'/(b[ext]+suffix);assert hashlib.sha256(p.read_bytes()).hexdigest()==b[ext];verified+=1
   if bind:
    resources=[x['resource'] for x in bind]
    if name.endswith('_at_1'):
     assert resources==name.removesuffix('_at_1').split('_')
     assert row['kernel_count']==2
    row['resources']=resources
   rows.append(row);case_rows.append(row)
  current=[r for r in case_rows if r['route'] in ('cluster','sdnn_parallel') or r['route'].endswith('_at_1')]
  finite=[r for r in current if r['GPU_us'] is not None];strict=[r for r in finite if r['all_gates']]
  best=min(finite,key=lambda x:x['GPU_us']) if finite else None
  valid=min(strict,key=lambda x:x['GPU_us']) if strict else None
  decisions.append(dict(case=int(key),kind=s['kind'],dtype=s['dtype'],M=s['M'],N=s['N'],fastest_finite_diagnostic=best['route'] if best else None,fastest_strict=valid['route'] if valid else None,resource_prior=case.get('resource_prior')))
  for stage in ('mul','sum'):
   for route,t in case.get('components',{}).get(stage,{}).items():
    components.append(dict(case=int(key),dtype=s['dtype'],M=s['M'],N=s['N'],stage=stage,route=route,GPU_us=t.get('gpu_us'),E2E_us=wall(t) if t.get('status')=='passed' else None,status=t.get('status'),error=t.get('error')))
 summary=dict(cases=36,complete=len(done),physical_gpu=7,overlapping_cases=0,verified_hashes=verified,eager_timed=sum(r['route']=='eager' and r['status']=='passed' for r in rows),cases_with_strict_resource_candidate=sum(d['fastest_strict'] is not None for d in decisions),route_status={k:dict(collections.Counter((r['status'],'strict' if r['all_gates'] else 'diagnostic').__str__() for r in rows if r['route']==k)) for k in sorted({r['route'] for r in rows})})
 for name,obj in [('comparison',rows),('components',components),('decisions',decisions),('summary',summary)]:
  (local/(name+'.json')).write_text(json.dumps(obj,indent=2))
 report=['# P800 Mul+Sum 原生 Inductor 选核与两段切分复测','','固定 P800 7 号正常卡，所有工作进程串行。只在 zhaoweiming 目录内运行。默认策略未改变。','','旧算子级比值只用于排序：优先尝试 cluster 乘法→SDNN 行求和，同时保留四种两段组合。旧数据没有独立乘法测试，也没有 FP16/BF16 行求和测试。最终以当前完整路径的验证和测量为准。','','两段路径在原 dtype 中物化完整乘积，交由原生 Inductor 分别调优；不强制 XBLOCK=1，不按 256 列手动拆成多次启动。小矩阵仍要求一个实际内核。','','GPU：各候选相同调用次数的 CUDA Graph 重放，3 次独立捕获，共 18 个样本。端到端：普通同步调用，两轮各 128 次，交错顺序。编译、初始化和主机传输不计入稳态耗时。原精度阈值和扩展 CPU 特殊值/极端有限值检查不变。','','倍率 = 对照耗时 / 当前耗时。未通过完整检查的计时仅用于诊断，不能作为可部署的胜出方案。分段计时使用与完整路径相同的已绑定内核，不相加充当完整路径性能。','','|组合 / 类型|M×N|普通值最快候选|GPU µs|GPU 倍率：旧双乘 / eager / Inductor|端到端 µs|端到端倍率：旧双乘 / eager / Inductor|该候选完整精度验收|','|---|---|---|---:|---|---:|---|---|']
 fmt=lambda x:'—' if x is None else f'{x:.3f}'
 for d in decisions:
  x=next((r for r in rows if r['case']==d['case'] and r['route']==d['fastest_finite_diagnostic']),None)
  if x is None:continue
  ratios=lambda m:' / '.join(fmt(x['vs_'+v+'_'+m]) for v in ('old_dual','eager','inductor'))
  report.append(f"|{x['kind']} / {x['dtype']}|{x['M']}×{x['N']}|{x['route']}|{fmt(x['GPU_us'])}|{ratios('GPU')}|{fmt(x['E2E_us'])}|{ratios('E2E')}|{'通过' if x['all_gates'] else '未通过'}|")
 (local/'results.md').write_text('\n'.join(report)+'\n');return summary
if __name__=='__main__':print(render(Path(__file__).resolve().parent))
