import json,statistics,math,csv
from pathlib import Path
from collections import Counter
ROOT=Path(__file__).resolve().parent
runs=[json.loads((ROOT/r/'results.json').read_text()) for r in ('round-a','round-b')]
assert all(r['status']=='completed' and len(r['cases'])==180 for r in runs)
rows=[]
for a,b in zip(*(r['cases'] for r in runs)):
 assert a['case_id']==b['case_id']
 row={k:a[k] for k in ('case_id','kind','dtype','M','N','K')}
 row['group']='large:'+str((a['M'],a['N'],a['K'])) if a['case_id'].startswith('large:') else ('small_matmul' if a['K'] else 'norm_softmax_reduce')
 for label in ('eager','inductor','inductor_max','current_static'):
  recs=[x['routes'][label] for x in (a,b)]
  row[label+'_status']='passed' if all(r['status']=='passed' for r in recs) else '|'.join(r['status'] for r in recs)
  for key in ('median_us','device_us','setup_seconds','profile_kernel_count'):
   row[label+'_'+key]=statistics.median(r[key] for r in recs) if all(key in r for r in recs) else None
  row[label+'_max_abs_error']=max(r.get('max_abs_error',0) for r in recs)
 row['plan']=a['routes']['current_static'].get('execution',{}).get('plan_info',{}).get('kind')
 row['fallback_calls']=max(x['routes']['current_static'].get('execution',{}).get('fallback_calls',0) for x in (a,b))
 rows.append(row)
with (ROOT/'cases.csv').open('w') as f:
 w=csv.DictWriter(f,fieldnames=list(rows[0]));w.writeheader();w.writerows(rows)
def gm(v):return math.exp(statistics.mean(math.log(x) for x in v)) if v else None
summary={}
for group in ['all']+list(dict.fromkeys(r['group'] for r in rows)):
 subset=[r for r in rows if group=='all' or r['group']==group]
 out=dict(count=len(subset),current_status=dict(Counter(r['current_static_status'] for r in subset)),inductor_status=dict(Counter(r['inductor_status'] for r in subset)),plans=dict(Counter(r['plan'] for r in subset)))
 for base in ('eager','inductor','inductor_max'):
  valid=[r for r in subset if r[base+'_status']==r['current_static_status']=='passed']
  out[base]=dict(n=len(valid),host_speedup=gm([r[base+'_median_us']/r['current_static_median_us'] for r in valid]),gpu_speedup=gm([r[base+'_device_us']/r['current_static_device_us'] for r in valid]),wins=sum(r[base+'_median_us']>r['current_static_median_us'] for r in valid))
 valid=[r for r in subset if r['inductor_status']==r['inductor_max_status']=='passed']
 out['max_vs_default']=dict(n=len(valid),host_speedup=gm([r['inductor_median_us']/r['inductor_max_median_us'] for r in valid]),gpu_speedup=gm([r['inductor_device_us']/r['inductor_max_device_us'] for r in valid]),wins=sum(r['inductor_median_us']>r['inductor_max_median_us'] for r in valid))
 out['max_status']=dict(Counter(r['inductor_max_status'] for r in subset))
 summary[group]=out
(ROOT/'summary.json').write_text(json.dumps(summary,indent=2))
print(json.dumps(summary,indent=2))
