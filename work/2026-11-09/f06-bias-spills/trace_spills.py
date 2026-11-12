"""Trace the final LLVM19 assembly, retaining each value's physical LM address."""
from collections import Counter
import json
from pathlib import Path
import re

base = Path(__file__).resolve().parent

def trace(path):
    case = path.stem
    full = case.endswith('_full')
    matrix = (-256 if full else 0) - 2048
    bias = matrix - 2048
    regs, stored, ptr = {}, {}, {'r30': 0}
    events, inputs, adds = [], [], []
    binary = {}
    if case == 'fused_full':
        for line in (base.parent/'f06-grouped-exp/tle.kl3.asm').read_text().splitlines():
            pc, word, asm = line.split(None,2)
            binary[int(pc,16)] = asm.split()[0]
    pc = 0xe4 - 4
    scalar = Counter()
    def use(v, consumer, at):
        if v[2] is not None:
            events[v[2]]['uses'].append([consumer, hex(at)])
    for n, raw in enumerate(path.read_text().splitlines(),1):
        if raw.startswith('.Lfunc_end'): break
        s = raw.split('#')[0].strip()
        if not s or not raw.startswith('\t') or s.startswith('.'): continue
        pc += 4
        op = s.split()[0]
        if binary:
            assert binary[pc] == op, (n,hex(pc),s,binary[pc])
        if 'Folded ' in raw and '64-byte' not in raw:
            scalar[raw.split('# ')[-1].strip()] += 1
        vf = re.findall(r'\bvr\d+\b',s)
        if op.startswith(('vload_mask16','vstore_mask16')):
            m = re.search(r'(-?\d+)\((r\d+)\)',s)
            addr = ptr[m[2]] + int(m[1])
            is_read = op.startswith('vl')
            if 'Folded ' in raw:
                if is_read:
                    value = stored[addr]
                else:
                    value = regs[vf[0]]
                    stored[addr] = value
                    use(value,'spill',pc)
                evt = dict(role=value[0],chunk=value[1],direction='load' if is_read else 'store',
                           pc=hex(pc),line=n,fp_offset=addr,uses=[])
                events.append(evt)
                if is_read:
                    regs[vf[0]] = (*value[:2],len(events)-1)
            elif is_read:
                if matrix <= addr < matrix+2048:
                    role, index = 'matrix', (addr-matrix)//64
                elif bias <= addr < bias+2048 and case.startswith('fused'):
                    role, index = 'bias', (addr-bias)//64
                elif full and -256 <= addr < 0:
                    role, index = 'exp', stored[addr][1]
                else: raise ValueError((case,n,s,addr))
                regs[vf[0]] = (role,index,None)
                inputs.append(dict(role=role,chunk=index,pc=hex(pc),line=n,reg=vf[0]))
            else:
                value = regs[vf[0]]
                stored[addr] = value
                use(value,'exp scratch' if full and -256<=addr<0 else 'output',pc)
        elif op == 'vadd.s.mz':
            assert 'zero' in s
            regs[vf[0]] = regs[vf[1]]
        elif op in ('vadd.f.mz.rn', 'vmax.f.mz', 'vmul.f.mz.rn'):
            consumed=[regs[v] for v in vf[1:]]
            kinds={v[0] for v in consumed}
            if op == 'vmax.f.mz': new='max'
            elif op == 'vmul.f.mz.rn': new='output'
            elif len(consumed)==1: new='shift'
            elif kinds=={'bias','matrix'}:
                new='A+bias'
                assert consumed[0][1] == consumed[1][1]
                adds.append(dict(pc=hex(pc),line=n,dest=vf[0],
                                 matrix_vr=vf[1+next(i for i,v in enumerate(consumed) if v[0]=='matrix')]))
            else:
                assert kinds <= {'exp','sum'}, (case,n,kinds)
                new='sum'
            for v in consumed: use(v,new,pc)
            regs[vf[0]] = (new,consumed[0][1],None)
        elif op == 'vextracti.f':
            use(regs[vf[0]],'horizontal',pc)
        elif vf:
            raise ValueError((case,n,s))
        if op=='addli':
            m=re.fullmatch(r'addli (r\d+), (r\d+), (-?\d+)',s)
            if m and m[2] in ptr: ptr[m[1]]=ptr[m[2]]+int(m[3])
    by_role = {}
    consumers = Counter()
    for e in events:
        by_role.setdefault(e['role'],Counter())[e['direction']] +=1
        if e['direction']=='load':
            assert e['uses'],e
            consumers[(e['role'], '+'.join(sorted({p for p,pc in e['uses']})))] += 1
    return dict(vector_spills=by_role, reload_consumers={f'{a} to {b}':x for (a,b),x in consumers.items()},
                scalar_spills=scalar, inputs=inputs, adds=adds, events=events)

if __name__=='__main__':
    result={p.stem:trace(p) for p in sorted(base.glob('*.s'))}
    with (base/'spill-trace.json').open('w') as f: json.dump(result,f,indent=2); f.write('\n')
    for name,v in result.items():
        print(name,v['vector_spills'], v['reload_consumers'],v['scalar_spills'])
