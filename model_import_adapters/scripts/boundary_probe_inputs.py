"""Pure coherent input derivation for the original archived rank2 text probes."""
import numpy as np


def derive_coherent_inputs(arrays, keys, batch, sequence):
    """Repeat/slice original(1,8) values, preserving dtype, order and source bytes."""
    if (type(batch) is not int or type(sequence) is not int or batch <= 0 or sequence <= 0
            or not keys or len(keys) != len(set(keys))):
        raise ValueError("Positive concrete B/S and unique ordered input keys required")
    result = []
    for key in keys:
        value = arrays[key]
        if value.shape != (1, 8) or value.dtype.kind not in "biuf":
            raise ValueError("Frozen numeric(1,8) probe required: " + key)
        result.append(np.tile(value, (batch, (sequence + 7) // 8))[:, :sequence].copy(order="C"))
    return tuple(result)


def violated_axis_constraints(contract, batch, sequence, axis, relation):
    """List every deliberately changed input bound; no expression evaluation."""
    if type(axis) is not int or axis not in (0, 1) or relation not in {"<=", ">="}:
        raise ValueError("Known B/S bound relation required")
    actual = (batch, sequence)[axis]
    rows = []
    for item in contract["inputs"]:
        if item["rank"] != 2 or item["source"] != "positional":
            raise ValueError("Qualified flat rank2 positional task inputs required")
        value = item["axes"][axis]
        if value["kind"] != "symbolic" or value["symbols"] != [value["expression"]]:
            raise ValueError("Direct symbolic input axis required")
        bound = int(value["bounds"]["upper" if relation == "<=" else "lower"])
        violated = actual > bound if relation == "<=" else actual < bound
        if violated:
            rows.append({"input_name": item["input_node"], "axis": axis, "relation": relation,
                         "bound": bound, "actual": actual})
    if not rows:
        raise ValueError("The requested negative probe violates no declared bound")
    return rows
