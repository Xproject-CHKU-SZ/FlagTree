"""Download pinned large runtime wheels with official PyPI hash verification."""
import concurrent.futures as cf
import hashlib
import json
import os
from pathlib import Path
import shutil
import time
import urllib.request

ROOT = Path(__file__).resolve().parent
DEST = ROOT / 'wheels'


def metadata(requirement):
    name, version = requirement.split('==')
    url = f'https://pypi.org/pypi/{name}/{version}/json'
    with urllib.request.urlopen(url, timeout=30) as response:
        obj = json.load(response)
    candidates = [x for x in obj['urls'] if x['filename'].endswith('x86_64.whl') and
                  'manylinux' in x['filename'] and (name != 'torch' or 'cp310-cp310' in x['filename'])]
    assert len(candidates) == 1, (requirement, [x['filename'] for x in candidates])
    return candidates[0]


def download(info):
    out = DEST / info['filename']
    expected = info['digests']['sha256']
    if out.exists():
        with out.open('rb') as f:
            assert hashlib.file_digest(f, 'sha256').hexdigest() == expected
        return info
    url = info['url'].replace('https://files.pythonhosted.org/packages/',
                              'https://mirrors.aliyun.com/pypi/packages/')
    size = info['size']
    partial = out.with_suffix('.whl.part')
    fd = os.open(partial, os.O_CREAT | os.O_EXCL | os.O_RDWR, 0o600)
    os.ftruncate(fd, size)
    chunk = 8 * 2**20
    started = time.monotonic()

    def fetch(start):
        end = min(start + chunk, size) - 1
        for attempt in range(4):
            try:
                req = urllib.request.Request(url, headers={'Range': f'bytes={start}-{end}',
                                                           'Accept-Encoding': 'identity'})
                with urllib.request.urlopen(req, timeout=45) as response:
                    assert response.status == 206
                    assert response.headers['Content-Range'] == f'bytes {start}-{end}/{size}'
                    data = response.read(end - start + 2)
                assert len(data) == end - start + 1
                assert os.pwrite(fd, data, start) == len(data)
                return len(data)
            except Exception:
                if attempt == 3:
                    raise
                time.sleep(attempt + 1)
    try:
        with cf.ThreadPoolExecutor(max_workers=16) as pool:
            complete, last = 0, 0
            for future in cf.as_completed([pool.submit(fetch, n) for n in range(0, size, chunk)]):
                complete += future.result()
                if time.monotonic() - last > 20 or complete == size:
                    print(json.dumps(dict(file=out.name, mb=round(complete / 1e6), total_mb=round(size / 1e6),
                                          mb_s=round(complete / 1e6 / (time.monotonic() - started), 2))), flush=True)
                    last = time.monotonic()
        os.fsync(fd)
    finally:
        os.close(fd)
    with partial.open('rb') as f:
        assert hashlib.file_digest(f, 'sha256').hexdigest() == expected
    partial.rename(out)
    (DEST / (out.name + '.json')).write_text(json.dumps(info, indent=2))
    print('VERIFIED ' + out.name, flush=True)
    return info


def main():
    assert ROOT.is_relative_to(Path('/home/zhaoweiming'))
    reqs = [r for r in (ROOT / 'runtime-requirements.txt').read_text().splitlines()
            if r.startswith(('torch==', 'nvidia-'))]
    with cf.ThreadPoolExecutor(max_workers=8) as pool:
        infos = list(pool.map(metadata, reqs))
    remaining = sum(x['size'] for x in infos if not (DEST / x['filename']).exists())
    assert shutil.disk_usage(ROOT).free > remaining + 2 * 2**30, 'reserve 2 GiB disk after downloads'
    (ROOT / 'torch-runtime-downloads.json').write_text(json.dumps(infos, indent=2))
    print(json.dumps({'files': len(infos), 'remaining_gib': remaining / 2**30}), flush=True)
    with cf.ThreadPoolExecutor(max_workers=2) as pool:
        list(pool.map(download, infos))


if __name__ == '__main__':
    main()
