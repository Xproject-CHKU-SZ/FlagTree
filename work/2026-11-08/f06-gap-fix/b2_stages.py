"""On-device marginal-cost probes of the actual v5 native and TLE kernels.

Use eager to prepare the exact intermediate for each skipped prefix before timing.
Native variants derive from Inductor's generated source for this concrete graph.
"""
from collections import Counter
import hashlib
import importlib.util
import os
from pathlib import Path
import re
import statistics
import sys
import time

os.environ['TRITON_CACHE_DIR'] = '/tmp/b2_stages_triton'
os.environ['TORCHINDUCTOR_CACHE_DIR'] = '/tmp/b2_stages_inductor'
os.environ['TRITON_STORE_BINARY_ONLY'] = '0'
import torch
from torch._inductor.codecache import PyCodeCache
from torch._inductor.utils import run_and_get_code
from triton.backends import llvm19_toolchain as tc
from triton.experimental.graph_fusion import _p800_reduce as red
from triton.experimental.graph_fusion import _resource_autotune as auto
from triton.experimental.graph_fusion._p800_compiler import target_scope
from triton.experimental.graph_fusion._resource_benchmark import _capture
sys.path[:0] = ['/repair', '/repair/v4']
from cases import Bin
from timing import record

torch.manual_seed(61)
torch.set_grad_enabled(False)
route, stage = sys.argv[1:3]
m = n = 2048
a = torch.randn(m, n).cuda()
b = torch.randn(n).cuda()
u = a+b
v = u-torch.amax(u, -1, keepdim=True)
e = torch.exp(v)
out = torch.softmax(u, -1)
stages = {'full':a, 'added':u, 'shifted':v, 'exps':e, 'copy':out}
prefix = list(stages).index(stage) if stage in stages else 0
inp = stages.get(stage, a)
assembly = {}
emit = tc.llir_to_asm
def capture_asm(ir, *args, **kwargs):
    result = emit(ir,*args,**kwargs)
    assembly[hashlib.sha256(result.encode()).hexdigest()] = result
    return result
tc.llir_to_asm = capture_asm

def once(source, left, right):
    assert source.count(left) == 1, left
    return source.replace(left,right)

if route == 'native':
    mod = Bin('add_softmax',n).eval()
    def backend(gm, xs):
        fn, proof = auto.compile_candidate(gm, xs, auto.Candidate('inductor'))
        return fn
    comp = torch.compile(mod, backend=backend, fullgraph=True, dynamic=False)
    actual, sources = run_and_get_code(comp,a,b)
    assert len(sources) == 1
    src, = sources
    assert "config={'XBLOCK': 8," in src
    specialized = '_kl3_softmax_shift' in src
    assert specialized or 'triton_helpers.max2' in src
    source_hash = hashlib.sha256(src.encode()).hexdigest()
    # Keep the exact emitted program, decorator, grid and launch ABI. DCE
    # removes each disconnected prefix. No replacement arithmetic is timed.
    if stage == 'tlmax':
        src = once(src, 'triton_helpers.max2(tmp3, 1)', 'tl.max(tmp3, 1)')
    if stage in ('ordered', 'isa'):
        combine = '@triton.jit\ndef _kl3_ordered_max(a, b):\n    return tl.where(a > b, a, b)\n\n'
        if stage == 'isa':
            combine = combine.replace('tl.where(a > b, a, b)', "tl.inline_asm_elementwise('max.f $0, $1, $2;', '=r,r,r', [a, b], tl.float32, True, 1)")
        src = once(src, '@triton_heuristics.fixed_config(', combine+'@triton_heuristics.fixed_config(')
        src = once(src, 'triton_helpers.max2(tmp3, 1)', 'tl.reduce(tmp3, 1, _kl3_ordered_max)')
    if prefix >= 1:
        src = once(src,'tmp2 = tmp0 + tmp1','tmp2 = tmp0')
    if prefix >= 2:
        src = once(src,'tmp6 = tmp2 - tmp5','tmp6 = tmp2')
    if prefix >= 3:
        src = once(src,'tmp7 = libdevice.exp(tmp6)','tmp7 = tmp6')
    if prefix >= 4:
        src = once(src,'tmp13 = tmp7 * tmp12','tmp13 = tmp7')
    if stage in ('tlmax','ordered','isa') or prefix:
        assembly.clear()
        src = src.replace('triton_unk_fused__softmax_add_0','triton_unk_fused__softmax_add_'+stage)
    from contextlib import ExitStack
    with ExitStack() as stack:
        stack.enter_context(target_scope())
        if specialized:
            from triton.experimental.graph_fusion._p800_inductor_softmax import _ROW_SHIFT
            token = _ROW_SHIFT.set(True)
            stack.callback(_ROW_SHIFT.reset, token)
        runner = PyCodeCache.load(src)
        def fn():
            return runner.call([inp,b])[0]
        result = fn()
elif route == 'tle':
    src = Path(red.__file__).read_text()
    source_hash = hashlib.sha256(src.encode()).hexdigest()
    if prefix >= 1:
        start = src.index('def _tle_row_softmax')
        end = src.index('return _tle_row_softmax',start)
        kernel = once(src[start:end], 'v = (tl.load(p) + bv[None, :].to(DT)).to(tl.float32)',
                      'v = tl.load(p).to(tl.float32)')
        kernel = once(kernel, 'tle.gpu.copy(b_desc, bb, [YB], [0])', '')
        kernel = once(kernel, 'bv = tl.load(bp).to(tl.float32)', '')
        src = src[:start] + kernel + src[end:]
    if prefix >= 2:
        src = once(src,'e = tl.exp(v - m[:, None])','e = tl.exp(v)')
    if prefix >= 3:
        src = once(src,'e = tl.exp(v)','e = v')
    if prefix >= 4:
        src = once(src,'tl.store(p, (e * inv[:, None]).to(DT))','tl.store(p, v.to(DT))')
    if stage == 'isa':
        src = once(src, 'return tl.where(a > b, a, b)', "return tl.inline_asm_elementwise('max.f $0, $1, $2;', '=r,r,r', [a, b], tl.float32, True, 1)")
    if prefix or stage == 'isa':
        path=Path('/tmp')/('b2_tle_'+stage+'.py')
        path.write_text(src.replace('_tle_row_softmax','_tle_row_softmax_'+stage))
        spec=importlib.util.spec_from_file_location(red.__package__+'.probe_'+stage,path)
        red=importlib.util.module_from_spec(spec);sys.modules[spec.name]=red;spec.loader.exec_module(red)
    raw, proof = red.compile(dict(kind='add_softmax',m=m,n=n,dtype='float32',eps=0.),(a,b))
    def fn():
        return raw([inp,b])[0]
    result=fn()
    assert proof['tiles']=={'xb':16,'yb':2048,'route':'tle'},proof
else:
    source_hash = 'vendor'
    if stage=='added':
        fn=lambda:torch.softmax(u,-1)
    elif stage=='copy':
        fn=lambda:a+b
        out=u
    else:
        fn=lambda:torch.softmax(a+b,-1)
    result=fn()
torch.testing.assert_close(result.cpu(),out.cpu(),atol=.0003,rtol=.0003,equal_nan=True)
graph, checked = _capture(fn, (), 8)
torch.testing.assert_close(checked.cpu(),out.cpu(),atol=.0003,rtol=.0003,equal_nan=True)
samples=[]
for _ in range(16):
    torch.cuda.synchronize()
    begin,end=torch.cuda.Event(True),torch.cuda.Event(True)
    t=time.perf_counter_ns()
    begin.record()
    graph.replay()
    end.record()
    end.synchronize()
    us=begin.elapsed_time(end)*1000/8
    wall=(time.perf_counter_ns()-t)/1000/8
    if 0 < us <= 1.1*wall+2:
        samples.append(us)
    if len(samples)==9:break
assert len(samples)>=7
asm={}
for digest,code in assembly.items():
    counts=Counter(re.findall(r'^\s*([a-z][\w.]+)\s',code,re.M))
    asm[digest]={k:counts[k] for k in ('exp.f.rn','div.f.rn','jal','max.f','vmax.f.mz','vadd.f.mz.rn',
                                       'vmul.f.mz.rn','vextracti.f','vsrl.p','l_gm2lm','s_lm2gm','mfence')}
if os.environ.get('F06_DUMP_STAGE') == '1':
    import base64
    for digest, code in assembly.items():
        payload=base64.b64encode(code.encode()).decode()
        record('ARTIFACT',route=route,kind='asm',sha256=digest,data=payload)
    if route=='native':
        payload=base64.b64encode(src.encode()).decode()
        record('ARTIFACT',route=route,kind='source',sha256=hashlib.sha256(src.encode()).hexdigest(),data=payload)
record('STAGE',route=route,stage=stage,us=statistics.median(samples),samples=samples,
       checked=True,source=source_hash,asm=asm)
