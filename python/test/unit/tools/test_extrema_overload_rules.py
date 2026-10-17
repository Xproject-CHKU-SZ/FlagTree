"""Do not conflate extrema values with arg-reduction integer indices."""
import unittest

from flagtree_model_ir.registry import lookup_operator_family
from flagtree_model_ir.rule_checks import evaluate_operator_rule_set


def check(target, dtypes, shapes=None, input_dtype="float32"):
    family = lookup_operator_family(target, "core_aten")
    def tensor(dtype, shape):
        return {"dtype": dtype, "shape": [{"kind": "static", "value": x} for x in shape],
                "stride": [4, 1] if len(shape) == 2 else [1] if shape else [], "layout": "contiguous"}
    return evaluate_operator_rule_set({"target": target, "registry_status": "registered",
        "args": [{"node": "input"}, 1], "kwargs": {},
        **{key: family[key] for key in ("dtype_rule", "shape_rule", "layout_rule")},
        "inputs": [tensor(input_dtype, [2, 4])],
        "outputs": [tensor(d, s) for d, s in zip(dtypes, shapes or [[2]] * len(dtypes))]})


class ExtremaOverloadTests(unittest.TestCase):
    def test_dim_values_and_indices_are_distinct(self):
        for operation in ("max", "min"):
            for dtype in ("float16", "bfloat16", "float32", "float64", "int64", "bool"):
                with self.subTest(operation=operation, dtype=dtype):
                    result = check(f"aten.{operation}.dim", [dtype, "int64"], input_dtype=dtype)
                    self.assertEqual(result["checks"]["dtype"]["status"], "passed")
                    self.assertEqual(result["checks"]["shape"]["status"], "passed")

    def test_wrong_output_contracts_fail(self):
        for dtypes in (["float64", "int64"], ["float32", "int32"], ["int64", "float32"], ["float32"]):
            with self.subTest(dtypes=dtypes):
                self.assertEqual(check("aten.max.dim", dtypes)["checks"]["dtype"]["status"], "failed")
        self.assertEqual(check("aten.max.dim", ["complex64", "int64"], input_dtype="complex64")["checks"]["dtype"]["status"], "failed")

    def test_both_output_shapes_are_checked(self):
        self.assertEqual(check("aten.max.dim", ["float32", "int64"], [[2], [3]])["checks"]["shape"]["status"], "failed")

    def test_arg_reduction_remains_integer(self):
        for operation in ("argmax", "argmin"):
            self.assertEqual(check(f"aten.{operation}.default", ["int64"])["checks"]["dtype"]["status"], "passed")
            self.assertEqual(check(f"aten.{operation}.default", ["float32"])["checks"]["dtype"]["status"], "failed")

    def test_all_reduction_preserves_values(self):
        for operation in ("max", "min"):
            target = f"aten.{operation}.default"
            self.assertEqual(lookup_operator_family(target, "core_aten")["id"], "reduction.extrema_all")
            self.assertEqual(check(target, ["float32"])["checks"]["dtype"]["status"], "passed")


if __name__ == "__main__":
    unittest.main()
