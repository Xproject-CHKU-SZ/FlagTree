"""Preserve only this task's results/provenance, excluding the runtime and payload."""
from pathlib import Path
import hashlib,json,os,tarfile,time
R=Path('/data2/zhaoweiming/p800-transfer-20261102')
assert Path(__file__).resolve().parent==R and R.resolve()==R and R.stat().st_uid==os.getuid()
assert not (R/'remote-final-artifacts.tar.gz').exists()
files=[]
for p in R.iterdir():
 if p.is_file() and not p.is_symlink() and p.suffix in {'.py','.sh','.json','.log','.pid','.txt','.xpu'}:
  if p.name not in {'archive-ready.json','artifact-manifest.json'}:files.append(p)
for name in ['results','logs']:
 for p in (R/name).rglob('*'):
  if p.is_file() and not p.is_symlink():
   assert p.resolve().is_relative_to(R)
   files.append(p)
files=sorted(set(files));manifest=[]
for p in files:
 h=hashlib.sha256()
 with p.open('rb') as f:
  for chunk in iter(lambda:f.read(1024*1024),b''):h.update(chunk)
 manifest.append(dict(path=str(p.relative_to(R)),bytes=p.stat().st_size,sha256=h.hexdigest()))
m=R/'artifact-manifest.json';assert m not in files
m.write_text(json.dumps(dict(created_at=time.time(),files=manifest),indent=2))
archive=R/'remote-final-artifacts.tar.gz'
partial=archive.with_suffix(archive.suffix+'.partial')
with tarfile.open(partial,'w:gz',compresslevel=6) as t:
 for p in files+[m]:t.add(p,arcname='artifacts/'+str(p.relative_to(R)),recursive=False)
partial.replace(archive)
h=hashlib.sha256()
with archive.open('rb') as f:
 for chunk in iter(lambda:f.read(1024*1024),b''):h.update(chunk)
receipt=dict(archive=archive.name,sha256=h.hexdigest(),bytes=archive.stat().st_size,
             files=len(files),manifest_sha256=hashlib.sha256(m.read_bytes()).hexdigest(),created_at=time.time())
(R/'archive-ready.json').write_text(json.dumps(receipt,indent=2));print(json.dumps(receipt))
