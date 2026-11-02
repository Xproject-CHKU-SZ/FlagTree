"""Audit device-call precision, including boundaries, NaN payloads, and subnormals."""
import copy
import json
import time

import triton
import triton.language as tl
from triton.language.extra.cuda import libdevice
from device_external import external_tanh
from device_link import sha


@triton.jit
def native_primitive(X,Y,N,BLOCK:tl.constexpr):
    offsets=tl.program_id(0)*BLOCK+tl.arange(0,BLOCK)
    x=tl.load(X+offsets,offsets<N,other=0)
    y=libdevice.tanh(x)
    tl.store(Y+offsets,y,offsets<N)


@triton.jit
def external_primitive(X,Y,N,BLOCK:tl.constexpr):
    offsets=tl.program_id(0)*BLOCK+tl.arange(0,BLOCK)
    x=tl.load(X+offsets,offsets<N,other=0)
    y=external_tanh(x)
    tl.store(Y+offsets,y,offsets<N)


def validate_primitives(linker,full_asm,directory,lto=False):
    import torch
    from triton.compiler import ASTSource
    from triton.compiler.compiler import make_backend
    target=triton.runtime.driver.active.get_current_target()
    body=triton.compile(ASTSource(external_primitive,{'X':'*fp32','Y':'*fp32','N':'i32','BLOCK':'constexpr'},
                                 {'BLOCK':256},{(0,):[['tt.divisibility',16]],(1,):[['tt.divisibility',16]]}),
                        target=target,options=dict(num_warps=4,enable_fp_fusion=False,enable_reflect_ftz=True,ptx_options='--compile-only'))
    (directory/'primitive-body.o').write_bytes(body.asm['cubin'])
    bits=torch.randint(0,2**32,(2**20,),generator=torch.Generator().manual_seed(20261029),dtype=torch.int64)
    centers=(0,1,0x007fffff,0x00800000,0x3f19999a,0x41102cb4,0x7f7fffff,0x7f800000,0x7fc00000,0x7fffffff)
    special=torch.tensor([((c+d)&0x7fffffff)|sign for c in centers for d in range(-128,129) for sign in (0,0x80000000)],dtype=torch.int64)
    values=torch.cat((bits,special)).to(torch.int32).view(torch.float32).cuda()
    dense=torch.linspace(-.6,.6,1_000_001,device='cuda',dtype=torch.float32)
    values=torch.cat((values,dense))
    masks={'general':torch.ones_like(values,dtype=torch.bool),
           'small':values.abs()<0.6,'large':(values.abs()>=0.6)&torch.isfinite(values)}
    result=dict(status='running',cases=[])
    if lto:
        from nvvm_bridge import NVVM,adapt_ir
        ir=adapt_ir(body.asm['llir'])
        lto_body,_=NVVM().compile(ir,['-arch=compute_89','-gen-lto','-fma=0'])
    for mode,mask in masks.items():
        x=values[mask].contiguous();expected=torch.empty_like(x);actual=torch.empty_like(x)
        if lto:
            function,_=linker.compile_lto_function(mode,full_asm)
            image,link_record=linker.link_lto(lto_body,function['object'],kernel=body.metadata.name)
        else:
            function,_=linker.compile_function(mode,full_asm)
            image,link_record=linker.link(body.asm['cubin'],function['object'])
        binary=copy.copy(body);binary.kernel=image;binary.asm=dict(body.asm,cubin=image);binary.hash=sha(image)
        binary.metadata=body.metadata._replace(hash=binary.hash)
        binary.packed_metadata=make_backend(target).pack_metadata(binary.metadata)
        binary.module,binary.function,binary._run=None,None,None
        binary._init_handles()
        grid=(triton.cdiv(x.numel(),256),1,1)
        native_primitive[grid](x,expected,x.numel(),256,enable_fp_fusion=False,enable_reflect_ftz=True)
        binary[grid](x,actual,x.numel(),256)
        torch.cuda.synchronize()
        neq=actual.view(torch.int32)!=expected.view(torch.int32)
        mismatches=int(neq.sum())
        row=dict(mode=mode,elements=x.numel(),bit_differences=mismatches,
                 nan_inputs=int(torch.isnan(x).sum()),inf_inputs=int(torch.isinf(x).sum()),
                 subnormal_inputs=int(((x.abs()<torch.finfo(torch.float32).tiny)&(x!=0)).sum()),
                 signed_zero_inputs=int((x==0).sum()),link=link_record,n_regs=binary.n_regs,n_spills=binary.n_spills)
        if mismatches:
            rows=torch.nonzero(neq).flatten()[:16]
            row['first_mismatches']=[dict(x=int(a),native=int(b),linked=int(c)) for a,b,c in
                                     zip(x.view(torch.int32)[rows].cpu(),expected.view(torch.int32)[rows].cpu(),actual.view(torch.int32)[rows].cpu())]
        result['cases'].append(row)
        (directory/('primitive-lto-results.json' if lto else 'primitive-results.json')).write_text(json.dumps(result,indent=2)+'\n')
        (directory/('primitive-'+('lto-' if lto else '')+mode+'.cubin')).write_bytes(image)
        assert mismatches==0,row
    result['status']='passed'
    (directory/('primitive-lto-results.json' if lto else 'primitive-results.json')).write_text(json.dumps(result,indent=2)+'\n')
    return result
