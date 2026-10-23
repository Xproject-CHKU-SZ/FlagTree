#!/usr/bin/env python3
"""Reproduce G2 unit, real-plan placement, verification and fail-closed checks."""

from __future__ import annotations

import argparse
from datetime import datetime, timezone
import hashlib
import json
from pathlib import Path
import platform
import subprocess
import sys


ROOT = Path(__file__).resolve().parents[2]


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--plan-root", type=Path, required=True, help="frozen G1 v3 plans directory")
    parser.add_argument("--output-dir", type=Path, required=True)
    args = parser.parse_args()
    plan_root, output = args.plan_root.resolve(), args.output_dir.resolve()
    models = [("minilm-real-graph", "minilm-l6"), ("bge-large-real-graph", "bge-large")]
    for directory, prefix in models:
        for suffix in ("", "-dynamic", "-loop"):
            path = plan_root / directory / f"{prefix}-b32-s24{suffix}-plan.json"
            if not path.is_file():
                parser.error(f"missing input: {path}")
    output.mkdir(parents=True, exist_ok=True)
    cases = []

    def run(label, arguments, expected_code=0, expected_diagnostic=None):
        command = [sys.executable] + arguments
        result = subprocess.run(command, cwd=ROOT, text=True, capture_output=True)
        (output / f"{label}.log").write_text(result.stdout + result.stderr, encoding="utf-8")
        passed = (result.returncode == expected_code and
                  (expected_diagnostic is None or expected_diagnostic in result.stdout + result.stderr))
        cases.append({"case": label, "command": command, "expected_exit_code": expected_code,
                      "actual_exit_code": result.returncode, "expected_diagnostic": expected_diagnostic, "passed": passed})
        return passed

    run("unit-tests", ["-m", "unittest", "discover", "-s", "python/test/unit/memory_planner", "-p", "test_*.py", "-v"])
    planner = "python/scripts/plan_buffer_reuse.py"
    for directory, prefix in models:
        concrete = plan_root / directory / f"{prefix}-b32-s24-plan.json"
        candidate = output / f"{prefix}-b32-s24-reuse-plan.json"
        if run(f"{prefix}-placement", [planner, str(concrete), "--serial-candidate", "--output", str(candidate)]):
            run(f"{prefix}-verification", [planner, str(concrete), "--verify", str(candidate)])
        run(f"{prefix}-reject-unproven-order", [planner, str(concrete)], 1, "explicit_serial_schedule_required")
        for suffix, diagnostic in (("dynamic", "dynamic_storage_requires_guard"), ("loop", "unsupported_control_flow")):
            path = plan_root / directory / f"{prefix}-b32-s24-{suffix}-plan.json"
            run(f"{prefix}-reject-{suffix}", [planner, str(path), "--serial-candidate"], 1, diagnostic)
    files = ["python/flagtree/memory_planner/schema.py", "python/flagtree/memory_planner/liveness.py",
             "python/flagtree/memory_planner/reuse.py", "python/scripts/plan_buffer_reuse.py",
             "python/scripts/run_g2_offline_validation.py", "python/test/unit/memory_planner/test_reuse.py"]
    commit = subprocess.run(["git", "rev-parse", "HEAD"], cwd=ROOT, text=True, capture_output=True)
    summary = {"report_version": "f08-g02-offline-validation/0.1", "timestamp_utc": datetime.now(timezone.utc).isoformat(),
               "evidence_level": "local_static_only", "ppu_executed": False,
               "python": sys.version, "platform": platform.platform(), "git_head": commit.stdout.strip(),
               "source_sha256": {path: hashlib.sha256((ROOT / path).read_bytes()).hexdigest() for path in files},
               "all_passed": all(case["passed"] for case in cases), "cases": cases}
    (output / "validation-summary.json").write_text(json.dumps(summary, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(f"{sum(c['passed'] for c in cases)}/{len(cases)} checks passed; STATIC ONLY, no device execution")
    return 0 if summary["all_passed"] else 1


if __name__ == "__main__":
    raise SystemExit(main())
