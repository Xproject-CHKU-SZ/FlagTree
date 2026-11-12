"""Download only into the user-owned capability experiment; no host changes."""
import concurrent.futures as cf
import hashlib
import json
import os
from pathlib import Path
import subprocess
import sys
import time

ROOT = Path(__file__).resolve().parent
assert ROOT == Path('/home/zhaoweiming/p800-capability-20261102')
os.chdir(ROOT)
for name in ('downloads', 'wheels', 'tmp', 'logs', 'cache'):
    (ROOT / name).mkdir(exist_ok=True)
os.environ.update(TMPDIR=str(ROOT/'tmp'), TMP=str(ROOT/'tmp'), TEMP=str(ROOT/'tmp'),
                  PIP_CACHE_DIR=str(ROOT/'cache/pip'), PYTHONDONTWRITEBYTECODE='1')


def fetch_asset(url, name, sha=None):
    with (ROOT/'logs'/f'{name}.log').open('w') as output:
        subprocess.run([sys.executable, str(ROOT/'download_dependency.py'), url, name],
                       check=True, stdout=output, stderr=subprocess.STDOUT)
    info = json.loads((ROOT/'downloads'/f'{name}.json').read_text())
    if sha:
        assert info['sha256'] == sha, name
    print(json.dumps(dict(downloaded=name, bytes=info['bytes'])), flush=True)


def torch_runtime():
    from download_torch_runtime import download
    infos = json.loads((ROOT/'runtime-pinned-metadata.json').read_text())
    with cf.ThreadPoolExecutor(max_workers=2) as pool:
        list(pool.map(download, infos))


def python_runtime():
    name = 'Miniconda3-py310_24.11.1-0-Linux-x86_64.sh'
    fetch_asset('https://repo.anaconda.com/miniconda/'+name, name)
    with (ROOT/'logs/miniconda-install.log').open('w') as output:
        subprocess.run(['bash', str(ROOT/'downloads'/name), '-b', '-p', str(ROOT/'env')],
                       check=True, stdout=output, stderr=subprocess.STDOUT)
    python = ROOT/'env/bin/python'
    with (ROOT/'logs/small-downloads.log').open('w') as output:
        subprocess.run([str(python), '-m', 'pip', 'download', '--no-deps', '--only-binary=:all:',
                        '--index-url', 'https://mirrors.aliyun.com/pypi/simple',
                        '-d', str(ROOT/'wheels'), '-r', str(ROOT/'small-requirements.txt')],
                       check=True, stdout=output, stderr=subprocess.STDOUT)
    print('python and small dependencies ready', flush=True)


jobs = [python_runtime, torch_runtime,
    lambda: fetch_asset('https://resource.flagos.net/repository/flagos-pypi-hosted/packages/flagtree/0.7.1a1+xpu3.6/flagtree-0.7.1a1+xpu3.6-cp310-cp310-linux_x86_64.whl',
                        'flagtree-0.7.1a1+xpu3.6-cp310-cp310-linux_x86_64.whl',
                        '535dbc113082c5b4ad0d7eb5880459058ab82524c610ae341b18550ce2b69f75'),
    lambda: fetch_asset('https://klx-sdk-release-public.su.bcebos.com/kunlun2jituan/20260806/xpytorch-cp310-torch290-ubuntu2004-x64.run',
                        'xpytorch.run', '51c2261bb34d5e0b378c3697c85ffd08e245c430209f042575c98950b8b9fd36')]
with cf.ThreadPoolExecutor(max_workers=4) as pool:
    futures = [pool.submit(job) for job in jobs]
    for future in cf.as_completed(futures):
        future.result()
(ROOT/'downloads-ready.json').write_text(json.dumps(dict(completed_at=time.time())))
print('all downloads complete', flush=True)
