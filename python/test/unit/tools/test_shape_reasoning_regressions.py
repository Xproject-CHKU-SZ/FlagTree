"""Synthetic semantic regression tests, independent of model/device execution."""
import pathlib
import sys
import unittest

sys.path.insert(0, str(pathlib.Path(__file__).parents[3]))
from flagtree_model_ir.rule_checks import evaluate_operator_rule_set
from flagtree_model_ir.shape_reasoning import concatenate_shape_check, compare_dimensions, normalize_axis
from flagtree_model_ir.registry import lookup_operator_family


def tensor(shape):
    return {"dtype": "float32", "shape": [{"kind": "static" if isinstance(v, int) else "symbolic", "value": v} for v in shape], "layout": "contiguous", "stride": []}


def cat_instance(inputs, output, axis, stack=False):
    return {"target": "aten.stack.default" if stack else "aten.cat.default", "registry_status": "registered", "args": [[], axis], "kwargs": {}, "inputs": [tensor(s) for s in inputs], "outputs": [tensor(output)], "shape_rule": "concatenate_on_axis"}


class ShapeRegressions(unittest.TestCase):
    def shape_result(self, instance):
        return evaluate_operator_rule_set(instance)["checks"]["shape"]

    def test_empty_cache_sentinel_and_negative_axis(self):
        result = self.shape_result(cat_instance([[0], [2, 8, 24, 128]], [2, 8, 24, 128], -2))
        self.assertEqual(result["status"], "passed")

    def test_symbolic_concat_expression(self):
        result = self.shape_result(cat_instance([["B", "S", 8], ["B", "S", 8]], ["B", "2*S", 8], 1))
        self.assertEqual(result["status"], "passed")

    def test_static_rank_errors_are_not_hidden_by_symbolic_dimensions(self):
        result = self.shape_result(cat_instance([["B", "S"]], ["B", "S"], 3))
        self.assertEqual(result["status"], "failed")

    def test_unknown_symbol_relation_remains_pending(self):
        result = self.shape_result(cat_instance([["B", "S"], ["C", "S"]], ["B", "2*S"], 1))
        self.assertEqual(result["status"], "insufficient_metadata")

    def test_symbolic_constant_difference_is_definitely_invalid(self):
        result = self.shape_result(cat_instance([["B", "S"], ["B", "S"]], ["B", "2*S+1"], 1))
        self.assertEqual(result["status"], "failed")

    def test_stack_does_not_ignore_empty_sentinel(self):
        result = self.shape_result(cat_instance([[0], [2, 3]], [2, 2, 3], 0, stack=True))
        self.assertEqual(result["status"], "failed")

    def test_all_empty_inputs_are_valid_rank_one_cat(self):
        result = self.shape_result(cat_instance([[0], [0]], [0], -1))
        self.assertEqual(result["status"], "passed")

    def test_unknown_rank_and_uninterpreted_expression(self):
        result = concatenate_shape_check([None], (("symbolic", "B"),), 0)
        self.assertEqual(result["status"], "insufficient_metadata")
        self.assertIsNone(compare_dimensions(("symbolic", "ceildiv(B,2)"), ("symbolic", "B")))
        self.assertIsNone(compare_dimensions(("", ""), ("", "")))

    def test_axis_normalization_and_affine_equivalence(self):
        self.assertEqual(normalize_axis(-2, 4), 2)
        self.assertEqual(normalize_axis(-1, 2, allow_endpoint=True), 2)
        self.assertIsNone(normalize_axis(4, 4))
        self.assertTrue(compare_dimensions(("symbolic", "S+S"), ("symbolic", "2*S")))

    def test_unary_math_materialization_keeps_logical_shape(self):
        family = lookup_operator_family("aten.neg.default", "core_aten")
        self.assertEqual(family["layout_rule"], "preserve_or_materialize")
        instance = {"registry_status": "registered", "target": "aten.neg.default", "layout_rule": family["layout_rule"], "inputs": [{"dtype": "float32", "shape": [{"kind": "static", "value": 4}], "layout": "strided", "stride": ["2"]}], "outputs": [{"dtype": "float32", "shape": [{"kind": "static", "value": 4}], "layout": "contiguous", "stride": ["1"]}]}
        self.assertEqual(evaluate_operator_rule_set(instance)["checks"]["layout"]["status"], "passed")

    def test_invalid_and_missing_static_dimension(self):
        result = concatenate_shape_check([(("static", "oops"),)], (("static", "oops"),), 0)
        self.assertEqual(result["status"], "insufficient_metadata")
        result = concatenate_shape_check([(("static", "-1"),)], (("static", "-1"),), 0)
        self.assertEqual(result["status"], "failed")

    def test_potential_empty_symbolic_vector_is_not_a_false_rank_error(self):
        result = self.shape_result(cat_instance([["N"], ["B", "S", 8]], ["B", "S", 8], -2))
        self.assertEqual(result["status"], "insufficient_metadata")


if __name__ == "__main__":
    unittest.main(verbosity=2)
