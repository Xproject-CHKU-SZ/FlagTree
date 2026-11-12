"""Verified local-disk migration. No downloads, mounts, sudo, or host edits."""
from pathlib import Path
import hashlib
import json
import os
import shutil
import signal
import stat
import time

SRC=Path('/home/zhaoweiming/p800-capability-20261102')
DST=Path('/data2/zhaoweiming/p800-capability-20261102')
BACKUP=SRC.with_name(SRC.name+'.migration-verified-source')
assert os.getuid()==1039
assert SRC.is_dir() and not SRC.is_symlink() and SRC.resolve()==SRC
assert DST.parent.is_dir() and DST.parent.resolve()==DST.parent
assert DST.parent.stat().st_uid==os.getuid() and os.access(DST.parent,os.W_OK)
assert not DST.exists() and not BACKUP.exists()
assert shutil.disk_usage(DST.parent).free>30*2**30
ready=json.loads((SRC/'runtime-control/ready.json').read_text())
pid=ready['pid']
cmd=(Path('/proc')/str(pid)/'cmdline').read_bytes().split(b'\0')
assert str(SRC/'wheel_runtime.py').encode() in cmd,cmd
assert (Path('/proc')/str(pid)).stat().st_uid==os.getuid()


def inventory(root):
    records={}
    for base,dirs,files in os.walk(root,followlinks=False):
        for name in sorted(dirs+files):
            path=Path(base)/name
            rel=str(path.relative_to(root))
            st=path.lstat()
            info=dict(mode=stat.S_IMODE(st.st_mode),uid=st.st_uid,gid=st.st_gid)
            if path.is_symlink():info.update(kind='symlink',target=os.readlink(path))
            elif path.is_dir():info.update(kind='directory')
            elif path.is_file():
                with path.open('rb') as handle:digest=hashlib.file_digest(handle,'sha256').hexdigest()
                info.update(kind='file',bytes=st.st_size,sha256=digest)
            else:raise RuntimeError('Unsupported file type: '+str(path))
            records[rel]=info
    return records


started=time.time()
before=shutil.disk_usage(SRC.parent).free
os.kill(pid,signal.SIGSTOP)
try:
    print('Inventory and SHA256 verification started',flush=True)
    source=inventory(SRC)
    print(json.dumps(dict(entries=len(source),regular_file_bytes=sum(x.get('bytes',0) for x in source.values()))),flush=True)
    shutil.copytree(SRC,DST,symlinks=True,copy_function=shutil.copy2)
    copied=inventory(DST)
    assert source==copied,'Destination verification failed; original is retained'
    assert source==inventory(SRC),'Source changed during copy; original is retained'
    # Existing environment shebangs and the live memory-backed runtime retain
    # the original path. A single directory link preserves those bindings.
    SRC.rename(BACKUP)
    try:
        SRC.symlink_to(DST,target_is_directory=True)
    except BaseException:
        BACKUP.rename(SRC)
        raise
    assert SRC.resolve()==DST
    assert BACKUP.is_dir() and not BACKUP.is_symlink()
    shutil.rmtree(BACKUP)
    status=dict(status='completed',source=str(SRC),destination=str(DST),
                source_is_compatibility_symlink=True,loader_pid=pid,
                entry_count=len(source),verified_regular_file_bytes=sum(x.get('bytes',0) for x in source.values()),
                source_filesystem_free_before=before,
                source_filesystem_free_after=shutil.disk_usage(SRC.parent).free,
                started_at=started,completed_at=time.time())
    (DST/'migration-manifest.json').write_text(json.dumps(source,indent=2))
    (DST/'migration-status.json').write_text(json.dumps(status,indent=2))
    print(json.dumps(status),flush=True)
finally:
    os.kill(pid,signal.SIGCONT)
