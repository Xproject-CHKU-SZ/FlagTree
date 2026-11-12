"""Diagnostic LLVM19 lowering for the natural-exp stage of the two KL3 B2 kernels.

This SDK represents tl.exp FP32 by llvm.exp2.v16f32 at this boundary. Do not
apply this transform to a generic exp2 or any other target.
"""
import re

VECTOR = '<16 x float>'
EXP = re.compile(r'^  (%\w+) = (?:tail )?call <16 x float> @llvm\.exp2\.v16f32\(<16 x float> (%\w+)\)(?:, !dbg !\d+)?$')
RESULTS = '{ float, float, float, float }'


def four_registers(result, value, serial):
    lines = []
    vector = 'poison'
    for first in range(0, 16, 4):
        tag = f'%eg{serial}_{first}'
        args = []
        for j in range(4):
            name = f'{tag}_x{j}'
            lines.append(f'  {name} = extractelement {VECTOR} {value}, i32 {first+j}')
            args.append('float ' + name)
        # The input/output ties make the four independently live registers
        # explicit; the assembler must emit the four exp instructions in order.
        body = r'\0A'.join(f'exp.f.rn ${j}, ${j}' for j in range(4))
        lines.append(f'  {tag} = call {RESULTS} asm "{body}", "=r,=r,=r,=r,0,1,2,3"({", ".join(args)})')
        for j in range(4):
            item = f'{tag}_y{j}'
            out = result if first+j == 15 else f'{tag}_v{j}'
            lines.append(f'  {item} = extractvalue {RESULTS} {tag}, {j}')
            lines.append(f'  {out} = insertelement {VECTOR} {vector}, float {item}, i32 {first+j}')
            vector = out
    return lines


def local_memory(calls, serial, width=4):
    tag = f'%eglm{serial}'
    lines = []
    ptrs = []
    for index, (_, value) in enumerate(calls):
        ptr = f'{tag}_p{index}'
        ptrs.append(ptr)
        lines.append(f'  {ptr} = getelementptr {VECTOR}, ptr %egscratch, i32 {index}')
        lines.append(f'  store volatile {VECTOR} {value}, ptr {ptr}, align 64')
    body = ['mfence { lm }']
    for first in range(0, len(calls)*16, width):
        offsets = [4*(first+j) for j in range(width)]
        body.extend(f'loadli.w ${j}, {off}(${width})' for j, off in enumerate(offsets))
        body.extend(f'exp.f.rn ${j}, ${j}' for j in range(width))
        body.extend(f'storeli.w ${j}, {off}(${width})' for j, off in enumerate(offsets))
    body.append('mfence { lm }')
    joined = r'\0A'.join(body)
    registers = 'i32' if width == 1 else '{ ' + ', '.join(['i32']*width) + ' }'
    constraints = ','.join(['=&r']*width + ['r', '~{memory}'])
    lines.append(f'  {tag}_regs = call {registers} asm sideeffect "{joined}", "{constraints}"(ptr %egscratch)')
    for (result, _), ptr in zip(calls, ptrs):
        lines.append(f'  {result} = load volatile {VECTOR}, ptr {ptr}, align 64')
    return lines


def lower(ir, variant):
    if variant == 'baseline':
        return ir, 0
    base, _, width_string = variant.partition('x')
    width = int(width_string) if width_string else 4
    assert base in ('reg4', 'lm16', 'lm64', 'lm128', 'lm256') and width in (1, 2, 4, 8, 16)
    assert not width_string or base == 'lm64'
    assert 'xpu3-baidu-none-gnu' in ir
    lines = ir.splitlines()
    out = []
    count = 0
    index = 0
    batch = int(base[2:]) // 16 if variant.startswith('lm') else 1
    while index < len(lines):
        match = EXP.fullmatch(lines[index])
        if not match:
            out.append(lines[index])
            index += 1
            continue
        calls = [match.groups()]
        index += 1
        while len(calls) < batch and index < len(lines):
            nxt = EXP.fullmatch(lines[index])
            if not nxt or nxt[2] in {r for r, _ in calls}:
                break
            calls.append(nxt.groups())
            index += 1
        if variant == 'reg4':
            out.extend(four_registers(*calls[0], count))
        else:
            out.extend(local_memory(calls, count, width))
        count += len(calls)
    assert count, 'expected a vector exponential in the compiled B2 kernel'
    if variant.startswith('lm'):
        entry, = [i for i,l in enumerate(out) if l.startswith('define ') and 'xpu_kernel' in l]
        pos = entry+1
        if out[pos].endswith(':'):
            pos += 1
        out.insert(pos, f'  %egscratch = alloca [{batch} x {VECTOR}], align 64')
    return '\n'.join(out)+'\n', count
