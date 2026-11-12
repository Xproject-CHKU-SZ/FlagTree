"""Check the width sweep, control-flow probes and LLIR/SelectionDAG diagnostics."""
import base64
import hashlib
import json
from pathlib import Path
import re
import subprocess
import sys
import tempfile
root=Path(__file__).resolve().parent
work=root.parents[1]
sys.path.insert(0,str(work/'2026-11-08/f06-exp-disasm'))
from disassemble import decode
llvm=work/'2026-11-02/p800-transfer/reference/triton/backends/_xtdk_llvm19/lib/libLLVM.so.19.1'
def records(file, label):
    return [json.loads(row[len(label)+1:]) for row in (root/file).read_text().splitlines() if row.startswith(label+' ')]
single=records('eager-same-address.log','PROBE')
assert single[0]=={'pcs':[],'changed':0,'nonfinite':0}
one=[r for r in single if len(r['pcs'])==1]
assert len(one)==len({r['pcs'][0] for r in one})==50
active,=records('eager-same-address.log','ACTIVE')
assert [int(r['pcs'][0],16) for r in one if r['changed']]==[s[0] for s in active]
assert records('eager-sites-verified.log','ACTIVE')==[active]
wlog='widths-paired.log'
results,=records(wlog,'RESULT')
assert len(records(wlog,'CHECK'))==25 and all(len(s)==11 for s in results['samples'].values())
counts={}
with tempfile.TemporaryDirectory() as tmp:
    for row in records(wlog,'EMITTED'):
        mode=row['mode']
        if mode=='baseline':continue
        width=int(mode.split('x')[1]) if 'x' in mode else 4
        obj=Path(tmp)/'test.o';blob=base64.b64decode(row['data'])
        assert hashlib.sha256(blob).hexdigest()==row['sha256']
        obj.write_bytes(blob)
        binfile=Path(tmp)/'code.bin'
        subprocess.run(['objcopy','-I','elf32-little','-O','binary','-j','.text._tle_row_softmax_expissue_'+mode,obj,binfile],check=True)
        seq=[v[2] for v in decode(binfile.read_bytes(),llvm)]
        hits=0
        for i in range(width,len(seq)-2*width+1):
            run=seq[i-width:i+2*width]
            if [op.split()[0] for op in run]!=['loadli.w']*width+['exp.f.rn']*width+['storeli.w']*width:continue
            groups=[re.fullmatch(r'exp\.f\.rn (r\d+), \1',op) for op in run[width:2*width]]
            assert all(groups) and len({g[1] for g in groups})==width
            hits+=1
        assert hits*width==512,(mode,hits)
        counts[mode]=hits
assert len(counts)==5
evidence={'shape':[2048,2048],'dtype':'float32','image':'zhaoweiming/f06-p800:f06-repair-20261109-v6',
          'eager':{'geometry':'12 clusters x 64 cores','probed_sites':len(one),
                   'observed_exp_results':[{'pc':hex(s[0]),'operand':s[3]} for s in active],
                   'replay':'identical input/output addresses and bitwise-identical unaltered result',
                   'log':'eager-same-address.log'},
          'lowering':{'input':'actual-ir.log','minimal_input':'one_vector.ll',
                      'first_scalar_stage':'LLVM 19.1.7 SelectionDAG vector operation legalization',
                      'before_after':'one_vector.dag.txt','selected_machine_ir':'one_vector.isel.mir',
                      'reproduce':'llc -mtriple=xpu3-baidu-none-gnu -mcpu=xpu3 -O2 -debug-only=isel,legalize-types,legalizedag -stop-after=finalize-isel one_vector.ll -o one_vector.mir'},
          'paired_complete_kernel_us':results['medians'],'verified_exp_groups_in_object':counts,
          'samples_us':results['samples'],'timing':'single P800, 8 calls per graph replay, shuffled 11 measured rounds; LM staging 64 FP32 values'}
(root/'evidence.json').write_text(json.dumps(evidence,indent=2,allow_nan=False)+'\n')
print(results['medians'],counts)
