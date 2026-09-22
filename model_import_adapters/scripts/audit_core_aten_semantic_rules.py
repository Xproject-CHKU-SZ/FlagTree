#!/usr/bin/env python3
"""Audit executable FlagTree semantic rules for an existing Core ATen PT2."""

from __future__ import annotations

import argparse
import json
from collections import Counter
from pathlib import Path
from typing import Any

from flagtree_model_ir import build_semantic_contract
from model_import_adapters.unified_ir import load_core_aten, summarize_exported_program


def _write_json(path: Path, value: Any) -> None:
    path.write_text(json.dumps(value, ensure_ascii=False, indent=2), encoding="utf-8")


def _rule_breakdown(contract: dict[str, Any], status: str) -> list[dict[str, Any]]:
    counts: Counter[tuple[str, str, str]] = Counter()
    for instance in contract.get("operator_instances", []):
        for kind, check in instance.get("rule_evaluation", {}).get("checks", {}).items():
            if check.get("status") == status:
                counts[
                    (
                        str(instance.get("family") or "unregistered"),
                        str(kind),
                        str(check.get("rule", "")),
                    )
                ] += 1
    return [
        {"family": family, "kind": kind, "rule": rule, "count": count}
        for (family, kind, rule), count in counts.most_common()
    ]


def _markdown(report: dict[str, Any]) -> str:
    coverage = report["coverage"]
    lines = [
        "# Core ATen 可执行语义规则审计",
        "",
        f"- 模型：`{report['entry']}`",
        f"- PT2：`{report['core_aten_path']}`",
        f"- 注册表版本：`{report['registry_version']}`",
        f"- 注册表 SHA-256：`{report['registry_sha256']}`",
        f"- 契约校验：**{report['validation']['status']}**",
        "",
        "## 覆盖结果",
        "",
        "| 指标 | 数量 |",
        "|---|---:|",
        f"| Core ATen 算子实例 | {report['operator_instance_count']} |",
        f"| 规则检查总数 | {coverage['total']} |",
        f"| 已实际执行 | {coverage['executed']} |",
        f"| 通过 | {coverage['passed']} |",
        f"| 失败 | {coverage['failed']} |",
        f"| 尚未实现 | {coverage['not_implemented']} |",
        f"| 元数据不足 | {coverage['insufficient_metadata']} |",
        f"| 真实执行比例 | {coverage['execution_ratio']:.2%} |",
        "",
    ]
    for key, title in (
        ("not_implemented_breakdown", "尚未实现规则"),
        ("insufficient_metadata_breakdown", "元数据不足规则"),
    ):
        lines.extend([f"## {title}", ""])
        entries = report[key]
        if not entries:
            lines.extend(["无。", ""])
            continue
        lines.extend(["| 算子族 | 类别 | 规则 | 数量 |", "|---|---|---|---:|"])
        for item in entries:
            lines.append(
                f"| `{item['family']}` | {item['kind']} | `{item['rule']}` | {item['count']} |"
            )
        lines.append("")
    lines.extend(
        [
            "## 说明",
            "",
            "“真实执行比例”只统计已经运行检查器的规则；注册表已登记但尚未实现、"
            "或当前图元数据不足的规则不会被算作通过。该结果不等价于 XPU Kernel 覆盖率。",
            "",
        ]
    )
    return "\n".join(lines)


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--core-aten", type=Path, required=True)
    parser.add_argument("--output-dir", type=Path, required=True)
    parser.add_argument("--entry", required=True)
    parser.add_argument("--source-kind", default="unspecified")
    parser.add_argument("--dynamic-shapes-requested", action="store_true")
    args = parser.parse_args()

    output_dir = args.output_dir.resolve()
    output_dir.mkdir(parents=True, exist_ok=True)
    core_aten_path = args.core_aten.resolve()
    exported_program = load_core_aten(core_aten_path)
    manifest = summarize_exported_program(
        exported_program,
        source={"kind": args.source_kind, "entry": args.entry},
        export_mode={
            "dynamic_shapes_requested": args.dynamic_shapes_requested,
            "audit_existing_artifact": True,
        },
    )
    contract = build_semantic_contract(manifest)
    coverage = contract["coverage"]["rule_checks"]
    report = {
        "status": contract["validation"]["status"],
        "entry": args.entry,
        "core_aten_path": str(core_aten_path),
        "core_aten_size_bytes": core_aten_path.stat().st_size,
        "registry_version": contract["registry_version"],
        "registry_sha256": contract["registry_sha256"],
        "graph_count": len(manifest["graphs"]),
        "operator_instance_count": len(contract["operator_instances"]),
        "coverage": coverage,
        "validation": contract["validation"],
        "not_implemented_breakdown": _rule_breakdown(contract, "not_implemented"),
        "insufficient_metadata_breakdown": _rule_breakdown(
            contract, "insufficient_metadata"
        ),
    }
    _write_json(output_dir / "manifest.json", manifest)
    _write_json(output_dir / "semantics.json", contract)
    _write_json(output_dir / "semantic_rule_audit.json", report)
    (output_dir / "semantic_rule_audit.md").write_text(
        _markdown(report), encoding="utf-8"
    )
    print(json.dumps(report, ensure_ascii=False, indent=2))
    return 0 if report["status"] == "passed" else 1


if __name__ == "__main__":
    raise SystemExit(main())
