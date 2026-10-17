#!/usr/bin/env python3
"""Aggregate every attempted dynamic case without silently dropping failures."""
from __future__ import annotations

import argparse
from collections import Counter
import json
from pathlib import Path

from audit_dynamic_text_pilots import check_case


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--workspace", type=Path, required=True)
    parser.add_argument("--case-roots", type=Path, nargs="+", required=True)
    parser.add_argument("--log-root", type=Path, required=True)
    parser.add_argument("--target", type=int, default=300)
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()
    cases = sorted({case.resolve() for root in args.case_roots if root.is_dir() for case in root.iterdir() if (case / "report.json").is_file()})
    records = []
    for case in cases:
        try:
            records.append(check_case(case, args.log_root))
        except Exception as exc:  # evidence must remain visible as a failed record
            records.append({"attempt": str(case), "accepted": False, "errors": [f"gate_exception:{type(exc).__name__}: {exc}"]})
    accepted = [record for record in records if record.get("accepted")]
    by_id: dict[str, list[dict]] = {}
    for record in accepted:
        by_id.setdefault(str(record.get("model_id")), []).append(record)
    unique = {model_id: values[0] for model_id, values in by_id.items() if model_id and len(values) == 1}
    duplicates = {model_id: values for model_id, values in by_id.items() if len(values) > 1}
    failure_stage_counts = Counter()
    for record in records:
        if not record.get("accepted"):
            report = record.get("raw_error") or record.get("failure_stage") or "evidence_gate"
            failure_stage_counts[str(report).split(":", 1)[0]] += 1
    result = {
        "status": "completed" if len(unique) >= args.target else "in_progress",
        "target_unique_models": args.target, "case_attempts": len(records),
        "accepted_case_count": len(accepted), "accepted_unique_models": len(unique),
        "duplicate_accepted_model_ids": {key: len(value) for key, value in duplicates.items()},
        "failure_stage_counts": dict(failure_stage_counts),
        "missing_to_target": max(0, args.target - len(unique)),
        "records": records,
        "scope": "All discovered case directories; no static or synthetic case is inferred as dynamic model coverage",
    }
    args.output.write_text(json.dumps(result, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(json.dumps({key: value for key, value in result.items() if key not in {"records", "duplicate_accepted_model_ids", "failure_stage_counts"}}, ensure_ascii=False))
    return 0 if result["status"] == "completed" else 1


if __name__ == "__main__":
    raise SystemExit(main())
