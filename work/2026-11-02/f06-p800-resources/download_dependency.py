"""Bounded concurrent HTTP range download to the isolated test package."""
import argparse
import concurrent.futures
import hashlib
import json
import os
from pathlib import Path
import shutil
import time
import urllib.request


def main():
    p = argparse.ArgumentParser()
    p.add_argument('url')
    p.add_argument('filename')
    args = p.parse_args()
    root = Path(__file__).resolve().parent
    assert root.is_relative_to(Path('/home/zhaoweiming'))
    assert Path(args.filename).name == args.filename
    output = root / 'downloads' / args.filename
    output.parent.mkdir(exist_ok=True)
    assert not output.exists(), 'do not overwrite a completed download'
    headers = urllib.request.urlopen(urllib.request.Request(args.url, method='HEAD'), timeout=30).headers
    size = int(headers['Content-Length'])
    assert shutil.disk_usage(root).free > size + 3 * 2**30
    temporary = output.with_suffix(output.suffix + '.part')
    fd = os.open(temporary, os.O_CREAT | os.O_EXCL | os.O_RDWR, 0o600)
    block = 8 * 2**20
    os.ftruncate(fd, size)
    started = time.monotonic()

    def download(start):
        end = min(size, start + block) - 1
        for attempt in range(4):
            try:
                request = urllib.request.Request(args.url, headers={'Range': f'bytes={start}-{end}'})
                with urllib.request.urlopen(request, timeout=60) as response:
                    assert response.status == 206, 'server must honor byte ranges'
                    assert response.headers['Content-Range'] == f'bytes {start}-{end}/{size}'
                    data = response.read(end - start + 2)
                    assert len(data) == end - start + 1
                count = os.pwrite(fd, data, start)
                assert count == len(data)
                return len(data)
            except Exception:
                if attempt == 3:
                    raise
                time.sleep(attempt + 1)

    completed = 0
    try:
        with concurrent.futures.ThreadPoolExecutor(max_workers=8) as pool:
            futures = [pool.submit(download, start) for start in range(0, size, block)]
            last = 0
            for future in concurrent.futures.as_completed(futures):
                completed += future.result()
                if time.monotonic() - last > 15 or completed == size:
                    print(json.dumps({'file': args.filename, 'done_mb': round(completed / 1e6),
                                      'total_mb': round(size / 1e6),
                                      'mb_s': round(completed / 1e6 / (time.monotonic() - started), 2)}), flush=True)
                    last = time.monotonic()
        os.fsync(fd)
    finally:
        os.close(fd)
    sha = hashlib.sha256()
    with temporary.open('rb') as f:
        for data in iter(lambda: f.read(2**20), b''):
            sha.update(data)
    temporary.rename(output)
    info = dict(url=args.url, filename=args.filename, bytes=size, sha256=sha.hexdigest())
    output.with_suffix(output.suffix + '.json').write_text(json.dumps(info, indent=2))
    print(json.dumps(info), flush=True)


if __name__ == '__main__':
    main()
