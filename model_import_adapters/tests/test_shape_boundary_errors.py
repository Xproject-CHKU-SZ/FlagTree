from pathlib import Path
import sys
import unittest

sys.path.insert(0, str(Path(__file__).parents[1] / "scripts"))
from shape_boundary_errors import is_expected_pt2_bound_rejection as classify


class ShapeBoundaryErrorTest(unittest.TestCase):
    def check(self, kind, message, **changes):
        args = dict(input_name="input_ids", axis=0, relation="<=", bound=4, actual=5)
        args.update(changes)
        return classify(kind, message, **args)

    def test_eager_upper_guard(self):
        self.assertTrue(self.check("AssertionError", "Guard failed: input_ids.size()[0] <= 4"))

    def test_eager_lower_guard(self):
        self.assertTrue(self.check("AssertionError", "Guard failed: input_ids.size()[1] >= 8",
                                  axis=1, relation=">=", bound=8, actual=7))

    def test_dynamo_wrapped_guard_requires_exact_inner_assertion(self):
        guard = "Guard failed: input_ids.size()[0] <= 4"
        self.assertTrue(self.check("TorchRuntimeError",
            "Dynamo failed FX node with fake tensors: got AssertionError(" + repr(guard) + ")\nfrom user code..."))

    def test_legacy_runtime_constraint_format(self):
        self.assertTrue(self.check("RuntimeError", "Expected input at *args[0].shape[0] to be <= 4, but got 5"))

    def test_oom_is_not_a_constraint_rejection(self):
        self.assertFalse(self.check("OutOfMemoryError", "CUDA out of memory"))
        self.assertFalse(self.check("RuntimeError", "CUDA out of memory; shape[0] <= 4"))

    def test_fx_guard_literal_does_not_hide_another_inner_exception(self):
        self.assertFalse(self.check("TorchRuntimeError",
            "FX _assert(s <= 4, 'Guard failed: input_ids.size()[0] <= 4'): got RuntimeError('CUDA out of memory')"))

    def test_wrong_dimension_and_input_are_not_accepted(self):
        self.assertFalse(self.check("AssertionError", "Guard failed: input_ids.size()[1] <= 4"))
        self.assertFalse(self.check("AssertionError", "Guard failed: attention_mask.size()[0] <= 4"))

    def test_wrong_bound_and_relation_are_not_accepted(self):
        self.assertFalse(self.check("AssertionError", "Guard failed: input_ids.size()[0] <= 8"))
        self.assertFalse(self.check("AssertionError", "Guard failed: input_ids.size()[0] >= 4"))

    def test_legal_input_is_not_reclassified_as_expected_rejection(self):
        self.assertFalse(self.check("AssertionError", "Guard failed: input_ids.size()[0] <= 4", actual=4))

    def test_unknown_error_type_and_unrelated_assertion_remain_failures(self):
        self.assertFalse(self.check("KeyError", "Guard failed: input_ids.size()[0] <= 4"))
        self.assertFalse(self.check("AssertionError", "Shape error"))

    def test_invalid_metadata_does_not_pass(self):
        for change in (dict(axis=-1), dict(bound=True), dict(actual=True), dict(relation="=="), dict(input_name="")):
            with self.subTest(change=change):
                self.assertFalse(self.check("AssertionError", "Guard failed: input_ids.size()[0] <= 4", **change))

    def test_legacy_message_must_identify_actual_extent(self):
        self.assertFalse(self.check("RuntimeError", "Expected input at *args[0].shape[0] to be <= 4, but got 6"))

    def test_nested_assertion_of_another_bound_remains_failure(self):
        self.assertFalse(self.check("TorchRuntimeError", "got AssertionError('Guard failed: input_ids.size()[0] <= 8')"))


if __name__ == "__main__":
    unittest.main()
