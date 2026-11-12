"""Compare the B2 workaround, the delivered row kernel and eager at the same shape."""
import importlib.util
import json
import math
import os
import re
import statistics
import sys
from collections import Counter
from pathlib import Path

os.environ['TRITON_CACHE_DIR'] = '/tmp/b2-vector-triton'
if sys.argv[1:] == ['assembly']:
    os.environ['TRITON_STORE_BINARY_ONLY'] = '0'

import torch
import triton
from triton.experimental.graph_fusion import _p800_reduce as reduction

def record(label, **values):
    print(label + ' ' + json.dumps(values), flush=True)

def trace():
    a, b = torch.zeros((2048, 2048),device='cuda'), torch.zeros(2048,device='cuda')
    for _ in range(3):
        torch.softmax(a + b, -1)
    torch.cuda.synchronize()

if sys.argv[1:] == ['trace']:
    trace()
    raise SystemExit

source = Path('/repair/dbg_softmax_online2.py').read_text()
path = Path('/tmp/f06_b2_vector_kernel.py')
path.write_text('import triton\nimport triton.language as tl\n' + source[source.index('@triton.jit'):source.index('\nm, n = ')])
spec = importlib.util.spec_from_file_location('f06_b2_vector_kernel', path)
kernel_module = importlib.util.module_from_spec(spec)
sys.modules[spec.name] = kernel_module
spec.loader.exec_module(kernel_module)
online = kernel_module.softmax_online2d
row = reduction._kernel()
m = n = 2048
torch.manual_seed(61)
torch.set_grad_enabled(False)
a, b = torch.randn((m, n)).cuda(), torch.randn(n).cuda()
def launch_online(out):
    return online[(m // 8,)](a,b,out,N=n,R=8,C=128,num_warps=8,num_stages=1,is_sdnn=False)
def launch_row(out):
    return row[(m // 8,)](a,b,out,b,b,KIND=2,N=n,R=8,C=n,ROUND=0,EPS=0.,AFFINE=0,num_warps=8,num_stages=1,is_sdnn=False)
def make_call(launch):
    def run():
        out = torch.empty_like(a)
        launch(out)
        return out
    return run
assembly = []
if sys.argv[1:] == ['assembly']:
    from triton.backends import llvm19_toolchain
    compile_asm = llvm19_toolchain.llir_to_asm
    def keep_asm(*args, **kwargs):
        result = compile_asm(*args, **kwargs)
        assembly.append(result)
        return result
    llvm19_toolchain.llir_to_asm = keep_asm

def describe(name, binary):
    llir = binary.asm.get('llir','')
    ir = binary.asm.get('ttxir','')
    record('IR', name=name, stages=list(binary.asm), hash=binary.hash,
           vector_types=Counter(re.findall(r'<\d+ x float>',llir)),
           vector_operations=Counter(re.findall(r'triton_xpu\.(v\w+)',ir)),
           llvm_exp_calls=sorted(set(line.strip()[:300] for line in llir.splitlines() if 'call' in line and ('exp2' in line or 'exp.f' in line)))[:5])
    if sys.argv[1:] != ['assembly']:
        return
    path=next(Path(os.environ['TRITON_CACHE_DIR']).rglob(binary.metadata.name+'.asm'),None)
    asm = path.read_text() if path else assembly[-1]
    rows = [m.group(1) for line in asm.splitlines() if (m:=re.match(r'^\s+([a-zA-Z][\w.]+)(?:\s|$)',line))]
    record('ASSEMBLY', name=name, source='compiler-emitted machine assembly', histogram=Counter(rows),
           vector_samples=[l.strip() for l in asm.splitlines() if re.match(r'^\s+[vV][A-Za-z][\w.]+\s',l)][:16],
           exp_samples=[l.strip() for l in asm.splitlines() if re.search(r'\bexp\.',l)][:5])
fns={'eager':lambda:torch.softmax(a+b,-1)}
expected=fns['eager']()
for name, launch in [('B2_online',launch_online),('full_row',launch_row)]:
    out=torch.empty_like(a)
    binary=launch(out)
    torch.cuda.synchronize()
    torch.testing.assert_close(out.cpu(),expected.cpu(),atol=3e-4,rtol=3e-4)
    record('CHECK', name=name, max_difference=float((out-expected).abs().max()))
    describe(name,binary)
    fns[name]=make_call(launch)
if sys.argv[1:] == ['assembly']:
    raise SystemExit
# The deployed TLE path allocates a fresh output and uses device memory descriptors.
tle, proof = reduction.compile(dict(kind='add_softmax',m=m,n=n,dtype='float32',eps=0.),(a,b))
out=tle([a,b])[0]
torch.testing.assert_close(out.cpu(),expected.cpu(),atol=3e-4,rtol=3e-4)
record('CHECK',name='prepared',tiles=proof['tiles'],max_difference=float((out-expected).abs().max()))
fns['prepared']=lambda:tle([a,b])[0]
times={name:[] for name in fns}
for fn in fns.values():
    for _ in range(6): out=fn()
for i in range(7):
    names=list(fns);names=names[i%len(names):]+names[:i%len(names)]
    for name in names:
        for attempt in range(4):
            s,e=torch.cuda.Event(True),torch.cuda.Event(True)
            s.record()
            for _ in range(30): out=fns[name]()
            e.record();torch.cuda.synchronize()
            us=s.elapsed_time(e)*1000/30
            if math.isfinite(us) and us>0: break
        else: raise RuntimeError('invalid device events')
        times[name].append(us)
record('TIME',shape=[m,n],dtype='float32',median_us={k:statistics.median(v) for k,v in times.items()},samples=times)
