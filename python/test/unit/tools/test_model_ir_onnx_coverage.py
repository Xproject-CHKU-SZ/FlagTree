from __future__ import annotations

from pathlib import Path

import onnx
from onnx import TensorProto, helper

from flagtree_model_ir.onnx_coverage import analyze_onnx_corpus


def _save_model(path: Path, operators: list[tuple[str, str]]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    value = helper.make_tensor_value_info("value", TensorProto.FLOAT, [2, 4])
    previous = "value"
    nodes = []
    for index, (domain, op_type) in enumerate(operators):
        output = f"output_{index}"
        nodes.append(
            helper.make_node(
                op_type,
                [previous, previous] if op_type == "Add" else [previous],
                [output],
                domain=domain,
            )
        )
        previous = output
    output = helper.make_tensor_value_info(previous, TensorProto.FLOAT, [2, 4])
    model = helper.make_model(
        helper.make_graph(nodes, "coverage", [value], [output]),
        opset_imports=[
            helper.make_opsetid("", 17),
            helper.make_opsetid("custom.example", 1),
        ],
    )
    onnx.save(model, path)


def test_corpus_audit_deduplicates_and_excludes_dependency_caches(tmp_path: Path) -> None:
    _save_model(tmp_path / "registered.onnx", [("", "Add"), ("", "Relu")])
    _save_model(tmp_path / "missing.onnx", [("custom.example", "MissingOp")])
    (tmp_path / "duplicate.onnx").write_bytes((tmp_path / "registered.onnx").read_bytes())
    _save_model(tmp_path / "python_deps" / "ignored.onnx", [("", "Add")])

    report = analyze_onnx_corpus([tmp_path])

    assert report["status"] == "passed"
    assert report["summary"]["discovered_file_count"] == 3
    assert report["summary"]["unique_model_count"] == 2
    assert report["summary"]["duplicate_file_count"] == 1
    assert report["summary"]["node_count"] == 3
    assert report["summary"]["registered_node_count"] == 2
    assert report["summary"]["unique_operator_coverage_ratio"] == 2 / 3
    assert report["unregistered_operators"] == [
        {"operator": "custom.example::MissingOp", "occurrences": 1, "model_count": 1}
    ]
