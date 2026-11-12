"""Run ONLY on the local workstation; produce a fully hashed offline payload."""
import concurrent.futures as cf
import hashlib
import json
import os
from pathlib import Path
import time
import urllib.request

ROOT=Path(__file__).resolve().parent
assert ROOT==Path('/home/f/Documents/FlagTree/work/2026-11-02/p800-capability')
OLD=ROOT/'remote-preserved/artifacts'
DEST=ROOT/'offline-payload'
DEST.mkdir(exist_ok=True)


def digest(path):
    with path.open('rb') as f:return hashlib.file_digest(f,'sha256').hexdigest()


def small_metadata(record):
    filename=Path(record['wheel']).name
    name,version=filename.split('-')[:2]
    url=f'https://pypi.org/pypi/{name}/{version}/json'
    with urllib.request.urlopen(url,timeout=60) as response:data=json.load(response)
    found=[item for item in data['urls'] if item['filename']==filename]
    assert len(found)==1,filename
    item=found[0]
    assert item['digests']['sha256']==record['sha256'],filename
    return dict(filename=filename,url=item['url'],bytes=item['size'],sha256=record['sha256'])


def download(info):
    target=DEST/info['filename']
    if target.exists():
        assert digest(target)==info['sha256'],target
        return
    size=info['bytes']
    partial=target.with_name(target.name+'.part')
    fd=os.open(partial,os.O_CREAT|os.O_RDWR,0o600)
    assert os.fstat(fd).st_size in (0,size),partial
    if os.fstat(fd).st_size==0:os.ftruncate(fd,size)
    block=8*2**20
    started=time.monotonic()

    def chunk(start):
        end=min(start+block,size)-1
        for attempt in range(6):
            try:
                url=info['url'].replace('https://files.pythonhosted.org/packages/',
                                         'https://mirrors.aliyun.com/pypi/packages/')
                request=urllib.request.Request(url,headers={
                    'Range':f'bytes={start}-{end}','Accept-Encoding':'identity'})
                with urllib.request.urlopen(request,timeout=90) as response:
                    assert response.status==206 or (response.status==200 and start==0 and end==size-1)
                    if response.status==206:
                        assert response.headers['Content-Range']==f'bytes {start}-{end}/{size}'
                    data=response.read(end-start+2)
                assert len(data)==end-start+1
                assert os.pwrite(fd,data,start)==len(data)
                return len(data)
            except Exception as exc:
                print(json.dumps(dict(retry=target.name,start=start,attempt=attempt,error=str(exc))),flush=True)
                if attempt==5:raise
                time.sleep(attempt+1)
    done=0
    last=0
    try:
        missing=[]
        for start in range(0,size,block):
            try:complete=os.lseek(fd,start,os.SEEK_HOLE)>=min(start+block,size)
            except OSError:complete=False
            if not complete:missing.append(start)
        with cf.ThreadPoolExecutor(max_workers=4) as pool:
            for result in cf.as_completed([pool.submit(chunk,s) for s in missing]):
                done+=result.result()
                if time.monotonic()-last>20:
                    print(json.dumps(dict(file=target.name,downloaded_mb=round(done/1e6),total_mb=round(size/1e6))),flush=True)
                    last=time.monotonic()
        os.fsync(fd)
    finally:os.close(fd)
    if digest(partial)!=info['sha256']:
        # Sparse-file resumption is only a transport optimization. A complete
        # trusted hash is mandatory; any inconsistency triggers a full retry.
        partial.unlink()
        return download(info)
    partial.replace(target)
    print(json.dumps(dict(verified=target.name,seconds=round(time.monotonic()-started,1))),flush=True)


if (ROOT/'offline-manifest.json').exists():
    assets=json.loads((ROOT/'offline-manifest.json').read_text())
else:
    assets=[json.loads(path.read_text()) for path in sorted((OLD/'downloads').glob('*.json'))]
    large=json.loads((ROOT/'runtime-pinned-metadata.json').read_text())
    assets.extend(dict(filename=x['filename'],url=x['url'],bytes=x['size'],sha256=x['digests']['sha256']) for x in large)
    known={x['filename'] for x in assets}
    installed=json.loads((OLD/'runtime-control/manifest.json').read_text())
    small=[x for x in installed if x['wheel'].startswith('wheels/') and Path(x['wheel']).name not in known]
    with cf.ThreadPoolExecutor(max_workers=8) as pool:assets.extend(pool.map(small_metadata,small))
    (ROOT/'offline-manifest.json').write_text(json.dumps(assets,indent=2))
print(json.dumps(dict(assets=len(assets),total_bytes=sum(x['bytes'] for x in assets))),flush=True)
with cf.ThreadPoolExecutor(max_workers=2) as pool:
    list(pool.map(download,assets))
(ROOT/'offline-ready.json').write_text(json.dumps(dict(completed_at=time.time(),files=len(assets),
    total_bytes=sum(x['bytes'] for x in assets),manifest_sha256=digest(ROOT/'offline-manifest.json'))))
print('OFFLINE PAYLOAD VERIFIED',flush=True)
