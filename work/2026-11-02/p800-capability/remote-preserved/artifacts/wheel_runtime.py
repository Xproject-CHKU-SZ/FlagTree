"""Serve immutable, hash-verified large wheel files from process memory.

All persistent files and links stay in the zhaoweiming test package. This avoids
mounts, Docker, host configuration changes, and duplicate large disk libraries.
The original compressed wheels remain the reproducible runtime distribution.
"""
import fcntl
import hashlib
import json
import os
from pathlib import Path, PurePosixPath
import signal
import stat
import time
import zipfile

ROOT = Path(__file__).resolve().parent
ENV = ROOT / 'env'
SITE = ENV / 'lib/python3.10/site-packages'
CONTROL = ROOT / 'runtime-control'
LIMIT = 32 * 2**20
HANDLES = {}
RECORDS = []


def destination(name):
    path = PurePosixPath(name)
    assert not path.is_absolute() and '..' not in path.parts
    parts = path.parts
    if parts[0].endswith('.data'):
        assert len(parts) >= 3
        kind = parts[1]
        base = SITE if kind in ('purelib', 'platlib') else ENV if kind == 'data' else ENV / 'bin'
        assert kind in ('purelib', 'platlib', 'data', 'scripts')
        result = base.joinpath(*parts[2:])
    else:
        result = SITE / path
    # Existing file links may target our memfds; parent directories must never
    # escape the owned environment.
    assert result.parent.resolve().is_relative_to(ENV.resolve())
    return result


def install(wheel):
    assert wheel.resolve().is_relative_to(ROOT) and wheel.suffix == '.whl'
    wheel_sha = hashlib.sha256()
    with wheel.open('rb') as source:
        for data in iter(lambda: source.read(2**20), b''):
            wheel_sha.update(data)
    if wheel.name.startswith('flagtree-0.7.1a1+xpu3.6-'):
        assert wheel_sha.hexdigest() == '535dbc113082c5b4ad0d7eb5880459058ab82524c610ae341b18550ce2b69f75'
    files = []
    with zipfile.ZipFile(wheel) as archive:
        for info in archive.infolist():
            parts = PurePosixPath(info.filename).parts
            if info.is_dir() and parts[0].endswith('.data') and len(parts) < 3:
                continue
            target = destination(info.filename)
            if info.is_dir():
                target.mkdir(parents=True, exist_ok=True)
                continue
            mode = info.external_attr >> 16
            assert not stat.S_ISLNK(mode), 'unexpected wheel symlink'
            target.parent.mkdir(parents=True, exist_ok=True)
            digest = hashlib.sha256()
            if info.file_size >= LIMIT:
                fd = os.memfd_create('f06-' + target.name, os.MFD_ALLOW_SEALING)
                with archive.open(info) as source:
                    for data in iter(lambda: source.read(2**20), b''):
                        digest.update(data)
                        assert os.write(fd, data) == len(data)
                assert os.fstat(fd).st_size == info.file_size
                value = digest.hexdigest()
                if value in HANDLES:
                    os.close(fd)
                    fd = HANDLES[value]
                else:
                    fcntl.fcntl(fd, fcntl.F_ADD_SEALS, fcntl.F_SEAL_WRITE |
                                fcntl.F_SEAL_GROW | fcntl.F_SEAL_SHRINK | fcntl.F_SEAL_SEAL)
                    HANDLES[value] = fd
                if target.exists() or target.is_symlink():
                    target.unlink()
                target.symlink_to(f'/proc/{os.getpid()}/fd/{fd}')
                storage = 'sealed_memfd'
            else:
                if target.is_symlink():
                    target.unlink()
                with archive.open(info) as source, target.open('wb') as output:
                    for data in iter(lambda: source.read(2**20), b''):
                        digest.update(data)
                        output.write(data)
                target.chmod((mode & 0o777) or 0o644)
                storage = 'regular_file'
            files.append(dict(path=str(target.relative_to(ROOT)), bytes=info.file_size,
                              sha256=digest.hexdigest(), storage=storage))
    record = dict(wheel=str(wheel.relative_to(ROOT)), sha256=wheel_sha.hexdigest(), files=files)
    RECORDS.append(record)
    print(json.dumps({'installed': wheel.name, 'files': len(files), 'memory_files': len(HANDLES)}), flush=True)


def main():
    assert ROOT.is_relative_to(Path('/home/zhaoweiming'))
    CONTROL.mkdir(exist_ok=True)
    lock_file = (CONTROL / 'daemon.lock').open('w')
    fcntl.flock(lock_file, fcntl.LOCK_EX | fcntl.LOCK_NB)
    (CONTROL / 'pid').write_text(str(os.getpid()))
    for request in sorted(CONTROL.glob('request-*.json')):
        # Requests get unique names and can be replayed after a daemon restart.
        wheels = json.loads(request.read_text())['wheels']
        for wheel in wheels:
            install(Path(wheel))
        (CONTROL / (request.stem + '.done')).write_text('done')
    (CONTROL / 'manifest.json').write_text(json.dumps(RECORDS, indent=2))
    (CONTROL / 'ready.json').write_text(json.dumps(dict(pid=os.getpid(), memory_files=len(HANDLES),
                                                    memory_bytes=sum(os.fstat(x).st_size for x in HANDLES.values()))))
    seen = set(CONTROL.glob('request-*.json'))
    print('runtime ready', flush=True)
    while True:
        for request in sorted(set(CONTROL.glob('request-*.json')) - seen):
            for wheel in json.loads(request.read_text())['wheels']:
                install(Path(wheel))
            (CONTROL / 'manifest.json').write_text(json.dumps(RECORDS, indent=2))
            (CONTROL / (request.stem + '.done')).write_text('done')
            seen.add(request)
        time.sleep(1)


if __name__ == '__main__':
    main()
