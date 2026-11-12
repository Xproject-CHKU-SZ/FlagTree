from pathlib import Path
import json
R=Path(__file__).resolve().parent
source=json.loads((R/'result-snapshot.json').read_text());chosen={}
for e in source:
 d=e['result']
 if not e['path'].startswith('results/formal-') or 'case' not in d:continue
 i=d['case']['ordinal']
 allowed=d['status']=='completed' or (i in [10,11] and d['status']=='error')
 if not allowed or set(d['best'])!={'sdnn','cluster'}:continue
 resources={}
 for res,idx in d['best'].items():
  c=d['candidates'][idx]
  if c['status']!='passed':break
  resources[res]=dict(config=c['config'],candidate_index=idx,tuning_us=c['tuning_gpu_us']['median_us'],
   asm_sha256=c.get('asm_sha256',{}),source_path=e['path'],source_status=d['status'],source_sha256=d['source_sha256'])
 if len(resources)==2:chosen[str(i)]=dict(case=d['case'],resources=resources)
assert len(chosen)==88,len(chosen)
updates=[]
for e in source:
 d=e['result']
 if not e['path'].startswith('results/extra-sdnn-v') or d['status']!='completed' or 'sdnn' not in d['best']:continue
 i=str(d['case']['ordinal']);c=d['candidates'][d['best']['sdnn']];old=chosen[i]['resources']['sdnn']
 if c['status']=='passed' and c['tuning_gpu_us']['median_us']<old['tuning_us']:
  updates.append(dict(case=int(i),old=old['tuning_us'],new=c['tuning_gpu_us']['median_us'],phase=e['path']))
  chosen[i]['resources']['sdnn']=dict(config=c['config'],candidate_index=c['index'],tuning_us=c['tuning_gpu_us']['median_us'],
   asm_sha256=c.get('asm_sha256',{}),source_path=e['path'],source_status=d['status'],source_sha256=d['source_sha256'])
reuse=[]
for e in source:
 d=e['result']
 if e['path'].startswith('results/final-v9-calibration') and d['status']=='completed':
  i=d['case']['ordinal']
  if all(d['selection']['resources'][res]['config']==chosen[str(i)]['resources'][res]['config'] for res in ['sdnn','cluster']):reuse.append(i)
remaining=[i for i in [21,22,23,77,20,19,18,69]+list(range(88)) if i not in reuse and i!=85]
remaining=list(dict.fromkeys(remaining))
assert len(remaining)+len(reuse)+1==88
(R/'selected-candidates-final.json').write_text(json.dumps(chosen,indent=2))
(R/'final-batch2-cases.txt').write_text(','.join(map(str,remaining)))
(R/'final-selection-plan.json').write_text(json.dumps(dict(reuse=reuse,retest=remaining,largest_fma=[85],updates=updates),indent=2))
print(json.dumps(dict(reuse=reuse,retest_count=len(remaining),updates=updates)))
