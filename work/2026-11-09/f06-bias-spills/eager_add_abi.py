"""Read local installed host stub metadata for the profiled broadcast add."""
from pathlib import Path
import subprocess
import re
import torch
lib=Path(torch.__file__).resolve().parent.parent/'torch_xmlir/libxdnn_pytorch.so'
s=subprocess.check_output(['readelf','-sW',lib],text=True)
for line in s.splitlines():
    pieces=line.split()
    if len(pieces)<8:continue
    name=pieces[-1]
    if 'UND' in pieces and 'launch' in name.lower():
        print('IMPORT',name)
    if 'tensor_calc_k_nkILi0ELb1EffffEE' in name:
        print('MATCH',line[:650])
        if pieces[3]=='FUNC' and len(pieces[1])==16 and int(pieces[2])<1500:
            addr=int(pieces[1],16)
            code=subprocess.check_output(['objdump','-d','--no-show-raw-insn','--start-address='+str(addr),'--stop-address='+str(addr+int(pieces[2])),lib],text=True)
            for rec in code.splitlines():
                if re.search(r'\bcall|mov\s+\$0x|\blea\s+(-0x|0x)',rec):print(rec[:250])
