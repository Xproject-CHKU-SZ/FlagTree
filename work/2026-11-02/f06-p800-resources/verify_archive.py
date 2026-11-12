"""Safely materialize and hash every artifact before remote cleanup."""
import hashlib
import json
from pathlib import Path, PurePosixPath
import tarfile

ROOT = Path(__file__).resolve().parent
archive = ROOT/'p800-f06-artifacts.tar.gz'
destination = ROOT/'artifacts'
destination.mkdir(exist_ok=False)
with tarfile.open(archive, 'r:gz') as bundle:
    members = bundle.getmembers()
    names = [m.name for m in members]
    assert len(names) == len(set(names))
    manifest_bytes = bundle.extractfile('archive-manifest.json').read()
    manifest = json.loads(manifest_bytes)
    assert set(names) == set(manifest['files']) | {'archive-manifest.json','archive-files.txt'}
    for index, member in enumerate(members, 1):
        path = PurePosixPath(member.name)
        assert not path.is_absolute() and '..' not in path.parts
        assert member.isfile() or (member.islnk() and member.linkname in names), member.name
        output = destination/member.name
        output.parent.mkdir(parents=True, exist_ok=True)
        digest = hashlib.sha256()
        size = 0
        with bundle.extractfile(member) as source, output.open('xb') as target:
            for block in iter(lambda:source.read(1024*1024), b''):
                target.write(block); digest.update(block); size += len(block)
        if member.name in manifest['files']:
            expected = manifest['files'][member.name]
            assert digest.hexdigest() == expected['sha256'] and size == expected['size'], member.name
        if index % 10000 == 0:
            print(f'Verified {index} artifact files', flush=True)
with archive.open('rb') as handle:
    archive_digest = hashlib.file_digest(handle, 'sha256').hexdigest()
ready = dict(local_archive_verified=True, local_archive=str(archive), archive_sha256=archive_digest,
             manifest_sha256=hashlib.sha256(manifest_bytes).hexdigest(),
             verified_file_count=len(manifest['files']), total_artifact_bytes=sum(x['size'] for x in manifest['files'].values()))
(ROOT/'cleanup-ready.json').write_text(json.dumps(ready, indent=2)+'\n')
print(json.dumps(ready))
