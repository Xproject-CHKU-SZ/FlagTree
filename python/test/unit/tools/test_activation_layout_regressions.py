import pathlib
import sys
import unittest

sys.path.insert(0, str(pathlib.Path(__file__).parents[3]))
from flagtree_model_ir.registry import lookup_operator_family
from flagtree_model_ir.rule_checks import evaluate_operator_rule_set


def instance(output_shape=(2, 4), output_dtype="float32", output_layout="contiguous", stride=(4, 1)):
    family = lookup_operator_family("aten.gelu.default", "core_aten")
    def tensor(shape, dtype, layout, strides):
        return {"dtype": dtype, "layout": layout, "stride": list(strides), "shape": [{"kind": "static", "value": x} for x in shape]}
    return {"target": "aten.gelu.default", "registry_status": "registered", "args": [], "kwargs": {},
            "dtype_rule": family["dtype_rule"], "shape_rule": family["shape_rule"], "layout_rule": family["layout_rule"],
            "inputs": [tensor((2, 4), "float32", "symbolic_strided", (8, 1))],
            "outputs": [tensor(output_shape, output_dtype, output_layout, stride)]}


class ActivationLayoutTests(unittest.TestCase):
    def test_non_inplace_activation_may_materialize(self):
        result = evaluate_operator_rule_set(instance())
        self.assertEqual(result["checks"]["layout"]["status"], "passed")

    def test_dtype_and_shape_are_not_relaxed(self):
        self.assertEqual(evaluate_operator_rule_set(instance(output_shape=(3, 4)))["checks"]["shape"]["status"], "failed")
        self.assertEqual(evaluate_operator_rule_set(instance(output_dtype="float64"))["checks"]["dtype"]["status"], "failed")

    def test_unknown_layout_remains_unproven(self):
        self.assertEqual(evaluate_operator_rule_set(instance(output_layout="unknown", stride=()))["checks"]["layout"]["status"], "insufficient_metadata")


if __name__ == "__main__":
    unittest.main(verbosity=2)
