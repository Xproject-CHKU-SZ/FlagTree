from pathlib import Path
import json,statistics,hashlib,re

def render(local):
 base=local/'remote-final';done=json.loads((base/'complete.json').read_text());assert len(done)==36
 rows=[];verified=0;attempts=[];precision_differences=[]
 for hp in (base/'results').glob('case-*/hardware.json'):
  h=json.loads(hp.read_text());attempts.append((h['before']['at'],h['after']['at'],h['before']['card']))
 attempts.sort();assert attempts and {d for _,_,d in attempts}=={7}
 assert all(a[1]<=b[0] for a,b in zip(attempts,attempts[1:])), 'overlapping test workers'
 wall=lambda t:statistics.median(x for batch in t['e2e_round_samples_us'] for x in batch)
 for key,entry in done.items():
  folder=base/entry['path'];case=json.loads((folder/'result.json').read_text());hw=json.loads((folder/'hardware.json').read_text())
  assert case['status']=='complete' and case['timed_bindings_unchanged']
  assert not hw['contaminated'] and hw['before']['idle'] and hw['after']['healthy'] and not hw['after']['pids']
  s=case['case'];rr=case['routes'];assert int(key)==s['ordinal'] and entry['device']==7
  assert s['tolerance']==dict(atol={'float32':.0003,'float16':.003,'bfloat16':.03}[s['dtype']],rtol=.0003 if s['dtype']=='float32' else .003)
  single='sdnn_single' if s['N']<=256 else 'sdnn256_cluster';dual='sdnn_old_dual' if s['N']<=256 else single+'_old_dual';parallel='sdnn_parallel' if s['N']<=256 else single+'_parallel'
  a,b=rr.get(parallel,{}),rr.get(single,{})
  for field in ('status','eligible','stress','special'):
   if a.get(field)!=b.get(field):precision_differences.append(dict(case=int(key),field=field))
  for name in ['eager','inductor','cluster',single,dual,parallel]:
   r=rr.get(name,{});t=r.get('timing',{});bind=r.get('binding',[]);errs=r.get('stress',{}).get('errors',{})
   row=dict(case=int(key),kind=s['kind'],dtype=s['dtype'],M=s['M'],N=s['N'],device=7,route=name,primary=name==parallel,status=t.get('status',r.get('status','missing')),all_gates=bool(r.get('eligible') and t.get('status')=='passed'),invalid_zero_errors=errs.get('invalid_zero'),class_errors=errs.get('classes'),wide_errors=errs.get('finite_pairs'),GPU_us=t.get('gpu_us'),E2E_us=None,error=(r.get('error') or t.get('error') or '').strip()[-1000:])
   if t.get('status')=='passed':
    assert len(t['gpu_samples_us'])==18 and len(t['capture_samples_us'])==3 and all(len(x)==6 for x in t['capture_samples_us'])
    assert len(t['e2e_round_samples_us'])==2 and all(len(x)==128 for x in t['e2e_round_samples_us']) and t['checks']['graph_fresh_data']
    row['E2E_us']=wall(t)
   for label,ref in [('serial',single),('old_dual',dual),('eager','eager'),('inductor','inductor')]:
    row['vs_'+label+'_GPU']=row['vs_'+label+'_E2E']=None
    b=rr.get(ref,{}).get('timing',{})
    if t.get('status')==b.get('status')=='passed':
     assert b['calls_per_graph']==t['calls_per_graph']
     row['vs_'+label+'_GPU']=b['gpu_us']/row['GPU_us'];row['vs_'+label+'_E2E']=wall(b)/row['E2E_us']
   for b in bind:
    for ext,suffix in [('elf','.elf'),('xpubin','.xpubin'),('ir','.mlir')]:
     p=folder/'binaries'/(b[ext]+suffix);assert hashlib.sha256(p.read_bytes()).hexdigest()==b[ext];verified+=1
    if b['resource']=='sdnn':
     assert b['ew_mul']==(2 if name==dual else 1)
     if name==parallel:
      assert b['metadata'].get('f06_parallel_multiply')
      ir=(folder/'binaries'/(b['ir']+'.mlir')).read_text()
      assert ir.count('llvm.call @llvm.xpu.sync_core')==2
      assert set(map(int,re.findall(r'attributes \{core_id = (\d+) : i32, little_core',ir)))==set(range(8))
   rows.append(row)
 primary=[r for r in rows if r['primary']];assert len(primary)==36
 summary=dict(cases=36,complete=len(done),physical_gpu=7,overlapping_cases=0,verified_hashes=verified,eager_timed=sum(r['route']=='eager' and r['status']=='passed' for r in rows),parallel_timed=sum(r['status']=='passed' for r in primary),all_gates_passed=sum(r['all_gates'] for r in primary),targeted_special_values_failures=sum(r['invalid_zero_errors'] or 0 for r in primary),precision_differences_from_serial=precision_differences)
 (local/'comparison.json').write_text(json.dumps(rows,indent=2));(local/'summary.json').write_text(json.dumps(summary,indent=2))
 report=['# P800 Mul+Sum 单乘按列并行修复复测','','全程固定 P800 7 号卡，串行执行。精度阈值、BF16 的 FP32 计算路径和 NaN/Inf 检查保持原样。并行模式仅用于实验，不改变默认策略。','','每个 SDNN 的单行修复按连续缓存行切分给 8 个控制核，保留原算术顺序与输入/输出事件。原 128/256 次串行循环变为每核 16/32 次，输入交接与输出汇合各一次同步。','','GPU：共同调用次数的 CUDA Graph 重放，3 次独立捕获、18 个样本。端到端：普通同步调用，两轮各 128 次，交错顺序。编译及初始化不计入稳态耗时。','','大矩阵仍使用同一 256 列 SDNN 分块及 cluster 汇总；1024/2048 列分别为 5/9 次启动，所有 SDNN 对照切分相同。倍率 = 对照耗时 / 并行单乘耗时，>1 表示并行单乘更快。未通过完整精度或特殊值验收的时间仅供诊断。','','|组合/类型|M×N|GPU µs|GPU 倍率：串行单乘 / 旧双乘 / eager / Inductor|端到端 µs|端到端倍率：串行单乘 / 旧双乘 / eager / Inductor|完整精度验收|特殊乘积错误 / 12|','|---|---|---:|---|---:|---|---|---:|']
 fmt=lambda x:'—' if x is None else f'{x:.3f}'
 for x in sorted(primary,key=lambda x:x['case']):
  ratios=lambda m:' / '.join(fmt(x['vs_'+v+'_'+m]) for v in ('serial','old_dual','eager','inductor'))
  report.append(f"|{x['kind']} / {x['dtype']}|{x['M']}×{x['N']}|{fmt(x['GPU_us'])}|{ratios('GPU')}|{fmt(x['E2E_us'])}|{ratios('E2E')}|{'通过' if x['all_gates'] else '未通过'}|{x['invalid_zero_errors'] if x['invalid_zero_errors'] is not None else '—'}|")
 (local/'results.md').write_text('\n'.join(report)+'\n');return summary
if __name__=='__main__':print(render(Path(__file__).resolve().parent))
