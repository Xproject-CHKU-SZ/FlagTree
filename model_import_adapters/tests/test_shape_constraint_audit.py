"""Dependency-free audit tests using the existing serialized-constraint producer."""
import copy
import importlib.util
from pathlib import Path
from types import SimpleNamespace as NS
import unittest

from test_shape_constraints import Symbolic, program, build

path = Path(__file__).parents[1] / "src/model_import_adapters/shape_constraint_audit.py"
spec = importlib.util.spec_from_file_location("shape_constraint_audit", path)
module = importlib.util.module_from_spec(spec)
spec.loader.exec_module(module)
audit, probes = module.audit_observed_shapes, module.text_boundary_specs


class ShapeConstraintAuditTest(unittest.TestCase):
    def contract(self, independent=False):
        b, s = Symbolic("b", ["b"]), Symbolic("s", ["s"])
        shapes = {"ids": (b, s), "mask": (b, s)}
        ranges = {"b": NS(lower=2, upper=4), "s": NS(lower=8, upper=64)}
        if independent:
            shapes["mask"] = (Symbolic("b2", ["b2"]), Symbolic("s2", ["s2"]))
            ranges.update(b2=NS(lower=2, upper=4), s2=NS(lower=8, upper=64))
        return build(program(shapes, ranges), {"positional": ["arg_0", "arg_1"], "keyword": []})

    def metadata(self, batch=2, sequence=24):
        return {key: {"shape": [batch, sequence], "dtype": "int64"} for key in ("arg_0", "arg_1")}

    def test_in_range_shared_axes(self):
        result = audit(self.contract(), self.metadata())
        self.assertTrue(result["structurally_consistent"])
        self.assertFalse(result["unresolved"])
        self.assertFalse(result["literal_range_deviations"])
        self.assertEqual(result["symbol_values"], {"b": 2, "s": 24})

    def test_size_one_is_reported_not_silently_accepted_or_rewritten(self):
        contract = self.contract(); saved = copy.deepcopy(contract)
        result = audit(contract, self.metadata(batch=1))
        self.assertTrue(result["structurally_consistent"])
        self.assertEqual(len(result["literal_range_deviations"]), 2)
        self.assertTrue(all(x["classification"] == "small_extent_requires_runtime_evidence"
                            and x["literal_in_range"] is False for x in result["literal_range_deviations"]))
        self.assertEqual(result["runtime_acceptance"], "not_inferred_by_metadata_audit")
        self.assertEqual(contract, saved)

    def test_zero_does_not_inherit_size_one_runtime_evidence(self):
        result = audit(self.contract(), self.metadata(batch=0))
        self.assertEqual({x["actual"] for x in result["literal_range_deviations"]}, {0})
        self.assertEqual(result["runtime_acceptance"], "not_inferred_by_metadata_audit")

    def test_real_lower_bound_violation_is_preserved(self):
        result = audit(self.contract(), self.metadata(sequence=7))
        self.assertEqual(len(result["literal_range_deviations"]), 2)
        self.assertTrue(all(x["classification"] == "literal_out_of_range" for x in result["literal_range_deviations"]))

    def test_upper_bound_violations_are_preserved(self):
        result = audit(self.contract(), self.metadata(batch=5, sequence=65))
        self.assertEqual(len(result["literal_range_deviations"]), 4)
        self.assertTrue(all(x["classification"] == "literal_out_of_range" for x in result["literal_range_deviations"]))

    def test_shared_symbol_mismatch_is_not_hidden_by_valid_ranges(self):
        values = self.metadata(); values["arg_1"]["shape"][0] = 3
        result = audit(self.contract(), values)
        self.assertFalse(result["structurally_consistent"])
        self.assertEqual(result["structural_issues"][0]["code"], "shared_symbol_extent_mismatch")
        self.assertFalse(result["literal_range_deviations"])

    def test_independent_symbols_are_not_merged_from_equal_samples(self):
        values = self.metadata(); values["arg_1"]["shape"][0] = 3
        result = audit(self.contract(independent=True), values)
        self.assertTrue(result["structurally_consistent"])
        self.assertEqual(len(result["symbol_groups"]), 4)
        self.assertEqual(result["symbol_values"]["b"], 2)
        self.assertEqual(result["symbol_values"]["b2"], 3)

    def test_static_axes_and_rank_are_checked(self):
        contract = build(program({"ids": (Symbolic("b", ["b"]), 24)}, {"b": NS(lower=2, upper=4)}),
                         {"positional": ["arg_0"], "keyword": []})
        result = audit(contract, {"arg_0": {"shape": [2, 23], "dtype": "int64"}})
        self.assertEqual(result["structural_issues"][0]["code"], "static_extent_mismatch")
        result = audit(contract, {"arg_0": {"shape": [2], "dtype": "int64"}})
        self.assertEqual(result["structural_issues"][0]["code"], "rank_mismatch")
        self.assertEqual(probes(contract)["status"], "requires_review")

    def test_dtype_mismatch_is_a_structural_issue(self):
        values = self.metadata(); values["arg_0"]["dtype"] = "float32"
        self.assertEqual(audit(self.contract(), values)["structural_issues"][0]["code"], "dtype_mismatch")

    def test_derived_expression_is_not_evaluated_or_promoted_to_coverage(self):
        contract = build(program({"ids": (Symbolic("2*b + 1", ["b"]),)}, {"b": NS(lower=2, upper=4)}),
                         {"positional": ["arg_0"], "keyword": []})
        result = audit(contract, {"arg_0": {"shape": [5], "dtype": "int64"}})
        self.assertEqual(result["unresolved"][0]["code"], "derived_expression_not_evaluated")
        self.assertEqual(result["runtime_acceptance"], "not_inferred_by_metadata_audit")

    def test_nonfinite_bounds_remain_unresolved(self):
        contract = self.contract()
        for row in contract["range_constraints"]:
            if row["expression"] == "b": row["upper"] = "int_oo"
        for item in contract["inputs"]: item["axes"][0]["bounds"]["upper"] = "int_oo"
        for row in contract["symbols"]:
            if row["symbol"] == "b": row["bounds"]["upper"] = "int_oo"
        self.assertTrue(audit(contract, self.metadata())["unresolved"])
        self.assertEqual(probes(contract)["status"], "requires_review")

    def test_lost_shared_axis_declaration_is_rejected(self):
        contract = self.contract(); contract["symbols"][0]["input_axes"].pop()
        with self.assertRaisesRegex(ValueError, "Shared-symbol"):
            audit(contract, self.metadata())

    def test_axis_bound_drift_is_rejected(self):
        contract = copy.deepcopy(self.contract()); contract["inputs"][0]["axes"][0]["bounds"]["upper"] = "8"
        with self.assertRaisesRegex(ValueError, "Axis/range"):
            audit(contract, self.metadata())

    def test_missing_input_is_rejected(self):
        with self.assertRaisesRegex(ValueError, "input keys"):
            audit(self.contract(), {"arg_0": self.metadata()["arg_0"]})

    def test_invalid_schema_or_shape_is_not_accepted(self):
        contract = self.contract(); contract["schema_version"] = True
        with self.assertRaises(ValueError): audit(contract, self.metadata())
        for extent in (True, -1):
            values = self.metadata(); values["arg_0"]["shape"][0] = extent
            with self.assertRaises(ValueError): audit(self.contract(), values)

    def test_boundary_plan_is_coherent_but_never_claims_execution(self):
        for independent in (False, True):
            result = probes(self.contract(independent=independent))
            self.assertEqual(result["status"], "planned_not_executed")
            self.assertEqual([(x["batch"], x["sequence"]) for x in result["probes"]], [(5, 8), (2, 65), (2, 7), (3, 9)])
            self.assertTrue(all(x["executed"] is False for x in result["probes"]))
            self.assertEqual(result["size_zero"], "not_covered")


if __name__ == "__main__":
    unittest.main()
