"""Remove only this completed, locally verified F06 task directory."""
import hashlib
import json
import os
from pathlib import Path
import shutil
import signal
import time

ROOT = Path('/home/zhaoweiming/f06-resources-20261102')


def main():
    assert ROOT.is_dir() and not ROOT.is_symlink() and ROOT.resolve() == ROOT
    assert ROOT.stat().st_uid == os.getuid()
    ready = json.loads((ROOT/'cleanup-ready.json').read_text())
    assert ready['local_archive_verified'] is True and ready['verified_file_count'] > 0
    assert ready['manifest_sha256'] == hashlib.sha256((ROOT/'archive-manifest.json').read_bytes()).hexdigest()
    for name in ('coverage-launch.json', 'split-launch.json', 'split-v2-launch.json'):
        value = json.loads((ROOT/name).read_text())
        assert value.get('ended') and value.get('all_runners_completed'), name
    manifest = json.loads((ROOT/'archive-manifest.json').read_text())
    assert ready['verified_file_count'] == len(manifest['files'])
    for name, info in manifest['files'].items():
        path = ROOT/name
        assert not path.is_symlink() and path.resolve().is_relative_to(ROOT)
        with path.open('rb') as handle:
            assert hashlib.file_digest(handle, 'sha256').hexdigest() == info['sha256'], name
    loader_pid = int((ROOT/'runtime-control/pid').read_text())
    owned = []
    for directory in Path('/proc').iterdir():
        if not directory.name.isdigit() or int(directory.name) == os.getpid():
            continue
        try:
            if directory.stat().st_uid != os.getuid():
                continue
            args = (directory/'cmdline').read_bytes().split(b'\0')
            task_scripts = [x.decode() for x in args if x.startswith(str(ROOT).encode()+b'/') and x.endswith(b'.py')]
            if task_scripts:
                owned.append((int(directory.name), task_scripts))
        except (FileNotFoundError, PermissionError, ProcessLookupError):
            continue
    assert owned == [(loader_pid, [str(ROOT/'wheel_runtime.py')])], owned
    loader = Path('/proc')/str(loader_pid)
    assert loader.stat().st_uid == os.getuid()
    descriptor = os.pidfd_open(loader_pid)
    signal.pidfd_send_signal(descriptor, signal.SIGTERM)
    for _ in range(50):
        if not loader.exists() or not (loader/'cmdline').read_bytes():
            break
        time.sleep(0.1)
    else:
        raise RuntimeError('runtime loader did not exit; leave files intact')
    os.close(descriptor)
    assert not os.path.ismount(ROOT)
    assert not any(line.split()[4].startswith(str(ROOT)+'/') for line in Path('/proc/self/mountinfo').read_text().splitlines())
    before = shutil.disk_usage(ROOT.parent).free
    shutil.rmtree(ROOT)
    assert not ROOT.exists()
    print(json.dumps(dict(status='completed', removed_directory=str(ROOT), stopped_loader_pid=loader_pid,
                          local_archive=ready['local_archive'], archive_sha256=ready['archive_sha256'],
                          verified_file_count=ready['verified_file_count'],
                          free_bytes_before=before, free_bytes_after=shutil.disk_usage(ROOT.parent).free,
                          completed_at=time.time())))


if __name__ == '__main__':
    main()
