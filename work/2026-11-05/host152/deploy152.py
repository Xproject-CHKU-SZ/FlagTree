"""Upload the offline payload to p800-152 and install it there."""
import concurrent.futures as cf
import hashlib
import json
import pathlib
import shlex
import subprocess
import time

REPO = pathlib.Path('/home/f/Documents/FlagTree')
CFG = str(REPO / 'work/2026-11-02/f06-p800-resources/ssh/config')
REMOTE = '/data2/zhaoweiming/f06-152-20261106'
PAYLOAD = REPO / 'work/2026-11-02/p800-capability/offline-payload'
HOST = 'p800-152'
SSH = ['ssh', '-F', CFG, '-o', 'BatchMode=yes', HOST]


def remote(cmd):
    return subprocess.run(SSH + [cmd], check=True, capture_output=True, text=True).stdout


def main():
    assert remote('id -un').strip() == 'zhaoweiming'
    remote(f"mkdir -p {shlex.quote(REMOTE)}/offline-payload")
    stage = REPO / 'work/2026-11-05/host152/stage'
    subprocess.run(['tar', '-czf', str(stage / 'stage.tar.gz'), '-C', str(stage), 'install_offline.py', 'run_env.sh', 'runtime_probe.py'], check=True)
    subprocess.run(['scp', '-q', '-F', CFG, str(stage / 'stage.tar.gz'), f'{HOST}:{REMOTE}/stage.tar.gz'], check=True)
    remote(f"tar -xzf {shlex.quote(REMOTE)}/stage.tar.gz -C {shlex.quote(REMOTE)}")
    files = sorted(p for p in PAYLOAD.iterdir() if p.is_file())
    print('payload files', len(files), 'bytes', sum(p.stat().st_size for p in files))
    def upload(p):
        dest = f'{REMOTE}/offline-payload/{p.name}'
        subprocess.run(['scp', '-q', '-F', CFG, str(p), f'{HOST}:{dest}.uploading'], check=True)
        remote(f"mv -- {shlex.quote(dest + '.uploading')} {shlex.quote(dest)}")
        return dict(name=p.name, bytes=p.stat().st_size, at=time.time())
    done = []
    with cf.ThreadPoolExecutor(max_workers=3) as pool:
        for fut in cf.as_completed([pool.submit(upload, p) for p in files]):
            done.append(fut.result())
            print('uploaded', len(done), '/', len(files), done[-1]['name'], flush=True)
    remote(f"nohup python3 {shlex.quote(REMOTE)}/install_offline.py > {shlex.quote(REMOTE)}/install.log 2>&1 < /dev/null &")
    print('installer started')


main()
