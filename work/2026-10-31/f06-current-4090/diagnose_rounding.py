import os,sys,json
from pathlib import Path
import torch,triton.experimental
ROOT=Path(__file__).resolve().parent
triton.experimental.__path__.insert(0,str(ROOT/'source/python/triton/experimental'))
from triton.experimental import graph_fusion as gf
from large_cases import cases,build_cpu_case
from torch._inductor.utils import run_and_get_code
torch.set_num_threads(1)
torch.backends.cuda.matmul.allow_tf32=False
torch.backends.cuda.matmul.allow_fp16_reduced_precision_reduction=False
torch.backends.cuda.matmul.allow_bf16_reduced_precision_reduction=False
results=[]
with torch.no_grad():
 for spec in cases():
  if spec['kind']!='matmul_bias' or spec['dtype']!='bfloat16': continue
  gm,inputs,_,_=build_cpu_case(spec);gm=gm.cuda();inputs=tuple(x.cuda() for x in inputs)
  expected=gm(*inputs)
  direct=torch.addmm(inputs[2],inputs[0],inputs[1])
  current=gf.compile(gm,inputs,fullgraph=True,dynamic=False,static_inference=True,avoid_bias_materialization=True)
  actual=current(*inputs)
  fixed=torch.compile(gm,backend='inductor',fullgraph=True,dynamic=False,options={'pattern_matcher':False,'emulate_precision_casts':True})
  values,sources=run_and_get_code(fixed,*inputs)
  value=fixed(*inputs)
  rec=dict(case_id=spec['case_id'],current_equals_addmm=bool(torch.equal(actual,direct)),current_max_abs=float((actual.float()-expected.float()).abs().max()),addmm_max_abs=float((direct.float()-expected.float()).abs().max()),preserve_boundaries_max_abs=float((value.float()-expected.float()).abs().max()),preserve_boundaries_passes=bool(torch.allclose(value,expected,**spec['tolerance'])),plan=current.plan_info)
  results.append(rec)
  for i,source in enumerate(sources): (ROOT/f'diagnose-{spec["M"]}-{i}.py').write_text(source)
(ROOT/'rounding_diagnosis.json').write_text(json.dumps(results,indent=2,default=str))
print(json.dumps(results,indent=2,default=str))
