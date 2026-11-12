import torch,triton
import triton.language as tl
import triton.experimental
triton.experimental.__path__.insert(0,'/opt/f06/code/python/triton/experimental')
from triton.experimental.graph_fusion import _p800_flat as flat
import json
torch.set_grad_enabled(False)
# Both backing allocations include the entire final tile. No device access
# exceeds allocated storage. Measure writes outside the logical tensor only.
total=65*1024; width=8192; padded=triton.cdiv(total,width)*width
a=torch.zeros(padded,device='cuda'); b=torch.zeros(1024,device='cuda')
backing=torch.full((padded,),-42.,device='cuda')
flat._kernel()[(padded//width,)](a[:total],b,backing[:total],KIND=2,P=1024,XBLOCK=width,num_warps=4,num_stages=1)
torch.cuda.synchronize()
print('CANARY',json.dumps(dict(total=total,allocation=padded,tail_elements=padded-total,tail_overwritten=int((backing[total:]!=-42).sum().item()))),flush=True)
@triton.jit
def castback(x,y,N:tl.constexpr,MODE:tl.constexpr):
    i=tl.arange(0,N); v=tl.load(x+i)
    if MODE==1: v=v.to(tl.bfloat16).to(tl.float32)
    if MODE==2: v=v.to(tl.float16).to(tl.float32)
    tl.store(y+i,v)
x=torch.tensor([1.0001,1.5,1.0009765625,3.14159265]*256).cuda()
for mode,dtype in [(1,torch.bfloat16),(2,torch.float16)]:
    y=torch.empty_like(x); castback[(1,)](x,y,N=1024,MODE=mode)
    print('ROUND',dtype,y[:4].cpu().tolist(),x.cpu().to(dtype).float()[:4].tolist(),flush=True)
