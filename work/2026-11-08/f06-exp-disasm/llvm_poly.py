"""Experimental KL3 LLVM lowering of natural exponent on the nonpositive Softmax domain."""
import re
import struct

def helper(lanes):
    def typ(scalar):
        return scalar if lanes == 1 else f'<{lanes} x {scalar}>'
    def constant(dtype, val):
        if dtype=='float':
            f32=struct.unpack('f',struct.pack('f',val))[0]
            val='0x'+struct.pack('>d',f32).hex().upper()
        return str(val) if lanes==1 else '<'+', '.join([dtype+' '+str(val)]*lanes)+'>'
    ft,it=typ('float'),typ('i32')
    f=lambda x:constant('float',x)
    i=lambda x:constant('i32',x)
    ops=[f'define internal {ft} @f06_poly{lanes}({ft} %x) alwaysinline {{',
         f'%lo = fcmp olt {ft} %x, {f(-104)}',
         f'%z = select {typ("i1")} %lo, {ft} {f(-104)}, {ft} %x',
         f'%y = fmul {ft} %z, {f(1.4426950408889634)}',
         f'%biased = fadd {ft} %y, {f(12582912.)}',
         f'%k = fsub {ft} %biased, {f(12582912.)}',
         f'%km = fmul {ft} %k, {f(0.693359375)}',
         f'%kh = fsub {ft} %z, %km',
         f'%kl = fmul {ft} %k, {f(-0.00021219444005469058)}',
         f'%r = fsub {ft} %kh, %kl']
    prev=f(1/720)
    for idx,coeff in enumerate((1/120,1/24,1/6,.5,1.,1.)):
        ops.extend([f'%m{idx} = fmul {ft} {prev}, %r',f'%p{idx} = fadd {ft} %m{idx}, {f(coeff)}'])
        prev=f'%p{idx}'
    # Biased float bits contain k in their low bits. Only the low 9 are
    # observable after the shift, so the zero low bits of 0x4b400000 drop out.
    ops.extend([f'%kb = bitcast {ft} %biased to {it}',
                f'%be = add {it} %kb, {i(253)}',f'%bits = shl {it} %be, {i(23)}',
                f'%scale = bitcast {it} %bits to {ft}',
                f'%scaled = fmul {ft} {prev}, %scale',
                f'%out = fmul {ft} %scaled, {f(2.**-126)}',f'ret {ft} %out','}'])
    return '\n'.join(ops)

def lower(ir):
    if '_maxhw' in ir:
        return ir.replace('call float @llvm.maxnum.f32(',
                          'call float asm "max.f $0, $1, $2", "=r,r,r"(')
    if '_vpoly' not in ir:return ir
    for lanes,target in ((16,'v16f32'),(1,'f32')):
        updated, count = re.subn(r'(\bcall\s+(?:<16 x float>|float)\s+)@llvm\.exp2\.'+target+r'\(',
                                 r'\1@f06_poly'+str(lanes)+'(',ir)
        if count:ir=updated+'\n'+helper(lanes)+'\n'
    return ir

def install(toolchain):
    for name in ('llir_to_asm','llir_to_object'):
        original=getattr(toolchain,name)
        def wrapper(ir,*args,_original=original,**kwargs):
            return _original(lower(ir),*args,**kwargs)
        setattr(toolchain,name,wrapper)
