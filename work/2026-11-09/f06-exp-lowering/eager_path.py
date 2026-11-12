"""Probe an independent copy of the captured vendor kernel on its original launch geometry.

Only exp.f.rn destination values are perturbed; pointer, addressing, branch
instructions and the installed vendor module are left intact.
"""
import ctypes as C
import hashlib
import json
from pathlib import Path
import re
import subprocess
import sys
import torch
from triton.runtime import driver

root=Path(__file__).resolve().parent
lib=Path(torch.__file__).resolve().parent.parent/'torch_xmlir/libxdnn_pytorch.so'
sym='_bin_KERNEL__ZN14xpukernel_xpu311softmax_fwdIfEEvPKT_PS1_ll'
symbol,=[l for l in subprocess.check_output(['readelf','-sW',lib],text=True).splitlines() if l.split() and l.split()[-1].endswith(sym)]
_,va,size,typ,_,_,section,_=symbol.split()
assert typ=='OBJECT' and int(size)==14904
line,=[l for l in subprocess.check_output(['readelf','-SW',lib],text=True).splitlines() if re.match(r'\s*\[\s*'+section+r'\]',l)]
addr,off=[int(x,16) for x in line.split(']')[1].split()[2:4]]
with lib.open('rb') as f:
    f.seek(int(va,16)-addr+off)
    original=f.read(int(size))
assert hashlib.sha256(original).hexdigest()=='c5f093d29222079bba3933b7ad0f9b96dd9c36427b4ae72cea7457125f80035a'
sites=json.loads((root/'eager_exp_sites.json').read_text())

torch.manual_seed(61)
x=torch.randn(2048,2048).cuda()+torch.randn(2048).cuda()
ref=torch.softmax(x,-1)
torch.cuda.synchronize()
rtpath=next((l.split()[-1] for l in Path('/proc/self/maps').read_text().splitlines() if '/libxpurt.so' in l),None)
assert rtpath, 'need the XRE runtime already loaded by eager'
rt=C.CDLL(rtpath)
rt.xpu_launch_config.argtypes=[C.c_int,C.c_int,C.c_void_p]
rt.xpu_launch_argument_set.argtypes=[C.c_void_p,C.c_size_t,C.c_size_t]
rt.xpu_launch_async.argtypes=[C.c_void_p]
rt.xpu_wait.argtypes=[C.c_void_p]
def check(code):
    if code:raise RuntimeError(f'XRE code {code}')
refcpu=ref.cpu()
guard=32
buf=torch.full((2048*2048+2*guard,),-123.,device='cuda')
out=ref if 'same-output' in sys.argv[1:] else buf[guard:-guard].view(2048,2048)
print('LAUNCH',json.dumps(dict(shape=list(x.shape),nclusters=12,ncores=64,
                               same_input=True,same_output_address=out.data_ptr()==ref.data_ptr(),
                               original_sha256=hashlib.sha256(original).hexdigest())),flush=True)
pinned=[]
hashes=set()
def run(indices):
    blob=bytearray(original)
    for idx in indices:
        pc,old,new,rd,rs=sites[idx]
        assert blob[pc:pc+4]==bytes.fromhex(old)
        blob[pc:pc+4]=bytes.fromhex(new)
    # The loader uses a byte sum, so prevent two probes sharing a runtime cache
    # key. An unreachable trailer following the vendor's final exit is used
    # only on collision. Every trailer is one or more complete KL3 words.
    checksum=lambda b:sum(x if x<128 else x-256 for x in b)&0xffffffff
    padding=bytes.fromhex('00100000')  # unreachable KL3 exit, nonzero byte sum
    assert original[-8:-4]==padding
    while checksum(blob) in hashes:
        blob+=padding
    hashes.add(checksum(blob))
    code=bytes(blob)
    name='f06_eager_path_'+hashlib.sha256(code).hexdigest()[:20]
    pinned.extend((name,code))
    fn=driver.active.utils.load_binary(name,code,False,0)[1]
    out.fill_(-123.)
    torch.cuda.synchronize()
    check(rt.xpu_launch_config(12,64,None))
    args=[C.c_uint64(x.data_ptr()),C.c_uint64(out.data_ptr()),C.c_int64(2048),C.c_int64(2048)]
    for i,arg in enumerate(args):
        check(rt.xpu_launch_argument_set(C.byref(arg),8,8*i))
    check(rt.xpu_launch_async(fn));check(rt.xpu_wait(None))
    actual=out.cpu()
    assert bool((buf[:guard]==-123).all()) and bool((buf[-guard:]==-123).all())
    assert not bool((actual==-123).any())
    changed=int((actual.view(torch.int32)!=refcpu.view(torch.int32)).sum())
    print('PROBE',json.dumps(dict(pcs=[hex(sites[i][0]) for i in indices],changed=changed,
                                  nonfinite=int((~actual.isfinite()).sum()))),flush=True)
    return changed
assert run([])==0, 'untouched binary must reproduce real eager bit-for-bit'
if sys.argv[1:]!=['baseline']:
    assert run(list(range(len(sites))))>0
    active=[index for index in range(len(sites)) if run([index])]
    assert active
    print('ACTIVE',json.dumps([sites[i] for i in active]))
