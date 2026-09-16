from __future__ import annotations

import json
from pathlib import Path

import torch

from model_import_adapters.unified_ir import export_core_aten


class AddRelu(torch.nn.Module):
    def forward(self, value: torch.Tensor, bias: torch.Tensor) -> torch.Tensor:
        return torch.relu(value + bias)


def test_export_writes_valid_versioned_semantic_contract(tmp_path: Path) -> None:
    value = torch.randn(2, 4)
    bias = torch.randn(4)
    batch = torch.export.Dim("batch", min=1, max=8)
    _, artifacts, details = export_core_aten(
        AddRelu(),
        (value, bias),
        tmp_path / "core_aten",
        dynamic_shapes=({0: batch}, None),
        source={
            "kind": "tensorflow_via_onnx",
            "frontend_graph_summary": {
                "graph": {
                    "nodes": [
                        {
                            "name": "main/add",
                            "domain": "ai.onnx",
                            "op_type": "Add",
                            "subgraphs": [],
                        },
                        {
                            "name": "main/relu",
                            "domain": "ai.onnx",
                            "op_type": "Relu",
                            "subgraphs": [],
                        },
                    ]
                }
            },
        },
        strict=False,
    )

    assert artifacts.semantics.is_file()
    assert artifacts.as_dict()["semantics"] == str(artifacts.semantics)
    semantics = json.loads(artifacts.semantics.read_text(encoding="utf-8"))
    assert semantics == details["semantics"]
    assert semantics["canonical_ir"] == "Core ATen"
    assert semantics["validation"]["status"] == "passed"
    assert semantics["frontend_semantics_framework"] == "onnx"
    assert {item["family"] for item in semantics["frontend_operators"]} == {
        "elementwise.add",
        "activation",
    }
    assert semantics["dynamic_dimensions"]["dynamic_shapes_requested"]
    assert semantics["dynamic_dimensions"]["range_constraints"]
    assert all(item["layout"] != "unknown" for item in semantics["tensors"])
    assert details["manifest"]["semantics_artifact"]["validation_status"] == "passed"
    assert details["validation"]["semantic_contract"]["status"] == "passed"
