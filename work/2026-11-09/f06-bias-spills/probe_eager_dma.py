"""Identify the executed eager Add DMA sites by reading one padded row further. """
import ctypes as C
from collections import Counter
import hashlib
import json
from pathlib import Path
import re
import subprocess
import sys
import torch
from triton.runtime import driver
lib=Path(torch.__file__).resolve().parent.parent/'torch_xmlir/libxdnn_pytorch.so'
symbol='_ZN14xpukernel_xpu316tensor_calc_k_nkILi0ELb1EffffEEvPKT1_PKT4_PT3_T2_ll'
s=subprocess.check_output(['readelf','-sW',lib],text=True)
row,=[l for l in s.splitlines() if l.split() and l.split()[-1].endswith('_bin_KERNEL_'+symbol)]
_,va,sz,typ,_,_,sec,_=row.split()
line,=[l for l in subprocess.check_output(['readelf','-SW',lib],text=True).splitlines() if re.match(r'\s*\[\s*'+sec+r'\]',l)]
addr,off=[int(v,16) for v in line.split(']')[1].split()[2:4]]
with lib.open('rb') as f:f.seek(int(va,16)-addr+off);blob=f.read(int(sz))
assert hashlib.sha256(blob).hexdigest()=='2b77be6df18fe35c8306fe82910cae7bc32bc7e325b9a98204586802c26a7bb4'
ops=json.loads(subprocess.check_output([sys.executable,'-S',str(Path(__file__).with_name('vendor_add.py')),'--decode'],input=blob))

def decode(data):
    return [ins for pc,ins in json.loads(subprocess.check_output([sys.executable,'-S',str(Path(__file__).with_name('vendor_add.py')),'--decode'],input=data))]
# Keep both allocations live, with one extra row for every legal shifted DMA.
size=2048*2048; extra=2048
ax=((torch.arange(size+extra)%97).float()*256+1024).cuda()
bb=((torch.arange(2048+extra)%61).float()+.25).cuda()
x=ax[:size].view(2048,2048);bias=bb[:2048]
for t in (ax,bb):
    assert t.data_ptr()>>32==(t.data_ptr()+4*t.numel()-1)>>32
buf=torch.full((size+64,),-222.,device='cuda');out=buf[32:-32].view_as(x)
reference=(x+bias).cpu()
matrix_shift=(ax[extra:extra+size].view_as(x)+bias).cpu()
bias_shift=(x+bb[extra:extra+2048]).cpu()
assert bool((matrix_shift!=reference).all() and (bias_shift!=reference).all() and (bias_shift!=matrix_shift).all())
torch.cuda.synchronize()
rt_path=next(l.split()[-1] for l in Path('/proc/self/maps').read_text().splitlines() if '/libxpurt.so' in l)
rt=C.CDLL(rt_path)
rt.xpu_launch_config.argtypes=[C.c_int,C.c_int,C.c_void_p]
rt.xpu_launch_argument_set.argtypes=[C.c_void_p,C.c_size_t,C.c_size_t]
rt.xpu_launch_async.argtypes=[C.c_void_p];rt.xpu_wait.argtypes=[C.c_void_p]
def check(rc):
    if rc:raise RuntimeError('XRE '+str(rc))
args=[(0,C.c_uint64(bias.data_ptr())),(8,C.c_uint64(x.data_ptr())),(16,C.c_uint64(out.data_ptr())),
      (24,C.c_float(1.)),(32,C.c_int64(2048)),(40,C.c_int64(2048))]
pinned=[];hashes=set()
pcs=[pc for pc,op in ops if op.startswith(('l_gm2lm ','bl_gm2lm '))]
def j(src, target):
    return ((0x5b|((target-src)//4)<<7)&0xffffffff).to_bytes(4,'little')
def bump(reg,offset):
    i=offset&0x7fff
    return (0x1f | reg<<7 | (i&7)<<12 | reg<<15 | (i>>3)<<20).to_bytes(4,'little')
def patch(sites,offset):
    data=bytearray(blob);words=[];expected=[]
    for pc in sites:
        op=ops[pc//4][1]
        lo,hi=map(int,re.search(r'0\(r\[(\d+):(\d+)\]\)',op).groups())
        assert hi==lo+1 and lo not in (0,29,30,31)
        end=len(data)
        start=j(pc,end);data[pc:pc+4]=start
        instructions=[bump(lo,offset),blob[pc:pc+4],bytes.fromhex('00a00200'),bump(lo,-offset),j(end+16,pc+4)]
        words.extend([start,*instructions])
        expected.extend([f'j {end-pc}',f'addli r{lo}, r{lo}, {offset}',op,'mfence { lm, gm }',f'addli r{lo}, r{lo}, {-offset}',f'j {pc+4-end-16}'])
        data+=b''.join(instructions)
    if words:
        actual=decode(b''.join(words))
        assert actual==expected,(actual,expected)
    return data
def run(code):
    checksum=lambda b:sum(c if c<128 else c-256 for c in b)&0xffffffff
    while checksum(code) in hashes:code+=bytes.fromhex('00100000')
    hashes.add(checksum(code));code=bytes(code)
    name='f06_dma_role_'+hashlib.sha256(code).hexdigest()[:16]
    pinned.extend((name,code));fn=driver.active.utils.load_binary(name,code,False,0)[1]
    out.fill_(-333.);torch.cuda.synchronize()
    check(rt.xpu_launch_config(12,64,None))
    for pos,arg in args:check(rt.xpu_launch_argument_set(C.byref(arg),C.sizeof(arg),pos))
    check(rt.xpu_launch_async(fn));check(rt.xpu_wait(None))
    r=out.cpu()
    assert bool((buf[:32]==-222.).all() and (buf[-32:]==-222.).all() and (r!=-333.).all())
    return r
assert torch.equal(run(bytearray(blob)),reference)
assert torch.equal(run(patch(pcs,0)),reference)
print('VALIDATED original and zero-offset trampoline',flush=True)
coverage=torch.zeros_like(reference,dtype=torch.int16)
for pc in pcs:
    result=run(patch([pc],extra*4))
    bm=result==bias_shift;am=result==matrix_shift;keep=result==reference
    assert bool((keep|bm|am).all()), (hex(pc),int((~(keep|bm|am)).sum()))
    print('DMA',hex(pc),ops[pc//4][1],json.dumps(dict(bias=int(bm.sum()),matrix=int(am.sum()),unchanged=int(keep.sum()))),flush=True)
    if pc==0x7d8:
        # A refill governs one contiguous row range of the new 256-column stripe.
        block=bm.view(2048,8,256)
        assert torch.equal(block,block[:,:,:1].expand_as(block))
        for col,arr in enumerate(block[:,:,0].T):
            rows=arr.nonzero().flatten().tolist()
            if rows:
                assert rows==list(range(rows[0],rows[-1]+1))
                print('REFILL column stripe',col,'rows',rows[0],rows[-1],flush=True)
    coverage+=bm.to(coverage.dtype)+am.to(coverage.dtype)
assert bool((coverage==2).all()),coverage.unique(return_counts=True)
print('ALL',size,'each output traced to one bias and one matrix transfer',flush=True)
for pc,op in ops:
    if any(low<=pc<=high for low,high in [(0x618,0x698),(0x6f8,0x82c),(0x84c,0x8b4),(0x91c,0x970)]):
        print('ASM',hex(pc),op)
