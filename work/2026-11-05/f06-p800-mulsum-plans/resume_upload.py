"""Resume this interrupted transfer. Reconcile with the remote directory first."""
import concurrent.futures, hashlib, json, shlex, subprocess
from pathlib import Path
local = Path(__file__).resolve().parent
config = str(local.parents[2] / 'work/2026-11-02/f06-p800-resources/ssh/config')
payload = local.parents[2] / 'work/2026-11-02/p800-capability/offline-payload'
remote = '/data2/zhaoweiming/f06-mulsum-plans-20261105/offline-payload'
ssh = ['ssh', '-F', config, '-o', 'BatchMode=yes', 'p800-81']
def check(command):
    return subprocess.check_output(ssh + [command],text=True).strip()
assert check('id -un') == 'zhaoweiming'
assert check('realpath -- '+remote) == remote
items = json.loads((local/'stage/offline-manifest.json').read_text())
rsync = bool(check('command -v rsync || true'))
def upload(item):
    name=item['filename']; assert name==Path(name).name
    src=payload/name; dst=remote+'/'+name; tmp=dst+'.uploading'; target=shlex.quote(dst)
    assert src.stat().st_size==item['bytes']
    if check('test -f '+target+' && stat -c %s '+target+' || true')==str(item['bytes']):
        if check('sha256sum '+target).split()[0]==item['sha256']:return name
    if rsync:
        subprocess.run(['rsync','-t','--append-verify','--partial','-e',shlex.join(ssh[:-1]),str(src),'p800-81:'+tmp],check=True)
    else:
        subprocess.run(['scp','-q','-F',config,str(src),'p800-81:'+tmp],check=True)
    assert check('sha256sum '+shlex.quote(tmp)).split()[0]==item['sha256']
    check('mv -- '+shlex.quote(tmp)+' '+target);return name
with concurrent.futures.ThreadPoolExecutor(max_workers=3) as pool:
    jobs=[pool.submit(upload,item) for item in items]
    for i,f in enumerate(concurrent.futures.as_completed(jobs),1): print(i,'/',len(items),f.result(),flush=True)
(local/'upload-ready.json').write_text(json.dumps(dict(files=len(items),bytes=sum(x['bytes'] for x in items),verified_remote=True),indent=2))
