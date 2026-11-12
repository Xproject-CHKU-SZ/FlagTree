"""Remove only this task after the locally verified archive has been acknowledged."""
from pathlib import Path
import hashlib,json,os,pwd,shutil,time
R=Path('/data2/zhaoweiming/p800-capability-20261102')
assert R.resolve()==R and R.is_dir() and not R.is_symlink()
assert R.stat().st_uid==os.getuid() and pwd.getpwuid(os.getuid()).pw_name=='zhaoweiming'
ready=json.loads((R/'archive-ready.json').read_text())
local=json.loads((R/'local-verification.json').read_text())
assert local['verified'] is True and local['final_cases']==88
assert ready['sha256']==local['archive_sha256'] and ready['files']==local['verified_files']
h=hashlib.sha256()
with (R/ready['archive']).open('rb') as f:
 for chunk in iter(lambda:f.read(1024*1024),b''):h.update(chunk)
assert h.hexdigest()==ready['sha256']
active=[]
for p in Path('/proc').iterdir():
 if not p.name.isdigit() or int(p.name)==os.getpid():continue
 try:
  if p.stat().st_uid!=os.getuid():continue
  cmd=(p/'cmdline').read_bytes()
  if str(R).encode() in cmd:active.append(dict(pid=int(p.name),command=cmd.replace(b'\x00',b' ').decode(errors='replace')))
 except (FileNotFoundError,ProcessLookupError,PermissionError):pass
assert not active,active
registry=Path('/home/zhaoweiming/.conda/environments.txt');removed=[]
if registry.is_file():
 assert registry.stat().st_uid==os.getuid() and not registry.is_symlink()
 lines=registry.read_text().splitlines(keepends=True)
 exact={str(R/'env'),'/home/zhaoweiming/p800-capability-20261102/env'}
 removed=[line.strip() for line in lines if line.strip() in exact]
 if removed:registry.write_text(''.join(line for line in lines if line.strip() not in exact))
parent=R.parent;before=os.statvfs(parent);before_bytes=before.f_bavail*before.f_frsize
shutil.rmtree(R)
after=os.statvfs(parent);after_bytes=after.f_bavail*after.f_frsize
assert not R.exists()
print(json.dumps(dict(status='completed',removed_directory=str(R),directory_absent=True,
 archive_sha256=ready['sha256'],verified_files=ready['files'],final_cases=88,
 free_before_bytes=before_bytes,free_after_bytes=after_bytes,
 free_space_change_bytes=after_bytes-before_bytes,removed_registry_entries=removed,
 completed_at=time.time()),indent=2))
