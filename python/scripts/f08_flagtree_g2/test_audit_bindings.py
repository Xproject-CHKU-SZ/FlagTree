"""CPU-only audit contracts; fixtures are NOT device/compiler evidence."""
import copy
from pathlib import Path
import tempfile
from types import SimpleNamespace
import unittest

from audit_bindings import (AuditError, bridge_contract, check_manifest, fingerprint, resident_accounting,
                            require_exact, select_outputs, sha, validate_gate)


def fixture():
    plan = {"plan_id": "fixture", "tensors": [
        {"tensor_id": "tensor.x", "storage_id": "storage.x", "producer": None,
         "dtype": "float32", "shape": [2, 3], "storage_offset_bytes": 0,
         "is_graph_output": False, "is_persistent": False, "is_mutated": False},
        {"tensor_id": "tensor.gelu", "storage_id": "storage.gelu", "producer": "task.gelu",
         "dtype": "float32", "shape": [2, 3], "storage_offset_bytes": None,
         "is_graph_output": False, "is_persistent": False, "is_mutated": False}],
        "tasks": [{"task_id": "task.gelu", "kernel_id": "aten.gelu.default",
                   "inputs": ["tensor.x"], "outputs": ["tensor.gelu"], "device": "cuda:0"}],
        "storages": [{"storage_id": "storage.x", "allocation_kind": "input", "size_bytes": 24,
                      "device": "cuda:0"},
                     {"storage_id": "storage.gelu", "allocation_kind": "temporary", "size_bytes": 24,
                      "device": "cuda:0"}]}
    lowering = {"selected": {"gelu": {"input_node": "x", "shape": [2, 3], "approximate": "none"}},
                "graph_sha256": "fixture_graph", "plan_sha256": fingerprint(plan)}
    binding = {"tensor_id": "tensor.gelu", "storage_id": "storage.gelu", "plan_id": "fixture",
               "plan_sha256": fingerprint(plan), "graph_fingerprint": "fixture_graph",
               "scope": "ppu_runtime", "physical_card": 14, "device": "cuda:0", "byte_offset": 0,
               "dtype": "float32", "shape": [2, 3], "stride": [3, 1], "numel": 6,
               "nbytes": 24, "contiguous": True}
    return plan, lowering, {"tensor.gelu": binding}


class SelectionTests(unittest.TestCase):
    def setUp(self):
        self.plan, self.lowering, self.bindings = fixture()

    def reject(self, reason):
        with self.assertRaisesRegex(AuditError, reason):
            select_outputs(self.plan, self.lowering, self.bindings)

    def test_output_selection_copies_plan_does_not_merge_storage(self):
        original = copy.deepcopy(self.plan)
        derived, chosen, _ = select_outputs(self.plan, self.lowering, self.bindings)
        self.assertEqual(self.plan, original)
        self.assertEqual(chosen, {"storage.gelu"})
        self.assertEqual(derived["tensors"][1]["storage_offset_bytes"], 0)
        self.assertNotEqual(derived["tensors"][0]["storage_id"], derived["tensors"][1]["storage_id"])

    def test_stale_plan_evidence_rejected(self):
        self.bindings["tensor.gelu"]["plan_sha256"] = "stale"
        self.reject("binding_identity")

    def test_cpu_evidence_rejected(self):
        self.bindings["tensor.gelu"]["scope"] = "cpu_conditional"
        self.reject("binding_identity")

    def test_wrong_physical_card_rejected(self):
        self.bindings["tensor.gelu"]["physical_card"] = 13
        self.reject("binding_identity")

    def test_wrong_graph_rejected(self):
        self.bindings["tensor.gelu"]["graph_fingerprint"] = "other"
        self.reject("binding_identity")

    def test_nonzero_offset_rejected(self):
        self.bindings["tensor.gelu"]["byte_offset"] = 4
        self.reject("binding_layout")

    def test_wrong_stride_rejected(self):
        self.bindings["tensor.gelu"]["stride"] = [1, 2]
        self.reject("binding_layout")

    def test_capacity_mismatch_rejected(self):
        self.bindings["tensor.gelu"]["nbytes"] = 32
        self.reject("binding_layout")

    def test_symbolic_shape_rejected(self):
        self.plan["tensors"][1]["shape"] = ["B", 3]
        self.bindings["tensor.gelu"]["plan_sha256"] = fingerprint(self.plan)
        self.reject("unsupported_shape")

    def test_protected_output_rejected(self):
        self.plan["tensors"][1]["is_graph_output"] = True
        self.reject("protected_or_mutated_output")

    def test_mutated_output_rejected(self):
        self.plan["tensors"][1]["is_mutated"] = True
        self.reject("protected_or_mutated_output")

    def test_input_output_merge_is_not_g2(self):
        self.plan["tensors"][0]["storage_id"] = "storage.gelu"
        self.reject("not_distinct_output_storage")

    def test_unhandled_alias_rejected(self):
        alias = copy.deepcopy(self.plan["tensors"][1])
        alias["tensor_id"] = "tensor.view"
        self.plan["tensors"].append(alias)
        self.reject("alias_adapter_required")

    def test_non_gelu_producer_rejected(self):
        self.plan["tasks"][0]["kernel_id"] = "aten.add.Tensor"
        self.reject("selected_producer_mismatch")


class AccountingTests(unittest.TestCase):
    def test_constant_arena_not_sum_of_all_allocations_as_baseline(self):
        lifetime = SimpleNamespace(storages=[SimpleNamespace(storage_id=s, size_bytes=64)
                                             for s in ("a", "b")],
                                   memory_events=[SimpleNamespace(event_id="first", live_storage_ids=["a"]),
                                                  SimpleNamespace(event_id="gap", live_storage_ids=[]),
                                                  SimpleNamespace(event_id="last", live_storage_ids=["b"])])
        arena = SimpleNamespace(selected_storage_ids=["a", "b"], arena_size_bytes=64)
        result = resident_accounting(lifetime, arena)
        self.assertEqual(result["reference_graph_storage_peak_bytes"], 64)
        self.assertEqual(result["resident_arena_graph_storage_peak_bytes"], 64)
        self.assertEqual(result["events"][1]["delta_bytes"], 64)

    def test_insufficient_arena_rejected(self):
        lifetime = SimpleNamespace(storages=[SimpleNamespace(storage_id="a", size_bytes=128)],
                                   memory_events=[SimpleNamespace(event_id="event", live_storage_ids=["a"])])
        with self.assertRaisesRegex(AuditError, "invalid_arena_live_capacity"):
            resident_accounting(lifetime, SimpleNamespace(selected_storage_ids=["a"], arena_size_bytes=64))


class IntegrityTests(unittest.TestCase):
    def test_bridge_uses_matching_historical_interface(self):
        with tempfile.TemporaryDirectory() as tmp:
            root = Path(tmp)
            (root / "kernel.py").write_text("def call(tensor):\n    return tensor.storage_offset() != 0\n")
            (root / "graph.py").write_text("# fixture, no runtime\n")
            gate = {"environment": {"bridge_source_hashes": {
                name: sha(root / name) for name in ("kernel.py", "graph.py")}}}
            self.assertEqual(len(bridge_contract(gate, root)), 2)
            (root / "kernel.py").write_text("# changed\n")
            with self.assertRaisesRegex(AuditError, "bridge_interface_identity_changed"):
                bridge_contract(gate, root)

    def test_manifest_scope_does_not_claim_other_measurement_files_checked(self):
        with tempfile.TemporaryDirectory() as tmp:
            root = Path(tmp)
            (root / "gate").mkdir()
            path = root / "gate" / "input"
            path.write_text("checked")
            (root / "MANIFEST.sha256").write_text(
                f"{sha(path)}  gate/input\n" + "0" * 64 + "  missing-unconsumed-rep.json\n")
            self.assertIn(path.resolve(), check_manifest(root, root / "gate"))
            with self.assertRaisesRegex(AuditError, "manifest_mismatch"):
                check_manifest(root)

    def test_positive_exact_and_reject_missing_nonzero_bool(self):
        require_exact({"passed": True, "max_abs_diff": 0.0, "atol": 0, "rtol": 0})
        for check in ({}, {"passed": True, "max_abs_diff": 1, "atol": 0, "rtol": 0},
                      {"passed": True, "max_abs_diff": False, "atol": 0, "rtol": 0}):
            with self.subTest(check=check), self.assertRaises(AuditError):
                require_exact(check)

    def test_manifest_integrity_and_tamper(self):
        with tempfile.TemporaryDirectory() as tmp:
            root = Path(tmp)
            path = root / "input.json"
            path.write_text("fixture")
            (root / "MANIFEST.sha256").write_text(f"{sha(path)}  input.json\n")
            self.assertIn(path.resolve(), check_manifest(root))
            path.write_text("changed")
            with self.assertRaisesRegex(AuditError, "manifest_mismatch"):
                check_manifest(root)

    def test_manifest_escape_and_duplicate_rejected(self):
        with tempfile.TemporaryDirectory() as tmp:
            root = Path(tmp)
            manifest = root / "MANIFEST.sha256"
            manifest.write_text("0" * 64 + "  ../outside\n")
            with self.assertRaisesRegex(AuditError, "manifest_path_escape"):
                check_manifest(root)
            path = root / "fixture"
            path.write_text("fixture")
            line = f"{sha(path)}  fixture\n"
            manifest.write_text(line + line)
            with self.assertRaisesRegex(AuditError, "manifest_duplicate"):
                check_manifest(root)

    def test_gate_plan_identity_not_caller_override(self):
        plan, lowering, _ = fixture()
        gate = {"status": "passed", "atol": 0, "rtol": 0, "plan_sha256": "forged"}
        with self.assertRaisesRegex(AuditError, "plan_identity"):
            validate_gate(plan, lowering, gate, {}, {})


if __name__ == "__main__":
    unittest.main()
