"""Timing-only private copies. The donor LM value must be identical to the spilled value."""
import copy
import ctypes
import sys
import faulthandler
faulthandler.dump_traceback_later(45,repeat=True)
import hashlib
import json
import os
from pathlib import Path
import random
import statistics
import time
os.environ['TRITON_CACHE_DIR']='/tmp/diag-spill-fixed-reg'
import torch
import triton.language as tl
from triton.tools.tensor_descriptor import TensorDescriptor
from triton.runtime import driver
from triton.experimental.graph_fusion import _p800_reduce as red
from triton.experimental.graph_fusion._resource_benchmark import _capture

root=Path(__file__).resolve().parent
rules=json.loads((root/'controls.json').read_text())
torch.set_grad_enabled(False)
torch.manual_seed(63)
u,b=torch.randn(2048,2048).cuda(),torch.zeros(2048).cuda()
storage=torch.full((u.numel()+64,),-612.,device='cuda')
out=storage[32:-32].view_as(u)
ds=tuple(TensorDescriptor.from_tensor(t,sh) for t,sh in ((u,[16,2048]),(b,[2048]),(out,[16,2048])))
params=(*ds,2048,16,2048,tl.float32)
compiled=red._tle_kernel()[(128,)](*ds,2048,XB=16,YB=2048,DT=tl.float32,kl3_softmax_shift=True,num_warps=8,num_stages=1)
hashes=set();pinned=[];fns={};graphs={}
def load(blob):
    key=lambda data:sum(c if c<128 else c-256 for c in data)&0xffffffff
    while key(blob) in hashes:blob+=bytes.fromhex('00100000')
    hashes.add(key(blob))
    code=bytes(blob);name='f06_diag_'+hashlib.sha256(code).hexdigest()[:20]
    pinned.extend((code,name))
    return driver.active.utils.load_binary(name,code,False,0)[1]

for case in rules:
    blob=compiled.asm['xpubin'] if case=='fused_full' else (root/'preadded_center.kl3').read_bytes()
    assert hashlib.sha256(blob).hexdigest()==rules[case]['sha']
    groups=rules[case]['patch']
    applied=bytearray(blob)
    series=['baseline',*groups] if case=='fused_full' else ['baseline','redirect','strip_spill_write']
    for stage in series:
        if stage!='baseline':
            for pc,old,new,op in groups[stage]:
                if stage=="strip_bias_dma" and "--raw" in sys.argv and pc==0x2b8:continue
                assert applied[pc:pc+4].hex()==old
                applied[pc:pc+4]=bytes.fromhex(new)
        shell=copy.copy(compiled);shell.function=load(bytearray(applied))
        runner=shell[(128,1,1)]
        def fn(r=runner):
            r(*params);return out
        fns[case+'.'+stage]=fn

for trial in range(2):
    u.copy_(torch.randn_like(u)+torch.randn(2048,device='cuda'))
    want={'fused_full':torch.softmax(u,-1).cpu(),'preadded_center':(u-u.amax(-1,keepdim=True)).cpu()}
    want_bits={}
    for tag,fn in fns.items():
        case,stage=tag.split('.')
        out.fill_(-612.);fn();torch.cuda.synchronize()
        actual=out.cpu()
        if stage=='baseline':
            torch.testing.assert_close(actual,want[case],rtol=.0003,atol=1e-8)
            want_bits[case]=actual.view(torch.int32)
        assert torch.equal(actual.view(torch.int32),want_bits[case]), (tag,trial)
        assert bool((storage[:32]==-612.).all()) and bool((storage[-32:]==-612.).all())
calls=8 if '--wall' in sys.argv else 16
rtpath=next(l.split()[-1] for l in Path('/proc/self/maps').read_text().splitlines() if '/libxpurt.so' in l)
rt=ctypes.CDLL(rtpath)
rt.xpu_wait.argtypes=[ctypes.c_void_p]
for tag,fn in fns.items():
    if '--raw' in sys.argv:
        graphs[tag]=fn
        continue
    graphs[tag],result=_capture(fn,(),calls)
    assert torch.equal(result.cpu().view(torch.int32),want_bits[tag.split('.')[0]])
print('VERIFIED',len(graphs),'variants, two inputs, bitwise and guards',flush=True)
samples={k:[] for k in graphs};rng=random.Random(6391)
for it in range(27):
    order=list(graphs);rng.shuffle(order)
    for k in order:
        if '--raw' in sys.argv:
            assert rt.xpu_wait(None)==0
            torch.cuda.synchronize()
            t=time.perf_counter_ns()
            for _ in range(48):fns[k]()
            assert rt.xpu_wait(None)==0
            torch.cuda.synchronize()
            us=(time.perf_counter_ns()-t)/48000
            if it>=2:samples[k].append(us)
            if it<2:print('DIRECT',it,k,round(us,2),flush=True)
            continue
        if '--wall' in sys.argv:
            assert rt.xpu_wait(None)==0
            torch.cuda.synchronize()
            t=time.perf_counter_ns()
            for repeat in range(4):graphs[k].replay()
            assert rt.xpu_wait(None)==0
            torch.cuda.synchronize()
            us=(time.perf_counter_ns()-t)/(1000*calls*4)
            if it>=2:samples[k].append(us)
            continue
        for attempt in range(5):
            torch.cuda.synchronize();s,e=torch.cuda.Event(True),torch.cuda.Event(True)
            t=time.perf_counter_ns();s.record();graphs[k].replay();e.record();e.synchronize()
            us=s.elapsed_time(e)*1000/16
            if 0<us<=(time.perf_counter_ns()-t)/16000*1.1+2:break
        else:raise RuntimeError('invalid device clock')
        if it>=2:samples[k].append(us)
    if it%5==0: print('ROUND',it,flush=True)
diff={}
for case in rules:
    keys=[k for k in samples if k.startswith(case+'.')]
    for a,b in zip(keys,keys[1:]):
        vals=sorted(x-y for x,y in zip(samples[a],samples[b]))
        diff[a+' -> '+b]=[statistics.median(vals),vals[6],vals[18]]
print('RESULT',json.dumps(dict(median={k:statistics.median(v) for k,v in samples.items()},paired_median_q1_q3=diff,samples=samples)))
