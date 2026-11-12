"""Compare KL3 row layouts with the same compiled arithmetic and fresh outputs."""
import json
import random
import statistics
import sys
import time
import torch
import triton.language as tl
from triton.tools.tensor_descriptor import TensorDescriptor
from triton.experimental.graph_fusion import _p800_reduce as red
from triton.experimental.graph_fusion._resource_benchmark import _capture

torch.set_grad_enabled(False)
torch.manual_seed(92)
x=torch.randn(2048,2048,device='cuda');b=torch.randn(2048,device='cuda')
out=torch.empty_like(x);kernel=red._tle_kernel()
expected=torch.softmax(x+b,-1).cpu()
runners={'eager':lambda:torch.softmax(x+b,-1)}
for xb in map(int,sys.argv[1:]):
    ds=[TensorDescriptor.from_tensor(t,s) for t,s in ((x,[xb,2048]),(b,[2048]),(out,[xb,2048]))]
    grid=2048//xb
    cb=kernel[(grid,)](*ds,2048,XB=xb,YB=2048,DT=tl.float32,kl3_softmax_shift=True,kl3_row_softmax=True,num_warps=8,num_stages=1)
    torch.testing.assert_close(out.cpu(),expected,rtol=.0003,atol=1e-8)
    run=red._bind_row_softmax(cb,kernel,grid,*ds)
    assert run
    assert torch.allclose(run(x,b).cpu(),expected,rtol=.0003,atol=1e-8)
    runners[str(xb)]=lambda run=run:run(x,b)
    print('COMPILED',xb,flush=True)
graphs={k:_capture(fn,(),8)[0] for k,fn in runners.items()}
event={k:[] for k in runners};sync={k:[] for k in runners}
rng=random.Random(613)
for i in range(23):
    keys=list(runners);rng.shuffle(keys)
    for k in keys:
        torch.cuda.synchronize()
        e,f=torch.cuda.Event(True),torch.cuda.Event(True)
        e.record();graphs[k].replay();f.record();f.synchronize()
        if i>=2:event[k].append(e.elapsed_time(f)*125)
        for j in range(4):
            t=time.perf_counter_ns();y=runners[k]();torch.cuda.synchronize()
            if i>=2:sync[k].append((time.perf_counter_ns()-t)/1000)
print('TIME',json.dumps(dict(event={k:statistics.median(v) for k,v in event.items()},ordinary={k:statistics.median(v) for k,v in sync.items()})))
