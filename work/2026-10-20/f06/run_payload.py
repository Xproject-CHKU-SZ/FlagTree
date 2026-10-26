"""Overlay source graph_fusion/FlagTune on installed Triton, then run one target."""
import importlib.util
import os
from pathlib import Path
import runpy
import sys
ROOT = Path(__file__).resolve().parent
SOURCE = ROOT / 'source'
def bootstrap():
    import triton
    import triton.experimental
    overlays = ((triton, SOURCE / 'python/triton'),
                (triton.experimental, SOURCE / 'python/triton/experimental'))
    for package, path in overlays:
        if str(path) not in package.__path__:
            package.__path__.insert(0, str(path))
    package = SOURCE / 'python/triton/flagtune'
    spec = importlib.util.spec_from_file_location(
        'triton.flagtune', package / '__init__.py', submodule_search_locations=[str(package)])
    module = importlib.util.module_from_spec(spec)
    sys.modules['triton.flagtune'] = module
    triton.flagtune = module
    spec.loader.exec_module(module)
def main():
    relative = Path(sys.argv[1])
    source = SOURCE.resolve()
    assert relative.suffix == '.py' and not relative.is_absolute() and '..' not in relative.parts
    target = (source / relative).resolve(strict=True)
    assert target.is_file() and (target == source or source in target.parents)
    if os.environ.get('F06_ORIGINAL_BASELINE') != '1' and os.environ.get('F06_INDUCTOR_BASELINE') != '1':
        bootstrap()
    arguments = sys.argv[2:]
    if target.name.startswith('test_') or target.name.endswith('_test.py'):
        import pytest
        return int(pytest.main(['--rootdir', str(source), '--confcutdir', str(target.parent),
                                '-p', 'no:cacheprovider', str(target), *arguments]))
    sys.argv = [str(target), *arguments]
    runpy.run_path(str(target), run_name='__main__')
    return 0
if __name__ == '__main__':
    raise SystemExit(main())
