"""Controlled rewrite of the archived B2 FP32 LLVM input, for live-range and LM scheduling experiments."""
from pathlib import Path
import re
import sys

VECTOR = "<16 x float>"

def rewrite(original, mode):
    groups_per_sweep = {"early_max": 1, "readd": 1, "add": 1, "add_exp": 1, "sweep8": 2, "sweep16": 4, "sweep32": 8}[mode]
    exp_in_row = mode in {"add_exp","sweep8","sweep16","sweep32"}
    materialize = mode not in {"early_max","readd"}
    lines = original.splitlines()
    definitions = {}
    for i, line in enumerate(lines):
        match = re.match(r"  %(\d+) = ", line)
        if match:
            definitions[int(match[1])] = i
    assert "alloca [512 x float]" in lines[definitions[68]]
    assert "alloca [512 x float]" in lines[definitions[69]]
    result = []

    def take(n):
        return lines[definitions[n]]

    def rowptr(i):
        return "%68" if i == 0 else f"%{76+2*i}"

    def load(name, ptr):
        return f"  %{name} = load volatile {VECTOR}, ptr {ptr}, align 64"

    def store(value, ptr):
        return f"  store volatile {VECTOR} %{value}, ptr {ptr}, align 64"

    def add_stage():
        for i in range(32):
            if i:
                result.extend([take(76+2*i), take(139+2*i)])
            for n in [77+2*i, 140+2*i]:
                result.append(take(n).replace("= load ", "= load volatile "))
            assert f"fadd {VECTOR} %{77+2*i}, %{140+2*i}" in take(203+i)
            result.append(take(203+i))
            if materialize:
                result.append(store(203+i, rowptr(i)))
            if i:
                combine = take(235+i).replace('asm "', 'asm sideeffect "')
                result.append(combine.replace('"=v,v,v"', '"=v,v,v,~{memory}"'))
        result.append(take(235))

    def sweep(first):
        ins = take(341+first*5)
        if not exp_in_row:
            return ins
        ins = ins.replace("(ptr nonnull %20)", f"(ptr nonnull {rowptr(first*4)})")
        if groups_per_sweep==1:
            return ins
        template = ins.split('asm sideeffect "', 1)[1].split('", "', 1)[0]
        instructions = template.split(r"\0A")
        assert instructions[0]==instructions[-1]=="mfence { lm }"
        body=r"\0A".join(instructions[1:-1])
        blocks=[]
        for part in range(groups_per_sweep):
            block,count=re.subn(r"(\d+)\(\$16\)", lambda m:f"{int(m[1])+256*part}($16)",body)
            assert count==128
            blocks.append(block)
        return ins.replace(template,r"\0A".join([instructions[0],*blocks,instructions[-1]]))

    def exp_stage():
        for group in range(0,8,groups_per_sweep):
            chunks=range(group*4,(group+groups_per_sweep)*4)
            for i in chunks:
                if mode=="early_max":
                    result.append(take(309+i))
                else:
                    if mode=="readd":
                        bptr="%69" if i==0 else f"%{139+2*i}"
                        result.extend([load(f"matrix{i}",rowptr(i)),load(f"bias{i}",bptr),
                                       f"  %sum{i} = fadd {VECTOR} %matrix{i}, %bias{i}"])
                    else:
                        result.append(load(f"sum{i}",rowptr(i)))
                    result.append(take(309+i).replace(f"{VECTOR} %{203+i})",f"{VECTOR} %sum{i})"))
                dest = rowptr(i) if exp_in_row else ["%20","%51","%52","%53"][i%4]
                result.append(store(309+i, dest))
            result.append(sweep(group))
            for i in chunks:
                n=342+(i//4)*5+i%4
                result.append(load(n,rowptr(i)) if exp_in_row else take(n))
                if i:
                    # Preserve the precise operand order of the original reduction.
                    result.append(take(380+i))

    for i, line in enumerate(lines):
        if i == definitions[77]:
            add_stage()
        elif i == definitions[309]:
            exp_stage()
        elif exp_in_row and i == definitions[454]:
            for j in range(32):
                operand=342+(j//4)*5+j%4
                result.extend([load(f"exp{j}",rowptr(j)),
                               take(454+j).replace(f"{VECTOR} %{operand})",f"{VECTOR} %exp{j})"),
                               store(454+j,rowptr(j))])
        elif definitions[77]<=i<=definitions[266] or definitions[309]<=i<=definitions[411]:
            continue
        elif exp_in_row and definitions[454]<=i<definitions[485]+33:
            continue
        else:
            result.append(line)
    # Reordering definitions requires symbolic SSA and block labels in LLVM text.
    text="\n".join(result)+"\n"
    text=re.sub(r'define [^\n]+\{\n',lambda m:m[0]+'bb17:\n',text,count=1)
    text=re.sub(r'(?m)^(\d+):',r'v\1:',text)
    text=text.replace('%17,','%bb17,').replace('%17\n','%bb17\n')
    return re.sub(r'%(\d+)\b',r'%v\1',text)

if __name__=="__main__":
    src=Path(sys.argv[1]).read_text()
    Path(sys.argv[3]).write_text(rewrite(src,sys.argv[2]))
