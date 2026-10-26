"""Load existing pinned helpers; never install or patch shared dependencies."""
import json
from pathlib import Path
import sys
from rotary_contracts import require, sha, fingerprint

HERE = Path(__file__).resolve().parent
REPO = HERE.parents[2]
V4 = HERE.parent/'f08_flagtree_top5_20261024_v4'
OFFLINE = HERE.parent/'f08_qwen_rotary_feasibility_20261024'


def verify_dependencies():
    pins = json.loads((HERE/'DEPENDENCIES.json').read_text())
    for name,digest in pins.items():
        require(sha(REPO/name) == digest, 'dependency mismatch: '+name)
    return pins


def source_identity():
    return {p.name:sha(p) for p in sorted(HERE.iterdir()) if p.suffix in ('.py','.json','.md')}


def helpers():
    for path in (OFFLINE, V4):
        if str(path) not in sys.path:
            sys.path.insert(0,str(path))
    import support
    return support


def identity(bridge, args):
    support = helpers()
    return fingerprint({'new_entry':source_identity(), 'dependencies':verify_dependencies(),
                        'ppu_driver_sha256':driver_identity()['sha256'],
                        'existing_v4':support.identity(bridge,args)})


def driver_identity():
    """Called only after PPU guard/import; capture actual installed launch driver."""
    import importlib
    import inspect
    module=importlib.import_module('triton.backends.ppu.driver')
    path=Path(inspect.getfile(module))
    return {'path':str(path),'sha256':sha(path)}


def verify_manifest(root):
    """New entry's own manifest uses repo-relative paths, excludes itself."""
    seen = set()
    for line in (root/'MANIFEST.sha256').read_text().splitlines():
        digest,name = line.split('  ',1)
        path = (REPO/name).resolve()
        require(path.parent == root.resolve() and path not in seen and path.name != 'MANIFEST.sha256',
                'unsafe/duplicate own manifest entry')
        require(sha(path) == digest, 'new entry source mismatch: '+name)
        seen.add(path)
    expected = {p.resolve() for p in root.iterdir() if p.is_file() and p.name != 'MANIFEST.sha256'}
    require(seen == expected, 'new entry manifest coverage mismatch')
    return len(seen)
