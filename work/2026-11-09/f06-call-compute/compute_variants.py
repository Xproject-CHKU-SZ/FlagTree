"""B2-only ablations of the verified v8 IR. Keep GM accesses and exp unchanged."""
import re

FENCE='call void @llvm.xpu.mfence.v2(i32 7)'
SYNC='call void @llvm.xpu.csr_set_sync_group(i32 65535)'
V='<16 x float>'

def name_values(ir):
    def entry(m):
        last=re.findall(r'%(\d+)',m[0])[-1]
        return m[0]+'v'+str(int(last)+1)+':\n'
    ir=re.sub(r'^define .*?\{\n',entry,ir,count=1,flags=re.M)
    ir=re.sub(r'^(\d+):',r'v\1:',ir,flags=re.M)
    return re.sub(r'%(\d+)\b',r'%v\1',ir)

def local_tree(ir):
    lines=ir.splitlines()
    success=0
    for j,line in enumerate(lines):
        if 'asm "vsrl.p ' not in line:continue
        k=j-1
        ismax='asm "vmax.f.mz ' in lines[k]
        match='asm "vmax.f.mz ' if ismax else '= fadd <16 x float>'
        while k>=0 and match in lines[k]:k-=1
        first=k+1
        if j-first<4:continue
        group=lines[first:j]
        names=[];operands=[]
        for row in group:
            ids=re.findall(r'%v\d+\b',row)
            assert len(ids)==3 and (not names or ids[1]==names[-1])
            if not names:operands.append(ids[1])
            names.append(ids[0]);operands.append(ids[2])
        assert len(group) in (7,31)
        stage=operands;steps=[]
        while len(stage)>1:
            next_stage=[]
            for a,b in zip(stage[::2],stage[1::2]):
                i=len(steps);old=re.findall(r'%v\d+\b',group[i])
                replace=dict(zip(old,[names[i],a,b]))
                steps.append(re.sub(r'%v\d+\b',lambda m:replace[m[0]],group[i]));next_stage.append(names[i])
            stage=next_stage
        assert stage==[names[-1]]
        lines[first:j]=steps;success+=1
    assert success==2
    return '\n'.join(lines)+'\n'

def all_read(ir, packet=False):
    # Inside a grid iteration the max and sum use disjoint SM slots. The next
    # collective's first barrier closes every reader's lifetime before reuse.
    expr=r'  br i1 %v\d+, label %(v\d+), label %(v\d+)[^\n]*\n\n\1:[^\n]*\n(.*?)  store float (%v\d+), ptr addrspace\(2\) (%v\d+),[^\n]*\n  br label %\2[^\n]*\n\n\2:[^\n]*\n  call void @llvm.xpu.mfence.v2\(i32 7\)[^\n]*\n  call void @llvm.xpu.csr_set_sync_group\(i32 65535\)[^\n]*\n  (%v\d+) = load float, ptr addrspace\(2\) \5,[^\n]*\n'
    # Match only a straight-line leader block; never eat another branch.
    expr=expr.replace('(.*?)','((?:  (?!br |store )[^\n]*\n)+?)')
    def emit(m):
        leader,merge,body,value,base,loaded=m.groups()
        assert body.count('load float, ptr addrspace(2)') in (4,16)
        if packet:
            width=body.count('load float, ptr addrspace(2)')
            mx='asm "max.f ' in body
            combine='vmax.f.mz' if mx else 'vadd.f.mz.rn'
            prefix=f'%sm{leader}'
            address=base
            head=''
            if width==4:
                # 16 row partials are published in one aligned packet. Select
                # this core's four-lane group and reduce exactly those lanes.
                head=f'  {prefix}addr = ptrtoint ptr addrspace(2) {base} to i32\n'
                head+=f'  {prefix}aligned = and i32 {prefix}addr, -64\n'
                head+=f'  {prefix}offset = and i32 {prefix}addr, 48\n'
                head+=f'  {prefix}bits = shl i32 {prefix}offset, 3\n'
                head+=f'  {prefix}ptr = inttoptr i32 {prefix}aligned to ptr addrspace(2)\n'
                address=prefix+'ptr'
            body=head+f'  {prefix} = call {V} asm sideeffect "vloads_mask16.mz $0{{mr1}}, 0($1)", "=v,r,~{{memory}}"(ptr addrspace(2) {address})\n'
            acc=prefix
            if width==4:
                body+=f'  {prefix}row = call {V} asm "vsrl.p $0, $1, $2", "=v,r,v"(i32 {prefix}bits, {V} {acc})\n'
                acc=prefix+'row'
            for bits in ([64,32] if width==4 else [256,128,64,32]):
                shr=f'{prefix}shift{bits}';nxt=f'{prefix}acc{bits}'
                body+=f'  {shr} = call {V} asm "vsrl.p $0, $1, $2", "=v,r,v"(i32 {bits}, {V} {acc})\n'
                body+=f'  {nxt} = call {V} asm "{combine} $0{{mr1}}, $1, $2", "=v,v,v"({V} {acc}, {V} {shr})\n'
                acc=nxt
            body+=f'  {loaded} = extractelement {V} {acc}, i64 0\n'
        else:
            body=body.replace(f'  {value} =',f'  {loaded} =')
        return f'  br label %{leader}\n\n{leader}:\n{body}  br label %{merge}\n\n{merge}:\n'
    if packet:
        # Only these two disjoint compiler-allocated row-partial arrays
        # are live in SM. Move the second base 16 bytes earlier for alignment.
        alignment=('32784','32768') if '@_tle_row_softmax(' in ir else ('4112','4096')
        assert 'i32 '+alignment[0]+')' in ir
        ir=ir.replace('i32 '+alignment[0]+')','i32 '+alignment[1]+')')
    ir,n=re.subn(expr,emit,ir)
    assert n==2,n
    return ir

def remove_init(ir):
    pat=r'  store float 0\.000000e\+00, ptr addrspace\(2\) %v\d+,[^\n]*\n  '+r'(?:tail )?'+re.escape(FENCE)+r'[^\n]*\n  (?:tail )?'+re.escape(SYNC)+r'[^\n]*\n'
    ir,n=re.subn(pat,'',ir);assert n==2
    return ir

def exp_memory(ir, paired):
    def replace(m):
        program=m[1].split(r"\0A")
        assert len(program)==194 and program[0]==program[-1]=='mfence { lm }'
        op=[]
        for row in program:
            match=re.fullmatch(r'(loadli|storeli)\.w \$(\d+), (\d+)\(\$16\)',row)
            if paired and match:
                lane,offset=int(match[2]),int(match[3])
                if lane%2==0:
                    operation='load.d' if match[1]=='loadli' else 'store.d'
                    op.append(f'{operation} r[{4+lane}:{5+lane}], {offset}($16)')
            else:
                op.append(row)
        constraints=','.join(f'=&{{r{i}}}' for i in range(4,20))+',r,~{r3},~{r20},~{memory}'
        return 'asm sideeffect "'+r"\0A".join(op)+'", "'+constraints+'"'
    pattern=r'asm sideeffect "(mfence \{ lm \}[^"\n]*exp\.f\.rn[^"\n]*)", "=&r,[^"]+"'
    ir,n=re.subn(pattern,replace,ir);assert n in (2,8)
    return ir

def compact_exp(ir, width):
    # One 64-float stage; only the scratch sweep is looped. Make both
    # induction registers and every f32 temporary explicit early clobbers.
    def emit(m):
        dest,pointer,tail=m.group(1,2,3)
        cursor=width;end=width+1;base=width+2
        label='.Lrcost'+dest[1:]
        body=['mfence { lm }',f'addli ${cursor}, ${base}, 0',
              f'addli ${end}, ${base}, 256',label+':']
        body.extend(f'loadli.w ${i}, {4*i}(${cursor})' for i in range(width))
        body.extend(f'exp.f.rn ${i}, ${i}' for i in range(width))
        body.extend(f'storeli.w ${i}, {4*i}(${cursor})' for i in range(width))
        body.extend([f'addli ${cursor}, ${cursor}, {4*width}',f'bneq ${cursor}, ${end}, {label}','mfence { lm }'])
        outputs=', '.join(['i32']*(width+2));cons='=&r,'*(width+2)+'r,~{memory}'
        return f'  {dest} = call {{ {outputs} }} asm sideeffect "'+r"\0A".join(body)+f'", "{cons}"(ptr nonnull {pointer}){tail}'
    pat=r'^  (%v\d+) = call \{ i32,[^}]+\} asm sideeffect "mfence \{ lm \}[^"\n]*exp\.f\.rn[^"\n]*", "=&r,[^"]+"\(ptr nonnull (%v\d+)\)([^\n]*)$'
    ir,n=re.subn(pat,emit,ir,flags=re.M);assert n in (2,8)
    return ir

def rewrite(original,mode):
    ir=name_values(original)
    if mode.startswith("loop"):
        ir=compact_exp(ir,int(mode[4:]))
    if mode in ('fixed_words','paired_lm','pair_packet'):
        ir=exp_memory(ir,mode!='fixed_words')
    if mode in ('tree','combined','tree_replica','tree_packet'):ir=local_tree(ir)
    if mode in ('replica','combined','tree_replica','sm_packet','tree_packet','pair_packet','replica_init'):ir=all_read(ir,mode in ('sm_packet','tree_packet','pair_packet'))
    if mode in ('init','combined','replica_init'):ir=remove_init(ir)
    if mode in ('fence','combined') and '@_tle_row_softmax(' in ir:
        pat=r'(  %v69 = alloca \[512 x float\],[^\n]*\n)  call void @llvm.xpu.mfence.v2\(i32 1\)[^\n]*\n'
        ir,n=re.subn(pat,r'\1',ir);assert n==1
    return ir
