from __future__ import annotations

import argparse
import json
from pathlib import Path

from flagtree_model_ir.onnx_coverage import (
    analyze_onnx_corpus,
    write_onnx_coverage_report,
)


def main() -> int:
    parser = argparse.ArgumentParser(
        description="Audit ONNX corpus coverage against FlagTree model IR semantics."
    )
    parser.add_argument("--root", action="append", type=Path, required=True)
    parser.add_argument("--output-dir", type=Path, required=True)
    parser.add_argument("--fail-on-unregistered", action="store_true")
    args = parser.parse_args()

    report = analyze_onnx_corpus(args.root)
    json_path, markdown_path = write_onnx_coverage_report(report, args.output_dir)
    print(json.dumps(report["summary"], ensure_ascii=False, indent=2))
    print(f"JSON={json_path.resolve()}")
    print(f"MARKDOWN={markdown_path.resolve()}")
    if report["status"] == "partial":
        return 1
    if args.fail_on_unregistered and report["unregistered_operators"]:
        return 2
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
