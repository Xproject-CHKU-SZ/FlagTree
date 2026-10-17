"""Small, dependency-free symbolic Shape reasoning for semantic checks.

Only integer affine expressions are interpreted. Unsupported expressions and
unproven symbol relations remain undecidable instead of becoming false passes.
"""
from __future__ import annotations

import ast
from typing import Sequence

Dimension = tuple[str, str]


def normalize_axis(axis: int, rank: int, *, allow_endpoint: bool = False) -> int | None:
    upper = rank + int(allow_endpoint)
    if axis < 0:
        axis += upper
    return axis if 0 <= axis < upper else None


def _affine(expression: str) -> tuple[dict[str, int], int] | None:
    if len(expression) > 1024:
        return None
    def add(left, right, sign=1):
        terms = dict(left[0])
        for name, coefficient in right[0].items():
            terms[name] = terms.get(name, 0) + sign * coefficient
        return {k: v for k, v in terms.items() if v}, left[1] + sign * right[1]

    def walk(node):
        if isinstance(node, ast.Constant) and type(node.value) is int:
            return {}, node.value
        if isinstance(node, ast.Name):
            return {node.id: 1}, 0
        if isinstance(node, ast.UnaryOp) and isinstance(node.op, (ast.UAdd, ast.USub)):
            value = walk(node.operand)
            if value is None:
                return None
            sign = -1 if isinstance(node.op, ast.USub) else 1
            return {k: sign * v for k, v in value[0].items()}, sign * value[1]
        if isinstance(node, ast.BinOp):
            left, right = walk(node.left), walk(node.right)
            if left is None or right is None:
                return None
            if isinstance(node.op, (ast.Add, ast.Sub)):
                return add(left, right, -1 if isinstance(node.op, ast.Sub) else 1)
            if isinstance(node.op, ast.Mult):
                if not left[0]:
                    factor, value = left[1], right
                elif not right[0]:
                    factor, value = right[1], left
                else:
                    return None
                return {k: factor * v for k, v in value[0].items() if factor * v}, factor * value[1]
        return None

    try:
        tree = ast.parse(expression, mode="eval")
    except (SyntaxError, ValueError, RecursionError):
        return None
    # Bound work even for malformed metadata; never execute model expressions.
    if len(list(ast.walk(tree))) > 128:
        return None
    return walk(tree.body)


def compare_dimensions(left: Dimension, right: Dimension) -> bool | None:
    if left[0] not in {"static", "symbolic"} or right[0] not in {"static", "symbolic"}:
        return None
    if not left[1] or not right[1]:
        return None
    if left == right:
        return True
    first, second = _affine(left[1]), _affine(right[1])
    if first is None or second is None:
        return None
    if first[0] == second[0]:
        return first[1] == second[1]
    # Different symbols may still be equal through constraints not available
    # here. They are not a proven mismatch.
    return None


def sum_dimensions(dimensions: Sequence[Dimension]) -> Dimension:
    if all(kind == "static" for kind, _ in dimensions):
        return "static", str(sum(int(value) for _, value in dimensions))
    return "symbolic", " + ".join("(" + value + ")" for _, value in dimensions)


def concatenate_shape_check(shapes: Sequence[tuple[Dimension, ...] | None], output: tuple[Dimension, ...] | None, axis: int, *, stack: bool = False) -> dict[str, str]:
    def result(status, message):
        return {"status": status, "message": message}

    if not shapes or output is None or any(shape is None for shape in shapes):
        return result("insufficient_metadata", "concatenate requires known ranks and dimension metadata")
    values = [shape for shape in shapes if shape is not None]
    for shape in [*values, output]:
        for kind, value in shape:
            if kind == "static":
                try:
                    size = int(value)
                except (ValueError, TypeError):
                    return result("insufficient_metadata", "static dimension is not an integer")
                if size < 0:
                    return result("failed", "static tensor dimensions cannot be negative")
    # Core ATen/PyTorch cat explicitly permits the 1-D empty (0,) sentinel.
    # Stack does not have this exception.
    uncertain_empty = False
    if not stack:
        nonempty = [shape for shape in values if shape != (("static", "0"),)]
        values = nonempty or values
        if any(len(shape) > 1 for shape in values):
            remaining = []
            for shape in values:
                if len(shape) == 1 and compare_dimensions(shape[0], ("static", "0")) is None:
                    uncertain_empty = True
                else:
                    remaining.append(shape)
            values = remaining
    rank = len(values[0])
    normalized = normalize_axis(axis, rank, allow_endpoint=stack)
    if normalized is None:
        return result("failed", f"concatenate axis {axis} is outside rank {rank}")
    if any(len(shape) != rank for shape in values):
        return result("failed", "concatenate input ranks differ")
    if len(output) != rank + int(stack):
        return result("failed", "concatenate output rank differs")
    expected = list(values[0])
    unresolved = uncertain_empty
    for dim in range(rank):
        if not stack and dim == normalized:
            expected[dim] = sum_dimensions([shape[dim] for shape in values])
        else:
            for shape in values[1:]:
                match = compare_dimensions(shape[dim], expected[dim])
                if match is False:
                    return result("failed", f"non-concatenated dimension {dim} differs")
                unresolved |= match is None
    if stack:
        expected.insert(normalized, ("static", str(len(values))))
    for dim, (actual, wanted) in enumerate(zip(output, expected)):
        match = compare_dimensions(actual, wanted)
        if match is False:
            return result("failed", f"concatenate output dimension {dim} differs")
        unresolved |= match is None
    if unresolved:
        return result("insufficient_metadata", "symbolic concatenate relation requires additional constraints")
    return result("passed", "concatenate ranks, axis and static/symbolic dimensions agree")
