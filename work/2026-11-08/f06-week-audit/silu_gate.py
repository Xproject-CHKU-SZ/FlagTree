import json, statistics,torch,triton.experimental
triton.experimental.__path__.insert(0,'/opt/f06/code/python/triton/experimental')
from triton.experimental.graph_fusion import _p800_native_mm as mm
from cases import Mat
torch.set_grad_enabled(False);torch.manual_seed(61)
for m in (65,513):
    a=torch.randn(m,64).cuda(); b=torch.randn(64,1024).cuda(); bias=torch.randn(1024).cuda(); xs=(a,b,bias)
    g=torch.fx.symbolic_trace(Mat('matmul_bias_silu',1024))
    refused=mm.match(g,xs) is None
    spec=mm.match(g,(a[:64],b,bias)); spec['M']=m
    fn,proof=mm.compile(spec,xs)
    for _ in range(10): y=fn(*xs)[0]; ref=g(*xs)
    torch.cuda.synchronize()
    eager=[]; fused=[]
    def bench(f):
        s,e=torch.cuda.Event(True),torch.cuda.Event(True);s.record()
        for _ in range(60): z=f(*xs)
        e.record();torch.cuda.synchronize()
        return s.elapsed_time(e)*1000/60
    for i in range(7):
        if i%2==0: eager.append(bench(g))
        fused.append(bench(fn))
        if i%2: eager.append(bench(g))
    print('GATE',json.dumps(dict(m=m,n=1024,k=64,default_declined=refused,forced_kernel_count=proof['kernel_count'],valid=torch.allclose(y,ref,atol=3e-4,rtol=3e-4),max_error=(y-ref).abs().max().item(),eager=eager,fused=fused,ratio=statistics.median(eager)/statistics.median(fused))),flush=True)
