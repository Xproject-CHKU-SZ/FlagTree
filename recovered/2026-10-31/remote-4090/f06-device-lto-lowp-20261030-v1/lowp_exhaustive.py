"""Full GELU audit of all 65536 bit patterns per low-precision input type."""
import argparse,hashlib,json,os
from pathlib import Path
from contextlib import nullcontext
from unittest import mock
ROOT=Path(__file__).resolve().parent

def main():
 p=argparse.ArgumentParser();p.add_argument('--output',type=Path,required=True);p.add_argument('--repeat-index',type=int,default=0);args=p.parse_args();args.output.mkdir(exist_ok=False)
 for name,h in json.loads((ROOT/'manifest.json').read_text())['files'].items():assert hashlib.sha256((ROOT/name).read_bytes()).hexdigest()==h
 reuse=json.loads((ROOT/'reuse_source.json').read_text());remote=Path(reuse['remote_root'])
 for name,h in reuse['files'].items():assert hashlib.sha256((remote/name).read_bytes()).hexdigest()==h
 import torch,triton.experimental
 triton.experimental.__path__.insert(0,str(remote/'source/python/triton/experimental'))
 from triton.experimental import graph_fusion as gf
 from triton.experimental.graph_fusion import _cuda_tanh as policy
 from case_data import specs,make_case
 from device_link import DeviceLinker
 from prototype import FusedPrototype
 from lto_prototype import LTOPrototype
 from lto_link import LTOLinker
 torch.set_num_threads(1);assert '4090' in torch.cuda.get_device_name()
 result=dict(status='running',cases=[])
 with torch.no_grad():
  for spec in specs():
   if spec['kind']!='add_gelu_tanh' or spec['M']!=64 or spec['dtype'] not in ('float16','bfloat16'):continue
   gm,data=make_case(spec);gm=gm.cuda();xs=tuple(t.cuda() for t in data['mixed_grouped']);plans={}
   for variant in ('native','precise'):
    with mock.patch.object(policy,'eligible',return_value=False) if variant=='native' else nullcontext():plans[variant]=gf.compile(gm,xs,static_inference=True,avoid_bias_materialization=True,fullgraph=True,dynamic=False)
    plans[variant](*xs)
   base=FusedPrototype(plans['native'],args.output,spec['dtype'],spec,DeviceLinker(nvrtc_options=('--no-cache',)),policy.ASM);lto=LTOPrototype(base,LTOLinker())
   xs[0].copy_(torch.arange(65536,dtype=torch.int32).to(torch.int16).view(xs[0].dtype).reshape(xs[0].shape))
   for bias in (0.0,0.125,-0.125):
    xs[1].fill_(bias);assert base.screen(xs)[0]=='general'
    ref=plans['native'](*xs)
    functions=dict(precise=plans['precise'],object=base.get_linked('general')[0],lto=lto.get('general')[0],lto_call=lto.get('general',False)[0])
    for route,fn in functions.items():
     y=fn(*xs);diff=y.view(torch.int16)!=ref.view(torch.int16);nan=torch.isnan(ref)&torch.isnan(y)
     row=dict(dtype=spec['dtype'],bias=bias,route=route,elements=y.numel(),bit_differences=int(diff.sum()),nan_payload_differences=int((diff&nan).sum()),non_nan_differences=int((diff&~nan).sum()),nan_outputs=int(torch.isnan(y).sum()))
     result['cases'].append(row);(args.output/'results.json').write_text(json.dumps(result,indent=2)+'\n');assert row['non_nan_differences']==0,row
 result['status']='completed';(args.output/'results.json').write_text(json.dumps(result,indent=2)+'\n');print(json.dumps(result),flush=True)
if __name__=='__main__':main()
