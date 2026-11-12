"""Benchmark the shipped P800 torch.compile route against the same eager module."""
import hashlib
import json
import math
import statistics
import sys
import time
from pathlib import Path

import torch
from triton._C import libtriton
from triton.experimental import graph_fusion
from cases import MAT, Mat, Bin

kind, dt, shape = sys.argv[1:4]
m, n = (int(x) for x in shape.split('x'))
dtype = getattr(torch, dt)
tol = .003 if dt == 'float16' else .0003
torch.set_grad_enabled(False)
torch.manual_seed(61)
module = (Mat if kind in MAT else Bin)(kind, n).to(device='cuda', dtype=dtype).eval()
shapes = ((m, 64), (64, n), (n,)) if kind in MAT else ((m, n), (n,))

def inputs(seed):
    rng = torch.Generator().manual_seed(seed)
    return tuple(torch.randn(d, generator=rng).to(dtype=dtype, device='cuda') for d in shapes)

def event_batch(fn, xs):
    torch.cuda.synchronize()
    a, b = torch.cuda.Event(True), torch.cuda.Event(True)
    a.record()
    for _ in range(40):
        out = fn(*xs)
    b.record()
    torch.cuda.synchronize()
    return a.elapsed_time(b) * 1000 / 40

def latency(fn, xs):
    torch.cuda.synchronize()
    t = time.perf_counter_ns()
    result = fn(*xs)
    torch.cuda.synchronize()
    return (time.perf_counter_ns() - t) / 1000

def record(event, **kw):
    print('BENCH ' + json.dumps(dict(event=event, kind=kind, dtype=dt, shape=shape, **kw)), flush=True)

def run():
    audit = []
    lib = hashlib.md5(Path(libtriton.__file__).read_bytes()).hexdigest()
    record('begin', library=lib, compiler=str(torch.compile.__module__), fusion=graph_fusion.__file__)
    backend = graph_fusion.autotune_resource_backend(tolerance=dict(rtol=tol, atol=tol),
                                                     environment_key='P800-152-' + lib, audit=audit)
    fn = torch.compile(module, backend=backend, fullgraph=True, dynamic=False)
    xs = inputs(61)
    start = time.monotonic()
    out = fn(*xs)
    torch.cuda.synchronize()
    cold = time.monotonic() - start
    assert len(audit) == 1, 'the Dynamo backend did not calibrate exactly once'
    decision = audit[0]['decision']
    selected = decision['selected']
    rec = next(r for r in audit[0]['candidates'] if r['name'] == selected)
    proof = rec['proof']
    stages = [{'route':r.get('route'), 'resource':r.get('resource'),
               'kernels':[(e['kernel_name'],e['effective'],e['binary_hash']) for e in r.get('kernel_evidence',[])]}
              for r in proof.get('regions',[])]
    if selected=='native_mm':
        stages.append(dict(route=selected,kernels=[(e['kernel_name'],e['effective'],e['binary_hash']) for e in proof['kernel_evidence']]))
    old = out.clone()
    for seed in (61,93):
        args = inputs(seed)
        actual = fn(*args)
        expected = module(*args)
        assert isinstance(actual,torch.Tensor) and actual.device == expected.device and actual.dtype == expected.dtype
        torch.testing.assert_close(actual.cpu(),expected.cpu(),rtol=tol,atol=tol,equal_nan=True)
        assert actual.data_ptr() != out.data_ptr()
    torch.testing.assert_close(out, old, rtol=0, atol=0, equal_nan=True)
    summaries = [dict(name=r['name'],status=r['status'],captured_us=r.get('gpu_us'),
                      error=str(r.get('error',''))[-480:]) for r in audit[0]['candidates']]
    record('chosen',route=selected,stages=stages,rejected=decision.get('rejections',[]),candidates=summaries,
           fallback_reason=decision.get('reason'),cold_s=cold)
    funcs = {'eager': module, 'compiled': fn}
    for f in funcs.values():
        for _ in range(8): f(*xs)
    samples = {k:[] for k in funcs}
    host = {k:[] for k in funcs}
    for i in range(7):
        for name in (('eager','compiled') if i%2==0 else ('compiled','eager')):
            samples[name].append(event_batch(funcs[name],xs))
    for i in range(32):
        for name in (('eager','compiled') if i%2==0 else ('compiled','eager')):
            host[name].append(latency(funcs[name],xs))
    assert all(math.isfinite(v) and v>0 for series in samples.values() for v in series)
    us={k:statistics.median(v) for k,v in samples.items()}
    wall={k:statistics.median(v) for k,v in host.items()}
    record('result',route=selected,stages=stages,event_us=us,speedup=us['eager']/us['compiled'],
           host_us=wall,host_speedup=wall['eager']/wall['compiled'],samples=samples,host_samples=host,cold_s=cold)

if __name__ == '__main__':
    try:run()
    except Exception as e:
        record('failure',reason=str(e)[-800:]);raise
