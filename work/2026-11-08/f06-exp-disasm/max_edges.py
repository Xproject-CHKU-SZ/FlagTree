"""Check the ISA max against independent scalar reference, including signed zeros."""
import json
import math
import torch
import triton
import triton.language as tl

@triton.jit
def hw(x,y,o):
    i=tl.arange(0,128)
    a=tl.load(x+i)
    b=tl.load(y+i)
    v=tl.inline_asm_elementwise('max.f $0, $1, $2;',constraints='=r,r,r',args=[a,b],dtype=tl.float32,is_pure=True,pack=1)
    tl.store(o+i,v)

vals=[float('-inf'),-17.,-0.,0.,3.,float('inf'),float('nan')]
pairs=[(x,y) for x in vals for y in vals]
a=torch.tensor([pairs[i%len(pairs)][0] for i in range(128)],dtype=torch.float32).cuda()
b=torch.tensor([pairs[i%len(pairs)][1] for i in range(128)],dtype=torch.float32).cuda()
o=torch.empty_like(a);hw[(1,)](a,b,o,num_warps=1,is_sdnn=False)
out=o.cpu().tolist()
bad=[]
for (x,y),v in zip(pairs,out):
    if math.isnan(x):want=y
    elif math.isnan(y):want=x
    elif x==0. and y==0.:want=0. if math.copysign(1,x)>0 or math.copysign(1,y)>0 else -0.
    else:want=max(x,y)
    if (math.isnan(v) and math.isnan(want)) or (v==want and math.copysign(1,v)==math.copysign(1,want)):continue
    bad.append([str(x),str(y),str(v),str(want)])
print('EDGE',json.dumps(dict(pairs=len(pairs),different=bad)),flush=True)
