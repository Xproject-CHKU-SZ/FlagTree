"""Selectively unpack the official image into this task; never use Docker/root.

Registry credentials are anonymous, in-memory tokens. Tar paths and links are
validated before writes; absolute image links are relocated into the env.
"""
import argparse
import collections
import hashlib
import json
import os
from pathlib import Path, PurePosixPath
import re
import shutil
import tarfile
import time
import urllib.error
import urllib.request

ROOT = Path(__file__).resolve().parent
REPO = 'flagtree/flagtree-xpu3.6-py310-torch2.9.0-ubuntu22.04'
BASE = 'https://harbor.baai.ac.cn/v2/' + REPO
PREFIX = 'root/miniconda/envs/python310_torch29_cuda/'
KEEP = {'torch', 'triton', 'flagtree', 'numpy', 'numpy.libs', 'sympy', 'mpmath',
        'networkx', 'jinja2', 'markupsafe', 'filelock', 'fsspec', 'typing_extensions',
        'psutil', 'packaging', 'pybind11', 'setuptools', 'pip', 'wheel', '_distutils_hack',
        'typing_inspection', 'cuda', 'cuda_bindings', 'six', 'functorch', 'torchgen'}


def get_blob(digest):
    url = BASE + '/blobs/' + digest
    try:
        return urllib.request.urlopen(url, timeout=60)
    except urllib.error.HTTPError as e:
        if e.code != 401:
            raise
        fields = dict(re.findall(r'(\w+)="([^"]+)"', e.headers['WWW-Authenticate']))
        token = json.load(urllib.request.urlopen(
            fields['realm'] + '?service=' + fields['service'] + '&scope=repository:' + REPO + ':pull',
            timeout=30))
        request = urllib.request.Request(url, headers={
            'Authorization': 'Bearer ' + (token.get('token') or token['access_token'])})
        return urllib.request.urlopen(request, timeout=60)


class Reader:
    def __init__(self, raw):
        self.raw, self.hash, self.size, self.last = raw, hashlib.sha256(), 0, time.monotonic()

    def read(self, size=-1):
        data = self.raw.read(size)
        self.hash.update(data)
        self.size += len(data)
        if time.monotonic() - self.last > 30:
            print(json.dumps({'downloaded_gib': round(self.size / 2**30, 3)}), flush=True)
            self.last = time.monotonic()
        return data


def select(name):
    if not name.startswith(PREFIX):
        return False
    rel = name[len(PREFIX):]
    if '__pycache__' in rel.split('/') or rel.endswith(('.pyc', '.a')):
        return False
    sp = 'lib/python3.10/site-packages/'
    if rel.startswith(sp):
        package = rel[len(sp):].split('/')[0]
        canonical = re.split(r'-(?=\d)', package)[0].removesuffix('.py')
        return canonical.lower() in KEEP
    return rel.startswith(('bin/python', 'lib/python3.10/', 'lib/lib', 'include/python3.10/'))


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--layer', type=int, required=True)
    parser.add_argument('--extract-env', action='store_true')
    args = parser.parse_args()
    assert ROOT.is_relative_to(Path('/home/zhaoweiming'))
    manifest = json.loads((ROOT / 'image-manifest.json').read_text())
    layer = manifest['layers'][args.layer]
    env = ROOT / 'runtime'
    if args.extract_env:
        env.mkdir(exist_ok=True)
    totals = collections.Counter()
    packages = collections.Counter()
    links = []
    written = 0
    listing = ROOT / f'layer-{args.layer}-inventory.jsonl'
    reader = Reader(get_blob(layer['digest']))
    with listing.open('w') as listing_file, tarfile.open(fileobj=reader, mode='r|gz') as archive:
        for member in archive:
            name = member.name.removeprefix('./')
            parts = PurePosixPath(name).parts
            if name.startswith('/') or '..' in parts:
                raise ValueError('unsafe tar path')
            totals['/'.join(parts[:4])] += member.size
            if name.startswith(PREFIX):
                rest = name[len(PREFIX):]
                sp = 'lib/python3.10/site-packages/'
                group = rest[len(sp):].split('/')[0] if rest.startswith(sp) else rest.split('/')[0]
                packages[group] += member.size
            listing_file.write(json.dumps({'path': name, 'size': member.size,
                                           'type': member.type.decode('ascii'),
                                           'link': member.linkname}) + '\n')
            if not args.extract_env or not select(name):
                continue
            rel = name[len(PREFIX):]
            destination = env / rel
            if not destination.resolve().is_relative_to(env.resolve()):
                raise ValueError('destination escapes isolated runtime')
            destination.parent.mkdir(parents=True, exist_ok=True)
            if member.isdir():
                destination.mkdir(exist_ok=True)
            elif member.isreg():
                if shutil.disk_usage(ROOT).free - member.size < 3 * 2**30:
                    raise RuntimeError('reserve 3 GiB disk free; selected runtime is too large')
                with archive.extractfile(member) as src, destination.open('wb') as dst:
                    shutil.copyfileobj(src, dst, length=2**20)
                destination.chmod(member.mode & 0o777)
                written += member.size
            elif member.issym() or member.islnk():
                links.append((rel, member.linkname, member.islnk()))
            else:
                raise ValueError('unexpected selected tar member type')
    # Verify the entire compressed layer, including bytes beyond tar EOF.
    while reader.read(2**20):
        pass
    assert reader.size == layer['size']
    assert 'sha256:' + reader.hash.hexdigest() == layer['digest']
    pending = []
    for rel, link, hard in links:
        dest = env / rel
        if hard or link.startswith('/'):
            target_name = link.lstrip('/')
            if not target_name.startswith(PREFIX):
                pending.append((rel, link)); continue
            target = env / target_name[len(PREFIX):]
        else:
            target = dest.parent / link
        if not target.resolve().is_relative_to(env.resolve()):
            pending.append((rel, link)); continue
        if dest.is_symlink() or dest.exists():
            dest.unlink()
        if hard:
            if target.exists():
                os.link(target, dest)
            else:
                pending.append((rel, link))
        else:
            dest.symlink_to(os.path.relpath(target, dest.parent))
    summary = {'layer': args.layer, 'compressed_gib': reader.size / 2**30,
               'sha256_verified': True, 'written_gib': written / 2**30,
               'largest_groups': totals.most_common(35), 'packages': packages.most_common(),
               'unresolved_links': pending}
    (ROOT / f'layer-{args.layer}-summary.json').write_text(json.dumps(summary, indent=2))
    print(json.dumps(summary), flush=True)


if __name__ == '__main__':
    main()
