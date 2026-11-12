"""Raw KL3 max must agree bit-for-bit with the ordered select it replaces."""
import json,struct,math,torch,triton
import triton.language as tl
@triton.jit
def edge(x,y,o,N:tl.constexpr):
    i=tl.arange(0,N)
    lhs=tl.load(x+i).to(tl.float32,bitcast=True);rhs=tl.load(y+i).to(tl.float32,bitcast=True)
    m=tl.where(lhs>rhs,lhs,rhs)
    tl.store(o+i,m.to(tl.int32,bitcast=True))
bits=[0x80000000,0,0xff800000,0x7f800000,0xffc12345,0x7fc54321,0x7f800001,0x7fc00000,0x7f7fffff,0xff7fffff,
      1,2,0x80000001,0x807fffff,0x00800000,0x3f800000,0xc1200000]
def decode(i):
    return struct.unpack('<f',struct.pack('<I',i))[0]
pairs=[(a,b) for a in bits for b in bits]
pairs += [(0,0)]*(512-len(pairs))
t=lambda v: torch.tensor([i if i<2**31 else i-2**32 for i in v],dtype=torch.int32).cuda()
x=t([a for a,b in pairs]);y=t([b for a,b in pairs]);o=torch.empty_like(x)
binary=edge[(1,)](x,y,o,512,num_warps=4,is_sdnn=False)
bad=[]
for (a,b),v in zip(pairs,o.cpu().tolist()):
    want=a if decode(a)>decode(b) else b
    if want!=v%2**32:bad.append([hex(a),hex(b),hex(want),hex(v%2**32)])
print('EDGE',json.dumps(dict(checked=len(bits)**2,bad=bad,kernel=binary.hash)))
