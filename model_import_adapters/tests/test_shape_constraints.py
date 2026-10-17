"""Dependency-free tests for the serialized PT2 constraint binding."""
from __future__ import annotations

import importlib.util
from pathlib import Path
from types import SimpleNamespace as NS
import unittest

FILE = Path(__file__).parents[1] / "src/model_import_adapters/shape_constraints.py"
SPEC = importlib.util.spec_from_file_location("shape_constraints", FILE)
MODULE = importlib.util.module_from_spec(SPEC)
SPEC.loader.exec_module(MODULE)
build = MODULE.build_input_shape_constraints


class Symbolic:
    def __init__(self, expression, symbols):
        self.expression = expression
        self.node = NS(expr=NS(free_symbols=set(symbols)))

    def __str__(self):
        return self.expression


def program(shapes, ranges=None):
    nodes = [NS(name=name, op="placeholder", meta={"val": NS(shape=shape, dtype="torch.int64")}) for name, shape in shapes.items()]
    return NS(graph_signature=NS(user_inputs=list(shapes)), graph=NS(nodes=nodes), range_constraints=ranges or {})


class ShapeConstraintTests(unittest.TestCase):
    def test_shared_symbol_sources_and_static_axes(self):
        s = Symbolic("s0", ["s0"])
        result = build(program({"ids": (s, 24), "mask": (s, 24)}, {"s0": NS(lower=1, upper=4)}), {"positional": ["arg_0", "arg_1"], "keyword": []})
        self.assertEqual(len(result["symbols"][0]["input_axes"]), 2)
        self.assertEqual(result["symbols"][0]["bounds"]["lower"], "1")
        self.assertEqual(result["inputs"][0]["axes"][1]["value"], 24)
        self.assertEqual(result["runtime_range_coverage"], "not_asserted_by_serialization")

    def test_derived_relation_and_keyword_archive(self):
        result = build(program({"value": (Symbolic("2*s0 + 1", ["s0"]),)}, {"s0": NS(lower=2, upper="int_oo")}), {"positional": [], "keyword": [{"name": "value", "key": "kwarg_value"}]})
        self.assertEqual(result["symbols"][0]["input_axes"][0]["expression"], "2*s0 + 1")
        self.assertEqual(result["symbols"][0]["bounds"]["upper"], "int_oo")
        self.assertEqual(result["inputs"][0]["name"], "value")

    def test_schema_mismatch_rejected(self):
        with self.assertRaisesRegex(ValueError, "do not match"):
            build(program({"ids": (2, 24)}), {"positional": [], "keyword": []})

    def test_missing_shape_rejected(self):
        ep = program({"ids": (2, 24)})
        ep.graph.nodes[0].meta.clear()
        with self.assertRaisesRegex(ValueError, "metadata missing"):
            build(ep, {"positional": ["arg_0"], "keyword": []})

    def test_scalar_tensor_and_static_export(self):
        result = build(program({"value": ()}), {"positional": ["arg_0"], "keyword": []})
        self.assertEqual(result["symbols"], [])
        self.assertEqual(result["inputs"][0]["rank"], 0)


if __name__ == "__main__":
    unittest.main()
