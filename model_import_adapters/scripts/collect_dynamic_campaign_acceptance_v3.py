#!/usr/bin/env python3
"""Combine artifact gates with fixed-revision original-task eligibility review."""
from __future__ import annotations

import argparse
from collections import Counter
import hashlib
import json
from pathlib import Path


def apply_task_review(records, review):
    decisions = review["decisions"]
    keys = [(row["model_id"], row["revision"]) for row in decisions]
    if len(keys) != len(set(keys)):
        raise ValueError("Duplicate task-review identity")
    excluded = {key for key, row in zip(keys, decisions) if row.get("count_eligible") is False}
    result = []
    for record in records:
        row = {**record, "errors": list(record.get("errors", []))}
        row["artifact_gate_accepted"] = bool(row.get("accepted"))
        if (row.get("model_id"), row.get("revision")) in excluded:
            row["accepted"] = False
            row["task_contract_status"] = "requires_original_task_adapter"
            row["errors"].append("original_task_contract_not_verified")
        result.append(row)
    return result


def summarize(records, target):
    accepted = [r for r in records if r.get("accepted")]
    ids = Counter(r["model_id"] for r in accepted)
    failures = Counter()
    for row in records:
        if not row.get("accepted"):
            category = row.get("task_contract_status") or row.get("failure_stage") or "artifact_gate"
            failures[category] += 1
    return {"status": "completed" if len(ids) >= target else "in_progress",
            "target_unique_models": target, "case_attempts": len(records),
            "accepted_case_count": len(accepted), "accepted_unique_models": len(ids),
            "duplicate_accepted_model_ids": {key: count for key, count in ids.items() if count > 1},
            "failure_stage_counts": dict(failures), "missing_to_target": max(0, target - len(ids)),
            "records": records}


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--workspace", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument("--task-contract-review", type=Path, required=True)
    parser.add_argument("--target", type=int, default=300)
    args = parser.parse_args()
    if args.target <= 0 or args.output.exists():
        parser.error("Use a positive target and a new output path")
    from audit_dynamic_text_pilots import check_case

    review_bytes = args.task_contract_review.read_bytes()
    review = json.loads(review_bytes)
    roots = [args.workspace / "cases"] + sorted(args.workspace.glob("expansion-*/cases"))
    cases = sorted({case.resolve() for root in roots if root.is_dir()
                    for case in root.iterdir() if (case / "report.json").is_file()})
    records = []
    for case in cases:
        try:
            record = check_case(case, case.parents[1] / "logs")
        except Exception as exc:
            record = {"accepted": False, "errors": [f"gate_exception:{type(exc).__name__}: {exc}"]}
        records.append({**record, "case_path": str(case)})
    records = apply_task_review(records, review)
    result = summarize(records, args.target)
    result.update(task_review_path=str(args.task_contract_review),
                  task_review_sha256=hashlib.sha256(review_bytes).hexdigest(),
                  scope="Dynamic artifacts, original task contract and unique model IDs; no alternate-output substitution")
    args.output.write_text(json.dumps(result, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(json.dumps({k: v for k, v in result.items() if k != "records"}, ensure_ascii=False))
    return 0 if result["status"] == "completed" else 1


if __name__ == "__main__":
    raise SystemExit(main())
