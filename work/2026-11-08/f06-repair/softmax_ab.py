"""Isolate reuse of the LM tile with identical, independent output storage."""
import importlib.util
import json
import statistics
import sys
from pathlib import Path
import torch
from triton.experimental.graph_fusion import _p800_reduce as fixed

source = Path(fixed.__file__).read_text()
optimized = """        e = tl.exp(v - m[:, None])
        z = tl.sum(e, 1)
        tl.store(p, (e / z[:, None]).to(DT))"""
repeat = """        z = tl.sum(tl.exp(v - m[:, None]), 1)
        tle.gpu.copy(a_desc, buf, [XB, YB], [row_off, 0])
        v = (tl.load(p) + bv[None, :].to(DT)).to(tl.float32)
        tl.store(p, (tl.exp(v - m[:, None]) / z[:, None]).to(DT))"""
assert source.count(optimized) == 1
path = Path('/tmp/f06_softmax_two_copies.py')
path.write_text(source.replace(optimized,repeat))
spec = importlib.util.spec_from_file_location(fixed.__package__+'._softmax_two_copies',path)
control = importlib.util.module_from_spec(spec)
sys.modules[spec.name] = control
spec.loader.exec_module(control)
torch.manual_seed(61)
torch.set_grad_enabled(False)
for m in (64,512,2048):
    n = 1024
    a,b = torch.randn(m,n).cuda(),torch.randn(n).cuda()
    inputs=[a,b]
    ref=torch.softmax(a+b,-1)
    desc=dict(kind='add_softmax',m=m,n=n,dtype='float32',eps=0.)
    functions={}
    for label,module in [('two_copies',control),('one_copy',fixed)]:
        fn,proof=module.compile(desc,inputs)
        for _ in range(10): y=fn(inputs)[0]
        assert proof['tiles'].get('route')=='tle'
        torch.testing.assert_close(y.cpu(),ref.cpu(),rtol=.0003,atol=.0003)
        functions[label]=fn
    samples={name:[] for name in functions}
    for i in range(7):
        for name in (list(functions) if i%2==0 else list(reversed(functions))):
            start,end=torch.cuda.Event(True),torch.cuda.Event(True)
            start.record()
            for _ in range(60): y=functions[name](inputs)
            end.record(); torch.cuda.synchronize()
            samples[name].append(start.elapsed_time(end)*1000/60)
    us={k:statistics.median(v) for k,v in samples.items()}
    print('AB '+json.dumps(dict(m=m,n=n,median_us=us,samples=samples,ratio=us['two_copies']/us['one_copy'])),flush=True)
