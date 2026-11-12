from pathlib import Path
import hashlib,json,subprocess,tarfile
from render import render
base=Path(__file__).resolve().parent
remote='/data2/zhaoweiming/f06-parallel-mul-20261105'
config=str(base.parents[2]/'work/2026-11-02/f06-p800-resources/ssh/config')
ssh=['ssh','-F',config,'-o','BatchMode=yes','p800-81'];scp=['scp','-q','-F',config];target='p800-81:'+remote
subprocess.run(scp+[str(base/'package_results.py'),str(base/'cleanup_verified.py'),target+'/'],check=True)
receipt=json.loads(subprocess.check_output(ssh+['python3 -B '+remote+'/package_results.py']))
p=base/'parallel-mul-results.tar.gz';tmp=p.with_suffix('.partial');subprocess.run(scp+[target+'/'+p.name,str(tmp)],check=True)
with tmp.open('rb') as f:assert hashlib.file_digest(f,'sha256').hexdigest()==receipt['sha256']
assert tmp.stat().st_size==receipt['bytes'];tmp.replace(p);dest=base/'remote-final';dest.mkdir(exist_ok=True)
with tarfile.open(p) as t:
    items=t.getmembers();assert all(x.isfile() and (dest/x.name).resolve().is_relative_to(dest.resolve()) for x in items);assert len(set(x.name for x in items))==len(items)==receipt['files'];t.extractall(dest,filter='data')
manifest=json.loads((dest/'archive-manifest.json').read_text());assert set(manifest)|{'archive-manifest.json'}=={x.name for x in items}
for name,digest in manifest.items():assert hashlib.sha256((dest/name).read_bytes()).hexdigest()==digest,name
summary=render(base);(base/'verification.json').write_text(json.dumps(dict(summary=summary,receipt=receipt),indent=2));assert summary['complete']==summary['eager_timed']==36 and summary['parallel_timed']>0,summary
assert not summary['precision_differences_from_serial'], summary
assert summary['targeted_special_values_failures']==0, summary
cleanup=subprocess.check_output(ssh+['python3 -B '+remote+'/cleanup_verified.py '+receipt['sha256']],text=True);(base/'cleanup-receipt.json').write_text(cleanup);print(summary)
