"""Corpus-level ONNX coverage audit for the FlagTree semantic registry."""

from __future__ import annotations

import hashlib
import json
import os
from collections import Counter, defaultdict
from pathlib import Path
from typing import Any, Iterable, Sequence

from .registry import (
    get_semantics_registry,
    lookup_operator_family,
    semantics_registry_digest,
)


DEFAULT_EXCLUDED_DIRECTORIES = frozenset(
    {
        ".git",
        ".venv",
        "__pycache__",
        "artifacts",
        "node_modules",
        "python_deps",
        "python_deps_ort",
        "python_deps_torch29",
    }
)


def _is_excluded_directory(name: str, excluded: set[str]) -> bool:
    return name in excluded or name.startswith("python_deps")


def discover_onnx_files(
    roots: Sequence[str | Path],
    *,
    excluded_directories: Iterable[str] = DEFAULT_EXCLUDED_DIRECTORIES,
) -> list[Path]:
    """Discover ONNX files while pruning dependency caches and old artifacts."""

    excluded = set(excluded_directories)
    files: set[Path] = set()
    for raw_root in roots:
        root = Path(raw_root).resolve()
        if not root.exists():
            raise FileNotFoundError(root)
        if root.is_file():
            if root.suffix.lower() == ".onnx":
                files.add(root)
            continue
        for directory, names, filenames in os.walk(root):
            names[:] = [
                name for name in names if not _is_excluded_directory(name, excluded)
            ]
            for filename in filenames:
                if filename.lower().endswith(".onnx"):
                    files.add((Path(directory) / filename).resolve())
    return sorted(files, key=lambda path: str(path).lower())


def _sha256(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for block in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(block)
    return digest.hexdigest()


def _walk_graph_nodes(graph: Any, scope: str = "main") -> Iterable[dict[str, str]]:
    import onnx

    for index, node in enumerate(graph.node):
        node_scope = f"{scope}/{node.name or f'{node.op_type}_{index}'}"
        yield {
            "scope": node_scope,
            "domain": node.domain or "ai.onnx",
            "op_type": node.op_type,
        }
        for attribute in node.attribute:
            if attribute.type == onnx.AttributeProto.GRAPH:
                yield from _walk_graph_nodes(
                    attribute.g, f"{node_scope}/{attribute.name}"
                )
            elif attribute.type == onnx.AttributeProto.GRAPHS:
                for graph_index, child in enumerate(attribute.graphs):
                    yield from _walk_graph_nodes(
                        child, f"{node_scope}/{attribute.name}_{graph_index}"
                    )


def analyze_onnx_model(path: str | Path) -> dict[str, Any]:
    """Count standard and nested-graph operators in one ONNX model."""

    import onnx

    model_path = Path(path).resolve()
    model = onnx.load(str(model_path), load_external_data=False)
    operator_counts: Counter[str] = Counter()
    family_counts: Counter[str] = Counter()
    registered_node_count = 0
    nodes = list(_walk_graph_nodes(model.graph))
    for node in nodes:
        key = f"{node['domain']}::{node['op_type']}"
        operator_counts[key] += 1
        family = lookup_operator_family(node["op_type"], "onnx")
        if family is not None:
            registered_node_count += 1
            family_counts[str(family["id"])] += 1
    missing = sorted(
        key
        for key in operator_counts
        if lookup_operator_family(key.split("::", 1)[1], "onnx") is None
    )
    return {
        "path": str(model_path),
        "size_bytes": model_path.stat().st_size,
        "ir_version": int(model.ir_version),
        "opsets": [
            {"domain": item.domain or "ai.onnx", "version": int(item.version)}
            for item in model.opset_import
        ],
        "node_count": len(nodes),
        "registered_node_count": registered_node_count,
        "node_coverage_ratio": (
            registered_node_count / len(nodes) if nodes else 1.0
        ),
        "operator_counts": dict(sorted(operator_counts.items())),
        "family_counts": dict(sorted(family_counts.items())),
        "unregistered_operators": missing,
        "full_registry_coverage": not missing,
    }


def analyze_onnx_corpus(
    roots: Sequence[str | Path],
    *,
    excluded_directories: Iterable[str] = DEFAULT_EXCLUDED_DIRECTORIES,
) -> dict[str, Any]:
    """Audit a corpus, deduplicating byte-identical model copies by SHA-256."""

    discovered = discover_onnx_files(
        roots, excluded_directories=excluded_directories
    )
    aliases: dict[str, list[str]] = defaultdict(list)
    canonical: dict[str, Path] = {}
    hash_errors: list[dict[str, str]] = []
    for path in discovered:
        try:
            digest = _sha256(path)
        except OSError as exc:
            hash_errors.append({"path": str(path), "error": f"{type(exc).__name__}: {exc}"})
            continue
        aliases[digest].append(str(path))
        canonical.setdefault(digest, path)

    models: list[dict[str, Any]] = []
    load_errors: list[dict[str, str]] = []
    operator_occurrences: Counter[str] = Counter()
    operator_models: Counter[str] = Counter()
    family_occurrences: Counter[str] = Counter()
    for digest, path in sorted(canonical.items(), key=lambda item: str(item[1]).lower()):
        try:
            result = analyze_onnx_model(path)
        except Exception as exc:
            load_errors.append(
                {"path": str(path), "sha256": digest, "error": f"{type(exc).__name__}: {exc}"}
            )
            continue
        result["sha256"] = digest
        result["aliases"] = aliases[digest]
        models.append(result)
        counts = Counter(result["operator_counts"])
        operator_occurrences.update(counts)
        operator_models.update(counts.keys())
        family_occurrences.update(result["family_counts"])

    registered_occurrences = sum(
        count
        for key, count in operator_occurrences.items()
        if lookup_operator_family(key.split("::", 1)[1], "onnx") is not None
    )
    registered_unique = sum(
        lookup_operator_family(key.split("::", 1)[1], "onnx") is not None
        for key in operator_occurrences
    )
    missing = [
        {
            "operator": key,
            "occurrences": operator_occurrences[key],
            "model_count": operator_models[key],
        }
        for key in operator_occurrences
        if lookup_operator_family(key.split("::", 1)[1], "onnx") is None
    ]
    missing.sort(key=lambda item: (-item["model_count"], -item["occurrences"], item["operator"]))
    total_nodes = sum(operator_occurrences.values())
    unique_operators = len(operator_occurrences)
    registry = get_semantics_registry()
    return {
        "status": "passed" if models and not hash_errors and not load_errors else "partial",
        "registry_version": registry["registry_version"],
        "registry_sha256": semantics_registry_digest(),
        "roots": [str(Path(root).resolve()) for root in roots],
        "summary": {
            "discovered_file_count": len(discovered),
            "unique_model_count": len(canonical),
            "duplicate_file_count": len(discovered) - len(canonical),
            "analyzed_model_count": len(models),
            "failed_model_count": len(hash_errors) + len(load_errors),
            "full_coverage_model_count": sum(
                bool(model["full_registry_coverage"]) for model in models
            ),
            "node_count": total_nodes,
            "registered_node_count": registered_occurrences,
            "node_coverage_ratio": registered_occurrences / total_nodes if total_nodes else 1.0,
            "unique_operator_count": unique_operators,
            "registered_unique_operator_count": registered_unique,
            "unique_operator_coverage_ratio": (
                registered_unique / unique_operators if unique_operators else 1.0
            ),
        },
        "unregistered_operators": missing,
        "family_occurrences": dict(sorted(family_occurrences.items())),
        "models": models,
        "errors": [*hash_errors, *load_errors],
    }


def write_onnx_coverage_report(
    report: dict[str, Any], output_dir: str | Path
) -> tuple[Path, Path]:
    """Write machine-readable JSON and a concise Markdown review report."""

    destination = Path(output_dir)
    destination.mkdir(parents=True, exist_ok=True)
    json_path = destination / "onnx_semantic_coverage.json"
    markdown_path = destination / "onnx_semantic_coverage.md"
    json_path.write_text(
        json.dumps(report, ensure_ascii=False, indent=2), encoding="utf-8"
    )
    summary = report["summary"]
    lines = [
        "# ONNX模型集语义覆盖审计",
        "",
        f"- 注册表版本：`{report['registry_version']}`",
        f"- 发现文件：{summary['discovered_file_count']}（去重后 {summary['unique_model_count']}）",
        f"- 成功分析：{summary['analyzed_model_count']}，失败：{summary['failed_model_count']}",
        f"- 节点覆盖率：{summary['registered_node_count']}/{summary['node_count']} = {summary['node_coverage_ratio']:.2%}",
        f"- 唯一算子覆盖率：{summary['registered_unique_operator_count']}/{summary['unique_operator_count']} = {summary['unique_operator_coverage_ratio']:.2%}",
        f"- 全覆盖模型：{summary['full_coverage_model_count']}/{summary['analyzed_model_count']}",
        "",
        "## 待补语义算子（按涉及模型数排序）",
        "",
        "| 算子 | 涉及模型 | 节点次数 |",
        "|---|---:|---:|",
    ]
    for item in report["unregistered_operators"][:30]:
        lines.append(
            f"| `{item['operator']}` | {item['model_count']} | {item['occurrences']} |"
        )
    if not report["unregistered_operators"]:
        lines.append("| 无 | 0 | 0 |")
    markdown_path.write_text("\n".join(lines) + "\n", encoding="utf-8")
    return json_path, markdown_path
