#!/usr/bin/env python3
"""Validate one or more F08-G01 model-plan JSON files."""

from __future__ import annotations

import argparse
import importlib.util
import json
from pathlib import Path
import sys


def _load_validator():
    """Load the validator without importing FlagTree's native runtime."""

    schema_path = Path(__file__).resolve().parents[1] / "flagtree" / "memory_planner" / "schema.py"
    spec = importlib.util.spec_from_file_location("flagtree_model_plan_schema", schema_path)
    if spec is None or spec.loader is None:
        raise RuntimeError(f"cannot load validator from {schema_path}")
    module = importlib.util.module_from_spec(spec)
    sys.modules[spec.name] = module
    spec.loader.exec_module(module)
    return module.validate_model_plan


validate_model_plan = _load_validator()


def _parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(
        description="Validate F08-G01 model-plan JSON structure and graph references."
    )
    parser.add_argument("plans", nargs="+", type=Path, help="JSON plan files to validate")
    return parser.parse_args()


def main() -> int:
    args = _parse_args()
    failed = False
    for plan_path in args.plans:
        try:
            with plan_path.open("r", encoding="utf-8") as handle:
                document = json.load(handle)
        except (OSError, json.JSONDecodeError) as error:
            failed = True
            print(f"INVALID {plan_path}")
            print(f"  $: [invalid_json] {error}")
            continue

        issues = validate_model_plan(document)
        if issues:
            failed = True
            print(f"INVALID {plan_path}")
            for issue in issues:
                print(f"  {issue.format()}")
        else:
            print(f"VALID {plan_path}")
    return 1 if failed else 0


if __name__ == "__main__":
    sys.exit(main())
