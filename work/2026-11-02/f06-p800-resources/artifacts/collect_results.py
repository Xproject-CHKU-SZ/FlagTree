"""Read-only snapshot of benchmark records; safe while workers write atomically."""
import json
from pathlib import Path
import time

ROOT = Path(__file__).resolve().parent


def main():
    dataset = dict(collected_at=time.time(), runs=[], results=[])
    for directory in sorted((ROOT/'results').glob('*')):
        if not directory.is_dir():
            continue
        run = directory/'run.json'
        if run.exists():
            try:
                value = json.loads(run.read_text())
            except json.JSONDecodeError:
                continue
            dataset['runs'].append(dict(name=directory.name, manifest=value))
        for path in sorted(directory.glob('*/result.json')):
            value = json.loads(path.read_text())
            dataset['results'].append(dict(run=directory.name, path=str(path.relative_to(ROOT)), result=value))
    for name in ('coverage-launch.json', 'full-source-manifest.json', 'runtime-probe.json',
                 'split-v2-launch.json', 'split-v2-source-manifest.json', 'final-hardware.json',
                 'environment-packages.json'):
        path = ROOT/name
        if path.exists():
            dataset[name] = json.loads(path.read_text())
    print(json.dumps(dataset))


if __name__ == '__main__':
    main()
