from pathlib import Path
import sys
import unittest
import numpy as np

sys.path.insert(0, str(Path(__file__).parents[1] / "scripts"))
from boundary_probe_inputs import derive_coherent_inputs, violated_axis_constraints


class BoundaryInputsTest(unittest.TestCase):
    def test_repeat_slice_preserves_values_dtype_order_and_source(self):
        ids = np.arange(8, dtype=np.int64).reshape(1, 8)
        mask = np.array([[True, True, False, True, False, True, True, False]])
        arrays = {"ids": ids, "mask": mask}
        result = derive_coherent_inputs(arrays, ["mask", "ids"], 3, 9)
        self.assertEqual([x.shape for x in result], [(3, 9), (3, 9)])
        self.assertEqual([x.dtype for x in result], [mask.dtype, ids.dtype])
        np.testing.assert_array_equal(result[1][:, 8], [0, 0, 0])
        np.testing.assert_array_equal(ids, np.arange(8).reshape(1, 8))
        result[1][0, 0] = 123
        self.assertEqual(ids[0, 0], 0)
        self.assertTrue(all(x.flags.c_contiguous for x in result))

    def test_long_negative_sequence_is_derived_without_retokenization(self):
        values = derive_coherent_inputs({"ids": np.arange(8).reshape(1, 8)}, ["ids"], 2, 65)[0]
        self.assertEqual(values.shape, (2, 65))
        self.assertEqual(values[1, 64], 0)

    def test_zero_bool_negative_or_duplicate_requests_are_rejected(self):
        arrays = {"ids": np.zeros((1, 8), dtype=np.int64)}
        for b, s in [(0, 8), (True, 8), (1, -1)]:
            with self.assertRaises(ValueError): derive_coherent_inputs(arrays, ["ids"], b, s)
        with self.assertRaises(ValueError): derive_coherent_inputs(arrays, ["ids", "ids"], 1, 8)

    def test_wrong_source_shape_is_rejected(self):
        with self.assertRaises(ValueError):
            derive_coherent_inputs({"ids": np.zeros((2, 8), dtype=np.int64)}, ["ids"], 3, 9)

    def test_every_independent_input_node_can_supply_the_actual_guard(self):
        contract = {"inputs": [{"input_node": name, "rank": 2, "source": "positional", "axes": [
            {"kind": "symbolic", "expression": "b" + str(i), "symbols": ["b" + str(i)], "bounds": {"lower": "2", "upper": "4"}},
            {"kind": "symbolic", "expression": "s" + str(i), "symbols": ["s" + str(i)], "bounds": {"lower": "8", "upper": "64"}}]}
            for i, name in enumerate(["input_ids", "attention_mask"])]}
        rows = violated_axis_constraints(contract, 5, 8, 0, "<=")
        self.assertEqual([x["input_name"] for x in rows], ["input_ids", "attention_mask"])
        self.assertTrue(all(x["actual"] == 5 and x["bound"] == 4 for x in rows))
        with self.assertRaises(ValueError): violated_axis_constraints(contract, 3, 9, 0, "<=")


if __name__ == "__main__": unittest.main()
