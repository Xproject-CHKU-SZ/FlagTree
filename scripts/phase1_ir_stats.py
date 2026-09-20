#!/usr/bin/env python3
"""Collect lightweight structural statistics from dumped Triton/MLIR text."""

from __future__ import annotations

import argparse
import json
import re
from pathlib import Path


OP_PATTERNS = {
    "arith.constant": r"\barith\.constant\b",
    "arith.cmp": r"\barith\.cmp[if]\b",
    "arith.cast": r"\barith\.(extf|truncf|extsi|extui|trunci|index_cast)\b",
    "ttg.convert_layout": r"\bttg\.convert_layout\b",
    "tt.load": r"\btt\.load\b",
    "tt.store": r"\btt\.store\b",
    "tt.local_load": r"\bttg\.local_load\b",
    "tt.local_store": r"\bttg\.local_store\b",
    "ttg.local_alloc": r"\bttg\.local_alloc\b",
    "tt.dot": r"\btt\.dot\b",
    "tt.addptr": r"\btt\.addptr\b",
    "scf.for": r"\bscf\.for\b",
    "scf.if": r"\bscf\.if\b",
}


def collect_stats(text: str) -> dict[str, int]:
    stats = {name: len(re.findall(pattern, text)) for name, pattern in OP_PATTERNS.items()}
    stats["operation_lines"] = sum(
        1
        for line in text.splitlines()
        if re.search(r"=\s*[A-Za-z_][A-Za-z0-9_.]*\s|\b(tt|ttg|arith|scf)\.", line)
        and not line.lstrip().startswith("//")
    )
    stats["layout_and_cast_ops"] = stats["ttg.convert_layout"] + stats["arith.cast"]
    stats["memory_ops"] = (
        stats["tt.load"]
        + stats["tt.store"]
        + stats["tt.local_load"]
        + stats["tt.local_store"]
        + stats["ttg.local_alloc"]
    )
    return stats


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("inputs", nargs="+", type=Path)
    parser.add_argument("--output", type=Path)
    args = parser.parse_args()

    records = []
    for path in args.inputs:
        text = path.read_text(encoding="utf-8")
        records.append({"path": str(path), "bytes": len(text.encode("utf-8")), "stats": collect_stats(text)})

    payload = {"format": 1, "records": records}
    rendered = json.dumps(payload, ensure_ascii=False, indent=2) + "\n"
    if args.output:
        args.output.parent.mkdir(parents=True, exist_ok=True)
        args.output.write_text(rendered, encoding="utf-8")
    else:
        print(rendered, end="")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
