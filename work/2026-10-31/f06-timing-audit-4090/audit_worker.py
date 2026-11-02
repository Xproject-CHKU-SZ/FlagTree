"""Independent process per route; audit host overhead and GPU work separately."""
import argparse, cProfile, gc, hashlib, io, json, os, pstats, statistics, sys, time, traceback
from pathlib import Path

ROOT=Path(__file__).resolve().parent
def sha(p):return hashlib.sha256(Path(p).read_bytes()).hexdigest()

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--output',type=Path,required=True);ap.add_argument('--repeat-index',type=int,required=True);ap.add_argument('--route',required=True);ap.add_argument('--smoke',action='store_true');args=ap.parse_args()
    args.output.mkdir(exist_ok=False)
    import torch,triton,triton.experimental
    from torch._dynamo.utils import counters
    triton.experimental.__path__.insert(0,str(ROOT/'source/python/triton/experimental'))
    from triton.experimental import graph_fusion as gf
    from coverage_cases import cases,build_cpu_case
    torch.set_num_threads(1)
    torch.backends.cuda.matmul.allow_tf32=False;torch.backends.cudnn.allow_tf32=False
    torch.backends.cuda.matmul.allow_fp16_reduced_precision_reduction=False
    torch.backends.cuda.matmul.allow_bf16_reduced_precision_reduction=False
    assert sorted(os.sched_getaffinity(0))==[0]
    expected_identity=json.loads((ROOT/'baseline_identity.json').read_text())
    from triton._C import libtriton
    pkg=Path(triton.__file__).parent
    identity=dict(torch=torch.__version__,triton=triton.__version__,native_sha256=sha(libtriton.__file__),compiler_sha256=sha(pkg/'backends/nvidia/compiler.py'),driver_sha256=sha(pkg/'backends/nvidia/driver.py'),fusion_logic_sha256={n:sha(Path(torch.__file__).parent/n) for n in expected_identity['fusion_logic_sha256']})
    assert identity==expected_identity
    report=dict(status='running',route=args.route,repeat=args.repeat_index,started_at=time.time(),identity=identity,device=torch.cuda.get_device_name(),cases=[])
    def save():
        temp=args.output/'results.tmp';temp.write_text(json.dumps(report,indent=2,default=str));temp.replace(args.output/'results.json')
    def warm(fn,inputs,n=8):
        for _ in range(n):fn(*inputs)
        torch.cuda.synchronize()
    def preheat():
        end=time.perf_counter()+0.2
        while time.perf_counter()<end:pass
    def wall(fn,inputs,n=40,rounds=7):
        samples=[]
        for _ in range(rounds):
            torch.cuda.synchronize();start=time.perf_counter_ns()
            for _ in range(n):fn(*inputs)
            torch.cuda.synchronize();samples.append((time.perf_counter_ns()-start)/1000/n)
        return dict(median_us=statistics.median(samples),samples_us=samples,calls=n)
    def count():return {k:dict(v) for k,v in counters.items() if k in ('stats','frames','inductor')}
    selected=[cases()[i] for i in json.loads((ROOT/'audit_cases.json').read_text())]
    if args.smoke:selected=selected[:1]
    try:
      with torch.no_grad():
        for spec in selected:
            torch._dynamo.reset();gc.collect()
            row=dict(case_id=spec['case_id'],kind=spec['kind'],M=spec['M'],N=spec['N'],K=spec['K'],dtype=spec['dtype'],tolerance=spec['tolerance'],status='preparing');report['cases'].append(row);save()
            gm,cpu_inputs,_,binding=build_cpu_case(spec);gm=gm.cuda();inputs=tuple(t.cuda() for t in cpu_inputs)
            expected=gm(*inputs);originals=tuple(t.clone() for t in inputs);parameters={n:t.clone() for n,t in gm.named_parameters()}
            if args.route=='max_static':
                for t in inputs:torch._dynamo.mark_static_address(t,guard=True)
            setup=time.perf_counter()
            if args.route=='eager':fn=gm
            elif args.route=='f06':fn=gf.compile(gm,inputs,fullgraph=True,dynamic=False,static_inference=True,avoid_bias_materialization=True)
            else:
                mode={'default':'default','max_no_cg':'max-autotune-no-cudagraphs','max':'max-autotune','max_static':'max-autotune'}[args.route]
                fn=torch.compile(gm,backend='inductor',fullgraph=True,dynamic=False,mode=mode)
            warm(fn,inputs);row['setup_seconds']=time.perf_counter()-setup
            preheat();row['before_validation_host40']=wall(fn,inputs,rounds=3)
            snapshots=[fn(*inputs).clone() for _ in range(3)]
            for value in snapshots:torch.testing.assert_close(value,expected,**spec['tolerance'])
            del snapshots,value
            # Reproduce original changed-address validation except where the input
            # contract explicitly promises fixed addresses.
            if args.route=='max_static':
                for t in inputs:t.add_(0.015)
                actual=fn(*inputs).clone();target=gm(*inputs)
                torch.testing.assert_close(actual,target,**spec['tolerance'])
                for t,orig in zip(inputs,originals):t.copy_(orig)
            else:
                changed=tuple(t+0.015 for t in inputs)
                actual=fn(*changed).clone();target=gm(*changed)
                torch.testing.assert_close(actual,target,**spec['tolerance']);del changed
            del actual,target
            warm(fn,inputs,8);preheat();row['after_validation_host40']=wall(fn,inputs)
            warm(fn,inputs,256);preheat();row['counters_before_timing']=count()
            row['host40']=wall(fn,inputs);row['host400']=wall(fn,inputs,400)
            row['counters_after_timing']=count()
            # CUDA events around the ordinary Python loop retain GPU idle gaps;
            # this is deliberately NOT labeled GPU-only execution.
            samples=[]
            for _ in range(5):
                start,end=torch.cuda.Event(enable_timing=True),torch.cuda.Event(enable_timing=True)
                torch.cuda.synchronize();start.record()
                for _ in range(200):fn(*inputs)
                end.record();end.synchronize();samples.append(start.elapsed_time(end)*1000/200)
            row['direct_cuda_events_us']=dict(median_us=statistics.median(samples),samples_us=samples)
            # Instrumentation is outside measured host samples.
            profile=cProfile.Profile();torch.cuda.synchronize();profile.enable()
            for _ in range(200):fn(*inputs)
            profile.disable();torch.cuda.synchronize();profile.dump_stats(str(args.output/f"{spec['ordinal']:03d}.pstats"))
            out=io.StringIO();pstats.Stats(profile,stream=out).strip_dirs().sort_stats('cumulative').print_stats(45)
            (args.output/f"{spec['ordinal']:03d}-cpu.txt").write_text(out.getvalue())
            with torch.profiler.profile(activities=[torch.profiler.ProfilerActivity.CPU,torch.profiler.ProfilerActivity.CUDA]) as prof:
                for _ in range(5):fn(*inputs)
                torch.cuda.synchronize()
            row['profiler_gpu_events']=[dict(name=e.name,us=e.time_range.elapsed_us()) for e in prof.events() if e.device_type==torch.autograd.DeviceType.CUDA]
            row['profiler_cpu']=[dict(name=e.key,count=e.count,self_cpu_us=e.self_cpu_time_total,cpu_us=e.cpu_time_total) for e in prof.key_averages()]
            prof.export_chrome_trace(str(args.output/f"{spec['ordinal']:03d}-trace.json"))
            # Identical external capture protocol for every route, including
            # native CUDA graph routes.  Many invocations per replay keep Python
            # launch latency from starving the GPU.
            captured=None;capture_output=None
            try:
                stream=torch.cuda.Stream();stream.wait_stream(torch.cuda.current_stream())
                with torch.cuda.stream(stream):
                    for _ in range(16):fn(*inputs)
                stream.synchronize()
                repetitions=8 if spec['K'] and spec['M']==2048 else 64
                captured=torch.cuda.CUDAGraph()
                with torch.cuda.graph(captured,stream=stream):
                    for _ in range(repetitions-1):fn(*inputs)
                    capture_output=fn(*inputs)
                for _ in range(3):captured.replay()
                torch.cuda.synchronize();torch.testing.assert_close(capture_output,expected,**spec['tolerance'])
                samples=[]
                for _ in range(7):
                    start,end=torch.cuda.Event(enable_timing=True),torch.cuda.Event(enable_timing=True)
                    torch.cuda.synchronize();start.record()
                    for _ in range(20):captured.replay()
                    end.record();end.synchronize();samples.append(start.elapsed_time(end)*1000/(20*repetitions))
                row['uniform_graph_gpu_us']=dict(median_us=statistics.median(samples),samples_us=samples,invocations_per_graph=repetitions,replays=20)
            except Exception as exc:
                row['capture_error']=str(exc);row['capture_traceback']=traceback.format_exc()
                if any(s in str(exc).lower() for s in ('illegal memory','out of memory','device-side assert')):raise
            del captured,capture_output;gc.collect()
            # Test the original harness's cross-route reset explicitly, after
            # all primary measurements so it cannot contaminate them.
            if args.route=='max':
                torch._dynamo.reset();other=gf.compile(gm,inputs,fullgraph=True,dynamic=False,static_inference=True,avoid_bias_materialization=True);warm(other,inputs)
                warm(fn,inputs,8);preheat();row['after_reset_and_f06_host40']=wall(fn,inputs)
                row['post_reset_execution']=getattr(other,'plan_info',None);del other
            torch.testing.assert_close(fn(*inputs),expected,**spec['tolerance'])
            for t,orig in zip(inputs,originals):torch.testing.assert_close(t,orig,atol=0,rtol=0)
            for n,t in gm.named_parameters():torch.testing.assert_close(t,parameters[n],atol=0,rtol=0)
            row.update(status='passed',execution=getattr(fn,'plan_info',None));save()
            print(json.dumps(dict(case_id=row['case_id'],route=args.route,host40=row['host40']['median_us'],host400=row['host400']['median_us'],gpu=row.get('uniform_graph_gpu_us'),capture_error=row.get('capture_error'))),flush=True)
            del fn,gm,inputs,expected,originals,parameters
        report.update(status='completed',ended_at=time.time());save()
    except BaseException as exc:
        report.update(status='failed',error=str(exc),traceback=traceback.format_exc());save();raise

if __name__=='__main__':main()
