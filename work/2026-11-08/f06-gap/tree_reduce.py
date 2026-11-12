"""Diagnostic KL3 lowering for a verified 16-lane, single-vector scalar fold."""
import re

def change(ir, mode, stats):
    lines=ir.splitlines()
    extract=re.compile(r'^  (%\w+) = extractelement <16 x float> (%\w+), i64 (\d+),?')
    maximum=re.compile(r'^  (%\w+) = call float @llvm.maxnum.f32\(float (%\w+), float (%\w+)\)')
    add=re.compile(r'^  (%\w+) = fadd (?:reassoc )?float (%\w+), (%\w+)')
    hits={'max':0,'sum':0}
    for pos,line in enumerate(lines):
        start=extract.match(line)
        if not start or start[3]!='0' or pos+30>=len(lines):continue
        src,acc=start[2],start[1];kind=None
        for lane in range(1,16):
            ext=extract.match(lines[pos+2*lane-1]);fold_line=lines[pos+2*lane]
            op=maximum.match(fold_line) or add.match(fold_line)
            if not ext or not op or ext[2]!=src or int(ext[3])!=lane or {acc,ext[1]}!={op[2],op[3]}:break
            op_kind='sum' if add.match(fold_line) else 'max'
            if kind and op_kind!=kind:break
            kind=op_kind;acc=op[1]
        else:
            if 'both' not in mode and 'tree_'+kind not in mode:continue
            hits[kind]+=1
            prefix='%diag'+kind+str(hits[kind])
            op='vmax.f.mz' if kind=='max' else 'vadd.f.mz.rn'
            body=[];value=src;vt='<16 x float>'
            for step in (256,128,64,32):
                shifted=prefix+'s'+str(step);result=prefix+'r'+str(step)
                body.append(f'  {shifted} = call {vt} asm "vsrl.p $0, $1, $2", "=v,r,v"(i32 {step}, {vt} {value})')
                body.append(f'  {result} = call {vt} asm "{op} $0{{mr1}}, $1, $2", "=v,v,v"({vt} {value}, {vt} {shifted})')
                value=result
            body.append(f'  {acc} = extractelement {vt} {value}, i64 0')
            lines[pos+30]='\n'.join(body)
    if not any(hits.values()):raise RuntimeError('missing fold for '+mode)
    stats['trees']=hits
    return '\n'.join(lines)+'\n'
