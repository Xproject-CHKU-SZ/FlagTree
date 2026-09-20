from __future__ import annotations

from flagtree_model_ir import build_semantic_contract


def _tensor(dtype: str, shape: list[int]) -> dict:
    return {
        "kind": "tensor",
        "dtype": dtype,
        "shape": [{"kind": "static", "value": item} for item in shape],
        "stride": [str(item) for item in reversed(range(1, len(shape) + 1))],
        "layout": "contiguous",
        "device": "cpu",
        "requires_grad": False,
    }


def _comparison_manifest(output_dtype: str) -> dict:
    return {
        "source": {"kind": "pytorch"},
        "export_mode": {"dynamic_shapes_requested": False},
        "range_constraints": [],
        "operators": {"all_call_targets": ["aten.eq.Tensor"]},
        "graphs": [
            {
                "name": "root",
                "nodes": [
                    {
                        "name": "left",
                        "op": "placeholder",
                        "target": "left",
                        "args": [],
                        "kwargs": {},
                        "metadata": {"value": _tensor("float32", [2, 4])},
                    },
                    {
                        "name": "right",
                        "op": "placeholder",
                        "target": "right",
                        "args": [],
                        "kwargs": {},
                        "metadata": {"value": _tensor("float32", [1, 4])},
                    },
                    {
                        "name": "equal",
                        "op": "call_function",
                        "target": "aten.eq.Tensor",
                        "args": [{"node": "left"}, {"node": "right"}],
                        "kwargs": {},
                        "metadata": {"value": _tensor(output_dtype, [2, 4])},
                    },
                ],
            }
        ],
        "control_flow": [],
    }


def test_executable_operator_rules_report_checked_and_unchecked_counts() -> None:
    contract = build_semantic_contract(_comparison_manifest("bool"))
    assert contract["validation"]["status"] == "passed"
    assert len(contract["operator_instances"]) == 1
    evaluation = contract["operator_instances"][0]["rule_evaluation"]
    assert evaluation["checks"]["dtype"]["status"] == "passed"
    assert evaluation["checks"]["shape"]["status"] == "passed"
    assert evaluation["checks"]["layout"]["status"] == "not_implemented"
    assert contract["coverage"]["rule_checks"] == {
        "total": 3,
        "executed": 2,
        "passed": 2,
        "failed": 0,
        "not_implemented": 1,
        "insufficient_metadata": 0,
        "execution_ratio": 2 / 3,
    }


def test_executable_operator_rule_violation_fails_contract() -> None:
    contract = build_semantic_contract(_comparison_manifest("float32"))
    assert contract["validation"]["status"] == "failed"
    assert contract["coverage"]["rule_checks"]["failed"] == 1
    assert "operator_rule_violation" in {
        item["code"] for item in contract["validation"]["errors"]
    }


def test_multi_output_preserve_rule_does_not_reject_auxiliary_shapes() -> None:
    manifest = _comparison_manifest("bool")
    manifest["operators"]["all_call_targets"] = ["aten.native_layer_norm.default"]
    manifest["graphs"][0]["nodes"] = [
        manifest["graphs"][0]["nodes"][0],
        {
            "name": "layer_norm",
            "op": "call_function",
            "target": "aten.native_layer_norm.default",
            "args": [{"node": "left"}],
            "kwargs": {},
            "metadata": {
                "value": [
                    _tensor("float32", [2, 4]),
                    _tensor("float32", [2, 1]),
                    _tensor("float32", [2, 1]),
                ]
            },
        },
    ]
    contract = build_semantic_contract(manifest)
    assert contract["validation"]["status"] == "passed"
    shape_check = contract["operator_instances"][0]["rule_evaluation"]["checks"][
        "shape"
    ]
    assert shape_check["status"] == "insufficient_metadata"
    assert contract["coverage"]["rule_checks"]["failed"] == 0
