"""Inventory reproducibility artifacts, excluding re-downloadable environments."""
from email.parser import Parser
import hashlib
import json
from pathlib import Path
import time

ROOT = Path(__file__).resolve().parent


def main():
    assert ROOT == Path('/home/zhaoweiming/f06-resources-20261102') and not ROOT.is_symlink()
    packages = []
    for path in sorted((ROOT/'env/lib/python3.10/site-packages').glob('*.dist-info/METADATA')):
        metadata = Parser().parsestr(path.read_text())
        packages.append(dict(name=metadata['Name'], version=metadata['Version']))
    (ROOT/'environment-packages.json').write_text(json.dumps(packages, indent=2)+'\n')
    # Only this task's scripts, results, compiler artifacts and provenance.
    # Wheels and installed libraries can be reconstructed from retained hashes.
    selected = [p for p in ROOT.iterdir() if p.is_file() and p.suffix in ('.py','.sh','.json','.log','.txt','.pid')]
    for name in ('source','reference','results','runtime-control'):
        selected.extend(p for p in (ROOT/name).rglob('*') if p.is_file() or p.is_symlink())
    paths = sorted(set(selected))
    manifest = dict(created_at=time.time(), root=str(ROOT), files={})
    for path in paths:
        assert not path.is_symlink(), path
        assert path.resolve().is_relative_to(ROOT)
        if path.name in ('archive-manifest.json','archive-files.txt'):
            continue
        digest = hashlib.file_digest(path.open('rb'), 'sha256').hexdigest()
        manifest['files'][str(path.relative_to(ROOT))] = dict(size=path.stat().st_size, sha256=digest)
    (ROOT/'archive-manifest.json').write_text(json.dumps(manifest, indent=2)+'\n')
    (ROOT/'archive-files.txt').write_text('\n'.join(manifest['files'])+'\narchive-manifest.json\narchive-files.txt\n')
    print(json.dumps(dict(files=len(manifest['files']), bytes=sum(v['size'] for v in manifest['files'].values()))))


if __name__ == '__main__':
    main()
