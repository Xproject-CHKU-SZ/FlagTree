from pathlib import Path
import hashlib,json,os,tarfile
R=Path(__file__).resolve().parent;assert str(R)=='/data2/zhaoweiming/f06-mulsum-plans-20261105';os.chdir(R)
assert len(json.loads(Path('complete.json').read_text()))==36
files=set()
for glob in ('*.json','*.log','bench*.tar.gz','stage.tar.gz','*.py','*.sh'):
 for p in R.glob(glob):
  if p.is_file() and p.name not in ('archive-manifest.json',):files.add(p.relative_to(R))
for dirname in ('source','reference','logs'):
 for p in (R/dirname).rglob('*'):
  if p.is_file() and not p.is_symlink() and '__pycache__' not in p.parts:files.add(p.relative_to(R))
for case in Path('results').glob('case-*'):
 for p in list(case.glob('*.json'))+list((case/'binaries').glob('*')):
  if p.is_file() and not p.is_symlink():files.add(p)
mp=Path('archive-manifest.json');mp.write_text(json.dumps({str(p):hashlib.sha256(p.read_bytes()).hexdigest() for p in sorted(files)},indent=1));files.add(mp)
archive=Path('mulsum-plans-results.tar.gz');tmp=Path('mulsum-plans-results.tmp')
with tarfile.open(tmp,'w:gz',compresslevel=3) as tar:
 for p in sorted(files):tar.add(p,arcname=str(p),recursive=False)
tmp.replace(archive)
with archive.open('rb') as f:digest=hashlib.file_digest(f,'sha256').hexdigest()
print(json.dumps(dict(files=len(files),bytes=archive.stat().st_size,sha256=digest)))
