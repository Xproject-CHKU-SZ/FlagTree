from pathlib import Path
import hashlib,json,os,tarfile
R=Path(__file__).resolve().parent;assert str(R)=='/data2/zhaoweiming/f06-parallel-mul-20261105';os.chdir(R);assert len(json.loads(Path('complete.json').read_text()))==36
files=set();excluded={'env','cache','tmp','offline-payload','xpytorch-unpack','runtime-host-libs','__pycache__'}
for n in ('complete.json','progress.json','pilot.log','pilot-v1-complete.json','pilot-v2-complete.json','pilot-v2.log','parallel-final-complete.json','parallel-final-progress.json','bench-v2.tar.gz','bench-final.tar.gz','install.log','launch.log','availability.json','runtime-probe.json','offline-install-status.json','bench-manifest.json','stage.tar.gz','bench.tar.gz','bench-v4.tar.gz','bench-v5.tar.gz','small-fixed-complete.json','before-small-fixed-complete.json','supplement-complete.json','v3-complete.json'):p=Path(n);files.update([p] if p.is_file() else [])
for p in Path('logs').glob('*.log'):files.add(p)
for case in Path('results').glob('case-*'):
    for p in list(case.glob('*.json'))+list((case/'binaries').glob('*')):
        if p.is_file() and not p.is_symlink():files.add(p)
mp=Path('archive-manifest.json');mp.write_text(json.dumps({str(p):hashlib.sha256(p.read_bytes()).hexdigest() for p in sorted(files)},indent=1));files.add(mp)
archive=Path('parallel-mul-results.tar.gz');tmp=Path('parallel-mul-results.tmp');
with tarfile.open(tmp,'w:gz',compresslevel=3) as tar:
    for p in sorted(files):tar.add(p,arcname=str(p),recursive=False)
tmp.replace(archive);print(json.dumps(dict(files=len(files),bytes=archive.stat().st_size,sha256=hashlib.sha256(archive.read_bytes()).hexdigest())))
