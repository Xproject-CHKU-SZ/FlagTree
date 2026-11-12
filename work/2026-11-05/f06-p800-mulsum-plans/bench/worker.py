import argparse,copy,fcntl,hashlib,json,os,pathlib,sys,time,traceback
R=pathlib.Path(__file__).resolve().parent;assert str(R)=='/data2/zhaoweiming/f06-mulsum-plans-20261105'
p=argparse.ArgumentParser();p.add_argument('case',type=int);p.add_argument('out',type=pathlib.Path);p.add_argument('--skip',default='');args=p.parse_args();out=args.out.resolve();assert out.is_relative_to(R/'results');out.mkdir()
os.environ.update(TRITON_CACHE_DIR=str(out/'cache/triton'),TORCHINDUCTOR_CACHE_DIR=str(out/'cache/inductor'),XMLIR_MATMUL_FAST_MODE='0',TRITONXPU_DTYPE_CONVERT='1')
for x in ('cache/triton','cache/inductor'):(out/x).mkdir(parents=True)
result=dict(started_at=time.time(),ordinal=args.case,device=int(os.environ['F06_PHYSICAL_DEVICE']),routes={},status='running');lock=(R/'bench.lock').open('a+')
def save(stage):
    result['stage']=stage;q=out/'result.tmp';q.write_text(json.dumps(result,indent=1,default=str));q.replace(out/'result.json');print(stage,flush=True)
def devicefault(err):return any(s in err.lower() for s in ('illegal memory','launch failure','exception in kernel execution','error code= 714','error code= 719'))
try:
    gpu_slot=(R/'serial-gpu.lock').open('a+')
    fcntl.flock(gpu_slot,fcntl.LOCK_EX)  # acquired before any device import; held through exit
    fcntl.flock(lock,fcntl.LOCK_SH);save('imports');import torch,triton,triton.experimental
    triton.experimental.__path__.insert(0,str(R/'source/python/triton/experimental'))
    from triton.experimental.graph_fusion import _resource_autotune as auto,_resource_benchmark as bench
    from coverage_cases import cases,build_cpu_case
    from finite_checks import install,special_report
    from binding import Bound
    from priors import ranked_splits
    from native_layout import layout_scope
    from oracle import run as stress
    from routes import tiled,streamed,policy,partial_config
    import routes as route_module
    from contextlib import nullcontext
    torch.set_num_threads(1);torch.backends.cuda.matmul.allow_tf32=False;torch.backends.cudnn.allow_tf32=False
    torch.backends.cuda.matmul.allow_fp16_reduced_precision_reduction=False;torch.backends.cuda.matmul.allow_bf16_reduced_precision_reduction=False
    assert torch.cuda.device_count()==1 and triton.runtime.driver.active.get_current_target().arch==3
    spec=cases()[args.case];assert spec['kind'] in ('mul_sum','mul_sum_keepdim');result['case']=spec
    gm,cpu_inputs,_,result['inputs']=build_cpu_case(spec);cpu=copy.deepcopy(gm).requires_grad_(False);gm=gm.cuda().requires_grad_(False);inputs=tuple(x.cuda() for x in cpu_inputs);tol=spec['tolerance'];finite=install(bench);bound=Bound(out/'binaries');fns={}
    small=spec['M']<=64 and spec['N']<=1024
    plans={x.name:x for x in auto.candidate_plans(gm,inputs,single_kernel=small,split_reductions=True)}
    with torch.no_grad(),bound.capture():
        routes=['eager','inductor','cluster'];small=spec['M']<=64 and spec['N']<=1024
        split_order,result['resource_prior']=ranked_splits(spec)
        routes+=(['sdnn_parallel','sdnn_old_dual'] if spec['N']<=256 else []) if small else split_order+['sdnn256_cluster_parallel','sdnn256_cluster_old_dual']
        routes=[r for r in routes if r not in args.skip.split(',')]
        for route in routes:
            route_module.MODE='parallel' if route.endswith('parallel') else 'optimized'
            save('compile:'+route);v={};result['routes'][route]=v
            try:
                if route.startswith('sdnn256_cluster'):fn,pf=tiled(inputs,spec,legacy=route.endswith('old_dual'))
                elif route.startswith('sdnn_stream256'):fn,pf=streamed(gm,inputs,plans['sdnn'],legacy=route.endswith('old_dual'))
                elif route in ('sdnn_parallel','sdnn_single','sdnn_old_dual'):
                    with policy(route=='sdnn_old_dual'), (partial_config() if os.environ.get('F06_FIXED_SMALL')=='1' else nullcontext()):
                        fn,pf=auto.compile_candidate(gm,inputs,plans['sdnn']);fn(*inputs);torch.cuda.synchronize()
                elif route.endswith('_at_1'):
                    with layout_scope():fn,pf=auto.compile_candidate(gm,inputs,plans[route]);fn(*inputs);torch.cuda.synchronize()
                    pf['layout_experiment']=dict(prefer_nd_tiling=True,sdnn_sum_persistent=True,sdnn_sum_no_x_dim=False,native_config_search=True)
                else:fn,pf=auto.compile_candidate(gm,inputs,plans[route]);fn(*inputs);torch.cuda.synchronize()
                v['proof']=pf
                v['fixed_small_tile']=os.environ.get('F06_FIXED_SMALL')=='1'
                if pf.get('regions'):v['binding']=bound.selected(pf,'new' if route.endswith('parallel') else 'generic')
                save('validate:'+route);v['finite']=finite(fn,gm,inputs,tol)
                v['special']=special_report(fn,gm,inputs,tol,bench,spec=spec,cpu_reference=cpu)
                v['stress']=stress(fn,inputs,spec);v['eligible']=v['stress']['passed'] and all(x['passed'] for x in v['special']);v['status']='finite_validated';fns[route]=fn
            except Exception:
                err=traceback.format_exc();v.update(status='failed',eligible=False,error=err);save('error:'+route)
                if devicefault(err):raise
    # Archive and freeze only the callables admitted to timing. A rejected
    # candidate may have retuned during its failed correctness check.
    bound.tuners.clear()
    with torch.no_grad(),bound.capture():
        for name,fn in fns.items():
            for _ in range(8):
                fn(*inputs)
            torch.cuda.synchronize()
            pf=result['routes'][name]['proof']
            if pf.get('regions'):
                result['routes'][name]['binding']=bound.selected(pf,'new' if name.endswith('parallel') else 'generic')
        for tuner,_,_,_ in bound.tuners:
            tuner.inductor_meta=dict(tuner.inductor_meta,coordinate_descent_tuning=False)
    save('timing');fcntl.flock(lock,fcntl.LOCK_UN);fcntl.flock(lock,fcntl.LOCK_EX)
    with torch.no_grad():
        assert 'eager' in fns
        for name,rec in bench.measure_candidates(fns,gm,inputs,tol).items():result['routes'][name]['timing']=rec
    save('components')
    from components import measure as measure_components
    with torch.no_grad():result['components']=measure_components(fns,gm,inputs,tol,bench)
    bound.unchanged();result.update(status='complete',finished_at=time.time(),timed_bindings_unchanged=True);save('complete')
except BaseException:
    result.update(status='failed',error=traceback.format_exc(),last_stage=result.get('stage'));save('failed');raise
