import sys,torch
from cases import MAT,Mat,Bin
kind,dt=sys.argv[1:3]
torch.set_grad_enabled(False);torch.manual_seed(61)
dtype=getattr(torch,dt)
g=torch.fx.symbolic_trace((Mat if kind in MAT else Bin)(kind,1024).to(device='cuda',dtype=dtype))
shapes=((512,64),(64,1024),(1024,)) if kind in MAT else ((512,1024),(1024,))
xs=[torch.randn(s).to(dtype).cuda() for s in shapes]
print('FXGRAPH '+repr(g.code),flush=True)
for i in range(3): g(*xs)
torch.cuda.synchronize()
