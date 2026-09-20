"""Executable checks for model-IR operator semantic rules.

The registry intentionally contains more rules than this module can currently
execute.  Every check therefore reports whether it was executed, unsupported,
or lacked sufficient metadata.  This prevents registry coverage from being
mistaken for verified operator behaviour.
"""

from __future__ import annotations

from collections.abc import Callable, Mapping, Sequence
from math import prod
from typing import Any


CheckResult = dict[str, str]
RuleChecker = Callable[
    [Sequence[Mapping[str, Any]], Sequence[Mapping[str, Any]]], CheckResult
]

_INTEGER_DTYPES = {"uint8", "int8", "int16", "int32", "int64"}
_NUMERIC_DTYPES = _INTEGER_DTYPES | {
    "float16",
    "bfloat16",
    "float32",
    "float64",
    "complex64",
    "complex128",
}


def _result(status: str, message: str) -> CheckResult:
    return {"status": status, "message": message}


def _require_io(
    inputs: Sequence[Mapping[str, Any]],
    outputs: Sequence[Mapping[str, Any]],
) -> CheckResult | None:
    if not inputs or not outputs:
        return _result(
            "insufficient_metadata",
            "the rule requires at least one tensor input and one tensor output",
        )
    return None


def _check_dtype_preserve(
    inputs: Sequence[Mapping[str, Any]],
    outputs: Sequence[Mapping[str, Any]],
) -> CheckResult:
    missing = _require_io(inputs, outputs)
    if missing:
        return missing
    expected = str(inputs[0].get("dtype", ""))
    actual = {str(item.get("dtype", "")) for item in outputs}
    if expected and actual == {expected}:
        return _result("passed", f"all outputs preserve dtype {expected}")
    return _result(
        "failed", f"expected output dtype {expected!r}, observed {sorted(actual)!r}"
    )


def _check_dtype_same(
    inputs: Sequence[Mapping[str, Any]],
    outputs: Sequence[Mapping[str, Any]],
) -> CheckResult:
    missing = _require_io(inputs, outputs)
    if missing:
        return missing
    observed = {str(item.get("dtype", "")) for item in [*inputs, *outputs]}
    if len(observed) == 1 and "" not in observed:
        return _result("passed", f"all tensor values use dtype {next(iter(observed))}")
    return _result("failed", f"tensor dtypes are not identical: {sorted(observed)!r}")


def _check_output_bool(
    inputs: Sequence[Mapping[str, Any]],
    outputs: Sequence[Mapping[str, Any]],
) -> CheckResult:
    del inputs
    if not outputs:
        return _result("insufficient_metadata", "the rule requires a tensor output")
    observed = {str(item.get("dtype", "")) for item in outputs}
    if observed == {"bool"}:
        return _result("passed", "all tensor outputs use dtype bool")
    return _result("failed", f"expected bool output, observed {sorted(observed)!r}")


def _check_boolean_io(
    inputs: Sequence[Mapping[str, Any]],
    outputs: Sequence[Mapping[str, Any]],
) -> CheckResult:
    missing = _require_io(inputs, outputs)
    if missing:
        return missing
    observed = {str(item.get("dtype", "")) for item in [*inputs, *outputs]}
    if observed == {"bool"}:
        return _result("passed", "all tensor inputs and outputs use dtype bool")
    return _result(
        "failed", f"expected boolean inputs and outputs, observed {sorted(observed)!r}"
    )


def _check_output_integer(
    inputs: Sequence[Mapping[str, Any]],
    outputs: Sequence[Mapping[str, Any]],
) -> CheckResult:
    del inputs
    if not outputs:
        return _result("insufficient_metadata", "the rule requires a tensor output")
    observed = {str(item.get("dtype", "")) for item in outputs}
    if observed and observed <= _INTEGER_DTYPES:
        return _result("passed", f"integer output dtypes: {sorted(observed)!r}")
    return _result("failed", f"expected integer output, observed {sorted(observed)!r}")


def _check_numeric_input_integer_output(
    inputs: Sequence[Mapping[str, Any]],
    outputs: Sequence[Mapping[str, Any]],
) -> CheckResult:
    missing = _require_io(inputs, outputs)
    if missing:
        return missing
    input_dtype = str(inputs[0].get("dtype", ""))
    if input_dtype not in _NUMERIC_DTYPES:
        return _result("failed", f"expected numeric input, observed {input_dtype!r}")
    return _check_output_integer(inputs, outputs)


def _shape_key(tensor: Mapping[str, Any]) -> tuple[tuple[str, str], ...] | None:
    shape = tensor.get("shape")
    if not isinstance(shape, list):
        return None
    result: list[tuple[str, str]] = []
    for dimension in shape:
        if not isinstance(dimension, Mapping):
            return None
        result.append((str(dimension.get("kind", "")), str(dimension.get("value", ""))))
    return tuple(result)


def _static_shape(tensor: Mapping[str, Any]) -> tuple[int, ...] | None:
    shape = tensor.get("shape")
    if not isinstance(shape, list):
        return None
    values: list[int] = []
    for dimension in shape:
        if not isinstance(dimension, Mapping) or dimension.get("kind") != "static":
            return None
        value = dimension.get("value")
        if not isinstance(value, int):
            return None
        values.append(value)
    return tuple(values)


def _check_shape_preserve(
    inputs: Sequence[Mapping[str, Any]],
    outputs: Sequence[Mapping[str, Any]],
) -> CheckResult:
    missing = _require_io(inputs, outputs)
    if missing:
        return missing
    expected = _shape_key(inputs[0])
    actual = [_shape_key(item) for item in outputs]
    if expected is None or any(item is None for item in actual):
        return _result("insufficient_metadata", "shape metadata is incomplete")
    if actual[0] != expected:
        return _result(
            "failed",
            f"expected primary output shape {expected!r}, observed {actual[0]!r}",
        )
    if len(actual) > 1:
        return _result(
            "insufficient_metadata",
            "the primary output preserves shape, but auxiliary output shape semantics are not encoded",
        )
    return _result(
        "passed", "the primary output preserves the first tensor input shape"
    )


def _broadcast_static_shapes(
    shapes: Sequence[tuple[int, ...]]
) -> tuple[int, ...] | None:
    if not shapes:
        return None
    width = max(len(shape) for shape in shapes)
    result: list[int] = []
    for offset in range(1, width + 1):
        dimensions = [shape[-offset] if len(shape) >= offset else 1 for shape in shapes]
        non_unit = {value for value in dimensions if value != 1}
        if len(non_unit) > 1:
            return None
        result.append(next(iter(non_unit), 1))
    return tuple(reversed(result))


def _check_shape_broadcast(
    inputs: Sequence[Mapping[str, Any]],
    outputs: Sequence[Mapping[str, Any]],
) -> CheckResult:
    missing = _require_io(inputs, outputs)
    if missing:
        return missing
    input_shapes = [_static_shape(item) for item in inputs]
    output_shapes = [_static_shape(item) for item in outputs]
    if any(item is None for item in [*input_shapes, *output_shapes]):
        return _result(
            "insufficient_metadata",
            "static tensor shapes are required for executable broadcast validation",
        )
    expected = _broadcast_static_shapes(
        [item for item in input_shapes if item is not None]
    )
    if expected is None:
        return _result(
            "failed", f"input shapes are not broadcast-compatible: {input_shapes!r}"
        )
    if all(item == expected for item in output_shapes):
        return _result("passed", f"output shape matches broadcast result {expected!r}")
    return _result(
        "failed", f"expected broadcast shape {expected!r}, observed {output_shapes!r}"
    )


def _check_element_count_preserve(
    inputs: Sequence[Mapping[str, Any]],
    outputs: Sequence[Mapping[str, Any]],
) -> CheckResult:
    missing = _require_io(inputs, outputs)
    if missing:
        return missing
    input_shape = _static_shape(inputs[0])
    output_shapes = [_static_shape(item) for item in outputs]
    if input_shape is None or any(item is None for item in output_shapes):
        return _result(
            "insufficient_metadata",
            "static shapes are required for executable element-count validation",
        )
    expected = prod(input_shape)
    actual = [prod(item) for item in output_shapes if item is not None]
    if all(item == expected for item in actual):
        return _result("passed", f"all outputs preserve {expected} elements")
    return _result("failed", f"expected {expected} elements, observed {actual!r}")


def _check_layout_contiguous(
    inputs: Sequence[Mapping[str, Any]],
    outputs: Sequence[Mapping[str, Any]],
) -> CheckResult:
    del inputs
    if not outputs:
        return _result("insufficient_metadata", "the rule requires a tensor output")
    observed = {str(item.get("layout", "unknown")) for item in outputs}
    if observed <= {"contiguous", "scalar"}:
        return _result("passed", f"materialized output layouts: {sorted(observed)!r}")
    return _result(
        "failed", f"expected contiguous output, observed {sorted(observed)!r}"
    )


def _check_not_applicable(
    inputs: Sequence[Mapping[str, Any]],
    outputs: Sequence[Mapping[str, Any]],
) -> CheckResult:
    del inputs, outputs
    return _result("passed", "the registry marks this rule as not applicable")


_DTYPE_CHECKERS: dict[str, RuleChecker] = {
    "preserve": _check_dtype_preserve,
    "same_dtype": _check_dtype_same,
    "inputs_promote_output_bool": _check_output_bool,
    "boolean_inputs_and_output": _check_boolean_io,
    "output_integer": _check_output_integer,
    "input_numeric_output_integer": _check_numeric_input_integer_output,
}

_SHAPE_CHECKERS: dict[str, RuleChecker] = {
    "preserve": _check_shape_preserve,
    "broadcast": _check_shape_broadcast,
    "element_count_preserve": _check_element_count_preserve,
}

_LAYOUT_CHECKERS: dict[str, RuleChecker] = {
    "contiguous": _check_layout_contiguous,
    "not_applicable": _check_not_applicable,
}


def evaluate_operator_rule_set(instance: Mapping[str, Any]) -> dict[str, Any]:
    """Evaluate the executable subset of one operator instance's rules."""

    if instance.get("registry_status") != "registered":
        return {
            "status": "not_evaluated",
            "checks": {},
            "summary": {
                "total": 0,
                "executed": 0,
                "passed": 0,
                "failed": 0,
                "not_implemented": 0,
                "insufficient_metadata": 0,
            },
        }

    inputs = [item for item in instance.get("inputs", []) if isinstance(item, Mapping)]
    outputs = [
        item for item in instance.get("outputs", []) if isinstance(item, Mapping)
    ]
    checks: dict[str, dict[str, str]] = {}
    for kind, checkers in (
        ("dtype", _DTYPE_CHECKERS),
        ("shape", _SHAPE_CHECKERS),
        ("layout", _LAYOUT_CHECKERS),
    ):
        rule = str(instance.get(f"{kind}_rule") or "")
        checker = checkers.get(rule)
        if checker is None:
            result = _result(
                "not_implemented",
                f"no executable {kind} checker is registered for rule {rule!r}",
            )
        else:
            result = checker(inputs, outputs)
        checks[kind] = {"rule": rule, **result}

    counts = {
        status: sum(check["status"] == status for check in checks.values())
        for status in ("passed", "failed", "not_implemented", "insufficient_metadata")
    }
    executed = counts["passed"] + counts["failed"]
    status = (
        "failed" if counts["failed"] else ("passed" if executed else "not_evaluated")
    )
    return {
        "status": status,
        "checks": checks,
        "summary": {
            "total": len(checks),
            "executed": executed,
            **counts,
        },
    }
