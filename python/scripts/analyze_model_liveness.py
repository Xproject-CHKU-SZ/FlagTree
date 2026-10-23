#!/usr/bin/env python3
"""Emit an F08-G01 model-level lifetime report as JSON."""

from __future__ import annotations

import argparse
import importlib.util
import json
from pathlib import Path
import sys
import types


REPO_ROOT = Path(__file__).resolve().parents[2]
PACKAGE_DIR = REPO_ROOT / "python" / "flagtree" / "memory_planner"


def _load_module(module_name: str, filename: str):
    spec = importlib.util.spec_from_file_location(module_name, PACKAGE_DIR / filename)
    if spec is None or spec.loader is None:
        raise RuntimeError(f"cannot load {filename}")
    module = importlib.util.module_from_spec(spec)
    sys.modules[module_name] = module
    spec.loader.exec_module(module)
    return module


def _load_analyser():
    # Avoid importing flagtree/__init__.py: on a source checkout that can require
    # a platform-specific native Triton extension unrelated to this pure-Python tool.
    package_name = "flagtree_model_plan"
    package = types.ModuleType(package_name)
    package.__path__ = [str(PACKAGE_DIR)]
    sys.modules[package_name] = package
    _load_module(f"{package_name}.schema", "schema.py")
    return _load_module(f"{package_name}.liveness", "liveness.py")


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("plan", type=Path, help="model-plan JSON file")
    parser.add_argument("--output", type=Path, help="write report to this file instead of stdout")
    args = parser.parse_args()

    with args.plan.open("r", encoding="utf-8") as handle:
        document = json.load(handle)

    analyser = _load_analyser()
    try:
        report = analyser.analyze_model_lifetimes(document).to_dict()
    except analyser.ModelPlanAnalysisError as error:
        print(str(error), file=sys.stderr)
        return 1

    rendered = json.dumps(report, ensure_ascii=False, indent=2) + "\n"
    if args.output:
        args.output.write_text(rendered, encoding="utf-8")
    else:
        sys.stdout.write(rendered)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
