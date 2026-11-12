"""Probe APIs, generated DMA instructions and graph memcpy semantics."""
from transfer_common import *
import traceback


out,report=initialize(7,'path-probe')
try:
    import torch
    import triton
    import triton.language as tl
    import triton.experimental.tle as tle
    from triton.backends.xpu.compiler import XPUBackend
    from transfer_kernels import copy_kernel
    original=XPUBackend.make_elf
    def intercept(mod,metadata,opt):
        text=mod._ir_for_lowering()
        (out/f"{metadata['is_sdnn']}-{metadata.get('name','copy')}.ll").write_text(text)
        return original(mod,metadata,opt)
    XPUBackend.make_elf=staticmethod(intercept)
    report['tle_raw_attributes']=sorted(n for n in dir(tle.raw) if not n.startswith('_'))
    x=torch.arange(4096,dtype=torch.float32).cuda();y=torch.empty_like(x)
    report['physical_proof']=physical_proof(7)
    for resource in ['sdnn','cluster']:
        fn=lambda:copy_kernel[(1,)](x,y,BLOCK=4096,is_sdnn=resource=='sdnn')
        k=fn();torch.cuda.synchronize();exact(y,x);keep_kernel(out,resource,k)
        report[resource]=k.metadata._asdict()
        save(out,report)
    report['host_probe']={}
    for direction in ['h2d','d2h']:
        rec={};report['host_probe'][direction]=rec
        try:
            h=torch.empty(4096,dtype=torch.float32,pin_memory=True)
            h.copy_(torch.arange(4096,dtype=torch.float32))
            d=h.cuda();torch.cuda.synchronize()
            rec['is_pinned']=h.is_pinned()
            fn=(lambda:d.copy_(h,non_blocking=True)) if direction=='h2d' else (lambda:h.copy_(d,non_blocking=True))
            g=capture(fn,128)
            expected=torch.arange(4096,dtype=torch.float32)+17
            if direction=='h2d':h.copy_(expected);d.fill_(float('nan'))
            else:d.copy_(expected);h.fill_(float('nan'))
            torch.cuda.synchronize();g.replay();torch.cuda.synchronize()
            rec['fresh_data']=exact(d if direction=='h2d' else h,expected)
            rec['timing']=measure(g,128,3)
            rec['status']='passed'
        except Exception as exc:rec.update(status='failed',error=str(exc),traceback=traceback.format_exc())
        save(out,report)
    report['status']='complete'
except Exception as exc:
    report.update(status='failed',error=str(exc),traceback=traceback.format_exc())
    raise
finally:save(out,report)
