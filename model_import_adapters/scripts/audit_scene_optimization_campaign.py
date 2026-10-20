#!/usr/bin/env python3
"""Independently audit a frozen-scope replay, keeping pending IDs in the matrix."""
from __future__ import annotations

import argparse
import csv
import json
from pathlib import Path
import sys

from run_scene_optimization_campaign import audit_replay, sha256, validate_scope


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--accepted", type=Path, required=True)
    parser.add_argument("--campaign", type=Path, required=True)
    parser.add_argument("--source", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()
    args.output.mkdir(parents=True, exist_ok=False)
    sys.path.insert(0, str(args.source / "model_import_adapters/scripts"))
    rows = validate_scope(json.loads(args.accepted.read_text()))
    state = json.loads((args.campaign / "checkpoint.json").read_text())
    identity = state["identity"]
    global_errors = []
    if sha256(args.accepted) != identity["accepted_sha256"]:
        global_errors.append("accepted_inventory_hash_drift")
    if set(identity["models"]) != {x["model_id"] for x in rows} or len(identity["models"]) != 301:
        global_errors.append("campaign_scope_not_301_unique_models")
    if sha256(args.source / "source-baseline.json") != identity["source_baseline_sha256"]:
        global_errors.append("source_baseline_identity_drift")
    baseline = json.loads((args.source / "source-baseline.json").read_text())
    for item in baseline["dirty_overlay_files"]:
        relative = Path(item["path"])
        if relative.is_absolute() or ".." in relative.parts or sha256(args.source / relative) != item["sha256"]:
            global_errors.append(f"source_hash_drift:{item['path']}")
    latest = {x["model_id"]: x for x in state["records"]}
    matrix = []
    for row in rows:
        item = latest.get(row["model_id"])
        result = {"model_id": row["model_id"], "revision": row["revision"], "task": row["task"],
                  "status": "pending", "verified_shapes": 0, "errors": [], "case": None}
        if item:
            result.update(status=item["status"], case=item["case"])
            if item["status"] == "passed":
                try:
                    case = Path(item["case"])
                    audit = audit_replay(row, case, args.campaign / "logs")
                    result["errors"].extend(audit["errors"])
                    historical_files = Path(row["case"]) / "model-files.json"
                    if sha256(historical_files) != row["model_files_sha256"]:
                        result["errors"].append("historical_model_files_hash_drift")
                    old_files = json.loads(historical_files.read_text())
                    new_files = json.loads((case / "model-files.json").read_text())
                    if old_files != new_files:
                        result["errors"].append("model_snapshot_or_weight_hash_drift")
                    result.update(status="failed" if result["errors"] else "passed",
                                  verified_shapes=0 if result["errors"] else 5,
                                  report_sha256=sha256(case / "report.json"))
                except Exception as exc:
                    result.update(status="failed", errors=[f"audit_exception:{type(exc).__name__}:{exc}"])
            else:
                result["errors"] = item.get("errors", [])
        matrix.append(result)
    passed = sum(x["status"] == "passed" for x in matrix)
    failed = sum(x["status"] == "failed" for x in matrix)
    status = "failed" if global_errors or failed else "passed" if passed == 301 else "incomplete"
    report = {"stage": "B0_four_route_compatibility", "status": status, "planned_models": 301,
              "planned_shapes": 1505, "passed_models": passed, "failed_models": failed,
              "pending_models": 301-passed-failed, "verified_shapes": sum(x["verified_shapes"] for x in matrix),
              "campaign_status": state["status"], "global_errors": global_errors,
              "optimization_acceptance": "not_evaluated", "paired_speedup_acceptance": "not_evaluated",
              "identity": identity, "models": matrix}
    (args.output / "report.json").write_text(json.dumps(report, indent=2, ensure_ascii=False) + "\n", encoding="utf-8")
    with (args.output / "matrix.csv").open("w", newline="", encoding="utf-8-sig") as stream:
        writer = csv.DictWriter(stream, fieldnames=["model_id", "revision", "task", "status", "verified_shapes", "case", "errors"])
        writer.writeheader()
        for item in matrix:
            writer.writerow({key: item.get(key) for key in writer.fieldnames})
    text = ("# 301模型新基线核验记录\n\n"
            f"阶段：B0四路兼容性；状态：{status}。\n\n"
            f"固定范围301模型/1505组输入；本次核验通过{passed}模型/{report['verified_shapes']}组，"
            f"失败{failed}模型，待完成{report['pending_models']}模型。\n\n"
            "本记录不是优化后的最终验收报告。尚未评价B1优化命中、配对加速比和全量优化后回归；"
            "历史通过数不计作本次新基线通过数，未完成项不从301模型分母移除。\n\n"
            f"全局错误：{json.dumps(global_errors,ensure_ascii=False)}。逐模型结果见同目录report.json和matrix.csv。\n")
    (args.output / "基线核验记录.md").write_text(text, encoding="utf-8")
    print(json.dumps({key: value for key, value in report.items() if key not in {"identity", "models"}}))
    return 0 if status == "passed" else 1 if status == "failed" else 2


if __name__ == "__main__":
    raise SystemExit(main())
