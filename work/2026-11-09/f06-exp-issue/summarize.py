"""Verify linked KL3 bytes and collect complete paired runs from the probe."""
import base64
from collections import Counter
import hashlib
import json
from pathlib import Path
import re
import sys

root = Path(__file__).resolve().parent
work = root.parents[1]
sys.path.insert(0, str(work/'2026-11-08/f06-exp-disasm'))
from disassemble import decode

llvm = work/'2026-11-02/p800-transfer/reference/triton/backends/_xtdk_llvm19/lib/libLLVM.so.19.1'
runs, linked, incomplete = [], [], []
for path in sorted(root.glob('*.log')):
    lines = path.read_text().splitlines()
    def rows(kind):
        return [json.loads(l[len(kind)+1:]) for l in lines if l.startswith(kind+' ')]
    timings = rows('RESULT')
    if not timings:
        incomplete.append({'log':path.name,'reason':lines[-1] if lines else 'empty'})
        continue
    run, = timings
    checks = rows('CHECK')
    assert len(checks)==5 and all(c['same_non_nan_bits'] for c in checks)
    assert all(len(series)==11 for series in run['samples'].values())
    run.update(log=path.name,checks=checks,objects={x['mode']:x['sha256'] for x in rows('EMITTED')})
    runs.append(run)
    if path.name not in ('tle-lm64-verified.log', 'native-lm64-repeat.log'):
        continue
    for artifact in rows('LOADED'):
        blob=base64.b64decode(artifact['data'])
        assert hashlib.sha256(blob).hexdigest()==artifact['sha256']
        listing=decode(blob, llvm)
        ops=[row[2].split()[0] for row in listing]
        counts=Counter(ops)
        windows=[]
        for i in range(4,len(ops)-7):
            if ops[i-4:i+8]!=['loadli.w']*4+['exp.f.rn']*4+['storeli.w']*4:
                continue
            registers=[re.fullmatch(r'exp\.f\.rn (r\d+), \1',op[2]) for op in listing[i:i+4]]
            if all(registers) and len({m[1] for m in registers})==4:
                windows.append(i)
        candidate=artifact['mode']=='lm64'
        if candidate:
            assert 4*len(windows)==counts['exp.f.rn']
        name=f"{run['route']}-{artifact['mode']}.kl3.asm"
        (root/name).write_text(''.join(f'{pc:06x}  {word}  {op}\n' for pc,word,op in listing))
        linked.append({'route':run['route'],'mode':artifact['mode'],'listing':name,
                       'sha256':artifact['sha256'],'bytes':len(blob),'four_load_exp_store_sequences':len(windows),
                       'first_exp_line':windows[0]+1 if windows else None,
                       'static_counts':{s:counts[s] for s in ['exp.f.rn','vextracti.f','vor.u.mh','mfence']}})
assert len(runs)==9 and len(linked)==4
data={'image_id':(work/'2026-11-08/f06-gap-fix/v6-image-id.txt').read_text().strip(),
      'case':'FP32 Add + Softmax [2048, 2048] + [2048], last dimension',
      'timing':'randomized interleaved graph replay, 8 ordinary calls per graph, 2 warm-up and 11 measured rounds',
      'status':'isolated diagnostic LLVM19 transform; default image unmodified',
      'linked_code':linked,'paired_runs':runs,'incomplete_diagnostic_runs':incomplete}
(root/'results.json').write_text(json.dumps(data,ensure_ascii=False,indent=2,allow_nan=False)+'\n')
print(json.dumps(linked))
