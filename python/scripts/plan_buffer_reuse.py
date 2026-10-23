#!/usr/bin/env python3
"""Emit or independently verify an offline F08-G02 buffer placement candidate."""

from __future__ import annotations

import argparse
import importlib.util
import json
from pathlib import Path
import sys
import types


PACKAGE_DIR = Path(__file__).resolve().parents[2] / "python" / "flagtree" / "memory_planner"


def _load():
    name = "flagtree_offline_reuse"
    package = types.ModuleType(name)
    package.__path__ = [str(PACKAGE_DIR)]
    sys.modules[name] = package
    modules = {}
    for filename in ("schema", "liveness", "reuse"):
        spec = importlib.util.spec_from_file_location(f"{name}.{filename}", PACKAGE_DIR / f"{filename}.py")
        module = importlib.util.module_from_spec(spec)
        sys.modules[spec.name] = module
        spec.loader.exec_module(module)
        modules[filename] = module
    return modules


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("plan", type=Path)
    schedule = parser.add_mutually_exclusive_group()
    schedule.add_argument("--serial-candidate", action="store_true",
                          help="propose a serial topological order; NOT observed runtime order")
    schedule.add_argument("--task-order", type=Path, help="JSON array of task IDs defining a proposed serial order")
    parser.add_argument("--verify", type=Path, help="independently verify an existing reuse-plan JSON")
    parser.add_argument("--output", type=Path)
    args = parser.parse_args()
    if args.verify and (args.serial_candidate or args.task_order or args.output):
        parser.error("--verify cannot be combined with schedule/output options")
    modules = _load()
    try:
        document = json.loads(args.plan.read_text(encoding="utf-8"))
        if args.verify:
            report = json.loads(args.verify.read_text(encoding="utf-8"))
            issues = modules["reuse"].verify_buffer_reuse_plan(document, report)
            if issues:
                print("INVALID STATIC CANDIDATE\n" + "\n".join(issues), file=sys.stderr)
                return 1
            print("VALID STATIC CANDIDATE ONLY; runtime application is not validated")
            return 0
        order = None
        if args.serial_candidate:
            order = list(modules["liveness"].analyze_model_lifetimes(document).task_order)
        elif args.task_order:
            order = json.loads(args.task_order.read_text(encoding="utf-8"))
            if not isinstance(order, list):
                parser.error("--task-order file must contain a JSON array")
        report = modules["reuse"].propose_buffer_reuse_plan(document, task_order=order)
        rendered = json.dumps(report, ensure_ascii=False, indent=2) + "\n"
        if args.output:
            args.output.write_text(rendered, encoding="utf-8")
        else:
            sys.stdout.write(rendered)
    except (modules["liveness"].ModelPlanAnalysisError, OSError, json.JSONDecodeError) as error:
        print(str(error), file=sys.stderr)
        return 1
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
