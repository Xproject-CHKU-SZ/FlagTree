"""Prepare validated single-word substitutions for a private copy of the B2 binary."""
import base64
from collections import Counter
import hashlib
import json
from pathlib import Path
import re
import sys
import zlib
from trace_spills import trace

base = Path(__file__).resolve().parent
work = base.parents[1]
sys.path.insert(0,str(work/'2026-11-08/f06-exp-disasm'))
from disassemble import decode
llvm = work/'2026-11-02/p800-transfer/reference/triton/backends/_xtdk_llvm19/lib/libLLVM.so.19.1'
records = dict((r['case'],r) for l in (base/'tle-verified.log').read_text().splitlines() if l.startswith('CODE ') and (r:=json.loads(l[5:])))

def patches(case):
    path=base/(case+'.s')
    data=trace(path)
    text=path.read_text().splitlines()
    binary=zlib.decompress(base64.b64decode(records[case]['linked']))
    decoded={pc:(word,op) for pc,word,op in decode(binary,llvm)}
    pc=0xe4-4; pcs={}
    for i,line in enumerate(text):
        if line.startswith('.Lfunc_end'): break
        ins=line.split('#')[0].strip()
        if not ins or not line.startswith('\t') or ins.startswith('.'):continue
        pc+=4;pcs[i]=pc
        assert decoded[pc][1].split()[0]==ins.split()[0],(case,i,ins,decoded[pc])
    changes={}
    def add(group,pc,word,expected):
        old=decoded[pc]
        actual=decode(bytes.fromhex(word),llvm)[0][2]
        assert actual==expected,(hex(pc),word,actual,expected)
        changes.setdefault(group,[]).append([pc,old[0],word,expected])
    def nop(group,pc):
        add(group,pc,'00000000','nop')
    if case=='fused_full':
        for item in data['adds']:
            src=int(item['matrix_vr'][2:]);dst=int(item['dest'][2:])
            word=(0x02003012 | dst<<7 | src<<20).to_bytes(4,'little').hex()
            add('forward',int(item['pc'],16),word,f'vadd.s.mz vr{dst}{{mr1}}, zero, vr{src}')
        for i in data['inputs']:
            if i['role']=='bias':nop('strip_bias_lm',int(i['pc'],16))
        assert decoded[0x2b0][1].startswith('l_gm2lm') and decoded[0x2b8][1]=='mfence { lm }'
        nop('strip_bias_dma',0x2b0);nop('strip_bias_dma',0x2b8)
    role='A+bias' if case=='fused_full' else 'matrix'
    events=[e for e in data['events'] if e['role']==role]
    addr_updates=[];excluded=set()
    matrix_base=-2304 if case.endswith('full') else -2048
    for e in events:
        if e['direction']!='load':continue
        li=e['line']-1; reg=re.search(r'\((r\d+)\)',text[li])[1]
        def defines(i):
            return re.match(r'^\s*[a-z][\w.]* '+reg+'(?:,|$)',text[i]) and not text[i].strip().startswith(('store','blt','ble','beq','bneq'))
        before=next(i for i in reversed(range(li)) if defines(i))
        end=next(i for i in range(li+1,len(text)) if defines(i))
        assert text[before].strip()==f"addli {reg}, r30, {e['fp_offset']}"
        uses=[i for i in range(before+1,end+1) if i in pcs and re.search(r'\b'+reg+r'\b',text[i]) and (i!=end or len(re.findall(r'\b'+reg+r'\b',text[i]))>1)]
        if uses!=[li]:
            excluded.add(e['chunk'])
        addr_updates.append((e,pcs[before],reg))
    for e,pc,reg in addr_updates:
        if e['chunk'] in excluded:continue
        addr=matrix_base+64*e['chunk']
        immediate=addr&0x7fff
        word=(0x1f | int(reg[1:])<<7 | (immediate&7)<<12 | 30<<15 | (immediate>>3)<<20).to_bytes(4,'little').hex()
        add('redirect',pc,word,f'addli {reg}, r30, {addr}')
    for e in events:
        if e['direction']=='store' and e['chunk'] not in excluded:
            nop('strip_spill_write',int(e['pc'],16))
    print(case,'shared pointer excluded chunks',sorted(excluded),{k:len(v) for k,v in changes.items()})
    return dict(sha=records[case]['sha'],patch=changes,excluded_chunks=sorted(excluded))

if __name__=='__main__':
    controls={case:patches(case) for case in ('fused_full','preadded_center')}
    (base/'controls.json').write_text(json.dumps(controls,indent=2)+'\n')
