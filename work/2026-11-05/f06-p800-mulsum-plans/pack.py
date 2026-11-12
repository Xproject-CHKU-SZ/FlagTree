from pathlib import Path
import json,hashlib,tarfile
r=Path(__file__).resolve().parent;b=r/'bench'
files={str(p.relative_to(b)):hashlib.sha256(p.read_bytes()).hexdigest() for p in b.rglob('*') if p.is_file() and p.name!='bench-manifest.json' and '__pycache__' not in str(p)}
(b/'bench-manifest.json').write_text(json.dumps(files,indent=2))
with tarfile.open(r/'bench.tar.gz','w:gz') as t:
 for p in sorted(b.rglob('*')):
  if p.is_file() and '__pycache__' not in str(p):t.add(p,arcname=str(p.relative_to(b)))
print('packed',len(files),'files')
