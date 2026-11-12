"""Upload existing local assets; never download anything on the P800 host."""
from pathlib import Path
import concurrent.futures as cf
import hashlib
import json
import shlex
import subprocess
import time

ROOT = Path(__file__).resolve().parent
REPO = ROOT.parents[2]
CFG = str(REPO / 'work/2026-11-02/f06-p800-resources/ssh/config')
REMOTE = '/data2/zhaoweiming/f06-parallel-mul-20261105'
PAYLOAD = REPO / 'work/2026-11-02/p800-capability/offline-payload'
SSH = ['ssh', '-F', CFG, '-o', 'BatchMode=yes', 'p800-81']
def remote(cmd):
    return subprocess.run(SSH+[cmd], check=True, capture_output=True, text=True).stdout
assert remote('id -un').strip() == 'zhaoweiming'
remote('test ! -e '+shlex.quote(REMOTE)+' && mkdir -m 700 '+shlex.quote(REMOTE)+' && mkdir '+shlex.quote(REMOTE+'/offline-payload'))
subprocess.run(['scp','-q','-F',CFG,str(ROOT/'stage.tar.gz'),'p800-81:'+REMOTE+'/stage.tar.gz'],check=True)
remote('tar -xzf '+shlex.quote(REMOTE+'/stage.tar.gz')+' -C '+shlex.quote(REMOTE))
remote('nohup python3 '+shlex.quote(REMOTE+'/install_offline.py')+' > '+shlex.quote(REMOTE+'/install.log')+' 2>&1 < /dev/null &')
items=json.loads((ROOT/'stage/offline-manifest.json').read_text())
def upload(item):
    file=PAYLOAD/item['filename']
    assert file.stat().st_size==item['bytes']
    with file.open('rb') as stream:
        assert hashlib.file_digest(stream,'sha256').hexdigest()==item['sha256']
    dest=REMOTE+'/offline-payload/'+item['filename']
    subprocess.run(['scp','-q','-F',CFG,str(file),'p800-81:'+dest+'.uploading'],check=True)
    remote('mv -- '+shlex.quote(dest+'.uploading')+' '+shlex.quote(dest))
    return dict(filename=item['filename'],bytes=item['bytes'],completed=time.time())
done=[]
with cf.ThreadPoolExecutor(max_workers=3) as pool:
    for future in cf.as_completed([pool.submit(upload,item) for item in items]):
        done.append(future.result())
        (ROOT/'upload-progress.json').write_text(json.dumps(dict(uploaded=done,total=len(items)),indent=2))
        print('Uploaded',len(done),'/',len(items),done[-1]['filename'],flush=True)
(ROOT/'upload-ready.json').write_text(json.dumps(dict(files=len(done),bytes=sum(x['bytes'] for x in done)),indent=2))
