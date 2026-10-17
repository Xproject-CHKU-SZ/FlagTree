"""Serialize observed PT2 input-axis constraints without specializing SymInts."""

from __future__ import annotations

from collections.abc import Mapping
from typing import Any


def build_input_shape_constraints(exported_program: Any, input_schema: Mapping[str, Any]) -> dict[str, Any]:
    """Bind exported symbols to archived Tensor inputs, including derived axes.

    This records the constraints actually retained by torch.export, not an
    inference that every shape in those ranges has been executed successfully.
    The archive currently supports flat Tensor positional and keyword inputs.
    """
    bindings = [
        {"archive_key": key, "source": "positional", "position": index}
        for index, key in enumerate(input_schema["positional"])
    ] + [
        {"archive_key": item["key"], "source": "keyword", "name": item["name"]}
        for item in input_schema["keyword"]
    ]
    names = list(exported_program.graph_signature.user_inputs)
    if len(names) != len(bindings) or any(not isinstance(name, str) for name in names):
        raise ValueError("PT2 user inputs do not match the flat Tensor input archive")
    nodes = {node.name: node for node in exported_program.graph.nodes if node.op == "placeholder"}
    ranges = {
        str(symbol): {
            "lower": str(constraint.lower), "upper": str(constraint.upper),
            "expression": str(symbol),
        }
        for symbol, constraint in exported_program.range_constraints.items()
    }
    inputs = []
    symbol_uses: dict[str, list[dict[str, Any]]] = {}
    for name, binding in zip(names, bindings):
        node = nodes.get(name)
        value = node.meta.get("val") if node is not None else None
        if value is None or not hasattr(value, "shape"):
            raise ValueError(f"Tensor shape metadata missing for PT2 user input {name}")
        axes = []
        for axis, dimension in enumerate(value.shape):
            if isinstance(dimension, int):
                axes.append({"axis": axis, "kind": "static", "value": dimension})
                continue
            expression = str(dimension)
            symbolic_expr = getattr(getattr(dimension, "node", None), "expr", None)
            symbols = sorted(str(symbol) for symbol in getattr(symbolic_expr, "free_symbols", ()))
            # No parsing/eval or integer conversion of a symbolic dimension.
            record = {"axis": axis, "kind": "symbolic", "expression": expression, "symbols": symbols}
            if expression in ranges:
                record["bounds"] = dict(ranges[expression])
            axes.append(record)
            for symbol in symbols:
                symbol_uses.setdefault(symbol, []).append({
                    "archive_key": binding["archive_key"], "input_node": name,
                    "axis": axis, "expression": expression,
                })
        inputs.append({**binding, "input_node": name, "dtype": str(value.dtype), "rank": len(axes), "axes": axes})
    return {
        "schema_version": 1,
        "provenance": "ExportedProgram user-input FakeTensor metadata and range_constraints",
        "runtime_range_coverage": "not_asserted_by_serialization",
        "inputs": inputs,
        "symbols": [
            {"symbol": symbol, "bounds": ranges.get(symbol), "input_axes": symbol_uses[symbol]}
            for symbol in sorted(symbol_uses)
        ],
        "range_constraints": [ranges[key] for key in sorted(ranges)],
    }
