"""Recover the executed eager broadcast-add loop from the unchanged host ABI.

Only the private diagnostic image changes: bypass one vector arithmetic site,
leave DMA and addresses intact, and measure the affected output elements.
"""
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
pcs=[pc for pc,op in ops if op.startswith('vmac.f.mz.rn')]
assert len(pcs)==18
torch.manual_seed(99)
x=((torch.arange(2048*2048).reshape(2048,2048)%97).float()+1024.).cuda()
bias=((torch.arange(2048)%61).float()+.25).cuda()
want=x+bias
buf=torch.empty(x.numel()+2048,device='cuda')
out=buf[:x.numel()].view_as(x);buf[x.numel():].fill_(-222.)
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
pinned=[];hashes=set();expected=want.cpu()
def run(pc):
    patch=bytearray(blob)
    if pc is not None:
        assert ops[pc//4][1].startswith('vmac.f.mz.rn')
        patch[pc:pc+4]=bytes.fromhex('00000000')  # KL3 vendor NOP
    checksum=lambda data:sum(c if c<128 else c-256 for c in data)&0xffffffff
    while checksum(patch) in hashes:patch+=bytes.fromhex('00100000')
    hashes.add(checksum(patch))
    code=bytes(patch);name='f06_probe_add_'+hashlib.sha256(code).hexdigest()[:16]
    pinned.extend((name,code));fn=driver.active.utils.load_binary(name,code,False,0)[1]
    out.fill_(-333.);torch.cuda.synchronize()
    check(rt.xpu_launch_config(12,64,None))
    for offset,arg in args:check(rt.xpu_launch_argument_set(C.byref(arg),C.sizeof(arg),offset))
    check(rt.xpu_launch_async(fn));check(rt.xpu_wait(None))
    res=out.cpu()
    assert not bool((res==-333.).any()) and bool((buf[x.numel():]==-222.).all())
    return res.view(torch.int32)!=expected.view(torch.int32)
assert not bool(run(None).any())
coverage=torch.zeros_like(expected,dtype=torch.int16)
active=[]
for pc in pcs:
    affected=run(pc)
    coverage+=affected.to(coverage.dtype)
    num=int(affected.sum());print('SITE',hex(pc),num,ops[pc//4][1],flush=True)
    if num:active.append(pc)
assert bool((coverage==1).all()), [(int(v),int((coverage==v).sum())) for v in coverage.unique()]
print('PARTITION',json.dumps({'coverage':expected.numel(),'active':[hex(pc) for pc in active]}),flush=True)
for ix,(pc,op) in enumerate(ops):
    if any(abs(pc-hit)<=48 for hit in active) or op.startswith(('bl_gm2','l_gm2lm','s_lm2gm','l_sm2lm')):
        print('EVIDENCE',hex(pc),op)
# Classify the available loops and their control registers around the active range.
for pc,op in ops:
    if op.startswith(('blt.s ','bneq ','beq ','ble.s ','j ')):
        delta=int(op.split()[-1])
        if delta<0 and any(pc+delta<=hit<=pc for hit in active):
            print('LOOP',hex(pc+delta),hex(pc),op)
