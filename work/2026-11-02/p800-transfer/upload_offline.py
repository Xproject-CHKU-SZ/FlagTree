"""Upload only verified local assets; the server never downloads dependencies."""
from pathlib import Path
import concurrent.futures as cf
import hashlib
import json
import subprocess
import time

ROOT=Path(__file__).resolve().parent
assert ROOT==Path('/home/f/Documents/FlagTree/work/2026-11-02/p800-transfer')
CONFIG='/home/f/Documents/FlagTree/work/2026-11-02/f06-p800-resources/ssh/config'
DEST='/data2/zhaoweiming/p800-transfer-20261102/offline-payload/'
assets=json.loads((ROOT/'offline-manifest.json').read_text())
done=[]
queued=set()
running={}


def upload(item):
    p=ROOT/'offline-payload'/item['filename']
    assert p.stat().st_size==item['bytes']
    with p.open('rb') as f:assert hashlib.file_digest(f,'sha256').hexdigest()==item['sha256']
    subprocess.run(['scp','-q','-F',CONFIG,str(p),'p800-81:'+DEST+item['filename']],check=True)
    return dict(filename=item['filename'],bytes=item['bytes'],sha256=item['sha256'],completed_at=time.time())


with cf.ThreadPoolExecutor(max_workers=3) as pool:
    while len(done)<len(assets):
        for item in assets:
            if len(running)>=3:break
            name=item['filename']
            if name not in queued and (ROOT/'offline-payload'/name).is_file():
                running[pool.submit(upload,item)]=name
                queued.add(name)
        finished=[future for future in running if future.done()]
        for future in finished:
            name=running.pop(future)
            done.append(future.result())
            (ROOT/'upload-progress.json').write_text(json.dumps(dict(uploaded=done,in_progress=list(running.values())),indent=2))
            print(json.dumps(dict(uploaded=name,files=len(done),bytes=sum(x['bytes'] for x in done))),flush=True)
        time.sleep(2)
assert (ROOT/'offline-ready.json').exists()
(ROOT/'upload-ready.json').write_text(json.dumps(dict(completed_at=time.time(),files=len(done),bytes=sum(x['bytes'] for x in done))))
print('ALL ASSETS UPLOADED',flush=True)
