"""Remove only the verified, completed experiment from the experiment owner's directory."""
import hashlib,json,os,pwd,shutil,sys,time
from pathlib import Path
root=Path('/data2/zhaoweiming/f06-mulsum-plans-20261105')
assert Path(__file__).resolve().parent==root==root.resolve()
assert pwd.getpwuid(os.getuid()).pw_name=='zhaoweiming' and root.stat().st_uid==os.getuid()
assert len(json.loads((root/'complete.json').read_text()))==36
archive=root/'mulsum-plans-results.tar.gz'
with archive.open('rb') as stream: assert hashlib.file_digest(stream,'sha256').hexdigest()==sys.argv[1]
for proc in Path('/proc').glob('[0-9]*'):
    if int(proc.name)==os.getpid():continue
    try:
        args=(proc/'cmdline').read_bytes().split(b'\0');cwd=(proc/'cwd').resolve(strict=True)
        if proc.stat().st_uid==os.getuid() and (cwd==root or cwd.is_relative_to(root)):
            assert not any(Path(os.fsdecode(a)).name in {'launch.py','launch_patch.py','launch_small.py','after_large.py','worker.py','install_offline.py','resume_install.py','runtime_probe.py'} for a in args),args
    except (FileNotFoundError,PermissionError,ProcessLookupError):pass
shutil.rmtree(root);assert not root.exists();print(json.dumps(dict(removed=str(root),verified_sha256=sys.argv[1],time=time.time())))
