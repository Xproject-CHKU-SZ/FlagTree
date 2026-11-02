"""Runtime tanh linking: full fused kernels, range screening, and phase timings."""
import argparse
from contextlib import nullcontext
import hashlib
import json
import os
from pathlib import Path
import statistics
import time
from unittest import mock

ROOT=Path(__file__).resolve().parent
DISTRIBUTIONS=('all_small','all_large','all_saturated','mixed_grouped','mixed_interleaved','mixed_lane_groups8')


def main():
    parser=argparse.ArgumentParser()
    parser.add_argument('--output',type=Path,required=True)
    parser.add_argument('--repeat-index',type=int,default=0)
    parser.add_argument('--smoke',action='store_true')
    args=parser.parse_args();args.output.mkdir(exist_ok=False)
    manifest=json.loads((ROOT/'manifest.json').read_text())
    for name,digest in manifest['files'].items():
        assert hashlib.sha256((ROOT/name).read_bytes()).hexdigest()==digest,name
    reuse=json.loads((ROOT/'reuse_source.json').read_text());source_root=Path(reuse['remote_root'])
    for name,digest in reuse['files'].items():
        assert hashlib.sha256((source_root/name).read_bytes()).hexdigest()==digest,name
    import torch,triton,triton.experimental
    triton.experimental.__path__.insert(0,str(source_root/'source/python/triton/experimental'))
    from triton.experimental import graph_fusion as gf
    from triton.experimental.graph_fusion import _cuda_tanh as policy
    from case_data import specs,make_case,digest
    from dispatch_probe import probe
    from diagnostic import build_capture,build_matched_pair
    from artifact_timing import measure_device_routes
    from device_link import DeviceLinker
    from prototype import FusedPrototype
    from lto_prototype import LTOPrototype
    from lto_link import LTOLinker
    assert '4090' in torch.cuda.get_device_name() and torch.cuda.device_count()==1
    assert sorted(os.sched_getaffinity(0))==[0]
    torch.set_num_threads(1)
    torch.backends.cuda.matmul.allow_tf32=False;torch.backends.cudnn.allow_tf32=False
    torch.backends.cuda.matmul.allow_fp16_reduced_precision_reduction=False
    torch.backends.cuda.matmul.allow_bf16_reduced_precision_reduction=False
    selected=[s for s in specs() if s['M']!=32]
    if args.smoke:selected=[s for s in selected if s['dtype']=='float16' and s['M']==16]
    linker=DeviceLinker(nvrtc_options=("--no-cache",));lto_linker=LTOLinker()
    result=dict(status='running',repeat=args.repeat_index,torch=torch.__version__,triton=triton.__version__,
                device=torch.cuda.get_device_name(),policy=policy.POLICY,libdevice_sha256=policy._libdevice_sha256(),
                nvrtc_version=linker.version,library_load_ms=linker.library_load_ms,
                source_reuse=reuse,plans=[],cases=[],function_compile_events=linker.compile_events,
                link_events=linker.link_events,lto_compile_events=lto_linker.compile_events,lto_link_events=lto_linker.link_events,screen_precision_audits=[])

    def save():
        (args.output/'results.json').write_text(json.dumps(result,indent=2,default=str)+'\n')

    save()
    try:
        with torch.no_grad():
            for spec in selected:
                gm,data=make_case(spec);gm=gm.cuda()
                xs=tuple(x.cuda() for x in data['mixed_grouped'])
                plans={};bodies={};configs={}
                pr=dict(spec=spec,routes={});result['plans'].append(pr)
                order=('native','precise') if args.repeat_index%2==0 else ('precise','native')
                for variant in order:
                    with mock.patch.object(policy,'eligible',return_value=False) if variant=='native' else nullcontext():
                        plan=gf.compile(gm,xs,static_inference=True,avoid_bias_materialization=True,fullgraph=True,dynamic=False)
                    torch.testing.assert_close(plan(*xs),gm(*xs),**spec['tolerance'])
                    source='\n'.join(plan.generated_sources)
                    assert ('use_small' in source)==(variant=='precise')
                    prefix=f'{spec["ordinal"]:03d}-{variant}'
                    (args.output/(prefix+'.py')).write_text(source)
                    # Existing validated helper also archives the actual selected binary.
                    capture,description,body=build_capture(plan,args.output,prefix,spec,allow_nonfinite=True)
                    if variant=='native':native_capture=capture
                    bodies[variant]=body;configs[variant]=description
                    plans[variant]=plan
                    pr['routes'][variant]=dict(before=probe(plan,xs,'before'),artifact=description)
                pr['same_body_except_tanh']=bodies['native']==bodies['precise'];assert pr['same_body_except_tanh']
                pr['same_baseline_config']=all(configs['native'][key]==configs['precise'][key] for key in
                                               ('config_kwargs','template','options','constants'))
                prototype=FusedPrototype(plans['native'],args.output,f'{spec["ordinal"]:03d}',spec,linker,policy.ASM)
                pr['prototype']=prototype.record
                lto=LTOPrototype(prototype,lto_linker);pr['lto']=lto.record
                matched={}
                if not pr['same_baseline_config']:
                    matched,pr['matched_config_routes']=build_matched_pair(plans['native'],args.output,f'{spec["ordinal"]:03d}-matched',spec)
                save()
                for distribution in DISTRIBUTIONS:
                    for x,v in zip(xs,data[distribution]):x.copy_(v)
                    originals=tuple(x.clone() for x in xs)
                    expected=gm(*xs)
                    outputs={v:plan(*xs) for v,plan in plans.items()}
                    capture_output,t=native_capture(xs)
                    assert torch.isfinite(t).all()
                    assert torch.equal(capture_output.view(torch.uint8),outputs['native'].view(torch.uint8))
                    a=t.abs();expected_mode='small' if bool((a<0.6).all()) else 'large' if bool(((a>=0.6)&torch.isfinite(a)).all()) else 'general'
                    assert expected_mode==('small' if distribution=='all_small' else 'large' if distribution in ('all_large','all_saturated') else 'general')
                    torch.cuda.synchronize();cold_start=time.perf_counter_ns()
                    mode,screen_first=prototype.screen(xs)
                    assert mode==expected_mode
                    linked,event=prototype.get_linked(mode)
                    outputs['linked']=linked(*xs);torch.cuda.synchronize()
                    first_call_ms=(time.perf_counter_ns()-cold_start)/1e6
                    lto_fn,lto_event=lto.get(mode);call_fn,call_event=lto.get(mode,False)
                    outputs["lto"]=lto_fn(*xs);outputs["lto_call"]=call_fn(*xs)
                    for variant,out in outputs.items():
                        torch.testing.assert_close(out,expected,**spec['tolerance'])
                        assert torch.equal(out.view(torch.uint8),outputs['native'].view(torch.uint8)), (spec,distribution,variant,'non-bitwise result')
                    held=[linked(*xs) for _ in range(3)];assert len({x.data_ptr() for x in held})==3
                    for out in held:assert torch.equal(out.view(torch.uint8),outputs['native'].view(torch.uint8))
                    # Count only the prototype's full fusion launch outside timing.
                    original_run=linked.binary._run;count=[0]
                    def counted(*a,**k):
                        count[0]+=1
                        return original_run(*a,**k)
                    linked.binary._run=counted
                    try:linked(*xs);torch.cuda.synchronize()
                    finally:linked.binary._run=original_run
                    assert count[0]==1
                    prototype.screen_gpu(*xs);flags_reference=prototype.flags.clone()
                    torch.cuda.synchronize()
                    fn=dict(plans,linked=linked,lto=lto_fn,lto_call=call_fn)
                    fn.update(matched)
                    for label,call in matched.items():
                        outputs[label]=call(*xs)
                        assert torch.equal(outputs[label].view(torch.uint8),outputs['native'].view(torch.uint8))
                    device=measure_device_routes(fn,xs,outputs,dict(rtol=0,atol=0),args.repeat_index)
                    screen_device=measure_device_routes({'screen':prototype.screen_gpu},xs,flags_reference,
                                                        dict(rtol=0,atol=0),args.repeat_index)['screen']
                    assert screen_device['status']=='passed'
                    host={v:[] for v in ('native','precise','linked_only','adaptive_cached','lto_only','lto_adaptive')}
                    screen_samples=[]
                    functions=dict(plans,linked_only=linked,adaptive_cached=prototype,lto_only=lto_fn,lto_adaptive=lto)
                    for group in range(7):
                        labels=list(functions)
                        if (group+args.repeat_index)%2:labels.reverse()
                        for label in labels:
                            samples=[]
                            for _ in range(8):
                                torch.cuda.synchronize();start=time.perf_counter_ns()
                                out=functions[label](*xs);torch.cuda.synchronize()
                                samples.append((time.perf_counter_ns()-start)/1e3)
                            host[label].append(statistics.median(samples))
                        values=[]
                        for _ in range(8):
                            torch.cuda.synchronize();actual_mode,timing=prototype.screen(xs)
                            assert actual_mode==mode
                            values.append(timing['wall_us'])
                        screen_samples.append(statistics.median(values))
                    row=dict(spec=spec,distribution=distribution,status='passed',selected_mode=mode,
                             inputs_sha256=[digest(x) for x in xs],tanh_min_abs=float(a.min()),tanh_max_abs=float(a.max()),
                             small_fraction=float((a<0.6).float().mean()),native_precise_linked_bit_equal=True,
                             first_call_wall_ms=first_call_ms,first_selection=screen_first,first_link=event,first_lto=lto_event,first_lto_call=call_event,
                             full_fusion_kernel_dispatches=count[0],body_sha256=prototype.record['body_sha256'],
                             linked_cubin_sha256=hashlib.sha256(linked.binary.kernel).hexdigest(),
                             device=device,screen_device=screen_device,screen_host_samples_us=screen_samples,
                             screen_host_us=statistics.median(screen_samples),
                             synchronous_call_samples_us=host,
                             synchronous_call_us={k:statistics.median(v) for k,v in host.items()})
                    for x,before in zip(xs,originals):assert torch.equal(x,before)
                    assert all(v['status']=='passed' for v in device.values())
                    result['cases'].append(row);save()
                    print(json.dumps(dict(id=spec['ordinal'],distribution=distribution,mode=mode,
                                          kernel_us={k:v['median_us'] for k,v in device.items()},
                                          screen_gpu_us=screen_device['median_us'],screen_host_us=row['screen_host_us'],
                                          adaptive_us=row['synchronous_call_us']['adaptive_cached'])),flush=True)
                if spec['M']==16:
                    from screen_check import validate_screening
                    result['screen_precision_audits'].append(validate_screening(prototype,plans,native_capture,xs))
                    result['screen_precision_audits'].append(validate_screening(lto,plans,native_capture,xs))
                # New data must re-select a cached small implementation rather than reuse the last mode.
                for x,v in zip(xs,data['all_small']):x.copy_(v)
                assert prototype.screen(xs)[0]=='small'
                assert torch.equal(prototype(*xs).view(torch.uint8),plans['native'](*xs).view(torch.uint8))
                assert len(prototype.events)==3 and set(prototype.linked)=={'small','large','general'}
                assert len({e['body_sha256'] for e in prototype.events})==1
                for variant,plan in plans.items():
                    after=probe(plan,xs,'after');pr['routes'][variant]['after']=after
                    assert after['cubin_sha256']==pr['routes'][variant]['before']['cubin_sha256']
                pr['status']='passed';save()
            from primitive_check import validate_primitives
            result['primitive']=validate_primitives(linker,policy.ASM,args.output)
            result['primitive_lto']=validate_primitives(lto_linker,policy.ASM,args.output,lto=True)
        result['status']='completed';save()
    except BaseException as error:
        result.update(status='failed',error=repr(error));save();raise


if __name__=='__main__':main()
