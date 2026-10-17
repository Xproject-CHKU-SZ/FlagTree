#!/usr/bin/env python3
"""Aggregate all dynamic case directories with per-batch log roots."""
from __future__ import annotations

import argparse
from collections import Counter
import json
from pathlib import Path

from audit_dynamic_text_pilots import check_case


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--workspace", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument("--target", type=int, default=300)
    args = parser.parse_args()
    case_roots = [args.workspace / "cases"] + sorted(args.workspace.glob("expansion-*/cases"))
    cases = sorted({case.resolve() for root in case_roots if root.is_dir() for case in root.iterdir() if (case / "report.json").is_file()})
    records = []
    for case in cases:
        log_root = case.parents[1] / "logs"
        try:
            records.append(check_case(case, log_root))
        except Exception as exc:
            records.append({"attempt": str(case), "accepted": False, "errors": [f"gate_exception:{type(exc).__name__}: {exc}"]})
    accepted = [r for r in records if r.get("accepted")]
    by_id: dict[str, list] = {}
    for r in accepted:
        by_id.setdefault(str(r.get("model_id")), []).append(r)
    # Retried success is one model ID, not zero models or extra coverage.
    unique = {key: value[0] for key, value in by_id.items() if key}
    failures = Counter()
    for r in records:
        if not r.get("accepted"):
            failures[str(r.get("failure_stage") or r.get("errors", ["unknown"])[0]).split(":", 1)[0]] += 1
    result = {"status": "completed" if len(unique) >= args.target else "in_progress", "target_unique_models": args.target,
              "case_attempts": len(records), "accepted_case_count": len(accepted), "accepted_unique_models": len(unique),
              "duplicate_accepted_model_ids": {key: len(value) for key, value in by_id.items() if len(value) > 1},
              "failure_stage_counts": dict(failures), "missing_to_target": max(0, args.target - len(unique)),
              "records": records, "scope": "All dynamic case directories; hardened gate; no static/synthetic inference"}
    args.output.write_text(json.dumps(result, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(json.dumps({key: value for key, value in result.items() if key not in {"records", "duplicate_accepted_model_ids", "failure_stage_counts"}}, ensure_ascii=False))
    return 0 if result["status"] == "completed" else 1


if __name__ == "__main__":
    raise SystemExit(main())
