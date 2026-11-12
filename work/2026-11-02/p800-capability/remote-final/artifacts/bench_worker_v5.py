"""Tune both resources for one case, then independently remeasure in AB/BA order."""
import argparse
import hashlib
import json
import os
from pathlib import Path
import re
import statistics
import subprocess
import time
import traceback

ROOT = Path(__file__).resolve().parent


def main():
    p = argparse.ArgumentParser()
    p.add_argument('--case', type=int, required=True)
    p.add_argument('--gpu', type=int, required=True)
    p.add_argument('--out', required=True)
    p.add_argument('--smoke', action='store_true')
    p.add_argument('--diagnostic-configs',action='store_true')
    p.add_argument('--resources',nargs='+',choices=['sdnn','cluster'],default=['sdnn','cluster'])
    args = p.parse_args()
    assert ROOT == Path('/data2/zhaoweiming/p800-capability-20261102')
    out = ROOT/'results'/args.out
    assert out.resolve().is_relative_to(ROOT/'results')
    out.mkdir(parents=True, exist_ok=False)
    cache = ROOT/'cache/workers'/args.out
    cache.mkdir(parents=True, exist_ok=True)
    for key in ['TRITON_CACHE_DIR','TORCHINDUCTOR_CACHE_DIR','CUDA_CACHE_PATH','XDG_CACHE_HOME']:
        os.environ[key] = str(cache/key.lower())
    for key in ['CUDA_VISIBLE_DEVICES','XPU_VISIBLE_DEVICES','TRITON_XPU_DEVICE']:
        os.environ[key] = str(args.gpu)
    cores = list(range(args.gpu*8,(args.gpu+1)*8)) if args.gpu<4 else list(range(96+(args.gpu-4)*8,104+(args.gpu-4)*8))
    os.sched_setaffinity(0, cores)
    report = dict(status='running', stage='imports', pid=os.getpid(), gpu=args.gpu,
                  started_at=time.time(), candidates=[], measurements=[], best={},
                  source_sha256={name:hashlib.sha256((ROOT/name).read_bytes()).hexdigest()
                                 for name in ['bench_worker_v5.py','bench_cases_v5.py','kernels_v5.py','run_env.sh']})

    def save(stage=None):
        if stage: report['stage']=stage
        temp=out/'result.tmp'
        temp.write_text(json.dumps(report,indent=2,default=str))
        temp.replace(out/'result.json')
    save()
    try:
        import torch
        import triton
        import kernels_v5 as kernels
        from bench_cases_v5 import cases, configurations, timing_shape, counts
        from triton._C import libtriton
        torch.set_num_threads(8)
        torch.backends.cuda.matmul.allow_tf32=False
        torch.backends.cudnn.allow_tf32=False
        torch.backends.cuda.matmul.allow_fp16_reduced_precision_reduction=False
        torch.backends.cuda.matmul.allow_bf16_reduced_precision_reduction=False
        target=triton.runtime.driver.active.get_current_target()
        assert type(triton.runtime.driver.active).__module__=='triton.backends.xpu.driver'
        assert target.arch==3 and target.warp_size==1
        assert torch.cuda.device_count()==1
        case=cases()[args.case]
        report.update(case=case, target=str(target), affinity=cores,
                      torch=torch.__version__,triton=triton.__version__,
                      native_sha256=hashlib.sha256(Path(libtriton.__file__).read_bytes()).hexdigest(),
                      counts=counts(case))
        m,n,k=case['m'],case['n'],case['k']
        dtype=getattr(torch,case['dtype'])
        tolerance=dict(atol=3e-4,rtol=3e-4) if dtype==torch.float32 else dict(atol=0.003,rtol=0.003)
        if case['op'] in ('copy','max'):
            tolerance=dict(atol=0,rtol=0)
        report['tolerance']=tolerance

        def inputs(seed):
            gen=torch.Generator().manual_seed(seed)
            if case['op']=='matmul':
                ac=(torch.rand(m,k,generator=gen)-0.5).to(dtype)
                bc=(torch.rand(k,n,generator=gen)-0.5).to(dtype)
                want=(ac.double()@bc.double()).float()
                xs=[ac.cuda(),bc.cuda(),bc.T.contiguous().cuda()]
            else:
                ac=(torch.rand(m,n,generator=gen)-0.5).to(dtype)
                if case['op']=='exp':ac=ac*8-4
                bc=(torch.rand(m,n,generator=gen)-0.5).to(dtype)
                if case['op']=='copy':want=ac.clone()
                elif case['op']=='add':want=(ac.double()+bc.double()).to(dtype)
                elif case['op']=='exp':want=ac.double().exp().to(dtype)
                elif case['op']=='sum':want=ac.double().sum(1).to(dtype)
                elif case['op']=='max':want=ac.max(1).values
                else:
                    want=ac.double()
                    a=float(torch.tensor(0.99));b=float(torch.tensor(0.001))
                    for _ in range(128):want=(want*a+b).float().double()
                    want=want.float()
                    bc=torch.full_like(ac,a)
                xs=[ac.cuda(),bc.cuda()]
                if case['op']=='fma128':xs.append(torch.full_like(ac,b).cuda())
            binding=hashlib.sha256(ac.view(torch.uint8).numpy().tobytes()+bc.view(torch.uint8).numpy().tobytes()).hexdigest()
            return xs,want,binding

        save('input_reference')
        xs,want,binding=inputs(20261102+args.case)
        report['input_sha256']=binding
        def input_hashes(values):
            return [hashlib.sha256(t.cpu().view(torch.uint8).numpy().tobytes()).hexdigest() for t in values]
        initial_input_hashes=input_hashes(xs)
        output=torch.empty_like(want,device='cuda')
        torch.cuda.synchronize()
        native_env={key:value for key,value in os.environ.items() if key not in ('LD_LIBRARY_PATH','LD_PRELOAD')}
        proof=subprocess.check_output(['xpu-smi','-q','-d','PIDS','-i',str(args.gpu)],text=True,env=native_env,timeout=15)
        assert re.search(r'\b'+str(os.getpid())+r'\b',proof),proof
        report['physical_process_proof']=proof
        calls,replays=timing_shape(case)
        stream=torch.cuda.Stream()

        def check(expected):
            torch.cuda.synchronize()
            got=output.cpu()
            err=(got.double()-expected.double()).abs()
            result=dict(max_abs_error=err.max().item(),
                        max_tolerance_ratio=(err/(tolerance['atol']+tolerance['rtol']*expected.double().abs()).clamp_min(1e-300)).max().item(),
                        bad_count=((err>tolerance['atol']+tolerance['rtol']*expected.double().abs())|~torch.isfinite(got)).sum().item())
            assert result['bad_count']==0,result
            if case['op']=='copy':
                assert torch.equal(got.view(torch.uint8),expected.view(torch.uint8)),'Copy changed bits'
            return result

        def bind(config, resource):
            conf=dict(config)
            algorithm=conf.pop('algorithm')
            options=conf.pop('options',{})
            if algorithm=='sdnn_dot':
                kernel=kernels.sdnn_matmul
                grid=(triton.cdiv(m,conf['BM'])*triton.cdiv(n,conf['BN']),)
                operands=lambda:[xs[0],xs[2] if conf['TRANSPOSE_B'] else xs[1],output,m,n,k]
            elif algorithm=='cluster_outer':
                kernel=kernels.cluster_outer
                grid=(triton.cdiv(m,conf['BM'])*triton.cdiv(n,conf['BN']),)
                operands=lambda:[xs[0],xs[1],output,m,n,k]
            elif algorithm=='cluster_dot_full':
                kernel=kernels.cluster_dot_full
                grid=(m*n,)
                operands=lambda:[xs[0],xs[2],output,m,n,k]
            elif algorithm=='cluster_dot_tile_full':
                kernel=kernels.cluster_dot_tile_full
                assert n % conf['BN']==0
                grid=(m*triton.cdiv(n,conf['BN']),)
                operands=lambda:[xs[0],xs[2],output,m,n,k]
            elif algorithm=='cluster_dot_rows':
                kernel=kernels.cluster_dot_rows
                grid=(m*triton.cdiv(n,conf['BN']),)
                operands=lambda:[xs[0],xs[2],output,m,n,k]
            elif algorithm=='reduce':
                assert m % conf['ROWS']==0 and n==conf['COLS']
                kernel=kernels.reduce_kernel
                grid=(triton.cdiv(m,conf['ROWS']),)
                conf['OP']=case['op']
                operands=lambda:[xs[0],output,m,n]
            else:
                assert (m*n) % conf['BLOCK']==0
                kernel=kernels.vector_kernel
                grid=(triton.cdiv(m*n,conf['BLOCK']),)
                conf.update(SIZE=m*n,OP=case['op'])
                operands=lambda:[xs[0],xs[1],xs[2] if case['op']=='fma128' else xs[1],output]
                conf['iterations']=128 if case['op']=='fma128' else 1
            def run():
                return kernel[grid](*operands(),**conf,is_sdnn=resource=='sdnn',**options)
            return run

        def capture(fn):
            torch.cuda.synchronize()
            with torch.cuda.stream(stream):
                for _ in range(2):fn()
            torch.cuda.synchronize()
            graph=torch.cuda.CUDAGraph()
            with torch.cuda.graph(graph,stream=stream):
                for _ in range(calls):fn()
            graph.replay()
            torch.cuda.synchronize()
            return graph

        def measure(graph,samples=3,replay_count=1):
            values=[]
            for _ in range(samples):
                a,b=torch.cuda.Event(enable_timing=True),torch.cuda.Event(enable_timing=True)
                torch.cuda.synchronize()
                a.record()
                for _ in range(replay_count):graph.replay()
                b.record();b.synchronize()
                values.append(a.elapsed_time(b)*1000/(replay_count*calls))
            return dict(median_us=statistics.median(values),samples_us=values,
                        calls_per_graph=calls,replays_per_sample=replay_count)

        winners={}
        for resource in args.resources:
            configs=configurations(case,resource)
            if args.smoke:
                if case['op']=='matmul' and n>=512:
                    if resource=='sdnn':
                        configs=[x for x in configs if x['BM']==64 and x['BN']==64 and x['BK']==64]
                    else:
                        configs=[x for x in configs if x['algorithm']=='cluster_dot_full'
                                 or (x['algorithm']=='cluster_dot_rows' and x['BN']==8 and x['BK']==256)]
                else:
                    configs=configs[:2] if case['op']=='matmul' else [configs[len(configs)//2]]
            if args.diagnostic_configs:
                if case['op']=='fma128':
                    configs=[dict(algorithm='vector',BLOCK=256 if case['scale']=='small' else 8192,
                                  FORMULA=formula,LOOP_STYLE=style,options=option)
                             for style in ['static','dynamic'] for formula in ['muladd','fma']
                             for option in [dict(enable_fp_fusion=True),dict(isCloseUnrollControl=True)]]
                else:
                    configs=[dict(algorithm='cluster_dot_tile_full',BN=bn) for bn in [16,64]]
                    configs += [dict(algorithm='cluster_outer',BM=bm,BN=bn,FORMULA='muladd',options=opt)
                                for bm,bn in [(16,64),(32,128),(64,64)]
                                for opt in [dict(enable_fp_fusion=True),dict(isCloseUnrollControl=True)]]
            def evaluate(config):
                index=len(report['candidates'])
                rec=dict(resource=resource,config=config,status='running',index=index)
                report['candidates'].append(rec)
                save(f'tuning_{resource}_{index}')
                try:
                    fn=bind(config,resource)
                    kernel=fn()
                    assert bool(kernel.metadata.is_sdnn)==(resource=='sdnn'),kernel.metadata
                    assert kernel.metadata.arch==3,kernel.metadata
                    rec['metadata']=kernel.metadata._asdict()
                    rec['asm_sha256']={name:hashlib.sha256(value.encode() if isinstance(value,str) else value).hexdigest()
                                       for name,value in kernel.asm.items() if isinstance(value,(str,bytes))}
                    rec['accuracy']=check(want)
                    a,b=torch.cuda.Event(enable_timing=True),torch.cuda.Event(enable_timing=True)
                    a.record();fn();b.record();b.synchronize()
                    rec['pilot_gpu_us']=a.elapsed_time(b)*1000
                    if (resource in winners and rec['pilot_gpu_us']>20000 and
                        rec['pilot_gpu_us']>2*winners[resource]['record']['tuning_gpu_us']['median_us']):
                        rec.update(status='pruned_slow',pruning_rule='Validated pilot >20ms and >2x best graph median')
                        save()
                        return
                    graph=capture(fn)
                    rec['graph_accuracy']=check(want)
                    rec['tuning_gpu_us']=measure(graph)
                    rec['status']='passed'
                    if resource not in winners or rec['tuning_gpu_us']['median_us']<winners[resource]['record']['tuning_gpu_us']['median_us']:
                        winners[resource]=dict(record=rec,fn=fn,kernel=kernel)
                        report['best'][resource]=index
                    del graph
                except Exception as exc:
                    rec.update(status='numerical_failure' if isinstance(exc,AssertionError) and 'bad_count' in str(exc) else 'error',
                               error=str(exc),traceback=traceback.format_exc())
                save()
            for conf in configs:evaluate(conf)
            if not args.smoke and not args.diagnostic_configs and resource=='cluster' and resource in winners:
                base=dict(winners[resource]['record']['config'])
                options=[dict(buffer_size_limit=b) for b in [256,1024,2048]]
                options += [dict(vrf_budget=v) for v in [16,32]]
                options += [dict(budget_tiling=False,unroll_num=u) for u in [1,2,4]]
                options += [dict(groups_per_cluster=g) for g in [2,4]]
                for option in options:evaluate(dict(base,options=option))
            if not args.smoke and not args.diagnostic_configs and resource=='sdnn' and case['op']=='matmul' and resource in winners:
                base=dict(winners[resource]['record']['config'])
                for stages in [2,3]:
                    for block_k in sorted(set([base['BK'],32,64,128])):
                        evaluate(dict(base,BK=block_k,options=dict(num_stages=stages)))
        save('independent_validation')
        assert input_hashes(xs)==initial_input_hashes,'A candidate modified its inputs'
        original_xs=xs
        xs,changed_want,changed_binding=inputs(20261102+args.case+10000)
        report['validation_input_sha256']=changed_binding
        for resource in list(winners):
            ranked=sorted([r for r in report['candidates'] if r['resource']==resource and r['status']=='passed'],
                          key=lambda r:r['tuning_gpu_us']['median_us'])
            del winners[resource]
            for rec in ranked:
                try:
                    fn=bind(rec['config'],resource)
                    kernel=fn()
                    rec['independent_accuracy']=check(changed_want)
                    winners[resource]=dict(record=rec,fn=fn,kernel=kernel)
                    report['best'][resource]=rec['index']
                    break
                except Exception as exc:
                    rec.update(status='independent_numerical_failure',validation_error=str(exc))
        for resource,item in winners.items():
            binary=out/resource
            binary.mkdir()
            for name,value in item['kernel'].asm.items():
                if isinstance(value,str):(binary/f'best.{name}').write_text(value)
                elif isinstance(value,bytes):(binary/f'best.{name}').write_bytes(value)
        del xs
        xs=original_xs
        graphs={}
        for resource,item in winners.items():
            graphs[resource]=capture(item['fn'])
            check(want)
        save('measurement')
        for round_id,order in enumerate([['sdnn','cluster'],['cluster','sdnn']]):
            for resource in order:
                if resource not in winners:continue
                graph=graphs[resource]
                graph.replay();torch.cuda.synchronize()
                timing=measure(graph,7,replays)
                accuracy=check(want)
                fn=winners[resource]['fn']
                e2e=[]
                for _ in range(11):
                    torch.cuda.synchronize()
                    start=time.perf_counter_ns()
                    fn();torch.cuda.synchronize()
                    e2e.append((time.perf_counter_ns()-start)/1000)
                item=dict(resource=resource,round=round_id,gpu_us=timing,
                          e2e_us=dict(median_us=statistics.median(e2e),samples_us=e2e),accuracy=accuracy,
                          candidate_index=winners[resource]['record']['index'])
                report['measurements'].append(item)
                save()
        save('graph_input_mutation')
        assert input_hashes(xs)==initial_input_hashes,'A measured kernel modified its inputs'
        # A replay must consume fresh input values at the captured addresses.
        changed_xs,changed_want,_=inputs(20261102+args.case+10000)
        for original,changed in zip(xs,changed_xs):original.copy_(changed)
        for resource,graph in graphs.items():
            graph.replay()
            report.setdefault('graph_mutation_accuracy',{})[resource]=check(changed_want)
        report.update(status='completed',ended_at=time.time())
        save('completed')
    except BaseException as exc:
        report.update(status='error',error=str(exc),traceback=traceback.format_exc(),ended_at=time.time())
        save()
        raise


if __name__=='__main__':main()
