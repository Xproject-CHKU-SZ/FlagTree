"""Verify the archived file inventory and Python syntax without importing GPU code."""
import ast
import hashlib
import json
from pathlib import Path
import sys

ROOT = Path(__file__).resolve().parents[1]


def main():
    manifest = json.loads((ROOT / "MANIFEST.json").read_text(encoding="utf-8"))
    errors = []
    for name, digest in manifest["files"].items():
        path = ROOT / name
        if not path.is_file():
            errors.append([name, "missing"])
        elif hashlib.sha256(path.read_bytes()).hexdigest() != digest:
            errors.append([name, "hash mismatch"])
    original = json.loads((ROOT / "SOURCE_MANIFEST.json").read_text(encoding="utf-8"))
    actual = {str(path.relative_to(ROOT)) for path in (ROOT / "source").rglob("*.py")}
    if actual != set(original):
        errors.append(["source", "inventory mismatch"])
    for name, digest in original.items():
        path = ROOT / name
        if not path.is_file() or hashlib.sha256(path.read_bytes()).hexdigest() != digest:
            errors.append([name, "original source mismatch"])
    checked = 0
    for name in manifest["files"]:
        path = ROOT / name
        if path.suffix == ".py" and path.is_file():
            try:
                ast.parse(path.read_bytes(), filename=name)
                checked += 1
            except SyntaxError as error:
                errors.append([name, str(error)])
    print(json.dumps({"status": "passed" if not errors else "failed",
                      "files": len(manifest["files"]), "frozen_source_files": len(original),
                      "python_syntax_checked": checked, "gpu_execution": "not_run",
                      "errors": errors}, ensure_ascii=False, indent=2))
    return int(bool(errors))


if __name__ == "__main__":
    sys.exit(main())
