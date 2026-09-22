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


def _single_operator_manifest(
    target: str,
    inputs: list[dict],
    output: dict | list[dict],
    *,
    args: list | None = None,
    kwargs: dict | None = None,
) -> dict:
    nodes = []
    for index, tensor in enumerate(inputs):
        nodes.append(
            {
                "name": f"input_{index}",
                "op": "placeholder",
                "target": f"input_{index}",
                "args": [],
                "kwargs": {},
                "metadata": {"value": tensor},
            }
        )
    serialized_args = (
        args
        if args is not None
        else [{"node": f"input_{index}"} for index in range(len(inputs))]
    )
    nodes.append(
        {
            "name": "operator",
            "op": "call_function",
            "target": target,
            "args": serialized_args,
            "kwargs": kwargs or {},
            "metadata": {"value": output},
        }
    )
    return {
        "source": {"kind": "pytorch"},
        "export_mode": {"dynamic_shapes_requested": False},
        "range_constraints": [],
        "operators": {"all_call_targets": [target]},
        "graphs": [{"name": "root", "nodes": nodes}],
        "control_flow": [],
    }


def test_executable_operator_rules_report_checked_and_unchecked_counts() -> None:
    contract = build_semantic_contract(_comparison_manifest("bool"))
    assert contract["validation"]["status"] == "passed"
    assert len(contract["operator_instances"]) == 1
    evaluation = contract["operator_instances"][0]["rule_evaluation"]
    assert evaluation["checks"]["dtype"]["status"] == "passed"
    assert evaluation["checks"]["shape"]["status"] == "passed"
    assert evaluation["checks"]["layout"]["status"] == "passed"
    assert contract["coverage"]["rule_checks"] == {
        "total": 3,
        "executed": 3,
        "passed": 3,
        "failed": 0,
        "not_implemented": 0,
        "insufficient_metadata": 0,
        "execution_ratio": 1.0,
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


def test_matrix_product_rule_checks_dtype_shape_and_layout_boundary() -> None:
    contract = build_semantic_contract(
        _single_operator_manifest(
            "aten.mm.default",
            [_tensor("float32", [2, 3]), _tensor("float32", [3, 4])],
            _tensor("float32", [2, 4]),
        )
    )
    checks = contract["operator_instances"][0]["rule_evaluation"]["checks"]
    assert checks["dtype"]["status"] == "passed"
    assert checks["shape"]["status"] == "passed"
    # Logical matrix-axis layout still needs explicit axis metadata.
    assert checks["layout"]["status"] == "not_implemented"


def test_permute_rule_uses_serialized_axes_and_stride_order() -> None:
    source = _tensor("float32", [2, 3, 4])
    source["stride"] = ["12", "4", "1"]
    output = _tensor("float32", [2, 4, 3])
    output["layout"] = "strided"
    output["stride"] = ["12", "1", "4"]
    contract = build_semantic_contract(
        _single_operator_manifest(
            "aten.permute.default",
            [source],
            output,
            args=[{"node": "input_0"}, [0, 2, 1]],
        )
    )
    evaluation = contract["operator_instances"][0]["rule_evaluation"]
    assert evaluation["checks"]["shape"]["status"] == "passed"
    assert evaluation["checks"]["layout"]["status"] == "passed"


def test_concatenate_and_reduction_shapes_are_executable() -> None:
    concatenate = build_semantic_contract(
        _single_operator_manifest(
            "aten.cat.default",
            [_tensor("float32", [2, 3]), _tensor("float32", [2, 5])],
            _tensor("float32", [2, 8]),
            args=[
                [{"node": "input_0"}, {"node": "input_1"}],
                1,
            ],
        )
    )
    assert (
        concatenate["operator_instances"][0]["rule_evaluation"]["checks"]["shape"][
            "status"
        ]
        == "passed"
    )

    reduction = build_semantic_contract(
        _single_operator_manifest(
            "aten.sum.dim_IntList",
            [_tensor("float32", [2, 3, 4])],
            _tensor("float32", [2, 1, 4]),
            args=[{"node": "input_0"}, [1], True],
        )
    )
    assert (
        reduction["operator_instances"][0]["rule_evaluation"]["checks"]["shape"][
            "status"
        ]
        == "passed"
    )

    keyword_keepdim = build_semantic_contract(
        _single_operator_manifest(
            "aten.mean.dim",
            [_tensor("float32", [2, 3, 4])],
            _tensor("float32", [2, 3, 1]),
            args=[{"node": "input_0"}, [-1]],
            kwargs={"keepdim": True},
        )
    )
    evaluation = keyword_keepdim["operator_instances"][0]["rule_evaluation"]
    assert evaluation["checks"]["dtype"]["status"] == "passed"
    assert evaluation["checks"]["shape"]["status"] == "passed"


def test_symbolic_broadcast_executes_when_symbolic_dimensions_agree() -> None:
    left = _tensor("float32", [2, 4])
    left["shape"][0] = {"kind": "symbolic", "value": "s0"}
    right = _tensor("float32", [1, 4])
    output = _tensor("float32", [2, 4])
    output["shape"][0] = {"kind": "symbolic", "value": "s0"}
    contract = build_semantic_contract(
        _single_operator_manifest(
            "aten.add.Tensor", [left, right], output
        )
    )
    checks = contract["operator_instances"][0]["rule_evaluation"]["checks"]
    assert checks["shape"]["status"] == "passed"
    assert contract["validation"]["status"] == "passed"


def test_symbolic_matrix_product_and_expand_are_executable() -> None:
    left = _tensor("float32", [2, 3, 4])
    left["shape"][0] = {"kind": "symbolic", "value": "batch"}
    right = _tensor("float32", [2, 4, 5])
    right["shape"][0] = {"kind": "symbolic", "value": "batch"}
    product = _tensor("float32", [2, 3, 5])
    product["shape"][0] = {"kind": "symbolic", "value": "batch"}
    matrix_contract = build_semantic_contract(
        _single_operator_manifest("aten.bmm.default", [left, right], product)
    )
    matrix_check = matrix_contract["operator_instances"][0]["rule_evaluation"][
        "checks"
    ]["shape"]
    assert matrix_check["status"] == "passed"

    source = _tensor("float32", [1, 4, 8])
    source["shape"][1] = {"kind": "symbolic", "value": "sequence"}
    expanded = _tensor("float32", [2, 4, 8])
    expanded["shape"][0] = {"kind": "symbolic", "value": "batch"}
    expanded["shape"][1] = {"kind": "symbolic", "value": "sequence"}
    expanded["layout"] = "symbolic_strided"
    expanded["stride"] = ["0", "8", "1"]
    expand_contract = build_semantic_contract(
        _single_operator_manifest("aten.expand.default", [source], expanded)
    )
    checks = expand_contract["operator_instances"][0]["rule_evaluation"]["checks"]
    assert checks["shape"]["status"] == "passed"
    assert checks["layout"]["status"] == "passed"


def test_runtime_slice_bound_is_insufficient_metadata_not_a_violation() -> None:
    output = _tensor("int64", [1, 2])
    output["shape"][1] = {"kind": "symbolic", "value": "sequence"}
    contract = build_semantic_contract(
        _single_operator_manifest(
            "aten.slice.Tensor",
            [_tensor("int64", [1, 512])],
            output,
            args=[{"node": "input_0"}],
            kwargs={
                "dim": 1,
                "start": 0,
                "end": {"node": "runtime_sequence_length"},
            },
        )
    )
    shape_check = contract["operator_instances"][0]["rule_evaluation"]["checks"][
        "shape"
    ]
    assert shape_check["status"] == "insufficient_metadata"
    assert contract["validation"]["status"] == "passed"


def test_invalid_matrix_inner_dimension_fails_contract() -> None:
    contract = build_semantic_contract(
        _single_operator_manifest(
            "aten.mm.default",
            [_tensor("float32", [2, 3]), _tensor("float32", [5, 4])],
            _tensor("float32", [2, 4]),
        )
    )
    assert contract["validation"]["status"] == "failed"
    assert contract["coverage"]["rule_checks"]["failed"] == 1
