"""Inspect the installed symbol matching the actual eager add trace, inside the personal image."""
import ctypes as C
import hashlib
import json
from pathlib import Path
import re
import subprocess
import sys
if sys.argv[1:]==['--decode']:
    sys.path.insert(0,'/repair/grouped-qa')
    from disassemble import decode
    paths=subprocess.check_output(['find','/opt','/usr/local','/root/miniconda/envs','-name','libLLVM*so*'],text=True).splitlines()
    for candidate in paths:
        if '15' not in Path(candidate).name and 'clang15' not in candidate:continue
        try:
            if decode(bytes.fromhex('8f801000'),Path(candidate))[0][2]=='exp.f.rn r1, r1':break
        except (OSError,AttributeError):continue
    else:raise RuntimeError('missing vendor decoder')
    rows=decode(sys.stdin.buffer.read(),Path(candidate)); print(json.dumps([(pc,instr) for pc,word,instr in rows]))
    sys.exit(0)
import torch
lib=Path(torch.__file__).resolve().parent.parent/'torch_xmlir/libxdnn_pytorch.so'
symbols=subprocess.check_output(['readelf','-sW',lib],text=True)
cand=[]
for l in symbols.splitlines():
    if '_bin_KERNEL_' not in l or 'tensor_calc_k_nk' not in l:continue
    name=l.split()[-1].split('_bin_KERNEL_')[-1]
    if name not in cand:cand.append(name)
demangled=subprocess.check_output(['c++filt',*cand],text=True).splitlines()
for name,pretty in zip(cand,demangled):
    if 'tensor_calc_k_nk<0, true, float, float, float, float>' in pretty:
        print('SYM',json.dumps([name,pretty]),flush=True)
        break
else:
    print('CANDIDATES',json.dumps(demangled[:20]));sys.exit(1)
symbol,=[l for l in symbols.splitlines() if l.split() and l.split()[-1].endswith('_bin_KERNEL_'+name)]
_,va,size,typ,_,_,section,_=symbol.split()
line,=[l for l in subprocess.check_output(['readelf','-SW',lib],text=True).splitlines() if re.match(r'\s*\[\s*'+section+r'\]',l)]
addr,off=[int(s,16) for s in line.split(']')[1].split()[2:4]]
with lib.open('rb') as f:f.seek(int(va,16)-addr+off);blob=f.read(int(size))
rows=json.loads(subprocess.check_output([sys.executable,'-S',__file__,'--decode'],input=blob))
print('INFO',json.dumps({'sha':hashlib.sha256(blob).hexdigest(),'size':len(blob),'symbols':pretty}),flush=True)
from collections import Counter
ops=Counter(op.split()[0] for pc,op in rows);print('OPS',json.dumps(ops),flush=True)
# Retain relevant instruction addresses and short decoded excerpts only.
for i,(pc,ins) in enumerate(rows):
    if not ins.startswith(('vadd.f','l_gm2','s_lm2gm','s_sm2gm','l_sm2lm','vload','vstore','vgather')):continue
    print('INS',hex(pc),ins)
