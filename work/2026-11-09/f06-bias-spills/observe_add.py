import ctypes as C
import torch
torch.manual_seed(61)
x=torch.randn(2048,2048).cuda();b=torch.randn(2048).cuda()
out=torch.empty_like(x);ref=x+b
lib=C.CDLL('/tmp/f06_observer.so')
lib.observe_add.argtypes=[C.c_size_t]*3
lib.observe_add(x.data_ptr(),b.data_ptr(),out.data_ptr())
torch.add(x,b,out=out);torch.cuda.synchronize();lib.done_observing()
assert torch.equal(out,ref)
print('verified broadcast add',flush=True)
