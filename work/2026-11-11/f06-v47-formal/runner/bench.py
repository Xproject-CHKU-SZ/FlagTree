"""Measure the formal F06 route against same-dtype eager; compare numerical outputs to the unrounded FP32 oracle."""
import copy, ctypes, faulthandler, json, os, random, statistics, sys, time
from pathlib import Path
import torch
from cases import Bin, Mat, MAT
from admission import trace_admission
from triton.experimental import graph_fusion as gf
from triton.experimental.graph_fusion._resource_benchmark import GraphMeasurement
from triton.experimental.graph_fusion._p800_shared_fp32 import _FP32Reference

torch.set_grad_enabled(False)
torch.set_num_threads(1)
faulthandler.dump_traceback_later(65,repeat=True)
kind,shape,mode=sys.argv[1:]
m,n=map(int,shape.split('x'))
phase=ctypes.CDLL(None).f06_phase
phase.argtypes=[ctypes.c_char_p]
sync=torch.cuda.synchronize
root=Path(os.environ.get('F06_RESULTS','/out'))
root.mkdir(exist_ok=True)
torch.manual_seed(61)
base=(Mat if kind in MAT else Bin)(kind,n).eval()
order=os.environ.get('F06_DTYPE_ORDER','float32,float16,bfloat16').split(',')
prepared={}
observed_gates={}
historical_gates=json.loads(Path(__file__).with_name("historical-gates.json").read_text())
bias_shape=(1,n) if os.environ.get('F06_ROW_BIAS')=='1' else (n,)
sizes=((m,64),(64,n),(n,)) if kind in MAT else ((m,n),bias_shape)

def candidate_record(candidate):
    proof = candidate.get('proof', {})
    binaries = []
    for part in (proof, *proof.get('regions', [])):
        for kernel in part.get('kernel_evidence', ()):
            binaries.append(dict(name=kernel.get('kernel_name'), resource=kernel.get('effective'),
                                 sha256=kernel.get('asm_sha256', {}).get('xpubin')))
    return dict(name=candidate['name'], status=candidate['status'], error=candidate.get('error'),
                checks=candidate.get('checks'), kernels=binaries, requested_tile=proof.get('verified_mm_tile'))

def make_inputs(seed,dt):
    gen=torch.Generator().manual_seed(seed)
    return tuple(torch.randn(s,generator=gen).to(device='cuda',dtype=dt) for s in sizes)

def tolerance(dt):
    return dict(atol=.0003,rtol=.0003) if dt==torch.float32 else dict(atol=.03 if dt==torch.bfloat16 else .003,rtol=.003)

# All dtype-specific cold validations finish before timing any shared handle.
if mode in ('formal','single'):
    for name in order:
        dtype=getattr(torch,name)
        mod=copy.deepcopy(base).to(device='cuda',dtype=dtype)
        a=[]
        compiler=gf.autotune_resource_backend(tolerance=tolerance(dtype),environment_key='P800-152-warm-v38', single_kernel=(mode=='single'), audit=a)
        f=torch.compile(mod,backend=compiler,fullgraph=True,dynamic=False)
        case=f'{kind}-{name}-{shape}'
        with trace_admission(case, historical_gates.get(case, {}), root, phase) as gates:
            f(*make_inputs(61,dtype));sync()
        observed_gates[case] = gates
        prepared[name]=(mod,f,a)
measured=os.environ.get('F06_MEASURE_DTYPES', ','.join(order)).split(',')
assert len(set(measured)) == len(measured) and set(measured) <= set(order)
for precision in measured:
    if mode=='native':torch._dynamo.reset()
    dt=getattr(torch,precision)
    name=kind+'-'+precision+'-'+shape
    print('START',name,flush=True)
    os.environ['F06_MACHINE_DIR']=str(root/(name+'-machine'))
    (root/(name+'-machine')).mkdir(exist_ok=True)
    model=prepared[precision][0] if mode in ('formal','single') else copy.deepcopy(base).to(device='cuda',dtype=dt)
    ref_model=copy.deepcopy(model).float()
    class WideReference(torch.nn.Module):
        def __init__(self, inner):
            super().__init__()
            self.inner = inner
        def forward(self, *values):
            return self.inner(*(x.float() for x in values)).to(dt)
    wide_output=WideReference(ref_model)
    reference=_FP32Reference(ref_model, dt)
    def inputs(seed):return make_inputs(seed,dt)
    xs=inputs(61)
    tol=tolerance(dt)
    if mode in ('formal','single'): _,pub,audit=prepared[precision]
    else:
        audit=[]
        pub=torch.compile(model,backend='inductor',fullgraph=True,dynamic=False)
    first=pub(*xs)
    sync()
    def check(actual,expected):
        reference._f06_assert_close(actual, expected, tol)
    def traced(label,fn):
        sync();phase((name+'.'+label).encode())
        try:
            value=fn();sync()
        finally:phase(b'')
        return value
    ref=reference(*xs)
    check(first,ref)
    for seed in (82,97,431,1201):
        data=inputs(seed)
        out=pub(*data); check(out,reference(*data)); assert out.data_ptr()!=first.data_ptr()
    for idx in range(len(xs)):
        for mark in (float('nan'),float('inf'),-float('inf')):
            tagged=list(xs)
            tagged[idx]=xs[idx].clone()
            tagged[idx].view(-1)[0]=mark
            check(pub(*tagged),reference(*tagged))
    if 'layernorm' in kind:
        data=((1000+.1*xs[0].float()).to(dt),xs[1])
        check(pub(*data),reference(*data))
    if kind in MAT or kind.startswith('mul_sum'):
        if kind in MAT:
            a,b,h=[torch.zeros_like(x) for x in xs];a[:,0]=1;a[:,1]=2.**(-12 if dt==torch.float16 else -9);b[:2]=1;h.fill_(-1)
            witness=(a,b,h)
        else:
            a,b=[torch.zeros_like(x) for x in xs];u=2.**(-10 if dt==torch.float16 else -7)
            a[:,0]=128*(1+u);a[:,1]=-128;b[0]=1+u;b[1]=1+2*u;witness=(a,b)
        y=pub(*witness);want=reference(*witness);check(y,want)
        assert y.flatten()[0].item()==want.to(dt).flatten()[0].item() if kind in ('matmul_bias','matmul_bias_relu','mul_sum','mul_sum_keepdim') else True
    direct=traced('eager',lambda:model(*xs))
    check(traced('public',lambda:pub(*xs)),ref)
    if dt!=torch.float32:
        fp=traced('ingress',lambda:[t.float() for t in (*xs,*model.parameters())])
        yf=ref_model(*(x.float() for x in xs))
        check(traced('egress',lambda:yf.to(dt)),ref)
    record=dict(bias_shape=bias_shape, module_fast='_call_impl' in vars(pub), kind=kind,dtype=precision,shape=shape,output_dtype=str(first.dtype),mode=mode,checks='five seeds, shape/dtype, each input +/-Inf and NaN; cancellation or high-offset where applicable')
    record['accuracy_reference'] = 'unrounded_fp32_eager'
    record['timing_baseline'] = 'same_dtype_eager'
    record['admission_checks'] = observed_gates.get(name, {})
    observed, expected = first.detach().cpu().float(), ref.detach().cpu()
    finite = observed.isfinite() & expected.isfinite()
    record['max_finite_abs_to_fp32'] = (observed[finite]-expected[finite]).abs().max().item() if finite.any() else None
    rounded = ref.to(dt).cpu()
    bits = torch.int32 if dt == torch.float32 else torch.int16
    record['bit_diff'] = int(((first.cpu().view(bits) != rounded.view(bits)) &
                              ~(first.cpu().isnan() & rounded.isnan())).sum())
    if mode!='native':
        assert len(audit)==1
        d=audit[0]['decision']
        assert 'shared_fp32' in d,d
        record.update(route=d['selected'],compute_route=d.get('compute_route',d.get('shared_state',{}).get('route',d['selected'])),conversions=d['conversions'],launches=d.get('launches'),boundary_timings=d.get('boundary_timings_us'),boundary_trials=[dict(name=b['name'],status=b['status'],error=str(b.get('error',''))[-3500:],kernels=b.get('proof',{}).get('kernel_count')) for b in audit[0].get('boundary_candidates',[])],body=d['shared_fp32'],cache_hit=d['shared_cache_hit'],reason=d.get('reason'),protocol=d.get('e2e_acceptance',{}).get('protocol'),
                      candidates=[candidate_record(c) for c in audit[0]['candidates']])
        assert d['accuracy_reference'] == record['accuracy_reference']
        record['calibration'] = dict(rejections=d.get('rejections', []), acceptance=d.get('e2e_acceptance'),
                                     compute_tolerance=d.get('compute_tolerance'))
        entries=audit[0].get('boundary_candidates',[]) if d['conversions'] in ('kernel_load_store','kernel_load_sdk_store') else audit[0]['candidates']
        chosen=next((x.get('proof',{}) for x in entries if x.get('name')==d['selected']),{})
        record['external_calls']=chosen.get('external_calls');record['output_conversion']=chosen.get('output_conversion');record['launch_proof']=[{k:entry.get(k) for k in ('route','emitted','prepared_launch','tiles','resource_verified','direct_launches','schedule','output_conversion','input_conversion','compute_dtype','output_dtype','kernel_count','inference_entry')} for entry in (chosen.get('regions') or [chosen])]
        print('SELECT',precision,record['route'],record['cache_hit'],flush=True)
    funcs=dict(eager=model,public=pub,wide=wide_output)
    samples={k:[] for k in funcs}; keys=list(funcs);rng=random.Random(7331)
    for fn in funcs.values():
        for _ in range(6):fn(*xs)
    sync()
    for j in range(54):
        rng.shuffle(keys)
        for seq in (keys,keys[::-1]):
            for key in seq:
                sync();a=time.perf_counter_ns();y=funcs[key](*xs);b=time.perf_counter_ns();sync();c=time.perf_counter_ns()
                if j>=6:samples[key].append([(b-a)/1000,(c-b)/1000,(c-a)/1000])
    record['samples']=samples
    record['wall']={k:dict(zip(('submit','wait','total'),(statistics.median(a) for a in zip(*v)))) for k,v in samples.items()}
    record['device']={}
    for key,fn in (('eager',model),('public',pub)):
        cap=GraphMeasurement(fn,model if key=='eager' else reference,xs,tol,calls=16)
        try:
            readings=[]
            for attempt in range(32):
                try: readings.append(cap.sample())
                except RuntimeError as exc:
                    if str(exc) != 'invalid replay elapsed time':raise
                if len(readings)==7:break
            if len(readings)<3:raise RuntimeError('device event timer unavailable')
            record['device'][key]=statistics.median(readings)
        finally:cap.close()
    dest=root/(name+'.json');dest.write_text(json.dumps(record,allow_nan=False))
    print('DONE',name,record['wall']['eager']['total']/record['wall']['public']['total'],flush=True)



