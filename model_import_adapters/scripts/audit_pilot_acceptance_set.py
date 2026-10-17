#!/usr/bin/env python3
"""Re-audit accepted pilot records with the current evidence gate."""
from __future__ import annotations

import argparse
import json
from pathlib import Path

from audit_dynamic_text_pilots import check_case


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--acceptance", type=Path, required=True)
    parser.add_argument("--workspace", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()
    acceptance = json.loads(args.acceptance.read_text())
    records = []
    for accepted in acceptance.get("accepted_records", []):
        case = args.workspace / Path(accepted["attempt"]).relative_to("/workspace")
        log_root = case.parents[1] / "logs"
        records.append(check_case(case, log_root))
    ids = [record.get("model_id") for record in records if record.get("accepted")]
    result = {
        "status": "passed" if all(record.get("accepted") for record in records) and len(ids) == len(set(ids)) else "failed",
        "attempts": len(records), "accepted_unique_ids": len(set(ids)),
        "duplicate_accepted_ids": len(ids) - len(set(ids)), "records": records,
        "gate": "hardened_dynamic_text_evidence_gate_v2",
    }
    args.output.write_text(json.dumps(result, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(json.dumps({key: value for key, value in result.items() if key != "records"}, ensure_ascii=False))
    return 0 if result["status"] == "passed" else 1


if __name__ == "__main__":
    raise SystemExit(main())
