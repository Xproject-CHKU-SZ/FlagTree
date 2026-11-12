"""Matched stage ablations on private copies of the linked B2 and eager kernels.

A verified forward jump bypasses either just exp or the complete in-place LM
exponential. Both bypasses produce shifted-input / row-sum(shifted-input).
The launch geometry, reduction, normalization and output shape stay fixed.
"""
import base64
import copy
import ctypes as C
from collections import Counter
import hashlib
import importlib.util
import json
import os
from pathlib import Path
import random
import re
import statistics
import subprocess
import sys
import time

if len(sys.argv)==2 and sys.argv[1] in ('--disassemble','--disassemble-vendor'):
    from disassemble import decode
    llvm=next(Path('/opt/hsp/triton/backends').rglob('libLLVM.so.19.1'))
    if sys.argv[1]=='--disassemble-vendor':
        paths=subprocess.check_output(['find','/opt','/usr/local','/root/miniconda/envs','-name','libLLVM*so*'],text=True).splitlines()
        for candidate in paths:
            try:
                if not ('15' in Path(candidate).name or 'clang15' in candidate):
                    continue
                if decode(bytes.fromhex('8f801000'),Path(candidate))[0][2]=='exp.f.rn r1, r1':
                    llvm=Path(candidate);break
            except (OSError,AttributeError):
                continue
        else:raise RuntimeError('the matching installed KL3 decoder was unavailable: '+str(paths))
    print(json.dumps([s for _,_,s in decode(sys.stdin.buffer.read(),llvm)]))
    sys.exit(0)

os.environ['TRITON_CACHE_DIR']='/tmp/exp-matched-triton'
os.environ['TRITON_STORE_BINARY_ONLY']='0'
import torch
import triton.language as tl
from triton.tools.tensor_descriptor import TensorDescriptor
from triton.runtime import driver
from triton.experimental.graph_fusion import _p800_reduce as red
from triton.experimental.graph_fusion._resource_benchmark import _capture
from functools import lru_cache

def record(kind, **kw):
    print(kind+' '+json.dumps(kw,allow_nan=False),flush=True)

def sha(code):
    return hashlib.sha256(code).hexdigest()

@lru_cache(maxsize=32)
def ops(blob):
    return json.loads(subprocess.check_output([sys.executable,'-S',__file__,'--disassemble'],input=blob))

def jump(blob,pc,destination):
    distance=destination-pc
    assert -4096<=distance<1024 and distance and distance%4==0
    word=((0x5b|(distance//4)<<7)&0xffffffff).to_bytes(4,'little')
    assert ops(word)==['j '+str(distance)],ops(word)
    blob[pc:pc+4]=word

torch.manual_seed(61)
torch.set_grad_enabled(False)
x=torch.randn(2048,2048).cuda();bias=torch.randn(2048).cuda()
u=x+bias
want=torch.softmax(u,-1).cpu()
shift=u.cpu()-u.cpu().amax(-1,keepdim=True)
identity=shift/shift.sum(-1,keepdim=True)
rtpath=next(l.split()[-1] for l in Path('/proc/self/maps').read_text().splitlines() if '/libxpurt.so' in l)
rt=C.CDLL(rtpath)
rt.xpu_launch_config.argtypes=[C.c_int,C.c_int,C.c_void_p]
rt.xpu_launch_argument_set.argtypes=[C.c_void_p,C.c_size_t,C.c_size_t]
rt.xpu_launch_async.argtypes=[C.c_void_p];rt.xpu_wait.argtypes=[C.c_void_p]
def check(rc):
    if rc:raise RuntimeError('XRE return code '+str(rc))

# KL3's loader caches by a byte sum. Keep all independent code buffers/names
# alive and disambiguate collisions with unreachable complete exit instructions.
pinned=[];hashes=set()
def load(blob):
    original=bytes(blob)
    checksum=lambda b:sum(x if x<128 else x-256 for x in b)&0xffffffff
    while checksum(blob) in hashes:
        blob+=bytes.fromhex('00100000')
    hashes.add(checksum(blob))
    code=bytes(blob);name='f06_ab_'+sha(code)[:20]
    pinned.extend([code,name])
    return driver.active.utils.load_binary(name,code,False,0)[1]

funcs={};graphs={};buffers={}
def make_tle(label, module, a):
    kernel=module._tle_kernel()
    ad=TensorDescriptor.from_tensor(a,[16,2048]);bd=TensorDescriptor.from_tensor(bias,[2048])
    out=torch.empty_like(a);od=TensorDescriptor.from_tensor(out,[16,2048])
    compiled=kernel[(128,)](ad,bd,od,2048,XB=16,YB=2048,DT=tl.float32,kl3_softmax_shift=True,num_warps=8,num_stages=1)
    blob=compiled.asm['xpubin'];ins=ops(blob)
    pcs=[i for i,s in enumerate(ins) if s.startswith('exp.f.rn')]
    groups=[i for i in pcs if i-1 not in pcs]
    assert len(groups)*16==len(pcs)==512
    for i in groups:
        registers=[]
        for j in range(16):
            match=re.fullmatch(r'exp\.f\.rn (r\d+), \1',ins[i+j])
            assert match;reg=match[1];registers.append(reg)
            assert ins[i-16+j].startswith('loadli.w '+reg+',') and ins[i+16+j].startswith('storeli.w '+reg+',')
        assert len(set(registers))==16
    record('BINARY',route=label,sha=sha(blob),groups=len(groups))
    for mode in ('full','skip_exp','skip_sweep','skip_batch','skip_fences'):
        patched=bytearray(blob)
        for i in groups:
            if mode=='skip_exp':jump(patched,4*i,4*(i+16))
            if mode=='skip_sweep':jump(patched,4*(i-16),4*(i+32))
        if mode in ('skip_batch','skip_fences'):
            for start in range(0,len(groups),4):
                first=groups[start]-16
                end=groups[start+3]+32
                assert end-first==4*48, (first,end,groups)
                assert ins[first-1]==ins[end]=='mfence { lm }', (ins[first-1],ins[end])
                delta=int(mode=='skip_fences')
                jump(patched,4*(first-delta),4*(end+delta))
        binary=copy.copy(compiled)
        binary.function=load(patched)
        runner=binary[(128,1,1)]
        def fn(r=runner, params=(ad,bd,od,2048,16,2048,tl.float32),out=out):
            r(*params)
            return out
        funcs[label+'_'+mode]=fn
        buffers[label+'_'+mode]=out

make_tle('tle',red,x)
source=Path(red.__file__).read_text()
start=source.index('def _tle_row_softmax')
end=source.index('return _tle_row_softmax',start)
kernel=source[start:end]
for old,new in [('tle.gpu.copy(b_desc, bb, [YB], [0])',''),('bv = tl.load(bp).to(tl.float32)',''),
                ('v = (tl.load(p) + bv[None, :].to(DT)).to(tl.float32)','v = tl.load(p).to(tl.float32)')]:
    assert kernel.count(old)==1
    kernel=kernel.replace(old,new)
source=(source[:start]+kernel+source[end:]).replace('_tle_row_softmax','_tle_row_softmax_preadded')
path=Path('/tmp/exp_preadded.py');path.write_text(source)
name=red.__package__+'.matched_preadded'
spec=importlib.util.spec_from_file_location(name,path)
mod=importlib.util.module_from_spec(spec);sys.modules[name]=mod;spec.loader.exec_module(mod)
make_tle('tle_preadded',mod,u)

# Identical diagnostic expression with the exp operation removed during source
# generation. This also eliminates scratch vector stores/reloads and allows the
# allocator to change live ranges. Compare with the in-place binary bypass.
for label,base,a in [('tle',Path(red.__file__).read_text(),x),('tle_preadded',source,u)]:
    bypass=base.replace('e = tl.exp(v - m[:, None])','e = v - m[:, None]')
    assert bypass!=base
    tag='identity_'+label
    path=Path('/tmp')/(tag+'.py')
    path.write_text(bypass.replace('_tle_row_softmax','_tle_row_softmax_'+tag))
    qual=red.__package__+'.'+tag
    spec=importlib.util.spec_from_file_location(qual,path)
    module=importlib.util.module_from_spec(spec);sys.modules[qual]=module;spec.loader.exec_module(module)
    jit=module._tle_kernel()
    out=torch.empty_like(a)
    ds=[TensorDescriptor.from_tensor(t,block) for t,block in [(a,[16,2048]),(bias,[2048]),(out,[16,2048])]]
    cb=jit[(128,)](*ds,2048,XB=16,YB=2048,DT=tl.float32,kl3_softmax_shift=True,num_warps=8,num_stages=1)
    assert not any(s.startswith('exp.f.rn') for s in ops(cb.asm['xpubin']))
    def identity_fn(cb=cb[(128,1,1)],args=(*ds,2048,16,2048,tl.float32),out=out):
        cb(*args);return out
    funcs[label+'_no_stage']=identity_fn;buffers[label+'_no_stage']=out

# Recover the exact device body previously identified in the actual eager trace.
lib=Path(torch.__file__).resolve().parent.parent/'torch_xmlir/libxdnn_pytorch.so'
sym='_bin_KERNEL__ZN14xpukernel_xpu311softmax_fwdIfEEvPKT_PS1_ll'
symbol,=[l for l in subprocess.check_output(['readelf','-sW',lib],text=True).splitlines() if l.split() and l.split()[-1].endswith(sym)]
_,va,size,typ,_,_,section,_=symbol.split()
line,=[l for l in subprocess.check_output(['readelf','-SW',lib],text=True).splitlines() if re.match(r'\s*\[\s*'+section+r'\]',l)]
addr,off=[int(s,16) for s in line.split(']')[1].split()[2:4]]
with lib.open('rb') as f:
    f.seek(int(va,16)-addr+off);vendor=f.read(int(size))
assert sha(vendor)=='c5f093d29222079bba3933b7ad0f9b96dd9c36427b4ae72cea7457125f80035a'
def vendor_ops(blob):
    return json.loads(subprocess.check_output([sys.executable,'-S',__file__,'--disassemble-vendor'],input=blob))
# Decode the vendor library in its existing container using the matching LLVM.
seq=vendor_ops(vendor)
assert vendor_ops(bytes.fromhex('5b0200005b040000db1dfeff'))==['j 16','j 32','j -3860']
for j,reg in enumerate(('r1','r2','r18','r19')):
    assert seq[0x19b0//4+j]==f'exp.f.rn {reg}, {reg}'
    assert seq[0x199c//4+j].startswith('loadli.w '+reg+',')
    assert seq[0x19c0//4+j].startswith('storeli.w '+reg+',')
assert seq[0x19ac//4]=='addli r11, r11, 4'
def make_vendor():
    modes=['full','skip_exp','skip_sweep','skip_loop']
    if '--prefix' in sys.argv:modes+=['copy','center','exp_result']
    for mode in modes:
        patch=bytearray(vendor)
        if mode in ('copy','center','exp_result'):
            # Return to the original LM->GM copy and row-loop epilogue. Its
            # live row index, tensor offset, byte count and LM address are
            # invariant across the skipped region in this exact binary.
            assert seq[0x1228//4]=='mfence { lm, gm }' and seq[0x198c//4]=='mfence { lm }'
            assert seq[0x19fc//4].startswith('vadd.s') and seq[0x20d8//4]=='j -3860'
            assert seq[0x11c8//4]=='mfence { lm }' and seq[0x11ec//4].startswith('s_lm2gm')
            if mode=='copy':
                jump(patch,0x122c,0x11c4)
            else:
                # Keep the inter-core collectives between rows. Jumping straight
                # from the first collective to writeback introduced a row race.
                # The partial vendor prefixes therefore still pay for its final
                # cross-core reduction, but not its main local sum/scale sweeps.
                if mode=='center':jump(patch,0x1990,0x19d8)
                assert seq[0x1a08//4].startswith('blt.s ') and seq[0x1a38//4].endswith('-36')
                assert seq[0x20a0//4].startswith('blt.s ') and seq[0x20d0//4].endswith('-36')
                jump(patch,0x1a08,0x1a3c);jump(patch,0x20a0,0x20d4)
        if mode=='skip_exp':jump(patch,0x19b0,0x19c0)
        if mode=='skip_sweep':
            # Preserve the loop induction update between the loads and exp.
            jump(patch,0x199c,0x19ac);jump(patch,0x19b0,0x19d0)
        if mode=='skip_loop':
            assert seq[0x1990//4].startswith('blt.s ') and seq[0x19d4//4].endswith('-56')
            jump(patch,0x1990,0x19d8)
        out=torch.empty_like(u)
        handle=load(patch)
        args=[C.c_uint64(u.data_ptr()),C.c_uint64(out.data_ptr()),C.c_int64(2048),C.c_int64(2048)]
        pointers=[C.byref(a) for a in args]
        def fn(handle=handle,ptrs=pointers,args=args,out=out):
            check(rt.xpu_launch_config(12,64,None))
            for i,p in enumerate(ptrs):check(rt.xpu_launch_argument_set(p,8,8*i))
            check(rt.xpu_launch_async(handle))
            return out
        funcs['vendor_'+mode]=fn
        buffers['vendor_'+mode]=out
make_vendor()
if '--prefix' in sys.argv:
    # Materialize the same mathematical prefixes in TLE, keeping the input
    # and output descriptors, tile, grid and compiler identical to preadded.
    for mode,expr in [('copy','v'),('center','v - m[:, None]'),('exp_result','e')]:
        name=mod.__package__+'.tle_prefix_'+mode
        text=source.replace('tl.store(p, (e * inv[:, None]).to(DT))','tl.store(p, ('+expr+').to(DT))')
        assert text!=source
        path=Path('/tmp')/('tle_prefix_'+mode+'.py')
        path.write_text(text.replace('_tle_row_softmax','_tle_row_softmax_'+mode))
        spec=importlib.util.spec_from_file_location(name,path)
        module=importlib.util.module_from_spec(spec);sys.modules[name]=module;spec.loader.exec_module(module)
        out=torch.empty_like(u)
        ds=[TensorDescriptor.from_tensor(t,block) for t,block in [(u,[16,2048]),(bias,[2048]),(out,[16,2048])]]
        cb=module._tle_kernel()[(128,)](*ds,2048,XB=16,YB=2048,DT=tl.float32,kl3_softmax_shift=True,num_warps=8,num_stages=1)
        def prefix_fn(r=cb[(128,1,1)],args=(*ds,2048,16,2048,tl.float32),out=out):
            r(*args);return out
        key='tle_preadded_'+mode
        funcs[key]=prefix_fn;buffers[key]=out
# Validate every launched copy, including that both bypasses compute identical
# bits for the same implementation. Do not use their output as a Softmax result.
for route in ('tle','tle_preadded','vendor'):
    bypass=None
    modes=('full','skip_exp','skip_sweep','skip_loop') if route=='vendor' else (
        'full','skip_exp','skip_sweep','skip_batch','skip_fences','no_stage')
    if '--prefix' in sys.argv and route in ('tle_preadded','vendor'):
        modes+=('copy','center','exp_result')
    for mode in modes:
        key=route+'_'+mode
        output=buffers[key];output.fill_(float('nan'))
        torch.cuda.synchronize()
        y=funcs[key]();check(rt.xpu_wait(None));torch.cuda.synchronize()
        result=y.cpu()
        expected={'full':want,'copy':u.cpu(),'center':shift,'exp_result':shift.exp()}.get(mode,identity)
        torch.testing.assert_close(result,expected,rtol=.0003,atol=1e-8)
        if mode=='full' and route=='vendor':assert torch.equal(result,want)
        if mode=='skip_exp':bypass=result
        if mode in ('skip_sweep','skip_batch','skip_fences','skip_loop'):assert torch.equal(result,bypass)
        if mode=='copy':assert torch.equal(result,expected)
        record('CHECK',case=key,max_abs=(result-expected).abs().max().item())
# Raw XRE and Triton launches use preallocated outputs with a device wait at
# the batch boundaries. Record host submission as a check on launch starvation.
funcs.update({'torch_pair':lambda:torch.softmax(x+bias,-1),'torch_softmax':lambda:torch.softmax(u,-1)})
samples={k:[] for k in funcs};submissions={k:[] for k in funcs}
rng=random.Random(619);calls=48
for rep in range(17):
    keys=list(funcs);rng.shuffle(keys)
    for k in keys:
        fn=funcs[k]
        torch.cuda.synchronize();check(rt.xpu_wait(None))
        t0=time.perf_counter_ns()
        for _ in range(calls):y=fn()
        t1=time.perf_counter_ns()
        check(rt.xpu_wait(None));torch.cuda.synchronize()
        t2=time.perf_counter_ns()
        if rep>=2:
            samples[k].append((t2-t0)/1000/calls)
            submissions[k].append((t1-t0)/1000/calls)
record('RESULT',median={k:statistics.median(v) for k,v in samples.items()},samples=samples,
       submission={k:statistics.median(v) for k,v in submissions.items()})
