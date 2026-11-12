from pathlib import Path
import importlib.util,json,re,hashlib
R=Path(__file__).resolve().parent
p=R.parents[2]/'python/triton/experimental/graph_fusion/_p800_parallel_rne.py'
s=importlib.util.spec_from_file_location('parallel',p);mod=importlib.util.module_from_spec(s);s.loader.exec_module(mod)
old=R.parents[1]/'2026-11-04/f06-p800-single-mul/remote-final';rows=[]
for k,v in json.loads((old/'complete.json').read_text()).items():
 root=old/v['path'];d=json.loads((root/'result.json').read_text());name='sdnn_single' if d['case']['N']<=256 else 'sdnn256_cluster'
 for b in d['routes'][name].get('binding',[]):
  if b['resource']!='sdnn':continue
  text=(root/'binaries'/(b['ir']+'.mlir')).read_text();changed,rec=mod.rewrite_single_multiply(text)
  assert len(rec)==1,(k,rec)
  assert changed.count('sdnn.ew mul ')==text.count('sdnn.ew mul ')==1
  assert changed.count('sdnn.ew reduce_sum ')==text.count('sdnn.ew reduce_sum ')
  assert changed.count('llvm.call @llvm.xpu.sync_core')==2
  assert [x for c,a,b in rec[0]['partitions'] for x in range(a,b)]==list(range(rec[0]['columns']))
  assert all(a%16==b%16==0 for c,a,b in rec[0]['partitions'])
  # New side effects / noncontiguous storage / divergent control fail closed.
  assert not mod.rewrite_single_multiply(text.replace('arith.xori','func.call'))[1]
  assert not mod.rewrite_single_multiply('scf.if %c {\n'+text+'\n}')[1]
  assert not mod.rewrite_single_multiply(changed)[1]
  dest=R/'offline-ir';dest.mkdir(exist_ok=True);(dest/(b['ir']+'-parallel.mlir')).write_text(changed)
  rows.append(dict(case=int(k),original_ir=b['ir'],records=rec,output=hashlib.sha256(changed.encode()).hexdigest()))
(R/'rewrite-check.json').write_text(json.dumps(rows,indent=2));print('archived shapes verified',len(rows))
