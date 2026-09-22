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
    [
        Sequence[Mapping[str, Any]],
        Sequence[Mapping[str, Any]],
        Mapping[str, Any],
    ],
    CheckResult,
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
_FLOAT_DTYPES = {"float16", "bfloat16", "float32", "float64"}
_FLOAT_OR_COMPLEX_DTYPES = _FLOAT_DTYPES | {"complex64", "complex128"}


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
    instance: Mapping[str, Any],
) -> CheckResult:
    del instance
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
    instance: Mapping[str, Any],
) -> CheckResult:
    del instance
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
    instance: Mapping[str, Any],
) -> CheckResult:
    del inputs, instance
    if not outputs:
        return _result("insufficient_metadata", "the rule requires a tensor output")
    observed = {str(item.get("dtype", "")) for item in outputs}
    if observed == {"bool"}:
        return _result("passed", "all tensor outputs use dtype bool")
    return _result("failed", f"expected bool output, observed {sorted(observed)!r}")


def _check_boolean_io(
    inputs: Sequence[Mapping[str, Any]],
    outputs: Sequence[Mapping[str, Any]],
    instance: Mapping[str, Any],
) -> CheckResult:
    del instance
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
    instance: Mapping[str, Any],
) -> CheckResult:
    del inputs, instance
    if not outputs:
        return _result("insufficient_metadata", "the rule requires a tensor output")
    observed = {str(item.get("dtype", "")) for item in outputs}
    if observed and observed <= _INTEGER_DTYPES:
        return _result("passed", f"integer output dtypes: {sorted(observed)!r}")
    return _result("failed", f"expected integer output, observed {sorted(observed)!r}")


def _check_numeric_input_integer_output(
    inputs: Sequence[Mapping[str, Any]],
    outputs: Sequence[Mapping[str, Any]],
    instance: Mapping[str, Any],
) -> CheckResult:
    missing = _require_io(inputs, outputs)
    if missing:
        return missing
    input_dtype = str(inputs[0].get("dtype", ""))
    if input_dtype not in _NUMERIC_DTYPES:
        return _result("failed", f"expected numeric input, observed {input_dtype!r}")
    return _check_output_integer(inputs, outputs, instance)


def _check_dtype_promote(
    inputs: Sequence[Mapping[str, Any]],
    outputs: Sequence[Mapping[str, Any]],
    instance: Mapping[str, Any],
) -> CheckResult:
    del instance
    missing = _require_io(inputs, outputs)
    if missing:
        return missing
    input_dtypes, output_dtypes = _primary_dtypes(inputs, outputs)
    if any(not item for item in [*input_dtypes, *output_dtypes]):
        return _result("insufficient_metadata", "dtype metadata is incomplete")
    if len(set(input_dtypes)) == 1:
        expected = input_dtypes[0]
        if set(output_dtypes) == {expected}:
            return _result(
                "passed", f"same-dtype operands preserve promoted dtype {expected}"
            )
        if len(input_dtypes) == 1:
            return _result(
                "insufficient_metadata",
                "a non-tensor scalar operand may participate in dtype promotion",
            )
        return _result(
            "failed",
            f"same-dtype tensor operands require output {expected!r}, observed {output_dtypes!r}",
        )
    return _result(
        "insufficient_metadata",
        "mixed tensor dtypes require the Core ATen promotion table at runtime",
    )


def _check_core_aten_division(
    inputs: Sequence[Mapping[str, Any]],
    outputs: Sequence[Mapping[str, Any]],
    instance: Mapping[str, Any],
) -> CheckResult:
    missing = _require_io(inputs, outputs)
    if missing:
        return missing
    input_dtypes, _ = _primary_dtypes(inputs, outputs)
    if input_dtypes and set(input_dtypes) <= _FLOAT_OR_COMPLEX_DTYPES:
        return _check_dtype_promote(inputs, outputs, instance)
    return _result(
        "insufficient_metadata",
        "integer division depends on the concrete Core ATen overload and rounding mode",
    )


def _check_floating_preserve(
    inputs: Sequence[Mapping[str, Any]],
    outputs: Sequence[Mapping[str, Any]],
    instance: Mapping[str, Any],
) -> CheckResult:
    del instance
    return _require_primary_dtype(
        inputs, outputs, allowed_inputs=_FLOAT_OR_COMPLEX_DTYPES
    )


def _check_same_or_explicit_accumulator(
    inputs: Sequence[Mapping[str, Any]],
    outputs: Sequence[Mapping[str, Any]],
    instance: Mapping[str, Any],
) -> CheckResult:
    del instance
    missing = _require_io(inputs, outputs)
    if missing:
        return missing
    input_dtypes, output_dtypes = _primary_dtypes(inputs, outputs)
    if len(input_dtypes) < 2:
        return _result(
            "insufficient_metadata", "the rule requires two tensor operands"
        )
    if input_dtypes[0] == input_dtypes[1] == output_dtypes[0]:
        return _result(
            "passed", f"matrix operands and result use dtype {output_dtypes[0]}"
        )
    return _result(
        "insufficient_metadata",
        "mixed operand or accumulator dtype requires an explicit operator attribute",
    )


def _check_numeric_preserve(
    inputs: Sequence[Mapping[str, Any]],
    outputs: Sequence[Mapping[str, Any]],
    instance: Mapping[str, Any],
) -> CheckResult:
    del instance
    return _require_primary_dtype(inputs, outputs, allowed_inputs=_NUMERIC_DTYPES)


def _check_numeric_preserve_or_explicit(
    inputs: Sequence[Mapping[str, Any]],
    outputs: Sequence[Mapping[str, Any]],
    instance: Mapping[str, Any],
) -> CheckResult:
    missing = _require_io(inputs, outputs)
    if missing:
        return missing
    input_dtype = str(inputs[0].get("dtype", ""))
    output_dtype = str(outputs[0].get("dtype", ""))
    if input_dtype not in _NUMERIC_DTYPES or output_dtype not in _NUMERIC_DTYPES:
        return _result(
            "failed", f"expected numeric input/output, got {input_dtype!r} -> {output_dtype!r}"
        )
    if output_dtype == input_dtype:
        return _result("passed", f"primary output preserves dtype {input_dtype}")
    serialized_arguments = repr(
        [instance.get("args", []), instance.get("kwargs", {})]
    )
    if output_dtype in serialized_arguments:
        return _result("passed", f"output dtype {output_dtype} is explicit in arguments")
    return _result(
        "insufficient_metadata",
        f"cannot prove operator-specific conversion {input_dtype!r} -> {output_dtype!r}",
    )


def _check_floating_preserve_or_explicit_cast(
    inputs: Sequence[Mapping[str, Any]],
    outputs: Sequence[Mapping[str, Any]],
    instance: Mapping[str, Any],
) -> CheckResult:
    missing = _require_io(inputs, outputs)
    if missing:
        return missing
    input_dtype = str(inputs[0].get("dtype", ""))
    output_dtype = str(outputs[0].get("dtype", ""))
    if input_dtype not in _FLOAT_OR_COMPLEX_DTYPES:
        return _result("failed", f"expected floating input, observed {input_dtype!r}")
    if output_dtype == input_dtype:
        return _result("passed", f"primary output preserves dtype {input_dtype}")
    serialized_arguments = repr(
        [instance.get("args", []), instance.get("kwargs", {})]
    )
    if output_dtype in _FLOAT_OR_COMPLEX_DTYPES and output_dtype in serialized_arguments:
        return _result("passed", f"floating output cast to {output_dtype} is explicit")
    return _result(
        "insufficient_metadata",
        f"cannot prove explicit floating cast {input_dtype!r} -> {output_dtype!r}",
    )


def _check_operator_specific_accumulator(
    inputs: Sequence[Mapping[str, Any]],
    outputs: Sequence[Mapping[str, Any]],
    instance: Mapping[str, Any],
) -> CheckResult:
    missing = _require_io(inputs, outputs)
    if missing:
        return missing
    input_dtype = str(inputs[0].get("dtype", ""))
    output_dtypes = {str(item.get("dtype", "")) for item in outputs}
    if input_dtype not in ({"bool"} | _NUMERIC_DTYPES):
        return _result("failed", f"reduction input is not numeric: {input_dtype!r}")
    if output_dtypes == {input_dtype}:
        return _result("passed", f"reduction preserves accumulator dtype {input_dtype}")
    if input_dtype in ({"bool"} | _INTEGER_DTYPES) and output_dtypes == {"int64"}:
        return _result("passed", "integer reduction uses the Core ATen int64 accumulator")
    serialized_arguments = repr(
        [instance.get("args", []), instance.get("kwargs", {})]
    )
    if len(output_dtypes) == 1 and next(iter(output_dtypes), "") in serialized_arguments:
        return _result("passed", "reduction accumulator dtype is explicit in arguments")
    return _result(
        "insufficient_metadata",
        f"cannot prove accumulator conversion {input_dtype!r} -> {sorted(output_dtypes)!r}",
    )


def _check_floating_with_explicit_accumulator(
    inputs: Sequence[Mapping[str, Any]],
    outputs: Sequence[Mapping[str, Any]],
    instance: Mapping[str, Any],
) -> CheckResult:
    del instance
    missing = _require_io(inputs, outputs)
    if missing:
        return missing
    input_dtype = str(inputs[0].get("dtype", ""))
    output_dtypes = [str(item.get("dtype", "")) for item in outputs]
    if input_dtype not in _FLOAT_OR_COMPLEX_DTYPES:
        return _result("failed", f"expected floating input, observed {input_dtype!r}")
    if not output_dtypes or output_dtypes[0] != input_dtype:
        return _result(
            "failed",
            f"primary output must preserve {input_dtype!r}, observed {output_dtypes!r}",
        )
    if not set(output_dtypes) <= _FLOAT_OR_COMPLEX_DTYPES:
        return _result(
            "failed", f"normalization outputs must be floating: {output_dtypes!r}"
        )
    return _result(
        "passed", f"primary output preserves floating dtype {input_dtype}"
    )


def _check_data_preserve_indices_integer(
    inputs: Sequence[Mapping[str, Any]],
    outputs: Sequence[Mapping[str, Any]],
    instance: Mapping[str, Any],
) -> CheckResult:
    missing = _require_io(inputs, outputs)
    if missing:
        return missing
    target = str(instance.get("target", ""))
    data_dtype = str(inputs[0].get("dtype", ""))
    output_dtype = str(outputs[0].get("dtype", ""))
    if output_dtype != data_dtype:
        return _result(
            "failed",
            f"indexed result must preserve data dtype {data_dtype!r}, observed {output_dtype!r}",
        )
    index_dtypes = [str(item.get("dtype", "")) for item in inputs[1:]]
    if not index_dtypes:
        return _result("insufficient_metadata", "index tensor metadata is unavailable")
    allowed_indices = _INTEGER_DTYPES | ({"bool"} if "aten.index." in target else set())
    if all(item in allowed_indices for item in index_dtypes):
        return _result(
            "passed",
            f"data dtype {data_dtype} is preserved and index dtypes are valid",
        )
    return _result(
        "failed", f"expected integer index tensors, observed {index_dtypes!r}"
    )


def _check_condition_values_promote(
    inputs: Sequence[Mapping[str, Any]],
    outputs: Sequence[Mapping[str, Any]],
    instance: Mapping[str, Any],
) -> CheckResult:
    missing = _require_io(inputs, outputs)
    if missing:
        return missing
    if str(inputs[0].get("dtype", "")) != "bool":
        return _result("failed", "where condition must use dtype bool")
    if len(inputs) < 3:
        return _result(
            "insufficient_metadata", "where value operand metadata is incomplete"
        )
    return _check_dtype_promote(inputs[1:], outputs, instance)


def _check_destination_dtype_explicit(
    inputs: Sequence[Mapping[str, Any]],
    outputs: Sequence[Mapping[str, Any]],
    instance: Mapping[str, Any],
) -> CheckResult:
    missing = _require_io(inputs, outputs)
    if missing:
        return missing
    target = str(instance.get("target", ""))
    output_dtype = str(outputs[0].get("dtype", ""))
    if target.startswith("aten.type_as.") and len(inputs) >= 2:
        expected = str(inputs[1].get("dtype", ""))
        if output_dtype == expected:
            return _result("passed", f"type_as result uses peer dtype {expected}")
        return _result(
            "failed", f"type_as expected {expected!r}, observed {output_dtype!r}"
        )
    serialized_arguments = repr(
        [instance.get("args", []), instance.get("kwargs", {})]
    )
    if output_dtype and output_dtype in serialized_arguments:
        return _result(
            "passed", f"destination dtype {output_dtype} is explicit in arguments"
        )
    if output_dtype == str(inputs[0].get("dtype", "")):
        return _result("passed", f"identity cast preserves dtype {output_dtype}")
    return _result(
        "insufficient_metadata",
        f"destination dtype {output_dtype!r} is not recoverable from serialized arguments",
    )


def _check_input_weight_compatible(
    inputs: Sequence[Mapping[str, Any]],
    outputs: Sequence[Mapping[str, Any]],
    instance: Mapping[str, Any],
) -> CheckResult:
    del instance
    missing = _require_io(inputs, outputs)
    if missing:
        return missing
    if len(inputs) < 2:
        return _result(
            "insufficient_metadata", "input and weight metadata are required"
        )
    observed = [str(inputs[index].get("dtype", "")) for index in (0, 1)]
    output = str(outputs[0].get("dtype", ""))
    if observed[0] == observed[1] == output and output in _NUMERIC_DTYPES:
        return _result("passed", f"input, weight, and output use dtype {output}")
    return _result(
        "insufficient_metadata",
        f"mixed input/weight/accumulator dtypes require explicit attributes: {observed + [output]!r}",
    )


def _check_data_update_indices_integer(
    inputs: Sequence[Mapping[str, Any]],
    outputs: Sequence[Mapping[str, Any]],
    instance: Mapping[str, Any],
) -> CheckResult:
    del instance
    missing = _require_io(inputs, outputs)
    if missing:
        return missing
    if len(inputs) < 2:
        return _result(
            "insufficient_metadata", "scatter index metadata is unavailable"
        )
    data_dtype = str(inputs[0].get("dtype", ""))
    output_dtype = str(outputs[0].get("dtype", ""))
    index_dtype = str(inputs[1].get("dtype", ""))
    if output_dtype != data_dtype:
        return _result(
            "failed", f"scatter output must preserve destination dtype {data_dtype}"
        )
    if index_dtype not in _INTEGER_DTYPES:
        return _result("failed", f"scatter indices must be integer, got {index_dtype}")
    update_dtypes = [str(item.get("dtype", "")) for item in inputs[2:]]
    if update_dtypes and any(item != data_dtype for item in update_dtypes):
        return _result(
            "failed", f"scatter updates must use destination dtype {data_dtype}"
        )
    return _result("passed", "scatter data, indices, and updates are dtype-compatible")


def _check_dropout_dtype(
    inputs: Sequence[Mapping[str, Any]],
    outputs: Sequence[Mapping[str, Any]],
    instance: Mapping[str, Any],
) -> CheckResult:
    del instance
    missing = _require_io(inputs, outputs)
    if missing:
        return missing
    input_dtype = str(inputs[0].get("dtype", ""))
    output_dtypes = [str(item.get("dtype", "")) for item in outputs]
    if input_dtype not in _FLOAT_DTYPES:
        return _result("failed", f"dropout input must be floating, got {input_dtype}")
    if output_dtypes[0] != input_dtype:
        return _result("failed", "dropout primary output must preserve input dtype")
    if len(output_dtypes) > 1 and any(item != "bool" for item in output_dtypes[1:]):
        return _result("failed", "dropout auxiliary mask outputs must use dtype bool")
    return _result("passed", "dropout value dtype and optional mask dtype are valid")


def _check_creation_dtype(
    inputs: Sequence[Mapping[str, Any]],
    outputs: Sequence[Mapping[str, Any]],
    instance: Mapping[str, Any],
) -> CheckResult:
    del inputs, instance
    if not outputs:
        return _result("insufficient_metadata", "tensor creation has no tensor output")
    observed = {str(item.get("dtype", "")) for item in outputs}
    if observed and observed <= ({"bool"} | _NUMERIC_DTYPES):
        return _result(
            "passed", f"creation result carries canonical dtype metadata {sorted(observed)!r}"
        )
    return _result("failed", f"creation output dtype is invalid: {sorted(observed)!r}")


def _check_selected_dtype(
    inputs: Sequence[Mapping[str, Any]],
    outputs: Sequence[Mapping[str, Any]],
    instance: Mapping[str, Any],
) -> CheckResult:
    del instance
    missing = _require_io(inputs, outputs)
    if missing:
        return missing
    available = {str(item.get("dtype", "")) for item in inputs}
    observed = {str(item.get("dtype", "")) for item in outputs}
    if observed <= available and "" not in observed:
        return _result("passed", "selected output dtype originates from the container")
    return _result(
        "failed", f"selected dtype {sorted(observed)!r} not found in {sorted(available)!r}"
    )


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


def _arguments(instance: Mapping[str, Any]) -> list[Any]:
    value = instance.get("args", [])
    return list(value) if isinstance(value, list) else []


def _argument(instance: Mapping[str, Any], index: int, default: Any = None) -> Any:
    arguments = _arguments(instance)
    if -len(arguments) <= index < len(arguments):
        return arguments[index]
    return default


def _keyword(instance: Mapping[str, Any], name: str, default: Any = None) -> Any:
    value = instance.get("kwargs", {})
    if isinstance(value, Mapping):
        return value.get(name, default)
    return default


def _parameter(
    instance: Mapping[str, Any], index: int, name: str, default: Any = None
) -> Any:
    arguments = _arguments(instance)
    if -len(arguments) <= index < len(arguments):
        return arguments[index]
    return _keyword(instance, name, default)


def _integer_argument(
    instance: Mapping[str, Any], index: int, default: int | None = None
) -> int | None:
    value = _argument(instance, index, default)
    if isinstance(value, bool):
        return int(value)
    return value if isinstance(value, int) else default


def _integer_list_argument(
    instance: Mapping[str, Any], index: int
) -> list[int] | None:
    value = _argument(instance, index)
    if isinstance(value, int) and not isinstance(value, bool):
        return [value]
    if isinstance(value, list) and all(
        isinstance(item, int) and not isinstance(item, bool) for item in value
    ):
        return list(value)
    return None


def _integer_list_value(value: Any) -> list[int] | None:
    if isinstance(value, int) and not isinstance(value, bool):
        return [value]
    if isinstance(value, list) and all(
        isinstance(item, int) and not isinstance(item, bool) for item in value
    ):
        return list(value)
    return None


def _normalize_axis(axis: int, rank: int, *, allow_endpoint: bool = False) -> int | None:
    upper = rank + int(allow_endpoint)
    if axis < 0:
        axis += upper
    return axis if 0 <= axis < upper else None


def _primary_dtypes(
    inputs: Sequence[Mapping[str, Any]], outputs: Sequence[Mapping[str, Any]]
) -> tuple[list[str], list[str]]:
    return (
        [str(item.get("dtype", "")) for item in inputs],
        [str(item.get("dtype", "")) for item in outputs],
    )


def _require_primary_dtype(
    inputs: Sequence[Mapping[str, Any]],
    outputs: Sequence[Mapping[str, Any]],
    *,
    allowed_inputs: set[str] | None = None,
) -> CheckResult:
    missing = _require_io(inputs, outputs)
    if missing:
        return missing
    expected = str(inputs[0].get("dtype", ""))
    actual = str(outputs[0].get("dtype", ""))
    if allowed_inputs is not None and expected not in allowed_inputs:
        return _result("failed", f"input dtype {expected!r} is outside the rule domain")
    if expected and actual == expected:
        return _result("passed", f"primary output preserves dtype {expected}")
    return _result(
        "failed", f"expected primary output dtype {expected!r}, observed {actual!r}"
    )


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
    instance: Mapping[str, Any],
) -> CheckResult:
    del instance
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


def _broadcast_shape_keys(
    shapes: Sequence[tuple[tuple[str, str], ...]],
) -> tuple[tuple[tuple[str, str], ...] | None, str | None]:
    if not shapes:
        return None, "no input shapes were provided"
    width = max(len(shape) for shape in shapes)
    result: list[tuple[str, str]] = []
    for offset in range(1, width + 1):
        dimensions = [
            shape[-offset] if len(shape) >= offset else ("static", "1")
            for shape in shapes
        ]
        non_unit = {item for item in dimensions if item != ("static", "1")}
        if len(non_unit) == 1:
            result.append(next(iter(non_unit)))
            continue
        if len(non_unit) == 0:
            result.append(("static", "1"))
            continue
        if all(item[0] == "static" for item in non_unit):
            return None, f"static dimensions are not broadcast-compatible: {dimensions!r}"
        return None, f"symbolic broadcast relation is undecidable: {dimensions!r}"
    return tuple(reversed(result)), None


def _check_shape_broadcast(
    inputs: Sequence[Mapping[str, Any]],
    outputs: Sequence[Mapping[str, Any]],
    instance: Mapping[str, Any],
) -> CheckResult:
    del instance
    missing = _require_io(inputs, outputs)
    if missing:
        return missing
    input_shapes = [_shape_key(item) for item in inputs]
    output_shapes = [_shape_key(item) for item in outputs]
    if any(item is None for item in [*input_shapes, *output_shapes]):
        return _result("insufficient_metadata", "shape metadata is incomplete")
    expected, reason = _broadcast_shape_keys(
        [item for item in input_shapes if item is not None]
    )
    if expected is None:
        status = "failed" if reason and reason.startswith("static") else "insufficient_metadata"
        return _result(status, reason or "broadcast result is unavailable")
    if all(item == expected for item in output_shapes):
        return _result("passed", f"output shape matches broadcast result {expected!r}")
    return _result(
        "failed", f"expected broadcast shape {expected!r}, observed {output_shapes!r}"
    )


def _check_element_count_preserve(
    inputs: Sequence[Mapping[str, Any]],
    outputs: Sequence[Mapping[str, Any]],
    instance: Mapping[str, Any],
) -> CheckResult:
    del instance
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


def _matmul_static_shape(
    left: tuple[int, ...], right: tuple[int, ...]
) -> tuple[int, ...] | None:
    if not left or not right:
        return None
    if left[-1] != (right[-2] if len(right) >= 2 else right[-1]):
        return None
    left_vector = len(left) == 1
    right_vector = len(right) == 1
    left_batch = () if left_vector else left[:-2]
    right_batch = () if right_vector else right[:-2]
    batch = _broadcast_static_shapes([left_batch, right_batch])
    if batch is None:
        return None
    result = list(batch)
    if not left_vector:
        result.append(left[-2])
    if not right_vector:
        result.append(right[-1])
    return tuple(result)


def _matmul_shape_keys(
    left: tuple[tuple[str, str], ...],
    right: tuple[tuple[str, str], ...],
) -> tuple[tuple[tuple[str, str], ...] | None, str | None]:
    if not left or not right:
        return None, "matrix operands must have rank at least one"
    contracted_right = right[-2] if len(right) >= 2 else right[-1]
    if left[-1] != contracted_right:
        if left[-1][0] == contracted_right[0] == "static":
            return None, "static matrix contraction dimensions differ"
        return None, "symbolic matrix contraction equality is undecidable"
    left_vector = len(left) == 1
    right_vector = len(right) == 1
    left_batch = () if left_vector else left[:-2]
    right_batch = () if right_vector else right[:-2]
    batch, reason = _broadcast_shape_keys([left_batch, right_batch])
    if batch is None:
        return None, reason
    result = list(batch)
    if not left_vector:
        result.append(left[-2])
    if not right_vector:
        result.append(right[-1])
    return tuple(result), None


def _check_matrix_product_shape(
    inputs: Sequence[Mapping[str, Any]],
    outputs: Sequence[Mapping[str, Any]],
    instance: Mapping[str, Any],
) -> CheckResult:
    missing = _require_io(inputs, outputs)
    if missing:
        return missing
    target = str(instance.get("target", ""))
    if len(inputs) < 2:
        return _result("insufficient_metadata", "matrix operands are unavailable")
    operands = inputs[-2:] if "addmm" in target else inputs[:2]
    left, right = (_shape_key(item) for item in operands)
    actual = _shape_key(outputs[0])
    if left is None or right is None or actual is None:
        return _result(
            "insufficient_metadata",
            "operand and result shape metadata are required for matrix validation",
        )
    if "aten.mm." in target or "aten.addmm." in target:
        expected = (
            (left[0], right[1])
            if len(left) == len(right) == 2 and left[1] == right[0]
            else None
        )
        reason = "matrix operands must be rank two with equal contraction dimensions"
    elif "aten.bmm." in target:
        expected = (
            (left[0], left[1], right[2])
            if len(left) == len(right) == 3
            and left[0] == right[0]
            and left[2] == right[1]
            else None
        )
        reason = "batch matrix operands must have equal batch and contraction dimensions"
    else:
        expected, reason = _matmul_shape_keys(left, right)
    if expected is None:
        symbolic = any(kind == "symbolic" for kind, _ in [*left, *right])
        return _result(
            "insufficient_metadata" if symbolic else "failed",
            f"{reason}: {left!r}, {right!r}",
        )
    if actual == expected:
        return _result("passed", f"matrix product shape is {expected!r}")
    return _result(
        "failed", f"expected matrix result {expected!r}, observed {actual!r}"
    )


def _check_input_shape_preserve(
    inputs: Sequence[Mapping[str, Any]],
    outputs: Sequence[Mapping[str, Any]],
    instance: Mapping[str, Any],
) -> CheckResult:
    return _check_shape_preserve(inputs, outputs, instance)


def _check_selected_shape(
    inputs: Sequence[Mapping[str, Any]],
    outputs: Sequence[Mapping[str, Any]],
    instance: Mapping[str, Any],
) -> CheckResult:
    del instance
    missing = _require_io(inputs, outputs)
    if missing:
        return missing
    available = {_shape_key(item) for item in inputs}
    observed = {_shape_key(item) for item in outputs}
    if None in available or None in observed:
        return _result("insufficient_metadata", "shape metadata is incomplete")
    if observed <= available:
        return _result("passed", "selected output shape originates from the container")
    return _result(
        "failed", f"selected shapes {observed!r} are absent from container {available!r}"
    )


def _check_permute_dimensions(
    inputs: Sequence[Mapping[str, Any]],
    outputs: Sequence[Mapping[str, Any]],
    instance: Mapping[str, Any],
) -> CheckResult:
    missing = _require_io(inputs, outputs)
    if missing:
        return missing
    source = _shape_key(inputs[0])
    actual = _shape_key(outputs[0])
    if source is None or actual is None:
        return _result("insufficient_metadata", "shape metadata is incomplete")
    target = str(instance.get("target", ""))
    if "aten.permute." in target:
        permutation = _integer_list_argument(instance, 1)
    else:
        first = _integer_argument(instance, 1)
        second = _integer_argument(instance, 2)
        permutation = list(range(len(source)))
        if first is not None and second is not None:
            first = _normalize_axis(first, len(source))
            second = _normalize_axis(second, len(source))
            if first is not None and second is not None:
                permutation[first], permutation[second] = (
                    permutation[second],
                    permutation[first],
                )
            else:
                permutation = None
        else:
            permutation = None
    if permutation is None:
        return _result(
            "insufficient_metadata", "permutation axes are not statically available"
        )
    normalized = [_normalize_axis(item, len(source)) for item in permutation]
    if any(item is None for item in normalized) or len(set(normalized)) != len(source):
        return _result("failed", f"invalid permutation {permutation!r}")
    expected = tuple(source[item] for item in normalized if item is not None)
    if actual == expected:
        return _result("passed", f"output dimensions follow permutation {normalized!r}")
    return _result(
        "failed", f"expected permuted shape {expected!r}, observed {actual!r}"
    )


def _check_concatenate_shape(
    inputs: Sequence[Mapping[str, Any]],
    outputs: Sequence[Mapping[str, Any]],
    instance: Mapping[str, Any],
) -> CheckResult:
    missing = _require_io(inputs, outputs)
    if missing:
        return missing
    shapes = [_static_shape(item) for item in inputs]
    actual = _static_shape(outputs[0])
    if any(item is None for item in shapes) or actual is None:
        return _result(
            "insufficient_metadata", "static shapes are required for concatenate validation"
        )
    concrete = [item for item in shapes if item is not None]
    rank = len(concrete[0])
    target = str(instance.get("target", ""))
    is_stack = "aten.stack." in target
    axis = _integer_argument(instance, 1, 0)
    axis = _normalize_axis(axis or 0, rank, allow_endpoint=is_stack)
    if axis is None:
        return _result("failed", "concatenate axis is outside the tensor rank")
    if is_stack:
        if any(item != concrete[0] for item in concrete[1:]):
            return _result("failed", f"stack input shapes differ: {concrete!r}")
        expected_list = list(concrete[0])
        expected_list.insert(axis, len(concrete))
    else:
        if any(len(item) != rank for item in concrete):
            return _result("failed", f"concatenate input ranks differ: {concrete!r}")
        expected_list = list(concrete[0])
        for dimension in range(rank):
            if dimension == axis:
                expected_list[dimension] = sum(item[dimension] for item in concrete)
            elif any(item[dimension] != expected_list[dimension] for item in concrete[1:]):
                return _result(
                    "failed", f"non-concatenated dimension {dimension} differs"
                )
    expected = tuple(expected_list)
    if actual == expected:
        return _result("passed", f"concatenated output shape is {expected!r}")
    return _result(
        "failed", f"expected concatenated shape {expected!r}, observed {actual!r}"
    )


def _check_broadcast_or_repeat(
    inputs: Sequence[Mapping[str, Any]],
    outputs: Sequence[Mapping[str, Any]],
    instance: Mapping[str, Any],
) -> CheckResult:
    missing = _require_io(inputs, outputs)
    if missing:
        return missing
    source = _shape_key(inputs[0])
    actual = _shape_key(outputs[0])
    if source is None or actual is None:
        return _result(
            "insufficient_metadata", "shape metadata is required for expand/repeat validation"
        )
    target = str(instance.get("target", ""))
    if "repeat" in target:
        static_source = _static_shape(inputs[0])
        static_actual = _static_shape(outputs[0])
        if static_source is None or static_actual is None:
            return _result(
                "insufficient_metadata", "repeat validation requires static shapes"
            )
        if len(static_actual) < len(static_source):
            return _result("failed", "repeat output rank cannot shrink")
        padded = (1,) * (len(static_actual) - len(static_source)) + static_source
        if all(
            base == 0 or result % base == 0
            for base, result in zip(padded, static_actual)
        ):
            return _result("passed", "repeat output dimensions are integer multiples")
        return _result(
            "failed",
            f"repeat shape {static_actual!r} is incompatible with {static_source!r}",
        )
    if len(actual) < len(source):
        return _result("failed", "expand output rank cannot shrink")
    padded = (("static", "1"),) * (len(actual) - len(source)) + source
    for base, result in zip(padded, actual):
        if base == ("static", "1") or base == result:
            continue
        if base[0] == result[0] == "static":
            return _result(
                "failed", f"expand shape {actual!r} is incompatible with {source!r}"
            )
        return _result(
            "insufficient_metadata",
            f"symbolic expand relation is undecidable: {base!r} -> {result!r}",
        )
    return _result("passed", "expanded output follows broadcast dimensions")


def _check_axis_slice_shape(
    inputs: Sequence[Mapping[str, Any]],
    outputs: Sequence[Mapping[str, Any]],
    instance: Mapping[str, Any],
) -> CheckResult:
    missing = _require_io(inputs, outputs)
    if missing:
        return missing
    source = _shape_key(inputs[0])
    actual = _shape_key(outputs[0])
    if source is None or actual is None:
        return _result(
            "insufficient_metadata", "shape metadata is required for slice validation"
        )
    target = str(instance.get("target", ""))
    axis_value = _parameter(instance, 1, "dim", 0)
    if not isinstance(axis_value, int) or isinstance(axis_value, bool):
        return _result("insufficient_metadata", "slice axis is symbolic")
    axis = _normalize_axis(axis_value, len(source))
    if axis is None:
        return _result("failed", "slice axis is outside the input rank")
    expected = list(source)
    if "aten.select." in target:
        del expected[axis]
    elif "aten.narrow." in target:
        length = _parameter(instance, 3, "length")
        if not isinstance(length, int) or isinstance(length, bool):
            return _result("insufficient_metadata", "narrow length is symbolic")
        expected[axis] = ("static", str(length))
    else:
        dimension = source[axis]
        if dimension[0] != "static":
            return _result(
                "insufficient_metadata",
                "exact slice length on a symbolic dimension is undecidable",
            )
        dimension_size = int(dimension[1])
        start = _parameter(instance, 2, "start", 0)
        stop = _parameter(instance, 3, "end", dimension_size)
        step = _parameter(instance, 4, "step", 1)
        if (
            not isinstance(start, int)
            or isinstance(start, bool)
            or not isinstance(stop, int)
            or isinstance(stop, bool)
            or not isinstance(step, int)
            or isinstance(step, bool)
            or step == 0
        ):
            return _result("insufficient_metadata", "slice bounds are symbolic")
        normalized = slice(start, stop, step).indices(dimension_size)
        expected[axis] = ("static", str(len(range(*normalized))))
    expected_tuple = tuple(expected)
    if actual == expected_tuple:
        return _result("passed", f"slice output shape is {expected_tuple!r}")
    return _result(
        "failed", f"expected slice shape {expected_tuple!r}, observed {actual!r}"
    )


def _check_index_shape(
    inputs: Sequence[Mapping[str, Any]],
    outputs: Sequence[Mapping[str, Any]],
    instance: Mapping[str, Any],
) -> CheckResult:
    missing = _require_io(inputs, outputs)
    if missing:
        return missing
    target = str(instance.get("target", ""))
    shapes = [_shape_key(item) for item in inputs]
    actual = _shape_key(outputs[0])
    if actual is None or any(item is None for item in shapes):
        return _result(
            "insufficient_metadata", "shape metadata is required for index validation"
        )
    concrete = [item for item in shapes if item is not None]
    if len(concrete) < 2:
        return _result("insufficient_metadata", "index tensor shape is unavailable")
    data, index = concrete[0], concrete[1]
    if "aten.embedding." in target:
        expected = (*index, *data[1:])
    elif "aten.gather." in target:
        expected = index
    elif "aten.index_select." in target:
        axis = _integer_argument(instance, 1)
        if axis is None:
            return _result("insufficient_metadata", "index_select axis is symbolic")
        axis = _normalize_axis(axis, len(data))
        if axis is None:
            return _result("failed", "index_select axis is outside the data rank")
        expected_list = list(data)
        if len(index) == 1:
            expected_list[axis] = index[0]
        elif all(kind == "static" for kind, _ in index):
            expected_list[axis] = (
                "static",
                str(prod(int(value) for _, value in index)),
            )
        else:
            return _result(
                "insufficient_metadata",
                "multi-dimensional symbolic index_select size is undecidable",
            )
        expected = tuple(expected_list)
    else:
        return _result(
            "insufficient_metadata",
            f"executable index shape logic is not available for {target}",
        )
    if actual == expected:
        return _result("passed", f"indexed output shape is {expected!r}")
    return _result(
        "failed", f"expected indexed shape {expected!r}, observed {actual!r}"
    )


def _check_reduce_shape(
    inputs: Sequence[Mapping[str, Any]],
    outputs: Sequence[Mapping[str, Any]],
    instance: Mapping[str, Any],
) -> CheckResult:
    missing = _require_io(inputs, outputs)
    if missing:
        return missing
    source = _shape_key(inputs[0])
    actual = [_shape_key(item) for item in outputs]
    if source is None or any(item is None for item in actual):
        return _result("insufficient_metadata", "shape metadata is incomplete")
    target = str(instance.get("target", ""))
    if "cumsum" in target:
        expected = source
    else:
        if "linalg_vector_norm" in target or ".norm." in target:
            axes = _integer_list_argument(instance, 2) or _integer_list_value(
                _keyword(instance, "dim")
            )
            keepdim_value = _argument(instance, 3, None)
        else:
            axes = _integer_list_argument(instance, 1) or _integer_list_value(
                _keyword(instance, "dim")
            )
            keepdim_value = _argument(instance, 2, None)
        if keepdim_value is None:
            keepdim_value = _keyword(instance, "keepdim", False)
        keepdim = bool(keepdim_value)
        if axes is None:
            axes = list(range(len(source)))
        normalized = [_normalize_axis(axis, len(source)) for axis in axes]
        if any(axis is None for axis in normalized):
            return _result("failed", f"reduction axes are invalid: {axes!r}")
        normalized_axes = {axis for axis in normalized if axis is not None}
        expected = tuple(
            ("static", "1") if keepdim and index in normalized_axes else dimension
            for index, dimension in enumerate(source)
            if keepdim or index not in normalized_axes
        )
    if all(item == expected for item in actual):
        return _result("passed", f"reduction output shape is {expected!r}")
    return _result(
        "failed", f"expected reduction shape {expected!r}, observed {actual!r}"
    )


def _check_last_dimension_projection(
    inputs: Sequence[Mapping[str, Any]],
    outputs: Sequence[Mapping[str, Any]],
    instance: Mapping[str, Any],
) -> CheckResult:
    del instance
    missing = _require_io(inputs, outputs)
    if missing:
        return missing
    if len(inputs) < 2:
        return _result("insufficient_metadata", "linear weight shape is unavailable")
    source, weight = (_shape_key(inputs[index]) for index in (0, 1))
    actual = _shape_key(outputs[0])
    if source is None or weight is None or actual is None or len(weight) != 2:
        return _result("insufficient_metadata", "linear shape metadata is incomplete")
    if not source or source[-1] != weight[1]:
        return _result("failed", "linear input feature size does not match weight")
    expected = (*source[:-1], weight[0])
    if actual == expected:
        return _result("passed", f"linear output shape is {expected!r}")
    return _result("failed", f"expected linear shape {expected!r}, observed {actual!r}")


def _check_padding_shape(
    inputs: Sequence[Mapping[str, Any]],
    outputs: Sequence[Mapping[str, Any]],
    instance: Mapping[str, Any],
) -> CheckResult:
    missing = _require_io(inputs, outputs)
    if missing:
        return missing
    source = _static_shape(inputs[0])
    actual = _static_shape(outputs[0])
    padding = _integer_list_argument(instance, 1)
    if source is None or actual is None or padding is None:
        return _result(
            "insufficient_metadata", "static shape and padding values are required"
        )
    if len(padding) % 2 or len(padding) > 2 * len(source):
        return _result("failed", f"invalid padding list {padding!r}")
    expected = list(source)
    for pair in range(len(padding) // 2):
        axis = len(source) - pair - 1
        expected[axis] += padding[2 * pair] + padding[2 * pair + 1]
    expected_tuple = tuple(expected)
    if actual == expected_tuple:
        return _result("passed", f"padded output shape is {expected_tuple!r}")
    return _result(
        "failed", f"expected padded shape {expected_tuple!r}, observed {actual!r}"
    )


def _check_shape_operand(
    inputs: Sequence[Mapping[str, Any]],
    outputs: Sequence[Mapping[str, Any]],
    instance: Mapping[str, Any],
) -> CheckResult:
    del inputs
    if not outputs:
        return _result("insufficient_metadata", "tensor creation has no tensor output")
    actual = _static_shape(outputs[0])
    if actual is None:
        return _result("insufficient_metadata", "creation output shape is symbolic")
    target = str(instance.get("target", ""))
    if "scalar_tensor" in target:
        expected: tuple[int, ...] | None = ()
    elif "arange" in target:
        return _result(
            "insufficient_metadata", "arange length depends on overload-specific scalars"
        )
    else:
        values = _integer_list_argument(instance, 0)
        expected = tuple(values) if values is not None else None
    if expected is None:
        return _result("insufficient_metadata", "shape operand is not statically available")
    if actual == expected:
        return _result("passed", f"created tensor shape matches operand {expected!r}")
    return _result(
        "failed", f"expected created shape {expected!r}, observed {actual!r}"
    )


def _check_layout_contiguous(
    inputs: Sequence[Mapping[str, Any]],
    outputs: Sequence[Mapping[str, Any]],
    instance: Mapping[str, Any],
) -> CheckResult:
    del inputs, instance
    if not outputs:
        return _result("insufficient_metadata", "the rule requires a tensor output")
    observed = {str(item.get("layout", "unknown")) for item in outputs}
    if observed <= {"contiguous", "scalar"}:
        return _result("passed", f"materialized output layouts: {sorted(observed)!r}")
    return _result(
        "failed", f"expected contiguous output, observed {sorted(observed)!r}"
    )


def _check_layout_preserve(
    inputs: Sequence[Mapping[str, Any]],
    outputs: Sequence[Mapping[str, Any]],
    instance: Mapping[str, Any],
) -> CheckResult:
    del instance
    missing = _require_io(inputs, outputs)
    if missing:
        return missing
    expected = str(inputs[0].get("layout", "unknown"))
    actual = str(outputs[0].get("layout", "unknown"))
    if "unknown" in {expected, actual}:
        return _result("insufficient_metadata", "layout metadata is unknown")
    if actual == expected:
        return _result("passed", f"primary output preserves layout {expected}")
    return _result(
        "failed", f"expected preserved layout {expected!r}, observed {actual!r}"
    )


def _check_layout_preserve_axis_meaning(
    inputs: Sequence[Mapping[str, Any]],
    outputs: Sequence[Mapping[str, Any]],
    instance: Mapping[str, Any],
) -> CheckResult:
    preserved = _check_layout_preserve(inputs, outputs, instance)
    if preserved["status"] != "passed":
        return preserved
    shape = _shape_key(inputs[0]) if inputs else None
    axis = _integer_argument(instance, 1)
    if axis is None:
        axis = _keyword(instance, "dim")
    if shape is None or not isinstance(axis, int):
        return _result("insufficient_metadata", "logical axis is not statically available")
    normalized = _normalize_axis(axis, len(shape))
    if normalized is None:
        return _result("failed", f"logical axis {axis} is outside rank {len(shape)}")
    return _result(
        "passed", f"layout is preserved and logical axis {normalized} remains valid"
    )


def _check_layout_preserve_or_broadcast(
    inputs: Sequence[Mapping[str, Any]],
    outputs: Sequence[Mapping[str, Any]],
    instance: Mapping[str, Any],
) -> CheckResult:
    missing = _require_io(inputs, outputs)
    if missing:
        return missing
    output_shape = _shape_key(outputs[0])
    input_shapes = [_shape_key(item) for item in inputs]
    if (
        output_shape is not None
        and input_shapes
        and all(item == output_shape for item in input_shapes)
    ):
        return _check_layout_preserve(inputs, outputs, instance)
    observed = str(outputs[0].get("layout", "unknown"))
    if observed == "unknown":
        return _result("insufficient_metadata", "broadcast result layout is unknown")
    return _result(
        "passed", f"broadcast result exposes concrete layout metadata {observed}"
    )


def _check_layout_materialized(
    inputs: Sequence[Mapping[str, Any]],
    outputs: Sequence[Mapping[str, Any]],
    instance: Mapping[str, Any],
) -> CheckResult:
    del inputs, instance
    if not outputs:
        return _result("insufficient_metadata", "the rule requires a tensor output")
    for output in outputs:
        layout = str(output.get("layout", "unknown"))
        shape = _static_shape(output)
        stride = output.get("stride")
        if layout == "unknown" or not isinstance(stride, list):
            return _result("insufficient_metadata", "materialized layout metadata is incomplete")
        if shape is not None:
            for size, value in zip(shape, stride):
                try:
                    numeric_stride = int(value)
                except (TypeError, ValueError):
                    return _result(
                        "insufficient_metadata", "materialized stride is symbolic"
                    )
                if size > 1 and numeric_stride == 0:
                    return _result(
                        "failed", "materialized output contains an expanded zero stride"
                    )
    return _result("passed", "outputs have concrete non-expanded materialized strides")


def _check_layout_preserve_or_materialize(
    inputs: Sequence[Mapping[str, Any]],
    outputs: Sequence[Mapping[str, Any]],
    instance: Mapping[str, Any],
) -> CheckResult:
    preserved = _check_layout_preserve(inputs, outputs, instance)
    if preserved["status"] == "passed":
        return preserved
    materialized = _check_layout_materialized(inputs, outputs, instance)
    if materialized["status"] == "passed":
        return materialized
    if "insufficient_metadata" in {preserved["status"], materialized["status"]}:
        return _result(
            "insufficient_metadata", "cannot prove layout preservation or materialization"
        )
    return _result("failed", "output is neither layout-preserving nor materialized")


def _check_layout_recomputed(
    inputs: Sequence[Mapping[str, Any]],
    outputs: Sequence[Mapping[str, Any]],
    instance: Mapping[str, Any],
) -> CheckResult:
    del inputs, instance
    if not outputs:
        return _result("insufficient_metadata", "the rule requires a tensor output")
    for output in outputs:
        shape = output.get("shape")
        stride = output.get("stride")
        if not isinstance(shape, list) or not isinstance(stride, list):
            return _result("insufficient_metadata", "shape/stride metadata is incomplete")
        if len(shape) != len(stride):
            return _result("failed", "recomputed stride rank differs from output rank")
        if str(output.get("layout", "unknown")) == "unknown":
            return _result("insufficient_metadata", "recomputed layout remains unknown")
    return _result("passed", "reshape output carries rank-consistent recomputed strides")


def _check_layout_permute_strides(
    inputs: Sequence[Mapping[str, Any]],
    outputs: Sequence[Mapping[str, Any]],
    instance: Mapping[str, Any],
) -> CheckResult:
    shape_result = _check_permute_dimensions(inputs, outputs, instance)
    if shape_result["status"] != "passed":
        return shape_result
    source_stride = inputs[0].get("stride")
    actual_stride = outputs[0].get("stride")
    if not isinstance(source_stride, list) or not isinstance(actual_stride, list):
        return _result("insufficient_metadata", "stride metadata is incomplete")
    rank = len(source_stride)
    target = str(instance.get("target", ""))
    if "aten.permute." in target:
        permutation = _integer_list_argument(instance, 1)
    else:
        first = _integer_argument(instance, 1)
        second = _integer_argument(instance, 2)
        if first is None or second is None:
            permutation = None
        else:
            first = _normalize_axis(first, rank)
            second = _normalize_axis(second, rank)
            permutation = list(range(rank))
            if first is not None and second is not None:
                permutation[first], permutation[second] = permutation[second], permutation[first]
            else:
                permutation = None
    if permutation is None:
        return _result("insufficient_metadata", "permutation axes are unavailable")
    normalized = [_normalize_axis(item, rank) for item in permutation]
    if any(item is None for item in normalized):
        return _result("failed", f"invalid stride permutation {permutation!r}")
    expected = [source_stride[item] for item in normalized if item is not None]
    if actual_stride == expected:
        return _result("passed", f"output strides follow permutation {normalized!r}")
    return _result(
        "failed", f"expected permuted strides {expected!r}, observed {actual_stride!r}"
    )


def _check_layout_selected(
    inputs: Sequence[Mapping[str, Any]],
    outputs: Sequence[Mapping[str, Any]],
    instance: Mapping[str, Any],
) -> CheckResult:
    del instance
    missing = _require_io(inputs, outputs)
    if missing:
        return missing
    available = {
        (str(item.get("layout", "unknown")), tuple(item.get("stride", [])))
        for item in inputs
    }
    observed = {
        (str(item.get("layout", "unknown")), tuple(item.get("stride", [])))
        for item in outputs
    }
    if any(layout == "unknown" for layout, _ in [*available, *observed]):
        return _result("insufficient_metadata", "selected layout metadata is unknown")
    if observed <= available:
        return _result("passed", "selected layout and strides originate from the container")
    return _result("failed", "selected layout is absent from the input container")


def _check_layout_expand(
    inputs: Sequence[Mapping[str, Any]],
    outputs: Sequence[Mapping[str, Any]],
    instance: Mapping[str, Any],
) -> CheckResult:
    shape_result = _check_broadcast_or_repeat(inputs, outputs, instance)
    if shape_result["status"] != "passed":
        return shape_result
    target = str(instance.get("target", ""))
    if "repeat" in target:
        return _check_layout_materialized(inputs, outputs, instance)
    source = _shape_key(inputs[0])
    actual = _shape_key(outputs[0])
    stride = outputs[0].get("stride")
    if source is None or actual is None or not isinstance(stride, list):
        return _result("insufficient_metadata", "expand stride metadata is incomplete")
    padded = (("static", "1"),) * (len(actual) - len(source)) + source
    for before, after, value in zip(padded, actual, stride):
        expanded = before == ("static", "1") and after != ("static", "1")
        if expanded:
            try:
                if int(value) != 0:
                    return _result("failed", "expanded dimension must have zero stride")
            except (TypeError, ValueError):
                return _result("insufficient_metadata", "expanded stride is symbolic")
    return _result("passed", "expanded dimensions use zero-stride view semantics")


def _check_layout_view_or_materialized(
    inputs: Sequence[Mapping[str, Any]],
    outputs: Sequence[Mapping[str, Any]],
    instance: Mapping[str, Any],
) -> CheckResult:
    del inputs, instance
    if not outputs:
        return _result("insufficient_metadata", "the rule requires a tensor output")
    observed = {str(item.get("layout", "unknown")) for item in outputs}
    if "unknown" in observed:
        return _result("insufficient_metadata", "view/materialized layout is unknown")
    return _result(
        "passed", f"slice outputs expose concrete view/materialized layouts {sorted(observed)!r}"
    )


def _check_not_applicable(
    inputs: Sequence[Mapping[str, Any]],
    outputs: Sequence[Mapping[str, Any]],
    instance: Mapping[str, Any],
) -> CheckResult:
    del inputs, outputs, instance
    return _result("passed", "the registry marks this rule as not applicable")


_DTYPE_CHECKERS: dict[str, RuleChecker] = {
    "preserve": _check_dtype_preserve,
    "promote": _check_dtype_promote,
    "core_aten_division": _check_core_aten_division,
    "same_or_explicit_accumulator": _check_same_or_explicit_accumulator,
    "floating_preserve": _check_floating_preserve,
    "numeric_preserve_bounds_cast_to_input": _check_numeric_preserve,
    "floating_preserve_or_explicit_cast": _check_floating_preserve_or_explicit_cast,
    "floating_with_explicit_accumulator": _check_floating_with_explicit_accumulator,
    "same_dtype": _check_dtype_same,
    "inputs_promote_output_bool": _check_output_bool,
    "condition_bool_values_promote": _check_condition_values_promote,
    "boolean_inputs_and_output": _check_boolean_io,
    "output_integer": _check_output_integer,
    "selected_value_preserve": _check_selected_dtype,
    "data_preserve_indices_integer": _check_data_preserve_indices_integer,
    "operator_specific_accumulator": _check_operator_specific_accumulator,
    "destination_dtype_explicit": _check_destination_dtype_explicit,
    "operator_specific_floating_or_numeric_preserve": _check_numeric_preserve_or_explicit,
    "input_weight_compatible_accumulator_explicit": _check_input_weight_compatible,
    "numeric_preserve_or_explicit_accumulator": _check_numeric_preserve_or_explicit,
    "preserve_with_pad_value_cast": _check_numeric_preserve,
    "operator_specific_preserve": _check_numeric_preserve_or_explicit,
    "data_update_compatible_indices_integer": _check_data_update_indices_integer,
    "input_numeric_output_integer": _check_numeric_input_integer_output,
    "floating_preserve_mask_bool": _check_dropout_dtype,
    "explicit_or_inferred_dtype": _check_creation_dtype,
}

_SHAPE_CHECKERS: dict[str, RuleChecker] = {
    "preserve": _check_shape_preserve,
    "broadcast": _check_shape_broadcast,
    "element_count_preserve": _check_element_count_preserve,
    "matrix_product_with_batch_broadcast": _check_matrix_product_shape,
    "input_shape_preserve_bounds_broadcast": _check_input_shape_preserve,
    "selected_value_preserve": _check_selected_shape,
    "permute_dimensions": _check_permute_dimensions,
    "concatenate_on_axis": _check_concatenate_shape,
    "broadcast_or_repeat": _check_broadcast_or_repeat,
    "axis_bounds_and_step": _check_axis_slice_shape,
    "index_shape_composition": _check_index_shape,
    "reduce_axes_keepdim_explicit": _check_reduce_shape,
    "last_dimension_projection": _check_last_dimension_projection,
    "per_axis_begin_end_padding": _check_padding_shape,
    "shape_operand": _check_shape_operand,
}

_LAYOUT_CHECKERS: dict[str, RuleChecker] = {
    "contiguous": _check_layout_contiguous,
    "not_applicable": _check_not_applicable,
    "preserve": _check_layout_preserve,
    "preserve_axis_meaning": _check_layout_preserve_axis_meaning,
    "preserve_or_broadcast": _check_layout_preserve_or_broadcast,
    "selected_value_preserve": _check_layout_selected,
    "recompute_strides": _check_layout_recomputed,
    "permute_strides_and_logical_axes": _check_layout_permute_strides,
    "materialized": _check_layout_materialized,
    "materialized_contiguous_unless_backend_preserves": _check_layout_materialized,
    "may_create_zero_stride_view": _check_layout_expand,
    "view_or_materialized": _check_layout_view_or_materialized,
    "preserve_or_materialize": _check_layout_preserve_or_materialize,
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
            result = checker(inputs, outputs, instance)
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
