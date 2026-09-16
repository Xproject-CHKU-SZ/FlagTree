from __future__ import annotations

import copy

import torch

from flagtree_model_ir import (
    build_semantic_contract,
    canonicalize_dtype,
    classify_tensor_layout,
    get_semantics_registry,
    lookup_operator_family,
    semantics_registry_digest,
    validate_semantic_contract,
)


def _manifest() -> dict:
    return {
        "schema_version": 1,
        "source": {
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
                            "name": "main/custom",
                            "domain": "example",
                            "op_type": "CustomOp",
                            "subgraphs": [],
                        },
                    ]
                }
            },
        },
        "export_mode": {"dynamic_shapes_requested": True},
        "range_constraints": [
            {"symbol": "s0", "constraint": "VR[1, 8]", "lower": "1", "upper": "8"}
        ],
        "operators": {
            "all_call_targets": ["aten.add.Tensor", "aten.unregistered.default"]
        },
        "graphs": [
            {
                "name": "root",
                "nodes": [
                    {
                        "name": "add",
                        "metadata": {
                            "value": {
                                "kind": "tensor",
                                "dtype": "float32",
                                "shape": [
                                    {"kind": "symbolic", "value": "s0"},
                                    {"kind": "static", "value": 4},
                                ],
                                "stride": ["4", "1"],
                                "layout": "contiguous",
                                "device": "cpu",
                                "requires_grad": False,
                            }
                        },
                    }
                ],
            }
        ],
        "control_flow": [],
    }


def test_registry_copy_and_digest_are_stable() -> None:
    first = get_semantics_registry()
    second = get_semantics_registry()
    first["canonical_ir"] = "mutated"
    assert second["canonical_ir"] == "Core ATen"
    assert len(semantics_registry_digest()) == 64
    assert semantics_registry_digest() == semantics_registry_digest()
    assert canonicalize_dtype("torch.float32") == "float32"
    assert canonicalize_dtype("long") == "int64"
    assert canonicalize_dtype("float128") is None
    assert lookup_operator_family("Gather", "onnx")["id"] == "indexing.gather"
    assert lookup_operator_family("Clip", "onnx")["id"] == "elementwise.clip"
    assert lookup_operator_family("ReduceL2", "onnx")["id"] == "reduction.norm"
    assert lookup_operator_family("aten.add.Tensor", "core_aten")["id"] == "elementwise.add"
    assert lookup_operator_family("MissingOp", "onnx") is None


def test_contract_maps_core_aten_and_converted_onnx_semantics() -> None:
    contract = build_semantic_contract(_manifest())
    assert contract["validation"]["status"] == "passed"
    assert contract["frontend_semantics_framework"] == "onnx"
    assert contract["operators"][0]["family"] == "elementwise.add"
    assert contract["operators"][0]["shape_rule"] == "broadcast"
    assert contract["frontend_operators"][0]["family"] == "elementwise.add"
    assert contract["dynamic_dimensions"]["symbols_observed_in_tensor_metadata"] == ["s0"]
    warning_codes = {item["code"] for item in contract["validation"]["warnings"]}
    assert warning_codes == {
        "unregistered_core_aten_targets",
        "unregistered_frontend_ops",
    }


def test_contract_rejects_invalid_dtype_layout_and_shape() -> None:
    contract = build_semantic_contract(_manifest())
    invalid = copy.deepcopy(contract)
    invalid["tensors"][0]["dtype"] = "float128"
    invalid["tensors"][0]["layout"] = "NHWC-but-unspecified"
    invalid["tensors"][0]["shape"][1] = {"kind": "static", "value": -1}
    validation = validate_semantic_contract(invalid)
    assert validation["status"] == "failed"
    assert {item["code"] for item in validation["errors"]} == {
        "unsupported_dtype",
        "invalid_layout",
        "negative_static_dimension",
    }


def test_tensor_layout_classification() -> None:
    assert classify_tensor_layout(torch.tensor(1.0)) == "scalar"
    contiguous = torch.randn(2, 3, 4, 5)
    assert classify_tensor_layout(contiguous) == "contiguous"
    channels_last = contiguous.to(memory_format=torch.channels_last)
    assert classify_tensor_layout(channels_last) == "channels_last_2d"
    assert classify_tensor_layout(contiguous.transpose(1, 2)) == "strided"
