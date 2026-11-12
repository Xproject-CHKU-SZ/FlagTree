"""Current F06: isolated original Inductor baseline or eager/default/pre-tuned."""
import argparse
import hashlib
import json
import os
from pathlib import Path
import statistics
import sys
import time
import traceback

KINDS = ('matmul_bias','matmul_bias_relu','add_softmax','matmul_bias_gelu_exact',
         'matmul_bias_gelu_tanh','matmul_bias_silu','add_gelu_exact','add_gelu_tanh',
         'add_silu','add_layernorm','add_layernorm_affine','mul_sum','mul_sum_keepdim')
def sha(p): return hashlib.sha256(Path(p).read_bytes()).hexdigest()
def main():
    p=argparse.ArgumentParser()
    p.add_argument('--route',choices=('candidate','original'),required=True)
    p.add_argument('--output',type=Path,required=True)
    p.add_argument('--source-root',type=Path)
    p.add_argument('--smoke',action='store_true')
    p.add_argument('--kinds')
    p.add_argument('--repeat-index',type=int,default=0)
    args=p.parse_args();args.output.mkdir(parents=True,exist_ok=True)
    source=args.source_root or Path(__file__).resolve().parents[2]
    root=source.parent
    compatibility=None
    if args.route=='original':
        assert os.environ.get('F06_ORIGINAL_BASELINE')=='1'
        sys.path.insert(0,str(Path(__file__).parent/'reference'))
        import compat_adapter
        compatibility=compat_adapter.install()
    import torch
    import torch.nn.functional as F
    import triton
    from triton.runtime import driver
    from triton._C import libtriton
    if args.route=='original':
        import torch._inductor.config as ic
        ic.assert_indirect_indexing=False
        torch._dynamo.config.suppress_errors=False
        compat_adapter.guard_vendor_import_hook()
        from torch._inductor.utils import run_and_get_code
        assert not any('graph_fusion' in name for name in sys.modules)
        package=Path(triton.__file__).resolve().parent.parent
        manifest=json.loads((root/'baseline_manifest.json').read_text())
        for name,info in manifest['files'].items():
            assert sha(package/Path(name).relative_to('dependencies/flagtree'))==info['sha256'],name
    else:
        from triton.experimental import graph_fusion as gf
    torch.set_num_threads(1)
    torch.backends.cuda.matmul.allow_tf32=False
    torch.backends.cudnn.allow_tf32=False
    torch.backends.cuda.matmul.allow_fp16_reduced_precision_reduction=False
    torch.backends.cuda.matmul.allow_bf16_reduced_precision_reduction=False
    class Module(torch.nn.Module):
        def __init__(self,kind,n):
            super().__init__();self.kind=kind;self.n=n
            self.weight=torch.nn.Parameter(rand((n,),torch.float32)) if kind=='add_layernorm_affine' else None
            self.bias=torch.nn.Parameter(rand((n,),torch.float32)*0.1) if kind=='add_layernorm_affine' else None
        def forward(self,a,b,bias=None):
            if self.kind.startswith('matmul'):
                z=a@b+bias
                if self.kind=='matmul_bias':return z
                if self.kind=='matmul_bias_relu':return torch.relu(z)
            elif self.kind.startswith('mul_sum'):
                return torch.sum(a*b,dim=-1,keepdim=self.kind.endswith('keepdim'))
            else:z=a+b
            if self.kind=='add_softmax':return torch.softmax(z,dim=-1)
            if self.kind.startswith('add_layernorm'):
                return F.layer_norm(z,(self.n,),self.weight,self.bias,1e-3)
            if 'gelu' in self.kind:return F.gelu(z,approximate='tanh' if self.kind.endswith('tanh') else 'none')
            return F.silu(z)
    class Binary(Module):
        def forward(self,a,b):
            return super().forward(a,b)
    def rand(shape,dtype):
        return torch.randn(shape,generator=torch.Generator().manual_seed(61)).to(dtype)
    def digest(t):return hashlib.sha256(t.detach().cpu().contiguous().view(torch.uint8).numpy().tobytes()).hexdigest()
    backend=type(driver.active).__module__
    package_root=Path(triton.__file__).parent
    backend_dir='xpu' if '.xpu.' in backend else 'nvidia'
    report={'route':args.route,'repeat_index':args.repeat_index,'torch':torch.__version__,
      'triton':triton.__version__,'triton_file':triton.__file__,'device':torch.cuda.get_device_name(),
      'driver':backend,'target':str(driver.active.get_current_target()),'affinity':sorted(os.sched_getaffinity(0)),
      'native_sha256':sha(libtriton.__file__),'script_sha256':sha(__file__),
      'compiler_sha256':sha(package_root/'backends'/backend_dir/'compiler.py'),
      'driver_sha256':sha(package_root/'backends'/backend_dir/'driver.py'),
      'compatibility':compatibility,'original_verified_files':1194 if args.route=='original' else None,
      'protocol':{'warmup_calls':8,'rounds':7,'calls_per_round':40,'cpu_preheat_seconds':0.5,
        'timing':'synchronized host wall including Python and fresh output allocation',
        'compile_and_tune_excluded':True,'tune_warmup_ms':5,'tune_measurement_ms':15,
        'tf32':False,'reduced_precision_reductions':False,'threads':1,'seed':61},
      'source_sha256':{str(f.relative_to(source)):sha(f) for f in (source/'python/triton/experimental/graph_fusion').glob('*.py')} if args.route=='candidate' else {},
      'cases':[]}
    if args.route=='original':
        tr=Path(torch.__file__).parent
        report['fusion_logic_sha256']={n:sha(tr/n) for n in ('_inductor/scheduler.py','_inductor/lowering.py','_inductor/codegen/triton.py','_inductor/fx_passes/post_grad.py','_inductor/fx_passes/joint_graph.py','_inductor/pattern_matcher.py')}
    def save():
        if args.route=='original':report['compile_calls']=compat_adapter.COMPILE_CALLS
        (args.output/'results.json').write_text(json.dumps(report,indent=2,default=str)+'\n')
    save()
    kinds=tuple(args.kinds.split(',')) if args.kinds else KINDS
    assert all(k in KINDS for k in kinds)
    dtypes=(torch.float32,) if args.smoke else (torch.float32,torch.float16,torch.bfloat16)
    sizes=((16,128),) if args.smoke else ((16,128),(32,256),(64,1024))
    with torch.no_grad():
        for kind in kinds:
          for dt in dtypes:
            for m,n in sizes:
                c={'kind':kind,'dtype':str(dt),'shape':[m,n],'K':64,'status':'started'}
                report['cases'].append(c);save()
                print(json.dumps({**c,'phase':'begin'}),flush=True)
                try:
                    cpu=(rand((m,64),dt),rand((64,n),dt),rand((n,),dt)) if kind.startswith('matmul') else (rand((m,n),dt),rand((n,),dt))
                    inputs=tuple(t.to('cuda') for t in cpu)
                    module=(Module if kind.startswith('matmul') else Binary)(kind,n).to(device='cuda',dtype=dt)
                    graph=torch.fx.symbolic_trace(module)
                    c['inputs']=[{'shape':list(t.shape),'sha256':digest(t)} for t in cpu]
                    c['parameters']={name:digest(t) for name,t in graph.named_parameters()}
                    originals=tuple(t.clone() for t in inputs)
                    expected=graph(*inputs);torch.cuda.synchronize()
                    atol,rtol=(3e-2,3e-3) if dt==torch.bfloat16 else ((3e-3,3e-3) if dt==torch.float16 else (3e-4,3e-4))
                    c['tolerance']={'atol':atol,'rtol':rtol}
                    routes={'eager':graph};c['setup_seconds']={};c['execution']={}
                    if args.route=='original':
                        torch._dynamo.reset()
                        start=time.perf_counter()
                        fn=torch.compile(graph,backend='inductor',fullgraph=True,dynamic=False)
                        actual,sources=run_and_get_code(fn,*inputs);torch.cuda.synchronize()
                        assert sources,'compiled sources missing'
                        c['setup_seconds']['original_first_call']=time.perf_counter()-start
                        c['generated_sources']=[]
                        for i,s in enumerate(sources):
                            file=f'{len(report["cases"])-1:03d}-generated-{i}.py'
                            (args.output/file).write_text(s)
                            c['generated_sources'].append({'file':file,'sha256':sha(args.output/file)})
                        c['execution']['original']={'triton_kernels':sum(s.count('@triton.jit') for s in sources),
                          'extern_mm':any('extern_kernels.mm(' in s for s in sources),
                          'extern_addmm':any('extern_kernels.addmm(' in s for s in sources)}
                        routes['original']=fn
                    else:
                        start=time.perf_counter();default=gf.compile(graph,inputs);default(*inputs);torch.cuda.synchronize()
                        c['setup_seconds']['default_first_call']=time.perf_counter()-start
                        start=time.perf_counter()
                        tuning=gf.select_configs(graph,inputs,warmup_ms=5,measurement_ms=15,use_cache=False)
                        torch.cuda.synchronize();c['setup_seconds']['tune']=time.perf_counter()-start
                        c['tuning']=tuning.as_dict()
                        start=time.perf_counter();tuned=gf.compile(graph,inputs,tuning=tuning);tuned(*inputs);torch.cuda.synchronize()
                        c['setup_seconds']['tuned_first_call']=time.perf_counter()-start
                        routes.update(default=default,tuned=tuned)
                    c['correctness']={}
                    for label,fn in routes.items():
                        value=fn(*inputs)
                        torch.testing.assert_close(value,expected,atol=atol,rtol=rtol)
                        held=[fn(*inputs) for _ in range(3)]
                        assert len({v.data_ptr() for v in held})==3,'output reused'
                        changed=tuple(t+0.015 for t in inputs)
                        torch.testing.assert_close(fn(*changed),graph(*changed),atol=atol,rtol=rtol)
                        for v in held:
                            torch.testing.assert_close(v,expected,atol=atol,rtol=rtol)
                            assert all(v.data_ptr()!=t.data_ptr() for t in inputs)
                        if label in ('default','tuned'):
                            c['execution'][label]=fn.last_report
                            assert fn.last_report.get('mode')=='fused',fn.last_report
                        c['correctness'][label]={'max_abs_error':float((value.float()-expected.float()).abs().max()),'fresh_retained_outputs':True}
                    for a,b in zip(inputs,originals):torch.testing.assert_close(a,b,rtol=0,atol=0)
                    c['inputs_unchanged']=True
                    for fn in routes.values():
                        for _ in range(8):fn(*inputs)
                    torch.cuda.synchronize()
                    stop=time.perf_counter()+0.5
                    while time.perf_counter()<stop:pass
                    samples={label:[] for label in routes};order=list(routes)
                    for j in range(7):
                        labels=order[j%len(order):]+order[:j%len(order)]
                        if (j+args.repeat_index)%2:labels=labels[::-1]
                        for label in labels:
                            torch.cuda.synchronize();start=time.perf_counter_ns()
                            for _ in range(40):routes[label](*inputs)
                            torch.cuda.synchronize();samples[label].append((time.perf_counter_ns()-start)/40000)
                    c['wall_us']=samples;c['median_us']={k:statistics.median(v) for k,v in samples.items()}
                    c['speedup_vs_eager']={k:c['median_us']['eager']/v for k,v in c['median_us'].items() if k!='eager'}
                    c['status']='passed'
                except Exception as e:
                    c.update(status='failed',error=f'{type(e).__name__}: {e}',traceback=traceback.format_exc())
                    c.pop('wall_us',None);c.pop('median_us',None);c.pop('speedup_vs_eager',None)
                save();print(json.dumps({k:c.get(k) for k in ('kind','dtype','shape','status','speedup_vs_eager','error')}),flush=True)
    report['passed']=sum(c['status']=='passed' for c in report['cases'])
    report['failed']=len(report['cases'])-report['passed'];report['status']='completed';save()
    return int(report['failed']!=0)
if __name__=='__main__':raise SystemExit(main())
